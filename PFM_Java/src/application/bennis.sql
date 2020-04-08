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
-- Structure de la table `Artiste`
--

CREATE TABLE `Artiste` (
  `idArtiste` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL DEFAULT '',
  `prenom` varchar(30) NOT NULL DEFAULT '',
  `anneeNaiss` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Artiste`
--

INSERT INTO `Artiste` (`idArtiste`, `nom`, `prenom`, `anneeNaiss`) VALUES
(3, 'Hitchcock', 'Alfred', 1899),
(4, 'Scott', 'Ridley', 1937),
(5, 'Weaver', 'Sigourney', 1949),
(6, 'Cameron', 'James', 1954),
(9, 'Tarkovski', 'Andrei', 1932),
(10, 'Woo', 'John', 1946),
(11, 'Travolta', 'John', 1954),
(12, 'Cage', 'Nicolas', 1964),
(13, 'Burton', 'Tim', 1958),
(14, 'Depp', 'Johnny', 1964),
(15, 'Stewart', 'James', 1908),
(16, 'Novak', 'Kim', 1925),
(17, 'Mendes', 'Sam', 1965),
(18, 'Spacey', 'Kevin', 1959),
(19, 'Bening', 'Anette', 1958),
(20, 'Eastwood', 'Clint', 1930),
(21, 'Hackman', 'Gene', 1930),
(22, 'Freeman', 'Morgan', 1937),
(23, 'Crowe', 'Russell', 1964),
(24, 'Ford', 'Harrison', 1942),
(25, 'Hauer', 'Rutger', 1944),
(26, 'McTiernan', 'John', 1951),
(27, 'Willis', 'Bruce', 1955),
(28, 'Harlin', 'Renny', 1959),
(29, 'Pialat', 'Maurice', 1925),
(30, 'Dutronc', 'Jacques', 1943),
(31, 'Fincher', 'David', 1962),
(32, 'Pitt', 'Brad', 1963),
(33, 'Gilliam', 'Terry', 1940),
(34, 'Annaud', 'Jean-Jacques', 1943),
(35, 'Connery', 'Sean', 1930),
(36, 'Slater', 'Christian', 1969),
(37, 'Tarantino', 'Quentin', 1963),
(38, 'Jackson', 'Samuel L.', 1948),
(39, 'Arquette', 'Rosanna', 1959),
(40, 'Thurman', 'Uma', 1970),
(41, 'Farrelly', 'Bobby', 1958),
(42, 'Diaz', 'Cameron', 1972),
(43, 'Dillon', 'Mat', 1964),
(44, 'Schwartzenegger', 'Arnold', 1947),
(45, 'Spielberg', 'Steven', 1946),
(46, 'Scheider', 'Roy', 1932),
(47, 'Shaw', 'Robert', 1927),
(48, 'Dreyfus', 'Richard', 1947),
(49, 'Demme', 'Jonathan', 1944),
(50, 'Hopkins', 'Anthony', 1937),
(51, 'Foster', 'Jodie', 1962),
(53, 'Kilmer', 'Val', 1959),
(54, 'Fiennes', 'Ralph', 1962),
(55, 'Pfeiffer', 'Michelle', 1957),
(56, 'Bullock', 'Sandra', 1964),
(57, 'Goldblum', 'Jeff', 1952),
(58, 'Emmerich', 'Roland', 1955),
(59, 'Broderick', 'Matthew', 1962),
(60, 'Reno', 'Jean', 1948),
(61, 'Wachowski', 'Andy', 1967),
(62, 'Reeves', 'Keanu', 1964),
(63, 'Fishburne', 'Laurence', 1961),
(64, 'De Palma', 'Brian', 1940),
(65, 'Cruise', 'Tom', 1962),
(66, 'Voight', 'John', 1938),
(67, 'Béart', 'Emmanuelle', 1965),
(68, 'Kurozawa', 'Akira', 1910),
(69, 'Harris', 'Ed', 1950),
(70, 'Linney', 'Laura', 1964),
(71, 'Girault', 'Jean', 1924),
(72, 'De Funs', 'Louis', 1914),
(73, 'Galabru', 'Michel', 1922),
(75, 'Balasko', 'Josiane', 1950),
(76, 'Lavanant', 'Dominique', 1944),
(77, 'Lanvin', 'Grard', 1950),
(78, 'Villeret', 'Jacques', 1951),
(79, 'Levinson', 'Barry', 1942),
(80, 'Hoffman', 'Dustin', 1937),
(81, 'Scott', 'Tony', 1944),
(82, 'McGillis', 'Kelly', 1957),
(83, 'Leconte', 'Patrice', 1947),
(84, 'Blanc', 'Michel', 1952),
(85, 'Clavier', 'Christian', 1952),
(86, 'Lhermite', 'Thierry', 1952),
(88, 'Perkins', 'Anthony', 1932),
(89, 'Miles', 'Vera', 1929),
(90, 'Leigh', 'Janet', 1927),
(91, 'Marquand', 'Richard', 1938),
(92, 'Hamill', 'Mark', 1951),
(93, 'Fisher', 'Carrie', 1956),
(94, 'Taylor', 'Rod', 1930),
(95, 'Hedren', 'Tippi', 1931),
(96, 'Ricci', 'Christina', 1980),
(97, 'Walken', 'Christopher', 1943),
(98, 'Keitel', 'Harvey', 1939),
(99, 'Roth', 'Tim', 1961),
(100, 'Penn', 'Chris', 1966),
(101, 'Kubrick', 'Stanley', 1928),
(102, 'Kidman', 'Nicole', 1967),
(103, 'Nicholson', 'Jack', 1937),
(104, 'Kelly', 'Grace', 1929),
(105, 'Grant', 'Cary', 1904),
(106, 'Saint', 'Eva Marie', 1924),
(107, 'Mason', 'James', 1909),
(109, 'Winslet', 'Kate', 1975),
(110, 'DiCaprio', 'Leonardo', 1974),
(111, 'Besson', 'Luc', 1959),
(112, 'Jovovich', 'Milla', 1975),
(113, 'Dunaway', 'Fane', 1941),
(114, 'Malkovitch', 'John', 1953),
(115, 'Karyo', 'Tchky', 1953),
(116, 'Oldman', 'Gary', 1958),
(117, 'Holm', 'Ian', 1931),
(118, 'Portman', 'Natalie', 1981),
(119, 'Parillaud', 'Anne', 1960),
(120, 'Anglade', 'Jean-Hughes', 1955),
(121, 'Barr', 'Jean-Marc', 1960),
(122, 'Ferrara', 'Abel', 1951),
(123, 'Caruso', 'David', 1956),
(124, 'Snipes', 'Wesley', 1962),
(125, 'Sciora', 'Annabella', 1964),
(126, 'Rosselini', 'Isabella', 1952),
(127, 'Gallo', 'Vincent', 1961),
(128, 'von Trier', 'Lars', 1956),
(129, 'Gudmundsdottir', 'Bjork', 1965),
(130, 'Deneuve', 'Catherine', 1943),
(131, 'Kassowitz', 'Matthieu', 1967),
(132, 'Cassel', 'Vincent', 1966),
(133, 'Gray', 'James', 1969),
(134, 'Wahlberg', 'Mark', 1971),
(135, 'Phoenix', 'Joaquin', 1974),
(136, 'Theron', 'Charlize', 1975),
(137, 'Caan', 'James', 1940),
(138, 'Chabrol', 'Claude', 1930),
(139, 'Huppert', 'Isabelle', 1953),
(140, 'Mouglalis', 'Anna', 1978),
(141, 'Costner', 'Kevin', 1955),
(142, 'Dern', 'Laura', 1967),
(143, 'Hanks', 'Tom', 1956),
(144, 'Sizemore', 'Tom', 1964),
(145, 'Damon', 'Matt', 1970),
(146, 'Modine', 'Matthew', 1959),
(147, 'Baldwin', 'Adam', 1962),
(148, 'O\'Neal', 'Ryan', 1941),
(149, 'Berenson', 'Marisa', 1946),
(150, 'McDowell', 'Macolm', 1943),
(151, 'Dullea', 'Keir', 1936),
(152, 'Lockwood', 'Gary', 1937),
(153, 'Sellers', 'Peter', 1925),
(154, 'Scott', 'George', 1927),
(155, 'Hayden', 'Sterling', 1916),
(156, 'Douglas', 'Kirk', 1916),
(157, 'Donat', 'Robert', 1905),
(158, 'Caroll', 'Madeleine', 1906),
(159, 'Olivier', 'Laurence', 1907),
(160, 'Fontaine', 'Joan', 1917),
(161, 'Sanders', 'George', 1906),
(162, 'Bergman', 'Ingrid', 1915),
(163, 'Rains', 'Claude', 1889),
(164, 'Milland', 'Ray', 1907),
(166, 'Day', 'Doris', 1924),
(167, 'De Niro', 'Robert', 1943),
(168, 'Grier', 'Pam', 1949),
(169, 'Fonda', 'Bridget', 1964),
(170, 'Keaton', 'Michael', 1951),
(171, 'Shyamalan', 'M. Night', 1970),
(172, 'Osment', 'Haley Joel', 1988),
(173, 'Collette', 'Tony', 1972),
(174, 'Leighton', 'Eric', 1962),
(175, 'Mann', 'Michael', 1943),
(176, 'Pacino', 'Al', 1940),
(177, 'Crowe', 'Russel', 1964),
(178, 'Plummer', 'Christopher', 1927),
(179, 'Furlong', 'Edward', 1977),
(180, 'Redgrave', 'Vanessa', 1937),
(181, 'Coppola', 'Francis Ford', 1939),
(182, 'Brando', 'Marlon', 1924),
(183, 'Keaton', 'Diane', 1946),
(184, 'Duvall', 'Robert', 1931),
(185, 'Caan', 'Jamees', 1939),
(186, 'Garcia', 'Andy', 1956),
(187, 'Raimi', 'Sam', 1959),
(188, 'Maguire', 'Tobey', 1975),
(210, 'Moss', 'Carrie-Anne', 1967),
(211, 'Weaving', 'Hugo', 1960),
(212, 'Jackson', 'Samuel', 1948),
(213, 'Liu', 'Lucy', 1968),
(214, 'Carradine', 'David', 1936),
(215, 'Madsen', 'Michael', 1958),
(216, 'Hannah', 'Daryl', 1960),
(217, 'Buscemi', 'Steve', 1957),
(218, 'Bunker', 'Edward', 1933),
(219, 'Leone', 'Sergio', 1929),
(220, 'Van Cleef', 'Lee', NULL),
(221, 'Volonte', 'Gian Maria', NULL),
(224, 'Swank', 'Hillary', 1974),
(233, 'toto', 'l\'al\'a', 1900),
(234, 'Dafoe', 'Willem', 1955),
(235, 'Dunst', 'Kirsten', 1982),
(236, 'Harris', 'Rose Mary', 1922),
(237, 'Robertson', 'Cliff', 1923),
(238, 'Brisseau', 'Jean-Claude', 1944),
(239, 'Cremer', 'Bruno', 1929),
(240, 'Gasperitsch', 'Vincent', 1980),
(241, 'Coppola', 'Sofia', 1971),
(242, 'Murray', 'Bill', 1950),
(243, 'Faris', 'Anna', 1976),
(244, 'Johansson', 'Scarlett', 1984),
(245, 'Ribisi', 'Giovanni', 1974),
(246, 'Law', 'Jude', 1972),
(249, 'Irons', 'Jeremy', 1948),
(250, 'Singer', 'Bryan', 1965),
(251, 'Del Toro', 'Benicio', 1967);

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
-- Structure de la table `Country`
--

CREATE TABLE `Country` (
  `Pays` varchar(25) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Country`
--

INSERT INTO `Country` (`Pays`, `ID`) VALUES
('Pays-Bas', 1),
('Russie', 2),
('Italie', 3);

-- --------------------------------------------------------

--
-- Structure de la table `effectifs`
--

CREATE TABLE `effectifs` (
  `annee` smallint(6) NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` int(11) NOT NULL,
  `sexe` enum('Masculin','Feminin','','') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `effectifs`
--

INSERT INTO `effectifs` (`annee`, `code`, `nombre`, `sexe`) VALUES
(2001, 'CPGE', 886, 'Feminin'),
(2001, 'CPGE', 1430, 'Masculin'),
(2001, 'EC_ART', 298, 'Feminin'),
(2001, 'EC_ART', 421, 'Masculin'),
(2001, 'EC_autres', 1999, 'Masculin'),
(2001, 'EC_autres', 4648, 'Feminin'),
(2001, 'EC_JUR', 381, 'Feminin'),
(2001, 'EC_JUR', 1080, 'Masculin'),
(2001, 'EC_PARAM', 679, 'Masculin'),
(2001, 'EC_PARAM', 4079, 'Feminin'),
(2001, 'ENS', 271, 'Feminin'),
(2001, 'ENS', 688, 'Masculin'),
(2001, 'ING_autres', 215, 'Feminin'),
(2001, 'ING_autres', 1002, 'Masculin'),
(2001, 'STS', 4737, 'Feminin'),
(2001, 'STS', 5034, 'Masculin'),
(2001, 'UNIV', 37554, 'Masculin'),
(2001, 'UNIV', 47517, 'Feminin'),
(2002, 'CPGE', 959, 'Feminin'),
(2002, 'CPGE', 1406, 'Masculin'),
(2002, 'EC_ART', 321, 'Feminin'),
(2002, 'EC_ART', 451, 'Masculin'),
(2002, 'EC_autres', 1934, 'Masculin'),
(2002, 'EC_autres', 5064, 'Feminin'),
(2002, 'EC_JUR', 360, 'Feminin'),
(2002, 'EC_JUR', 1058, 'Masculin'),
(2002, 'EC_PARAM', 728, 'Masculin'),
(2002, 'EC_PARAM', 4600, 'Feminin'),
(2002, 'ENS', 283, 'Feminin'),
(2002, 'ENS', 665, 'Masculin'),
(2002, 'ING_autres', 249, 'Feminin'),
(2002, 'ING_autres', 1073, 'Masculin'),
(2002, 'STS', 4815, 'Feminin'),
(2002, 'STS', 5261, 'Masculin'),
(2002, 'UNIV', 38460, 'Masculin'),
(2002, 'UNIV', 47791, 'Feminin'),
(2003, 'CPGE', 1025, 'Feminin'),
(2003, 'CPGE', 1415, 'Masculin'),
(2003, 'EC_ART', 347, 'Feminin'),
(2003, 'EC_ART', 475, 'Masculin'),
(2003, 'EC_autres', 1959, 'Masculin'),
(2003, 'EC_autres', 4247, 'Feminin'),
(2003, 'EC_JUR', 427, 'Feminin'),
(2003, 'EC_JUR', 866, 'Masculin'),
(2003, 'EC_PARAM', 754, 'Masculin'),
(2003, 'EC_PARAM', 4934, 'Feminin'),
(2003, 'ENS', 296, 'Feminin'),
(2003, 'ENS', 691, 'Masculin'),
(2003, 'ING_autres', 260, 'Feminin'),
(2003, 'ING_autres', 962, 'Masculin'),
(2003, 'STS', 4860, 'Feminin'),
(2003, 'STS', 5369, 'Masculin'),
(2003, 'UNIV', 39880, 'Masculin'),
(2003, 'UNIV', 49443, 'Feminin'),
(2004, 'CPGE', 1147, 'Feminin'),
(2004, 'CPGE', 1574, 'Masculin'),
(2004, 'EC_ART', 370, 'Feminin'),
(2004, 'EC_ART', 455, 'Masculin'),
(2004, 'EC_autres', 1968, 'Masculin'),
(2004, 'EC_autres', 4095, 'Feminin'),
(2004, 'EC_JUR', 405, 'Feminin'),
(2004, 'EC_JUR', 562, 'Masculin'),
(2004, 'EC_PARAM', 714, 'Masculin'),
(2004, 'EC_PARAM', 5120, 'Feminin'),
(2004, 'ENS', 291, 'Feminin'),
(2004, 'ENS', 675, 'Masculin'),
(2004, 'ING_autres', 264, 'Feminin'),
(2004, 'ING_autres', 1094, 'Masculin'),
(2004, 'STS', 4947, 'Feminin'),
(2004, 'STS', 5482, 'Masculin'),
(2004, 'UNIV', 39491, 'Masculin'),
(2004, 'UNIV', 50227, 'Feminin'),
(2005, 'CPGE', 1170, 'Feminin'),
(2005, 'CPGE', 1683, 'Masculin'),
(2005, 'EC_ART', 406, 'Feminin'),
(2005, 'EC_ART', 439, 'Masculin'),
(2005, 'EC_autres', 1933, 'Masculin'),
(2005, 'EC_autres', 3961, 'Feminin'),
(2005, 'EC_JUR', 269, 'Feminin'),
(2005, 'EC_JUR', 530, 'Masculin'),
(2005, 'EC_PARAM', 744, 'Masculin'),
(2005, 'EC_PARAM', 5273, 'Feminin'),
(2005, 'ENS', 308, 'Feminin'),
(2005, 'ENS', 652, 'Masculin'),
(2005, 'ING_autres', 288, 'Feminin'),
(2005, 'ING_autres', 724, 'Masculin'),
(2005, 'STS', 4850, 'Feminin'),
(2005, 'STS', 5664, 'Masculin'),
(2005, 'UNIV', 37369, 'Masculin'),
(2005, 'UNIV', 48566, 'Feminin'),
(2006, 'CPGE', 1296, 'Feminin'),
(2006, 'CPGE', 1689, 'Masculin'),
(2006, 'EC_ART', 395, 'Feminin'),
(2006, 'EC_ART', 401, 'Masculin'),
(2006, 'EC_autres', 1652, 'Masculin'),
(2006, 'EC_autres', 3753, 'Feminin'),
(2006, 'EC_JUR', 317, 'Feminin'),
(2006, 'EC_JUR', 532, 'Masculin'),
(2006, 'EC_PARAM', 796, 'Masculin'),
(2006, 'EC_PARAM', 5088, 'Feminin'),
(2006, 'ENS', 446, 'Feminin'),
(2006, 'ENS', 753, 'Masculin'),
(2006, 'ING_autres', 262, 'Feminin'),
(2006, 'ING_autres', 934, 'Masculin'),
(2006, 'STS', 4853, 'Feminin'),
(2006, 'STS', 5614, 'Masculin'),
(2006, 'UNIV', 36330, 'Masculin'),
(2006, 'UNIV', 47250, 'Feminin'),
(2007, 'CPGE', 1357, 'Feminin'),
(2007, 'CPGE', 1699, 'Masculin'),
(2007, 'EC_ART', 408, 'Masculin'),
(2007, 'EC_ART', 410, 'Feminin'),
(2007, 'EC_autres', 1645, 'Masculin'),
(2007, 'EC_autres', 3707, 'Feminin'),
(2007, 'EC_JUR', 84, 'Feminin'),
(2007, 'EC_JUR', 285, 'Masculin'),
(2007, 'EC_PARAM', 832, 'Masculin'),
(2007, 'EC_PARAM', 5045, 'Feminin'),
(2007, 'ENS', 434, 'Feminin'),
(2007, 'ENS', 860, 'Masculin'),
(2007, 'ING_autres', 290, 'Feminin'),
(2007, 'ING_autres', 1197, 'Masculin'),
(2007, 'STS', 4847, 'Feminin'),
(2007, 'STS', 5591, 'Masculin'),
(2007, 'UNIV', 35503, 'Masculin'),
(2007, 'UNIV', 47307, 'Feminin'),
(2008, 'CPGE', 1421, 'Feminin'),
(2008, 'CPGE', 1779, 'Masculin'),
(2008, 'EC_ART', 407, 'Masculin'),
(2008, 'EC_ART', 443, 'Feminin'),
(2008, 'EC_autres', 329, 'Masculin'),
(2008, 'EC_autres', 614, 'Feminin'),
(2008, 'EC_JUR', 104, 'Feminin'),
(2008, 'EC_JUR', 275, 'Masculin'),
(2008, 'EC_PARAM', 780, 'Masculin'),
(2008, 'EC_PARAM', 5264, 'Feminin'),
(2008, 'ENS', 487, 'Feminin'),
(2008, 'ENS', 891, 'Masculin'),
(2008, 'ING_autres', 269, 'Feminin'),
(2008, 'ING_autres', 899, 'Masculin'),
(2008, 'STS', 4809, 'Feminin'),
(2008, 'STS', 5551, 'Masculin'),
(2008, 'UNIV', 36338, 'Masculin'),
(2008, 'UNIV', 50760, 'Feminin'),
(2009, 'CPGE', 1439, 'Feminin'),
(2009, 'CPGE', 1879, 'Masculin'),
(2009, 'EC_ART', 419, 'Masculin'),
(2009, 'EC_ART', 457, 'Feminin'),
(2009, 'EC_autres', 359, 'Masculin'),
(2009, 'EC_autres', 624, 'Feminin'),
(2009, 'EC_JUR', 106, 'Feminin'),
(2009, 'EC_JUR', 261, 'Masculin'),
(2009, 'EC_PARAM', 737, 'Masculin'),
(2009, 'EC_PARAM', 5727, 'Feminin'),
(2009, 'ENS', 480, 'Feminin'),
(2009, 'ENS', 908, 'Masculin'),
(2009, 'ING_autres', 254, 'Feminin'),
(2009, 'ING_autres', 859, 'Masculin'),
(2009, 'STS', 4927, 'Feminin'),
(2009, 'STS', 5595, 'Masculin'),
(2009, 'UNIV', 37845, 'Masculin'),
(2009, 'UNIV', 53130, 'Feminin'),
(2010, 'CPGE', 1322, 'Feminin'),
(2010, 'CPGE', 1889, 'Masculin'),
(2010, 'EC_ART', 420, 'Masculin'),
(2010, 'EC_ART', 480, 'Feminin'),
(2010, 'EC_autres', 375, 'Masculin'),
(2010, 'EC_autres', 679, 'Feminin'),
(2010, 'EC_JUR', 101, 'Feminin'),
(2010, 'EC_JUR', 246, 'Masculin'),
(2010, 'EC_PARAM', 554, 'Masculin'),
(2010, 'EC_PARAM', 4161, 'Feminin'),
(2010, 'ENS', 557, 'Feminin'),
(2010, 'ENS', 1132, 'Masculin'),
(2010, 'ING_autres', 322, 'Feminin'),
(2010, 'ING_autres', 1009, 'Masculin'),
(2010, 'STS', 4950, 'Feminin'),
(2010, 'STS', 5689, 'Masculin'),
(2010, 'UNIV', 36987, 'Masculin'),
(2010, 'UNIV', 51477, 'Feminin'),
(2011, 'CPGE', 1367, 'Feminin'),
(2011, 'CPGE', 1910, 'Masculin'),
(2011, 'EC_ART', 402, 'Masculin'),
(2011, 'EC_ART', 508, 'Feminin'),
(2011, 'EC_PARAM', 618, 'Masculin'),
(2011, 'EC_PARAM', 5304, 'Feminin'),
(2011, 'ENS', 535, 'Feminin'),
(2011, 'ENS', 1117, 'Masculin'),
(2011, 'ING_autres', 317, 'Feminin'),
(2011, 'ING_autres', 1056, 'Masculin'),
(2011, 'STS', 5091, 'Feminin'),
(2011, 'STS', 5875, 'Masculin'),
(2011, 'UNIV', 37639, 'Masculin'),
(2011, 'UNIV', 52561, 'Feminin'),
(2012, 'CPGE', 1447, 'Feminin'),
(2012, 'CPGE', 1923, 'Masculin'),
(2012, 'EC_ART', 433, 'Masculin'),
(2012, 'EC_ART', 512, 'Feminin'),
(2012, 'EC_autres', 373, 'Masculin'),
(2012, 'EC_autres', 730, 'Feminin'),
(2012, 'EC_JUR', 81, 'Feminin'),
(2012, 'EC_JUR', 205, 'Masculin'),
(2012, 'EC_PARAM', 611, 'Masculin'),
(2012, 'EC_PARAM', 5211, 'Feminin'),
(2012, 'ENS', 558, 'Feminin'),
(2012, 'ENS', 1183, 'Masculin'),
(2012, 'ING_autres', 324, 'Feminin'),
(2012, 'ING_autres', 1064, 'Masculin'),
(2012, 'STS', 5242, 'Feminin'),
(2012, 'STS', 5993, 'Masculin'),
(2012, 'UNIV', 37571, 'Masculin'),
(2012, 'UNIV', 52433, 'Feminin'),
(2013, 'CPGE', 1475, 'Feminin'),
(2013, 'CPGE', 2021, 'Masculin'),
(2013, 'EC_ART', 429, 'Masculin'),
(2013, 'EC_ART', 515, 'Feminin'),
(2013, 'EC_autres', 399, 'Masculin'),
(2013, 'EC_autres', 743, 'Feminin'),
(2013, 'EC_JUR', 77, 'Feminin'),
(2013, 'EC_JUR', 218, 'Masculin'),
(2013, 'EC_PARAM', 668, 'Masculin'),
(2013, 'EC_PARAM', 5533, 'Feminin'),
(2013, 'ENS', 466, 'Feminin'),
(2013, 'ENS', 1033, 'Masculin'),
(2013, 'ESPE', 308, 'Masculin'),
(2013, 'ESPE', 900, 'Feminin'),
(2013, 'ING_autres', 368, 'Feminin'),
(2013, 'ING_autres', 1078, 'Masculin'),
(2013, 'STS', 5358, 'Feminin'),
(2013, 'STS', 6047, 'Masculin'),
(2013, 'UNIV', 37415, 'Masculin'),
(2013, 'UNIV', 52106, 'Feminin'),
(2014, 'CPGE', 1530, 'Feminin'),
(2014, 'CPGE', 1942, 'Masculin'),
(2014, 'EC_ART', 438, 'Masculin'),
(2014, 'EC_ART', 532, 'Feminin'),
(2014, 'EC_JUR', 60, 'Feminin'),
(2014, 'EC_JUR', 196, 'Masculin'),
(2014, 'EC_PARAM', 595, 'Masculin'),
(2014, 'EC_PARAM', 5548, 'Feminin'),
(2014, 'ENS', 529, 'Feminin'),
(2014, 'ENS', 1271, 'Masculin'),
(2014, 'ESPE', 1038, 'Masculin'),
(2014, 'ESPE', 2658, 'Feminin'),
(2014, 'ING_autres', 392, 'Feminin'),
(2014, 'ING_autres', 1140, 'Masculin'),
(2014, 'UNIV', 36355, 'Masculin'),
(2014, 'UNIV', 50434, 'Feminin'),
(2015, 'CPGE', 1591, 'Feminin'),
(2015, 'CPGE', 2008, 'Masculin'),
(2015, 'EC_ART', 464, 'Masculin'),
(2015, 'EC_ART', 544, 'Feminin'),
(2015, 'EC_autres', 404, 'Masculin'),
(2015, 'EC_autres', 787, 'Feminin'),
(2015, 'EC_JUR', 96, 'Feminin'),
(2015, 'EC_JUR', 384, 'Masculin'),
(2015, 'EC_PARAM', 595, 'Masculin'),
(2015, 'EC_PARAM', 5548, 'Feminin'),
(2015, 'ENS', 529, 'Feminin'),
(2015, 'ENS', 1271, 'Masculin'),
(2015, 'ESPE', 1266, 'Masculin'),
(2015, 'ESPE', 3531, 'Feminin'),
(2015, 'ING_autres', 387, 'Feminin'),
(2015, 'ING_autres', 1109, 'Masculin'),
(2015, 'STS', 5427, 'Feminin'),
(2015, 'STS', 6224, 'Masculin'),
(2015, 'UNIV', 37125, 'Masculin'),
(2015, 'UNIV', 50574, 'Feminin');

-- --------------------------------------------------------

--
-- Structure de la table `Film`
--

CREATE TABLE `Film` (
  `idFilm` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL DEFAULT '',
  `annee` int(11) NOT NULL DEFAULT '0',
  `idMes` int(11) DEFAULT NULL,
  `genre` varchar(20) NOT NULL DEFAULT '',
  `resume` text,
  `codePays` varchar(4) DEFAULT NULL,
  `urlImage` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Film`
--

INSERT INTO `Film` (`idFilm`, `titre`, `annee`, `idMes`, `genre`, `resume`, `codePays`, `urlImage`) VALUES
(1, 'Vertigo', 1958, 3, 'Drame', 'Scottie Ferguson, ancien inspecteur de police, est sujet au vertige depuis qu\'il a vu mourir son\r\n collègue. Elster, son ami, le charge de surveiller sa femme, Madeleine, ayant des tendances\r\n suicidaires. Amoureux de la jeune femme Scottie ne remarque pas le piège qui se trame autour\r\n de lui et dont il va être la victime... ', 'USA', 'http://fr.web.img1.acsta.net/medias/nmedia/00/02/56/87/aff.jpg'),
(2, 'Alien', 1979, 4, 'Science-fiction', 'Près d\'un vaisseau spatial échoué sur une lointaine planète, des Terriens en mission découvrent\r\n de bien étranges \"oeufs\". Ils en ramènent un à bord, ignorant qu\'ils viennent d\'introduire parmi\r\n eux un huitième passager particulièrement féroce et meurtrier. ', 'USA', 'http://fr.web.img3.acsta.net/medias/nmedia/18/35/14/60/18363837.jpg'),
(3, 'Titanic', 1997, 6, 'Drame', 'Conduite par Brock Lovett, une expédition américaine fouillant l\'épave du Titanic remonte à la\r\n surface le croquis d\'une femme nue. Alertée par les médias la dame en question, Rose DeWitt\r\n Bukater, aujourd\'hui centenaire, rejoint les lieux du naufrage, d\'où elle entreprend de conter le\r\n récit de son fascinant, étrange et tragique voyage... ', 'USA', 'http://fr.web.img4.acsta.net/medias/nmedia/18/36/27/14/20051394.jpg'),
(4, 'Sacrifice', 1986, 9, 'Drame', '', 'FR', 'http://fr.web.img2.acsta.net/medias/nmedia/18/93/81/91/20279372.jpg'),
(5, 'Volte/Face', 1997, 10, 'Action', 'Directeur d\'une unité anti-terroriste, Sean Archer recherche Castor Troy, un criminel responsable de la\r\n mort de son fils six ans plus tôt. Il parvient à l\'arrêter mais apprend que Troy a caché une bombe au Palais\r\n des Congrès de Los Angeles. Seul le frère de Troy peut la désamorcer et, pour l\'approcher, Archer se fait\r\n greffer le visage de Troy. ', 'USA', 'http://fr.web.img3.acsta.net/medias/nmedia/18/97/55/80/20535753.jpg'),
(6, 'Sleepy Hollow', 1999, 13, 'Fantastique', 'Nouvelle Angleterre, 1799. A Sleepy Hollow, plusieurs cadavres sont retrouvés décapités. La\r\n                                      rumeur attribue ces meurtres à un cavalier lui-même sans tête. Mais le fin limier\r\n                                      new-yorkais Ichabod Crane ne croit pas en ses aberrations. Tombé sous le charme de la\r\n                                      vénéneuse Katrina, il mène son enquête au coeur des sortilèges de Sleepy Hollow.. ', 'USA', 'http://fr.web.img6.acsta.net/medias/nmedia/18/74/38/21/19255611.jpg'),
(7, 'American Beauty', 1999, 17, 'Comédie', 'Lester Burnham, sa femme Carolyn et leur fille Jane mènent apparemment une vie des plus\r\n heureuses dans leur belle banlieue. Mais derrière cette respectable façade se tisse une étrange\r\n et grinçante tragi-comédie familiale où désirs inavoués, frustrations et violences refoulées\r\n conduiront inexorablement un homme vers la mort. ', 'USA', 'http://fr.web.img4.acsta.net/medias/nmedia/18/65/85/19/18916273.jpg'),
(8, 'Impitoyable', 1992, 20, 'Western', 'Légendaire hors-la-loi, William Munny s\'est reconverti depuis onze ans en paisible fermier. Il\r\n reprend néanmoins les armes pour traquer deux tueurs en compagnie de son vieil ami Ned\r\n Logan. Mais ce dernier est capturé, puis éxécute. L\'honneur et l\'amitié imposent dès lors à\r\n Munny de redevenir une dernière fois le héros qu\'il fut jadis... ', 'USA', 'http://fr.web.img4.acsta.net/medias/nmedia/00/02/40/70/impitoyable.jpg'),
(9, 'Gladiator', 2000, 4, 'Drame', 'Le général romain Maximus est le plus fidèle\r\n                    soutien de l\'empereur Marc Aurèle, qu\'il a\r\n                    conduit de victoire en victoire avec une\r\n                    bravoure et un dévouement exemplaires.\r\n                    Jaloux du prestige de Maximus, et plus\r\n                    encore de l\'amour que lui voue l\'empereur,\r\n                    le fils de Marc-Aurèle, Commode, s\'arroge\r\n                    brutalement le pouvoir, puis ordonne\r\n                    l\'arrestation du général et son exécution.\r\n                    Maximus échappe à ses assassins mais ne peut\r\n                    empêcher le massacre de sa famille. Capturé\r\n                    par un marchand d\'esclaves, il devient\r\n                    gladiateur et prépare sa vengeance.', 'USA', 'http://fr.web.img1.acsta.net/medias/nmedia/18/68/64/41/19254510.jpg'),
(10, 'Blade Runner', 1982, 4, 'Action', 'En 2019, lors de la décadence de Los Angeles, des êtres synthétiques, sans pensée, sans\r\n émotions, suffisent aux différents travaux d\'entretien. Leur durée de vie n\'excède pas 4 années.\r\n Un jour, ces ombres humaines se révoltent et on charge les tueurs, appelés Blade Runner, de\r\n les abattre... ', 'USA', 'http://fr.web.img4.acsta.net/pictures/15/09/23/11/37/330370.jpg'),
(11, 'Piège de cristal', 1988, 26, 'Action', 'John Mc Clane, policier new-yorkais, vient passer Noel a Los Angeles aupres de sa femme.\r\n Dans le building ou elle travaille, il se retrouve temoin de la prise en otage de tout le personnel\r\n par 12 terroristes. Objectif de ces derniers, vider les coffres de la societe. Cache mais isole, il\r\n entreprend de prevenir l\'exterieur...', 'USA', 'http://fr.web.img2.acsta.net/pictures/14/08/14/12/00/419467.jpg'),
(12, '58 minutes pour vivre', 1990, 28, 'Action', 'Venu attendre sa femme a l\'aéroport, le policier John McClane remarque la présence de\r\n terroristes qui ont pris le contrôle des pistes, empêchant tout avion d\'atterrir et menaçant de\r\n laisser les appareils en vol tourner jusqu\'à épuisement de leur kérosène. John n\'a devant lui que\r\n 58 minutes pour éviter la catastrophe... ', 'USA', 'http://fr.web.img3.acsta.net/medias/nmedia/18/36/04/14/19052566.jpg'),
(13, 'Van Gogh', 1990, 29, 'Drame', 'Les derniers jours de la vie de Vincent Van Gogh, réfugié à Auvers-sur-Oise, près de chez son\r\n ami et protecteur le docteur Gachet, un ami de son frère Théo. Ce peintre maudit, que les\r\n villageois surnommaient \"le fou\", n\'avait alors plus que deux mois à vivre, qu\'il passa en\r\n peignant un tableau par jour. ', 'FR', 'http://fr.web.img3.acsta.net/medias/nmedia/18/35/57/02/19151865.jpg'),
(14, 'Seven', 1995, 31, 'Policier', 'A New York, un criminel anonyme a décidé de commettre 7 meurtres basés sur les 7 pêchés\r\n capitaux énoncés dans la Bible : gourmandise, avarice, paresse, orgueil, luxure, envie et colère.\r\n Vieux flic blasé à 7 jours de la retraite, l\'inspecteur Somerset mène l\'enquête tout en formant\r\n son remplaçant, l\'ambitieux inspecteur David Mills... ', 'USA', 'http://fr.web.img2.acsta.net/medias/nmedia/18/35/91/33/19255605.jpg'),
(15, 'L\'armée des douze singes', 1995, 33, 'Science-fiction', '', 'USA', 'http://fr.web.img6.acsta.net/medias/nmedia/18/64/75/57/18866817.jpg'),
(16, 'Le nom de la rose', 1986, 34, 'Policier', 'En l\'an 1327, dans une abbaye bénédictine, le moine franciscain Guillaume de Baskerville,\r\n accompagné de son jeune novice Adso, enquête sur de mystérieuses morts qui frappent la\r\n confrérie. Le secret semble résider dans la bibliothèque, où le vieux Jorge garde jalousement un\r\n livre jugé maudit. ', 'FR', 'http://fr.web.img2.acsta.net/medias/00/52/81/005281_af.jpg'),
(17, 'Pulp fiction', 1994, 37, 'Action', 'Pulp Fiction décrit l\'odyssée sanglante et burlesque de petits malfrats dans la jungle de\r\n Hollywood, ou s\'entrecroisent les destins de deux petits tueurs, d\'un dangereux gangster marié\r\n à une camée, d\'un boxeur roublard, de prêteurs sur gages sadiques, d\'un caïd élégant et\r\n dévoué, d\'un dealer bon mari et de deux tourtereaux à la gachette facile... ', 'USA', 'http://fr.web.img4.acsta.net/medias/nmedia/18/36/02/52/18846059.jpg'),
(18, 'Mary à tout prix', 1998, 41, 'Comédie', 'Pour retrouver l\'amour de sa jeunesse, la belle Mary, Ted-le-looser engage Pat Healy, un\r\n privé. Subjugé par la jeune femme, ce dernier tente de la séduire en se faisant passer pour un\r\n architecte. Il cache la vérité à Ted et fait cause commune avec Tucker, un autre prétendant,\r\n pour se débarrasser de l\'encombrant Ted... ', 'USA', 'http://fr.web.img4.acsta.net/medias/04/21/31/042131_af.jpg'),
(19, 'Terminator', 1984, 6, 'Science-fiction', 'Deux creatures venues du futur debarquent sur terre. L\'une d\'entre elles, le Terminator, doit\r\n eliminer une certaine Sarah Connor, qui doit enfanter celui qui sera le chef d\'un groupe de\r\n resistants. L\'autre, Kyle Reese, est charge par les rebelles de defendre Sarah... ', 'USA', 'http://fr.web.img3.acsta.net/medias/nmedia/18/35/91/09/19255618.jpg'),
(20, 'Les dents de la mer', 1975, 45, 'Horreur', 'Dans la station balnéaire d\'Amityville, un requin géant frappe à plusieurs reprises. Soucieux\r\n d\'une bonne saison touristique, le maire interdit au sherif Brody de fermer les plages. Une prime\r\n est offerte et le célèbre chasseur de requin Quint se lance avec Brody et l\'ichtyologue Hooper à\r\n la poursuite du monstre... ', 'FR', 'http://fr.web.img6.acsta.net/pictures/120/120411_20130802174822094.jpg'),
(21, 'Le silence des agneaux', 1990, 49, 'Policier', 'Afin de retrouver la piste d\'un tueur surnommé Buffalo Bill car il scalpe les femmes qu\'il\r\n assassine, la jeune stagiaire du FBI Clarice Starling est dépêchée auprès d\'Hannibal Lecter,\r\n prisonnier pour avoir dévoré ses victimes. La coopération de ce dernier devrait permettre à\r\n Clarice de saisir et d\'anticiper le comportement de Buffalo... ', 'USA', 'http://fr.web.img4.acsta.net/medias/nmedia/00/02/56/93/aff.jpg'),
(22, 'Godzilla', 1998, 58, 'Action', 'Issu des radiations atomiques engendrées par les essais nucléaires en Polynésie, un monstre\r\n gigantesque, aussi haut qu\'un building, se dirige vers New York, semant le chaos sur son\r\n passage. Pour tenter de stopper cette créature destructrice, l\'armée s\'associe à une équipe de\r\n scientifiques américains et à un énigmatique enquêteur français... ', 'USA', 'http://fr.web.img6.acsta.net/pictures/14/03/25/14/43/167915.jpg'),
(23, 'Matrix', 1999, 61, 'Science-fiction', 'Dans un monde où tout ce qui semble réel est en fait élaboré par l\'univers électronique baptisé\r\n la Matrice, Néo, un programmeur, est contacté par un certain Morpheus. D\'après lui, Néo\r\n serait le Libérateur tant attendu, le seul capable de mettre en échec l\'omnipotence de la\r\n Matrice et rendre ses droits à la réalité... ', 'USA', 'http://fr.web.img6.acsta.net/medias/04/34/49/043449_af.jpg'),
(24, 'Mission: Impossible', 1996, 64, 'Action', 'Chargé d\'une nouvelle mission, l\'agent du contre espionnage Ethan Hunt tombe avec son\r\n équipe dans un piège sanglant. Seul survivant avec Claire, la jeune épouse de son regretté chef\r\n Jim Phelps, Ethan se retrouve accusé de trahison. En fuite, il prépare sa contre-attaque,\r\n recrutant l\'homme de main Krieger et le pirate informatique Luther... ', 'USA', 'http://fr.web.img1.acsta.net/pictures/188/630/18863006_20130730124823207.jpg'),
(25, 'Kagemusha', 1980, 68, 'Guerre', 'Au XVIe siecle, Takeda, grand seigneur trouble par les guerres civiles de son pays, fait appel a\r\n un Kagemusha pour l\'aider dans ses batailles. Takeda est blesse et avant de mourir, il exige que\r\n sa mort soit tenue secrete pendant trois ans afin d\'eviter un eclatement du clan. Le Kagemusha\r\n devra le remplacer... ', 'JP', 'http://fr.web.img6.acsta.net/pictures/15/09/30/11/18/174807.jpg'),
(26, 'Les pleins pouvoirs', 1997, 20, 'Policier', 'Luther Whitney est l\'as des cambrioleurs. Occupé à vider le coffre de l\'influent Walter Sullivan,\r\n il est témoin d\'un meurtre sadique impliquant le Président des Etats-Unis et les services\r\n secrets. Soupçonné par la police d\'en être l\'auteur, il se retrouve également traqué par les\r\n tueurs, qui ont compris qu\'ils ont été observés.', 'USA', 'http://fr.web.img1.acsta.net/medias/nmedia/18/65/60/19/19158665.jpg'),
(27, 'Le gendarme et les extra-terrestres', 1978, 71, 'Comédie', 'En anglais: Gendarme and the Creatures from Outer Space !\r\n', 'FR', 'http://fr.web.img1.acsta.net/medias/nmedia/18/66/26/01/18922889.jpg'),
(28, 'Le monde perdu', 1997, 45, 'Horreur', '', 'USA', 'http://fr.web.img2.acsta.net/medias/nmedia/00/02/11/66/affiche.jpg'),
(29, 'Rain Man', 1988, 79, 'Drame', 'A la mort de son père, Charlie se voit déposséder de son héritage par un frère dont il ignorait\r\n l\'existence, Raymond. Celui-ci est autiste et vit dans un hôpital psychiatrique. Charlie enlève\r\n Raymond afin de prouver qu\'il est capable de s\'en occuper et de toucher l\'héritage. ', 'USA', 'http://fr.web.img1.acsta.net/medias/nmedia/18/65/43/69/19254800.jpg'),
(30, 'Top Gun', 1986, 81, 'Action', '\r\n Pilote de chasse émérite mais casse-cou Maverick Mitchell est admis à Top Gun, l\'école de\r\n l\'élite de l\'aéronavale. Son manque de prudence lui attire les foudres de ses supérieurs et la\r\n haine de certains coéquipiers. Il perd subitement la foi et confiance en lui quand son ami de\r\n toujours meurt en vol et qu\'il s\'en croit responsable... ', 'USA', 'http://fr.web.img6.acsta.net/pictures/15/06/12/12/58/422779.jpg'),
(31, 'Les bronzés font du ski', 1979, 83, 'Comédie', 'Apres avoir passe des vacances d\'ete ensemble, Bernard, Nathalie, Gigi, Jerome, Popeye,\r\n Jean-Claude et Christiane se retrouvent aux sports d\'hiver. Tous ont leurs problemes de coeur\r\n ou d\'argent, mais il faut bien vivre avec. Avant de se separer, se perdre dans la montagne leur\r\n permet de gouter aux joies de la \"vraie vie\" paysanne... ', 'FR', 'http://fr.web.img2.acsta.net/pictures/17/01/17/16/24/593647.jpg'),
(32, 'Le bon, la brute et le truand', 1966, 219, 'Western', 'Pendant la Guerre de Sécession, trois hommes, préférant s\'intéresser à leur profit personnel, se lancent à la recherche d\'un coffre contenant 200 000 dollars en pièces d\'or volés à l\'armée sudiste. Tuco sait que le trésor se trouve dans un cimetière, tandis que Joe connaît le nom inscrit sur la pierre tombale qui sert de cache. Chacun a besoin de l\'autre. Mais un troisième homme entre dans la course : Setenza, une brute qui n\'hésite pas à massacrer femmes et enfants pour parvenir à ses fins.', 'IT', 'http://fr.web.img2.acsta.net/pictures/14/09/23/10/28/237103.jpg'),
(33, 'Psychose', 1960, 3, 'Thriller', 'Après avoir volé 40 000 dollars, Marion Crane se rend dans un motel tenu par Norman Bates. Elle est\r\n poignardée sous sa douche par une femme. Norman fait disparaitre le corps et les affaires de la jeune\r\n femme. Mais Sam, le fiancé de Marion, inquiet de ne pas avoir de nouvelles, engage un détective pour la\r\n retrouver... ', 'USA', 'http://fr.web.img2.acsta.net/medias/nmedia/18/35/44/77/18672162.jpg'),
(34, 'Le retour du Jedi', 1983, 91, 'Science-fiction', 'Luke Skywalker s\'introduit chez Jabba pour delivrer Han Solo et la princesse Leia, tandis que l\'Empire\r\n reconstruit une deuxieme \"Etoile de la Mort\". Luke se rend ensuite au chevet de Yoda qui est mourant. Il lui\r\n apprend que Leia est sa soeur. Luke forme un commando pour attaquer l\'Etoile, tandis qu\'il affronte son\r\n pere, Darth Vador... ', 'USA', 'http://fr.web.img3.acsta.net/medias/nmedia/18/35/41/62/18422602.jpg'),
(35, 'Les oiseaux', 1963, 3, 'Horreur', 'Melanie Daniels se rend à Bodega Bay pour offrir deux perruches en cage à Cathy, la soeur de l\'avocat\r\n Mitch Brenner. Attaquée par une mouette, Melanie reste chez les Brenner pour la nuit. Mais d\'autres\r\n évènements étranges se produisent: des enfants sont blessés par des corbeaux et la maison de Mitch est\r\n envahie par des milliers d\'oiseaux. ', 'USA', 'http://fr.web.img3.acsta.net/pictures/15/07/15/10/14/508762.jpg'),
(36, 'Reservoir dogs', 1992, 37, 'Policier', 'Après un hold-up manqué, des cambrioleurs de haut vol font leurs comptes dans une confrontation violente, pour découvrir lequel d\'entre eux les a trahis.\r\n\r\n\r\n\r\n\r\n Voleurs de profession, Joe Cabot et son fils Eddie engagent un groupe de six criminels pour le cambriolage\r\n d\'un diamantaire. Malgré toutes les précautions prises, la police est sur place le jour J, et l\'opération se\r\n solde par un massacre. Les survivants du gang se réunissent pour règler leurs comptes, chacun\r\n soupçonnant l\'autre d\'avoir trahi. ', 'USA', 'http://fr.web.img6.acsta.net/medias/nmedia/18/35/49/60/18869530.jpg'),
(37, 'Eyes Wide Shut', 1999, 101, 'Thriller', 'Un couple de bourgeois, cédant à la jalousie et à l\'obsession sexuelle, entreprend un voyage psychologique\r\n à la recherche de son identité. Le mari, au bout de son périple nocturne, revenu de ses désirs, ne trouvera\r\n finalement auprès de son épouse qu\'un compromis banal mais complice, les yeux ouverts à tout jamais sur\r\n un rêve impossible. ', 'USA', 'http://fr.web.img2.acsta.net/medias/nmedia/18/65/43/72/19106205.jpg'),
(38, 'Shining', 1980, 101, 'Horreur', 'Jack Torrance s\'installe avec sa femme et son fils Danny dans un hôtel fermé à la morte saison afin d\'écrire\r\n un roman. Il apprend que le gardien précédent a tué sa femme et ses deux filles avant de se suicider. Très\r\n vite, Jack va s\'apercevoir que des choses étranges se passent autour de lui et que son fils a des pouvoirs\r\n extrasensoriels... ', 'FR', 'http://fr.web.img1.acsta.net/medias/nmedia/18/64/98/65/18816792.jpg'),
(39, 'Pas de printemps pour Marnie', 1964, 3, 'Thriller', 'Marnie est engagée comme secrétaire chez un editeur, Mark Rutland. Celui-ci amoureux d\'elle, découvre\r\n qu\'elle est kleptomane et l\'oblige à l\'épouser en la menaçant de la dénoncer. En s\'apercevant que Marnie a\r\n la phobie de la cou leur rouge, Mark tente de remonter dans le passé de la jeune femme afin de comprendre\r\n les raisons de sa névrose. ', 'USA', 'http://fr.web.img4.acsta.net/medias/nmedia/18/36/23/37/18464060.jpg'),
(40, 'Fenêtre sur cour', 1954, 3, 'Suspense', 'En repos forcé à cause d\'une jambe plâtrée, le reporter L.B. Jefferies observe au téléobjectif les voisins de\r\n l\'immeuble d\'en face. C\'est ainsi qu\'il remarque le curieux manège d\'un représentant de commerce, M.\r\n Thorwald, qu\'il soupconne très vite d\'avoir assassiné sa femme... ', 'USA', 'http://fr.web.img5.acsta.net/medias/nmedia/18/35/18/61/19015512.jpg'),
(41, 'La mort aux trousses', 1959, 3, 'Suspense', 'Roger Thornhill, publiciste, est pris dans le hall de son hôtel pour un certain Kaplan, un espion. Deux\r\n hommes tentent de le tuer et quand il retrouve l\'un de ses agresseurs, celui-ci est assassiné devant ses\r\n yeux. Pris pour un meurtrier, il est obligé de fuir vers Chicago... ', 'USA', 'http://fr.web.img1.acsta.net/pictures/14/05/19/09/52/511446.jpg'),
(42, 'Jeanne d\'Arc', 1999, 111, 'Guerre', '', 'FR', 'http://fr.web.img4.acsta.net/medias/nmedia/18/66/28/02/19087754.jpg'),
(43, 'Le cinquième élément', 1997, 111, 'Science-fiction', 'Au XXIIIème siècle, dans un univers étrange et coloré, où tout espoir de survie est impossible sans la\r\n découverte du Cinquième Elément, un héros peu ordinaire affronte le mal pour sauver l\'humanité. ', 'FR', 'http://fr.web.img6.acsta.net/pictures/14/08/21/14/17/385506.jpg'),
(44, 'Léon', 1994, 111, 'Action', '\"Léon est un tueur. Un de la pire espèce. Il est introuvable, indétectable, pire qu\'un sous-marin. Son ombre\r\n est comme une menace de danger permanent sur New York. Indestructible Léon ? Oui, jusqu\'à ce qu\'une\r\n petite souris pénètre son univers. Une toute petite souris aux yeux immenses...\" ', 'FR', 'http://fr.web.img2.acsta.net/pictures/14/08/21/14/15/233032.jpg'),
(45, 'Nikita', 1990, 111, 'Thriller', 'Nikita, droguée et violente, est prise en mains par des psychiatres qui la rééduquent, la conditionnent, afin\r\n d\'en faire une tueuse à la botte des Services Secrets. Plus tard, réalisant ce qu\'elle est devenue, un pion\r\n sans vie privée que l\'on manipule, elle tente d\'échapper à ses commanditaires. ', 'FR', 'http://fr.web.img2.acsta.net/pictures/14/08/21/14/11/304073.jpg'),
(46, 'Le grand bleu', 1988, 111, 'Drame', 'Jacques Mayol et Enzo Molinari se connaissent depuis l\'enfance. Tous deux experts en apnée, s\'affrontent\r\n continuellement pour obtenir le record du monde de plongée. Toujours en rivalité, les deux hommes\r\n descendent de plus en plus profond, au risque de leurs vies. Le film est ressorti en janvier 89 en version\r\n longue d\'une durée de 2h40. ', 'FR', 'http://fr.web.img5.acsta.net/pictures/14/08/21/14/09/379570.jpg'),
(47, 'Spider-Man', 2002, 187, 'Action', 'Orphelin, Peter Parker est élevé par sa tante May et son oncle Ben dans le quartier Queens de New York. Tout en poursuivant ses études à l\'université, il trouve un emploi de photographe au journal Daily Bugle. Il partage son appartement avec Harry Osborn, son meilleur ami, et rêve de séduire la belle Mary Jane.\r\nCependant, après avoir été mordu par une araignée génétiquement modifiée, Peter voit son agilité et sa force s\'accroître et se découvre des pouvoirs surnaturels. Devenu Spider-Man, il décide d\'utiliser ses nouvelles capacités au service du bien.\r\nAu même moment, le père de Harry, le richissime industriel Norman Osborn, est victime d\'un accident chimique qui a démesurément augmenté ses facultés intellectuelles et sa force, mais l\'a rendu fou. Il est devenu le Bouffon Vert, une créature démoniaque qui menace la ville. Entre lui et Spider-Man, une lutte sans merci s\'engage.', 'USA', 'http://fr.web.img5.acsta.net/medias/nmedia/00/00/00/33/spiderman.jpg'),
(48, 'King of New York', 1990, 122, 'Drame', 'L\'histoire d\'un gangster au grand coeur mais aux méthodes définitives, surnommé par le presse The King of New York et qui rêve de fonder un hôpital, confronté a des policiers opiniâtres qui ont juré de l\'abattre...', 'USA', 'http://fr.web.img3.acsta.net/medias/nmedia/18/35/92/68/18450199.jpg'),
(49, 'The Matrix reloaded', 2003, 61, 'Science-fiction', 'Neo apprend à mieux contrôler ses dons naturels, alors même que Sion s\'apprête à tomber sous l\'assaut de l\'Armée des Machines. D\'ici quelques heures, 250 000 Sentinelles programmées pour anéantir notre espèce envahiront la dernière enclave humaine de la Terre.\r\nMais Morpheus galvanise les citoyens de Sion en leur rappelant la Parole de l\'Oracle : il est encore temps pour l\'Elu d\'arrêter la guerre contre les Machines. Tous les espoirs se reportent dès lors sur Neo. Au long de sa périlleuse plongée au sein de la Matrix et de sa propre destinée, ce dernier sera confronté à une résistance croissante, une vérité encore plus aveuglante, un choix encore plus douloureux que tout ce qu\'il avait jamais imaginé.', 'USA', 'http://fr.web.img3.acsta.net/medias/nmedia/00/02/53/34/affiche.jpg'),
(50, 'The Matrix Revolutions', 2003, 135, 'Science-fiction', 'La longue quête de liberté des rebelles culmine en une bataille finale explosive. Tandis que l\'armée des Machines sème la désolation sur Zion, ses citoyens organisent une défense acharnée. Mais pourront-ils retenir les nuées implacables des Sentinelles en attendant que Neo s\'approprie l\'ensemble de ses pouvoirs et mette fin à la guerre ?\r\nL\'agent Smith est quant à lui parvenu à prendre possession de l\'esprit de Bane, l\'un des membres de l\'équipage de l\'aéroglisseur. De plus en plus puissant, il est désormais incontrôlable et n\'obéit plus aux Machines : il menace de détruire leur empire ainsi que le monde réel et la Matrice...\r\n\r\n	', 'USA', 'http://fr.web.img1.acsta.net/medias/nmedia/18/35/14/64/18364977.jpg'),
(51, 'De bruit et de fureur', 1988, 238, 'Drame', 'L\'histoire de Bruno, enfant attardé des banlieues et des H.L.M., plongé dans la violence de son milieu, et dont la vie va se consumer comme une étoile filante.', 'FR', 'http://fr.web.img5.acsta.net/medias/nmedia/images/affiches/008635.jpg'),
(52, 'Usual suspects', 1995, 250, 'Thriller', 'Une légende du crime contraint cinq malfrats à aller s\'aquitter d\'une tâche très périlleuse. Ceux qui survivent pourront se partager un butin de 90 millions de dollars.', 'USA', 'http://fr.web.img2.acsta.net/medias/nmedia/00/02/29/04/69199504_af.jpg'),
(53, 'Bad Lieutenant', 1992, 122, 'Drame', 'La descente aux enfers d\'un flic pourri qui enquete sur le viol d\'une jolie religieuse.', 'USA', 'http://fr.web.img2.acsta.net/pictures/16/07/28/16/21/332451.jpg'),
(54, 'Le parrain', 1972, 181, 'Drame', 'En 1945, à New York, les Corleone sont une des cinq familles de la mafia. Don Vito Corleone, \" parrain \" de cette famille, marie sa fille à un bookmaker. Sollozzo, \" parrain \" de la famille Tattaglia, propose à Don Vito une association dans le trafic de drogue, mais celui-ci refuse. Sonny, un de ses fils, y est quant à lui favorable.\r\nAfin de traiter avec Sonny, Sollozzo tente de faire tuer Don Vito, mais celui-ci en réchappe. Michael, le frère cadet de Sonny, recherche alors les commanditaires de l\'attentat et tue Sollozzo et le chef de la police, en représailles.\r\nMichael part alors en Sicile, où il épouse Apollonia, mais celle-ci est assassinée à sa place. De retour à New York, Michael épouse Kay Adams et se prépare à devenir le successeur de son père...', 'USA', 'http://fr.web.img4.acsta.net/medias/nmedia/18/35/57/73/18660716.jpg'),
(55, 'Le parrain II', 1974, 181, 'Drame', 'A la mort de Vito Corleone, dit \"le Parrain\", c\'est son fils, Michael, qui reprend les affaires familiales. Très vite, son ascension dans le milieu mafiosi est fulgurante.\r\n\r\nDepuis la mort De Don Vito Corleone, son fils, Michael, règne sur la famille. Amené à négocier avec la mafia juive, il perd alors le soutien d\'un de ses lieutenants, Frankie Pentageli. Echappant de justesse à un attentat, Michael tente de retrouver le coupable, soupçonnant Hyman Roth, le chef de la mafia juive.\r\nVito Corleone, immigrant italien, arrive à New York au début du siècle ; très vite, il devient un des caïds du quartier, utilisant la violence comme moyen de régler toutes les affaires. Seul au départ, il bâtit peu à peu un véritable empire, origine de la fortune de la famille des Corleone.\r\n	', 'USA', 'http://fr.web.img6.acsta.net/medias/nmedia/18/35/24/16/18861226.jpg'),
(56, 'Le parrain III', 1990, 181, 'Drame', 'Atteignant la soixantaine, Michael Corleone désire à la fois renouer avec les siens et se réhabiliter aux yeux de la société, surtout de l\'Eglise. Il arrivera presque a ses fins, mais sa vie passée et ses anciens ennemis le rattraperont plus vite.\r\n\r\nMichael Corleone est fatigué. Il veut prendre ses distances avec les activités mafieuses de sa famille. Il veut convertir ces activités en affaires légales. Kay, son ex-femme, lui fait même accepter que leur fils devienne un chanteur d\'opéra et ne reprenne pas les activités familiales.\r\nPendant ce temps, la fille de Michael, Mary, et son neveu, le fils de Sonny, Vincent, nouent une idylle qui n\'est pas la bienvenue dans la famille.\r\nIl décide d\'aider le Vatican à renflouer ses caisses et reçoit en échange le contrôle d\'une entreprise immobilière leur appartenant. Attisant la jalousie de ses pairs, Michael échappe de justesse à un attentat commis par l\'un d\'eux. Vincent se propose alors pour reprendre les affaires de la famille en main.', 'USA', 'http://fr.web.img3.acsta.net/medias/nmedia/18/35/24/17/18376629.jpg'),
(57, 'Jackie Brown', 1997, 37, 'Policier', 'Jackie Brown, hôtesse de l\'air, arrondit ses fins de mois en convoyant de l\'argent liquide pour le compte d\'un trafiquant d\'armes, Ordell Robbie. Un jour, un agent federal et un policier de Los Angeles la cueillent à l\'aéroport. Ils comptent sur elle pour faire tomber le trafiquant. Jackie échafaude alors un plan audacieux pour doubler tout le monde lors d\'un prochain transfert qui porte sur la modeste somme de cinq cent mille dollars. Mais il lui faudra compter avec les complices d\'Ordell, qui ont des méthodes plutôt expéditives.', 'USA', 'http://fr.web.img6.acsta.net/medias/04/05/00/040500_af.jpg'),
(58, 'Une journée en enfer', 1995, 26, 'Action', 'John McClane est cette fois-ci aux prises avec un maître chanteur, facétieux et dangereux, qui dépose des bombes dans New York.', 'USA', 'http://fr.web.img1.acsta.net/medias/nmedia/18/36/04/16/18686568.jpg'),
(59, 'Sixième sens', 1999, 170, 'Fantastique', 'Cole Sear, garconnet de huit ans est hanté par un terrible secret. Son imaginaire est visité par des esprits menacants. Trop jeune pour comprendre le pourquoi de ces apparitions et traumatisé par ces pouvoirs paranormaux, Cole s\'enferme dans une peur maladive et ne veut reveler à personne la cause de son enfermement, à l\'exception d\'un psychologue pour enfants. La recherche d\'une explication rationnelle guidera l\'enfant et le thérapeute vers une vérité foudroyante et inexplicable.', 'USA', 'http://fr.web.img6.acsta.net/medias/nmedia/18/66/15/77/19255607.jpg'),
(60, 'Lost in Translation', 2003, 241, 'Comédie sentimentale', 'Bob Harris, acteur sur le déclin, se rend à Tokyo pour touner un spot publicitaire. Il a conscience qu\'il se trompe - il devrait être chez lui avec sa famille, jouer au théâtre ou encore chercher un rôle dans un film -, mais il a besoin d\'argent.\r\nDu haut de son hôtel de luxe, il contemple la ville, mais ne voit rien. Il est ailleurs, détaché de tout, incapable de s\'intégrer à la réalité qui l\'entoure, incapable également de dormir à cause du décalage horaire.\r\nDans ce même établissement, Charlotte, une jeune Américaine fraîchement diplômée, accompagne son mari, photographe de mode. Ce dernier semble s\'intéresser davantage à son travail qu\'à sa femme. Se sentant délaissée, Charlotte cherche un peu d\'attention. Elle va en trouver auprès de Bob...', 'USA', 'http://fr.web.img2.acsta.net/medias/nmedia/18/35/15/97/18365406.jpg'),
(61, 'Kill Bill', 2003, 37, 'Drame', 'Au cours d\'une cérémonie de mariage en plein désert, un commando fait irruption dans la chapelle et tire sur les convives. Laissée pour morte, la Mariée enceinte retrouve ses esprits après un coma de quatre ans.\r\nCelle qui a auparavant exercé les fonctions de tueuse à gages au sein du Détachement International des Vipères Assassines n\'a alors plus qu\'une seule idée en tête : venger la mort de ses proches en éliminant tous les membres de l\'organisation criminelle, dont leur chef Bill qu\'elle se réserve pour la fin.', 'USA', 'http://fr.web.img3.acsta.net/medias/nmedia/18/35/13/45/18377926.jpg'),
(62, 'Stalingrad', 2001, 34, 'Drame', '', 'USA', 'http://fr.web.img6.acsta.net/medias/nmedia/18/77/42/07/19404493.jpg'),
(63, 'Million Dollar Baby', 2005, 20, 'Drame', 'Une histoire d\'amour tragique et platonique entre une boxeuse et un vieil entraîneur de trente ans son aîné.', 'USA', 'http://fr.web.img4.acsta.net/medias/nmedia/18/35/48/67/18409541.jpg'),
(64, 'Pour quelques dollars de plus', 1965, 219, 'Western', 'Le colonel Douglas Mortimer collabore avec un chasseur de primes surnommé L\'\"Etranger\". Tous les deux souhaitent capturer Indio, un tueur fou, qui sème la terreur autour de lui. Ce dernier et ses hommes sont sur le point de piller la banque d\'El Paso.', 'IT', 'http://fr.web.img4.acsta.net/medias/nmedia/18/64/43/31/19182254.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE `formations` (
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`code`, `nom`) VALUES
('CPGE', 'Classes préparatoires aux grandes écoles (CPGE)'),
('EC_ART', 'Écoles supérieures art et culture'),
('EC_autres', 'Autres écoles de spécialités diverses'),
('EC_JUR', 'Écoles juridiques et administratives'),
('EC_PARAM', 'Écoles paramédicales et sociales'),
('ENS', 'Écoles normales supérieures (ENS)'),
('ESPE', 'ESPE'),
('ING_autres', 'Autres formations d\'ingénieurs'),
('STS', 'Sections de techniciens supérieurs (STS) et assimilés'),
('UNIV', 'Universités');

-- --------------------------------------------------------

--
-- Structure de la table `Genre`
--

CREATE TABLE `Genre` (
  `code` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Genre`
--

INSERT INTO `Genre` (`code`) VALUES
('Action'),
('Aventures'),
('Catastrophe'),
('Comédie'),
('Comédie dramatique'),
('Comédie sentimentale'),
('Dessin animé'),
('Documentaire'),
('Drame'),
('Fantastique'),
('Guerre'),
('Histoire'),
('Horreur'),
('Policier'),
('Science-fiction'),
('Suspense'),
('Thriller'),
('Western');

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `num` int(11) NOT NULL,
  `nom` text NOT NULL,
  `niveau` int(11) NOT NULL,
  `outil` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`num`, `nom`, `niveau`, `outil`) VALUES
(1, 'Mohammed Bennis', 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `mytable`
--

CREATE TABLE `mytable` (
  `Numero` int(11) NOT NULL,
  `FIELD2` varchar(6) NOT NULL,
  `Nom` varchar(198) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mytable`
--

INSERT INTO `mytable` (`Numero`, `FIELD2`, `Nom`) VALUES
(1, 'abrégé', 'Comptes de capitaux'),
(2, 'abrégé', 'Comptes d’immobilisations'),
(3, 'abrégé', 'Comptes de stocks et en-cours'),
(4, 'abrégé', 'Comptes de tiers'),
(5, 'abrégé', 'Comptes financiers'),
(6, 'abrégé', 'Comptes de charges'),
(7, 'abrégé', 'Comptes de produits'),
(8, 'abrégé', 'Comptes spéciaux'),
(10, 'base', 'Capital et réserves'),
(11, 'base', 'Report à nouveau (solde créditeur ou débiteur)'),
(12, 'abrégé', 'Résultat de l’exercice (bénéfice ou perte)'),
(13, 'base', 'Subventions d’investissement'),
(14, 'base', 'Provisions réglementées'),
(15, 'abrégé', 'Provisions'),
(16, 'abrégé', 'Emprunts et dettes assimilées'),
(17, 'base', 'Dettes rattachées à des participations'),
(18, 'base', 'Comptes de liaison des établissements et sociétés en participation'),
(20, 'abrégé', 'Immobilisations incorporelles'),
(21, 'abrégé', 'Immobilisations corporelles'),
(22, 'base', 'Immobilisations mises en concession'),
(23, 'abrégé', 'Immobilisations en cours'),
(25, 'base', 'Parts dans des entreprises liées et créances sur des entreprises liées'),
(26, 'base', 'Participations et créances rattachées à des participations'),
(27, 'abrégé', 'Autres immobilisations financières'),
(28, 'base', 'Amortissements des immobilisations'),
(29, 'base', 'Dépréciations des immobilisations'),
(31, 'abrégé', 'Matières premières (et fournitures)'),
(32, 'abrégé', 'Autres approvisionnements'),
(33, 'abrégé', 'En-cours de production de biens'),
(34, 'abrégé', 'En-cours de production de services'),
(35, 'abrégé', 'Stocks de produits'),
(36, 'base', '(compte à ouvrir, le cas échéant, sous l’intitulé \"Stocks provenant d’immobilisations\")'),
(37, 'abrégé', 'Stocks de marchandises'),
(38, 'base', '(lorsque l’entité tient un inventaire permanent en comptabilité générale, le compte 38 peut être utilisé pour comptabiliser les stocks en voie d’acheminement, mis en dépôt ou donnés en consignation)'),
(39, 'base', 'Dépréciations des stocks et en-cours'),
(40, 'base', 'Fournisseurs et comptes rattachés'),
(41, 'base', 'Clients et comptes rattachés'),
(42, 'base', 'Personnel et comptes rattachés'),
(43, 'abrégé', 'Sécurité sociale et autres organismes sociaux'),
(44, 'base', 'État et autres collectivités publiques'),
(45, 'abrégé', 'Groupe et associés'),
(46, 'abrégé', 'Débiteurs divers et créditeurs divers'),
(47, 'abrégé', 'Comptes transitoires ou d’attente'),
(48, 'base', 'Comptes de régularisation'),
(49, 'base', 'Dépréciations des comptes de tiers'),
(50, 'abrégé', 'Valeurs mobilières de placement'),
(51, 'abrégé', 'Banques, établissements financiers et assimilés'),
(52, 'base', 'Instruments de trésorerie'),
(53, 'abrégé', 'Caisse'),
(54, 'abrégé', 'Régies d’avance et accréditifs'),
(58, 'abrégé', 'Virements internes'),
(59, 'base', 'Dépréciations des comptes financiers'),
(60, 'abrégé', 'Achats (sauf 603)'),
(61, 'abrégé', 'Services extérieurs'),
(62, 'abrégé', 'Autres services extérieurs'),
(63, 'abrégé', 'Impôts, taxes et versements assimilés'),
(64, 'base', 'Charges de personnel'),
(65, 'abrégé', 'Autres charges de gestion courante'),
(66, 'abrégé', 'Charges financières'),
(67, 'abrégé', 'Charges exceptionnelles'),
(68, 'base', 'Dotations aux amortissements, aux dépréciations et aux provisions'),
(69, 'base', 'Participation des salariés – Impôts sur les bénéfices et assimilés'),
(70, 'base', 'Ventes de produits fabriqués, prestations de services, marchandises'),
(71, 'base', 'Production stockée (ou déstockage)'),
(72, 'abrégé', 'Production immobilisée'),
(74, 'abrégé', 'Subventions d’exploitation'),
(75, 'abrégé', 'Autres produits de gestion courante'),
(76, 'abrégé', 'Produits financiers'),
(77, 'abrégé', 'Produits exceptionnels'),
(78, 'base', 'Reprises sur amortissements, dépréciations et provisions'),
(79, 'abrégé', 'Transferts de charges'),
(80, 'base', 'Engagements'),
(88, 'base', 'Résultat en instance d’affectation'),
(89, 'base', 'Bilan'),
(101, 'abrégé', 'Capital'),
(102, 'base', 'Fonds fiduciaires'),
(104, 'base', 'Primes liées au capital social'),
(105, 'abrégé', 'Écarts de réévaluation'),
(106, 'base', 'Réserves'),
(107, 'base', 'Écart d’équivalence'),
(108, 'abrégé', 'Compte de l’exploitant'),
(109, 'base', 'Actionnaires : Capital souscrit – non appelé'),
(110, 'étendu', 'Report à nouveau (solde créditeur)'),
(119, 'étendu', 'Report à nouveau (solde débiteur)'),
(120, 'étendu', 'Résultat de l’exercice (bénéfice)'),
(129, 'étendu', 'Résultat de l’exercice (perte)'),
(131, 'base', 'Subventions d’équipement'),
(138, 'base', 'Autres subventions d’investissement (même ventilation que celle du compte 131)'),
(139, 'base', 'Subventions d’investissement inscrites au compte de résultat'),
(142, 'base', 'Provisions réglementées relatives aux immobilisations'),
(143, 'base', 'Provisions réglementées relatives aux stocks'),
(144, 'base', 'Provisions réglementées relatives aux autres éléments de l’actif'),
(145, 'abrégé', 'Amortissements dérogatoires'),
(146, 'abrégé', 'Provision spéciale de réévaluation'),
(147, 'abrégé', 'Plus-values réinvesties'),
(148, 'abrégé', 'Autres provisions réglementées'),
(151, 'base', 'Provisions pour risques'),
(153, 'base', 'Provisions pour pensions et obligations similaires'),
(154, 'base', 'Provisions pour restructurations'),
(155, 'base', 'Provisions pour impôts'),
(156, 'base', 'Provisions pour renouvellement des immobilisations (entreprises concessionnaires)'),
(157, 'base', 'Provisions pour charges à répartir sur plusieurs exercices'),
(158, 'base', 'Autres provisions pour charges'),
(161, 'base', 'Emprunts obligataires convertibles'),
(162, 'base', 'Obligations représentatives de passifs nets remis en fiducie'),
(163, 'base', 'Autres emprunts obligataires'),
(164, 'base', 'Emprunts auprès des établissements de crédit'),
(165, 'base', 'Dépôts et cautionnements reçus'),
(166, 'étendu', 'Participation des salariés aux résultats'),
(167, 'base', 'Emprunts et dettes assortis de conditions particulières'),
(168, 'base', 'Autres emprunts et dettes assimilées'),
(169, 'base', 'Primes de remboursement des obligations'),
(171, 'base', 'Dettes rattachées à des participations (groupe)'),
(174, 'base', 'Dettes rattachées à des participations (hors groupe)'),
(178, 'base', 'Dettes rattachées à des sociétés en participation'),
(181, 'étendu', 'Comptes de liaison des établissements'),
(186, 'étendu', 'Biens et prestations de services échangés entre établissements (charges)'),
(187, 'étendu', 'Biens et prestations de services échangés entre établissements (produits)'),
(188, 'étendu', 'Comptes de liaison des sociétés en participation'),
(201, 'abrégé', 'Frais d’établissement'),
(203, 'base', 'Frais de recherche et de développement'),
(205, 'base', 'Concessions et droits similaires, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires'),
(206, 'abrégé', 'Droit au bail'),
(207, 'abrégé', 'Fonds commercial'),
(208, 'abrégé', 'Autres immobilisations incorporelles'),
(211, 'base', 'Terrains'),
(212, 'base', 'Agencements et aménagements de terrains (même ventilation que celle du compte 211)'),
(213, 'base', 'Constructions'),
(214, 'base', 'Constructions sur sol d’autrui (même ventilation que celle du compte 213)'),
(215, 'base', 'Installations techniques, matériels et outillage industriels'),
(218, 'base', 'Autres immobilisations corporelles'),
(231, 'base', 'Immobilisations corporelles en cours'),
(232, 'base', 'Immobilisations incorporelles en cours'),
(237, 'base', 'Avances et acomptes versés sur immobilisations incorporelles'),
(238, 'base', 'Avances et acomptes versés sur commandes d’immobilisations corporelles'),
(261, 'base', 'Titres de participation'),
(266, 'base', 'Autres formes de participation'),
(267, 'base', 'Créances rattachées à des participations'),
(268, 'base', 'Créances rattachées à des sociétés en participation'),
(269, 'base', 'Versements restant à effectuer sur titres de participation non libérés'),
(271, 'base', 'Titres immobilisés autres que les titres immobilisés de l’activité de portefeuille (droit de propriété)'),
(272, 'base', 'Titres immobilisés (droit de créance)'),
(273, 'base', 'Titres immobilisés de l’activité de portefeuille'),
(274, 'base', 'Prêts'),
(275, 'base', 'Dépôts et cautionnements versés'),
(276, 'base', 'Autres créances immobilisées'),
(277, 'base', '(Actions propres ou parts propres)'),
(278, 'base', 'Mali de fusion sur actifs financiers'),
(279, 'base', 'Versements restant à effectuer sur titres immobilisés non libérés'),
(280, 'abrégé', 'Amortissements des immobilisations incorporelles'),
(281, 'abrégé', 'Amortissements des immobilisations corporelles'),
(282, 'base', 'Amortissements des immobilisations mises en concession'),
(290, 'abrégé', 'Dépréciations des immobilisations incorporelles'),
(291, 'abrégé', 'Dépréciations des immobilisations corporelles (même ventilation que celle du compte 21)'),
(292, 'base', 'Dépréciations des immobilisations mises en concession'),
(293, 'base', 'Dépréciations des immobilisations en cours'),
(296, 'base', 'Dépréciations des participations et créances rattachées à des participations'),
(297, 'abrégé', 'Dépréciations des autres immobilisations financières'),
(311, 'base', 'Matières (ou groupe) A'),
(312, 'base', 'Matières (ou groupe) B'),
(317, 'base', 'Fournitures A, B, C,'),
(321, 'base', 'Matières consommables'),
(322, 'base', 'Fournitures consommables'),
(326, 'base', 'Emballages'),
(331, 'base', 'Produits en cours'),
(335, 'base', 'Travaux en cours'),
(341, 'base', 'Études en cours'),
(345, 'base', 'Prestations de services en cours'),
(351, 'base', 'Produits intermédiaires'),
(355, 'base', 'Produits finis'),
(358, 'base', 'Produits résiduels (ou matières de récupération)'),
(371, 'étendu', 'Marchandises (ou groupe) A'),
(372, 'étendu', 'Marchandises (ou groupe) B'),
(391, 'abrégé', 'Dépréciations des matières premières (et fournitures)'),
(392, 'abrégé', 'Dépréciations des autres approvisionnements'),
(393, 'abrégé', 'Dépréciations des en-cours de production de biens'),
(394, 'abrégé', 'Dépréciations des en-cours de production de services'),
(395, 'abrégé', 'Dépréciations des stocks de produits'),
(397, 'abrégé', 'Dépréciations des stocks de marchandises'),
(400, 'abrégé', 'Fournisseurs et comptes rattachés'),
(401, 'base', 'Fournisseurs'),
(403, 'base', 'Fournisseurs – Effets à payer'),
(404, 'base', 'Fournisseurs d’immobilisations'),
(405, 'base', 'Fournisseurs d’immobilisations – Effets à payer'),
(408, 'base', 'Fournisseurs – Factures non parvenues'),
(409, 'abrégé', 'Fournisseurs débiteurs'),
(410, 'abrégé', 'Clients et comptes rattachés'),
(411, 'base', 'Clients'),
(413, 'base', 'Clients – Effets à recevoir'),
(416, 'base', 'Clients douteux ou litigieux'),
(418, 'base', 'Clients – Produits non encore facturés'),
(419, 'abrégé', 'Clients créditeurs'),
(421, 'abrégé', 'Personnel – Rémunérations dues'),
(422, 'base', 'Comités d’entreprises, d’établissement, …'),
(424, 'base', 'Participation des salariés aux résultats'),
(425, 'base', 'Personnel – Avances et acomptes'),
(426, 'base', 'Personnel – Dépôts'),
(427, 'base', 'Personnel – Oppositions'),
(428, 'abrégé', 'Personnel – Charges à payer et produits à recevoir'),
(431, 'base', 'Sécurité sociale'),
(437, 'base', 'Autres organismes sociaux'),
(438, 'base', 'Organismes sociaux – Charges à payer et produits à recevoir'),
(441, 'base', 'État – Subventions à recevoir'),
(442, 'base', 'État – Impôts et taxes recouvrables sur des tiers'),
(443, 'base', 'Opérations particulières avec l’État les collectivités publiques, les organismes internationaux'),
(444, 'abrégé', 'État – Impôts sur les bénéfices'),
(445, 'abrégé', 'État – Taxes sur le chiffre d’affaires'),
(446, 'base', 'Obligations cautionnées'),
(447, 'abrégé', 'Autres impôts, taxes et versements assimilés'),
(448, 'base', 'État – Charges à payer et produits à recevoir'),
(449, 'base', 'Quotas d’émission à acquérir'),
(451, 'base', 'Groupe'),
(455, 'abrégé', 'Associés – Comptes courants'),
(456, 'base', 'Associés – Opérations sur le capital'),
(457, 'base', 'Associés – Dividendes à payer'),
(458, 'base', 'Associés – Opérations faites en commun et en GIE'),
(462, 'étendu', 'Créances sur cessions d’immobilisations'),
(464, 'étendu', 'Dettes sur acquisitions de valeurs mobilières de placement'),
(465, 'étendu', 'Créances sur cessions de valeurs mobilières de placement'),
(467, 'étendu', 'Autres comptes débiteurs ou créditeurs'),
(468, 'étendu', 'Divers – Charges à payer et produits à recevoir'),
(471, 'base', 'Comptes d’attente'),
(472, 'base', 'Comptes d’attente'),
(473, 'base', 'Comptes d’attente'),
(474, 'base', 'Comptes d’attente'),
(475, 'base', 'Comptes d’attente'),
(476, 'base', 'Différence de conversion – Actif'),
(477, 'base', 'Différences de conversion – Passif'),
(478, 'base', 'Autres comptes transitoires'),
(481, 'abrégé', 'Charges à répartir sur plusieurs exercices'),
(486, 'abrégé', 'Charges constatées d’avance'),
(487, 'abrégé', 'Produits constatés d’avance'),
(488, 'base', 'Comptes de répartition périodique des charges et des produits'),
(491, 'abrégé', 'Dépréciations des comptes de clients'),
(495, 'base', 'Dépréciations des comptes du groupe et des associés'),
(496, 'abrégé', 'Dépréciations des comptes de débiteurs divers'),
(501, 'base', 'Parts dans des entreprises liées'),
(502, 'base', 'Actions propres'),
(503, 'base', 'Actions'),
(504, 'base', 'Autres titres conférant un droit de propriété'),
(505, 'base', 'Obligations et bons émis par la société et rachetés par elle'),
(506, 'base', 'Obligations'),
(507, 'base', 'Bons du Trésor et bons de caisse à court terme'),
(508, 'base', 'Autres valeurs mobilières de placement et autres créances assimilées'),
(509, 'base', 'Versements restant à effectuer sur valeurs mobilières de placement non libérées'),
(511, 'base', 'Valeurs à l’encaissement'),
(512, 'base', 'Banques'),
(514, 'base', 'Chèques postaux'),
(515, 'base', 'Caisses'),
(516, 'base', 'Sociétés de bourse'),
(517, 'base', 'Autres organismes financiers'),
(518, 'base', 'Intérêts courus'),
(519, 'base', 'Concours bancaires courants'),
(531, 'base', 'Caisse siège social'),
(532, 'étendu', 'Caisse succursale (ou usine) A'),
(533, 'étendu', 'Caisse succursale (ou usine) B'),
(590, 'abrégé', 'Dépréciations des valeurs mobilières de placement'),
(601, 'base', 'Achats stockés – Matières premières (et fournitures)'),
(602, 'base', 'Achats stockés – Autres approvisionnements'),
(603, 'abrégé', 'Variations des stocks (approvisionnements et marchandises)'),
(604, 'base', 'Achats d’études et prestations de services'),
(605, 'base', 'Achats de matériel, équipements et travaux'),
(606, 'base', 'Achats non stockés de matière et fournitures'),
(607, 'base', 'Achats de marchandises'),
(608, 'base', '(Compte réservé, le cas échéant, à la récapitulation des frais accessoires incorporés aux achats)'),
(609, 'base', 'Rabais, remises et ristournes obtenus sur achats'),
(611, 'base', 'Sous-traitance générale'),
(612, 'base', 'Redevances de crédit-bail'),
(613, 'base', 'Locations'),
(614, 'base', 'Charges locatives et de copropriété'),
(615, 'base', 'Entretien et réparations'),
(616, 'base', 'Primes d’assurances'),
(617, 'base', 'Études et recherches'),
(618, 'base', 'Divers'),
(619, 'base', 'Rabais, remises et ristournes obtenus sur services extérieurs'),
(621, 'base', 'Personnel extérieur à l’entreprise'),
(622, 'base', 'Rémunérations d’intermédiaires et honoraires'),
(623, 'base', 'Publicité, publications, relations publiques'),
(624, 'base', 'Transports de biens et transports collectifs du personnel'),
(625, 'base', 'Déplacements, missions et réceptions'),
(626, 'base', 'Frais postaux et de télécommunications'),
(627, 'base', 'Services bancaires et assimilés'),
(628, 'base', 'Divers'),
(629, 'base', 'Rabais, remises et ristournes obtenus sur autres services extérieurs'),
(631, 'base', 'Impôts, taxes et versements assimilés sur rémunérations (administrations des impôts)'),
(633, 'base', 'Impôts, taxes et versements assimilés sur rémunérations (autres organismes)'),
(635, 'base', 'Autres impôts, taxes et versements assimilés (administrations des impôts)'),
(637, 'base', 'Autres impôts, taxes et versements assimilés (autres organismes)'),
(641, 'abrégé', 'Rémunérations du personnel'),
(644, 'abrégé', 'Rémunération du travail de l’exploitant'),
(645, 'abrégé', 'Charges de sécurité sociale et de prévoyance'),
(646, 'abrégé', 'Cotisations sociales personnelles de l’exploitant'),
(647, 'base', 'Autres charges sociales'),
(648, 'base', 'Autres charges de personnel'),
(651, 'base', 'Redevances pour concessions, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires'),
(653, 'base', 'Jetons de présence'),
(654, 'base', 'Pertes sur créances irrécouvrables'),
(655, 'base', 'Quote-part de résultat sur opérations faites en commun'),
(656, 'base', 'Pertes de change sur créances commerciales'),
(658, 'base', 'Charges diverses de gestion courante'),
(661, 'base', 'Charges d’intérêts'),
(664, 'base', 'Pertes sur créances liées à des participations'),
(665, 'base', 'Escomptes accordés'),
(666, 'base', 'Pertes de change financières'),
(667, 'base', 'Charges nettes sur cessions de valeurs mobilières de placement'),
(668, 'base', 'Autres charges financières'),
(671, 'base', 'Charges exceptionnelles sur opérations de gestion'),
(672, 'base', '(Compte à la disposition des entités pour enregistrer, en cours d’exercice, les charges sur exercices antérieurs)'),
(674, 'base', 'Opérations de constitution ou liquidation des fiducies'),
(675, 'base', 'Valeurs comptables des éléments d’actif cédés'),
(678, 'base', 'Autres charges exceptionnelles'),
(681, 'abrégé', 'Dotations aux amortissements, aux dépréciations et aux provisions – Charges d’exploitation'),
(686, 'abrégé', 'Dotations aux amortissements, aux dépréciations et aux provisions – Charges financières'),
(687, 'abrégé', 'Dotations aux amortissements, aux dépréciations et aux provisions – Charges exceptionnelles'),
(691, 'abrégé', 'Participation des salariés aux résultats'),
(695, 'abrégé', 'Impôts sur les bénéfices'),
(696, 'base', 'Suppléments d’impôt sur les sociétés liés aux distributions'),
(698, 'base', 'Intégration fiscale'),
(699, 'abrégé', 'Produits – Reports en arrière des déficits'),
(701, 'abrégé', 'Ventes de produits finis'),
(702, 'base', 'Ventes de produits intermédiaires'),
(703, 'base', 'Ventes de produits résiduels'),
(704, 'base', 'Travaux'),
(705, 'base', 'Études'),
(706, 'abrégé', 'Prestations de services'),
(707, 'abrégé', 'Ventes de marchandises'),
(708, 'abrégé', 'Produits des activités annexes'),
(709, 'abrégé', 'Rabais, remises et ristournes accordés par l’entreprise'),
(713, 'abrégé', 'Variation des stocks (en-cours de production, produits)'),
(721, 'base', 'Immobilisations incorporelles'),
(722, 'base', 'Immobilisations corporelles'),
(751, 'base', 'Redevances pour concessions, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires'),
(752, 'base', 'Revenus des immeubles non affectés à des activités professionnelles'),
(753, 'abrégé', 'Jetons de présence et rémunérations d’administrateurs, gérants,'),
(754, 'abrégé', 'Ristournes perçues des coopératives (provenant des excédents)'),
(755, 'abrégé', 'Quote-parts de résultat sur opérations faites en commun'),
(756, 'base', 'Gains de change sur créances commerciales'),
(758, 'base', 'Produits divers de gestion courante'),
(761, 'base', 'Produits de participations'),
(762, 'base', 'Produits des autres immobilisations financières'),
(763, 'base', 'Revenus des autres créances'),
(764, 'base', 'Revenus des valeurs mobilières de placement'),
(765, 'base', 'Escomptes obtenus'),
(766, 'base', 'Gains de change financiers'),
(767, 'base', 'Produits nets sur cessions de valeurs mobilières de placement'),
(768, 'base', 'Autres produits financiers'),
(771, 'base', 'Produits exceptionnels sur opérations de gestion'),
(772, 'base', '(Compte à la disposition des entités pour enregistrer, en cours d’exercice, les produits sur exercices antérieurs)'),
(774, 'base', 'Opérations de constitution ou liquidation des fiducies'),
(775, 'base', 'Produits des cessions d’éléments d’actif'),
(777, 'base', 'Quote-part des subventions d’investissement virée au résultat de l’exercice'),
(778, 'base', 'Autres produits exceptionnels'),
(781, 'abrégé', 'Reprises sur amortissements, dépréciations et provisions (à inscrire dans les produits d’exploitation)'),
(786, 'abrégé', 'Reprises sur provisions pour risques et dépréciations (à inscrire dans les produits financiers)'),
(787, 'abrégé', 'Reprises sur provisions et dépréciations (à inscrire dans les produits exceptionnels)'),
(791, 'base', 'Transferts de charges d’exploitation'),
(796, 'base', 'Transferts de charges financières'),
(797, 'base', 'Transferts de charges exceptionnelles'),
(801, 'abrégé', 'Engagements donnés par l’entité'),
(802, 'abrégé', 'Engagements reçus par l’entité'),
(809, 'abrégé', 'Contrepartie des engagements'),
(890, 'étendu', 'Bilan d’ouverture'),
(891, 'étendu', 'Bilan de clôture'),
(1011, 'étendu', 'Capital souscrit – non appelé'),
(1012, 'étendu', 'Capital souscrit – appelé, non versé'),
(1013, 'étendu', 'Capital souscrit – appelé, versé'),
(1018, 'étendu', 'Capital souscrit soumis à des réglementations particulières'),
(1041, 'étendu', 'Primes d’émission'),
(1042, 'étendu', 'Primes de fusion'),
(1043, 'étendu', 'Primes d’apport'),
(1044, 'étendu', 'Primes de conversion d’obligations en actions'),
(1045, 'étendu', 'Bons de souscription d’actions'),
(1051, 'étendu', 'Réserve spéciale de réévaluation'),
(1052, 'étendu', 'Écart de réévaluation libre'),
(1053, 'étendu', 'Réserve de réévaluation'),
(1055, 'étendu', 'Écarts de réévaluation (autres opérations légales)'),
(1057, 'étendu', 'Autres écarts de réévaluation en France'),
(1058, 'étendu', 'Autres écarts de réévaluation à l’Étranger'),
(1061, 'abrégé', 'Réserve légale'),
(1062, 'base', 'Réserves indisponibles'),
(1063, 'abrégé', 'Réserves statutaires ou contractuelles'),
(1064, 'abrégé', 'Réserves réglementées'),
(1068, 'abrégé', 'Autres réserves'),
(1311, 'étendu', 'État'),
(1312, 'étendu', 'Régions'),
(1313, 'étendu', 'Départements'),
(1314, 'étendu', 'Communes'),
(1315, 'étendu', 'Collectivités publiques'),
(1316, 'étendu', 'Entreprises publiques'),
(1317, 'étendu', 'Entreprises et organismes privés'),
(1318, 'étendu', 'Autres'),
(1391, 'base', 'Subventions d’équipement'),
(1398, 'base', 'Autres subventions d’investissement (même ventilation que celle du compte 1391)'),
(1423, 'étendu', 'Provisions pour reconstitution des gisements miniers et pétroliers'),
(1424, 'étendu', 'Provisions pour investissement (participation des salariés)'),
(1431, 'étendu', 'Hausse des prix'),
(1432, 'étendu', 'Fluctuation des cours'),
(1511, 'étendu', 'Provisions pour litiges'),
(1512, 'étendu', 'Provisions pour garanties données aux clients'),
(1513, 'étendu', 'Provisions pour pertes sur marchés à terme'),
(1514, 'étendu', 'Provisions pour amendes et pénalités'),
(1515, 'étendu', 'Provisions pour pertes de change'),
(1516, 'étendu', 'Provisions pour pertes sur contrats'),
(1518, 'étendu', 'Autres provisions pour risques'),
(1572, 'étendu', 'Provisions pour gros entretien ou grandes révisions'),
(1581, 'étendu', 'Provisions pour remises en état'),
(1651, 'étendu', 'Dépôts'),
(1655, 'étendu', 'Cautionnements'),
(1661, 'étendu', 'Comptes bloqués'),
(1662, 'étendu', 'Fonds de participation'),
(1671, 'base', 'Émissions de titres participatifs'),
(1674, 'base', 'Avances conditionnées de l’État'),
(1675, 'base', 'Emprunts participatifs'),
(1681, 'étendu', 'Autres emprunts'),
(1685, 'étendu', 'Rentes viagères capitalisées'),
(1687, 'étendu', 'Autres dettes'),
(1688, 'étendu', 'Intérêts courus'),
(1781, 'étendu', 'Principal'),
(1788, 'étendu', 'Intérêts courus'),
(2011, 'étendu', 'Frais de constitution'),
(2012, 'étendu', 'Frais de premier établissement'),
(2013, 'étendu', 'Frais d’augmentation de capital et d’opérations diverses (fusions, scissions, transformations)'),
(2081, 'base', 'Mali de fusion sur actifs incorporels'),
(2111, 'base', 'Terrains nus'),
(2112, 'base', 'Terrains aménagés'),
(2113, 'base', 'Sous-sols et sursols'),
(2114, 'base', 'Terrains de carrières (Tréfonds)'),
(2115, 'base', 'Terrains bâtis'),
(2116, 'base', 'Compte d’ordre sur immobilisations'),
(2131, 'base', 'Bâtiments'),
(2135, 'base', 'Installations générales – agencements – aménagements des constructions'),
(2138, 'base', 'Ouvrages d’infrastructure'),
(2151, 'base', 'Installations complexes spécialisées'),
(2153, 'base', 'Installations à caractère spécifique'),
(2154, 'base', 'Matériel industriel'),
(2155, 'base', 'Outillage industriel'),
(2157, 'base', 'Agencements et aménagements du matériel et outillage industriels'),
(2181, 'base', 'Installations générales, agencements, aménagements divers'),
(2182, 'base', 'Matériel de transport'),
(2183, 'base', 'Matériel de bureau et matériel informatique'),
(2184, 'base', 'Mobilier'),
(2185, 'base', 'Cheptel'),
(2186, 'base', 'Emballages récupérables'),
(2187, 'base', 'Mali de fusions sur actifs corporels'),
(2312, 'étendu', 'Terrains'),
(2313, 'étendu', 'Constructions'),
(2315, 'étendu', 'Installations techniques, matériel et outillage industriels'),
(2318, 'étendu', 'Autres immobilisations corporelles'),
(2382, 'étendu', 'Terrains'),
(2383, 'étendu', 'Constructions'),
(2385, 'étendu', 'Installations techniques, matériel et outillage industriels'),
(2388, 'base', 'Autres immobilisations corporelles'),
(2611, 'étendu', 'Actions'),
(2618, 'étendu', 'Autres titres'),
(2661, 'étendu', 'Droits représentatifs d’actifs nets remis en fiducie'),
(2671, 'étendu', 'Créances rattachées à des participations (groupe)'),
(2674, 'étendu', 'Créances rattachées à des participations (hors groupe)'),
(2675, 'étendu', 'Versements représentatifs d’apports non capitalisés (appel de fonds)'),
(2676, 'étendu', 'Avances consolidables'),
(2677, 'étendu', 'Autres créances rattachées à des participations'),
(2678, 'étendu', 'Intérêts courus'),
(2681, 'étendu', 'Principal'),
(2688, 'étendu', 'Intérêts courus'),
(2711, 'étendu', 'Actions'),
(2718, 'étendu', 'Autres titres'),
(2721, 'étendu', 'Obligations'),
(2722, 'étendu', 'Bons'),
(2741, 'étendu', 'Prêts participatifs'),
(2742, 'étendu', 'Prêts aux associés'),
(2743, 'étendu', 'Prêts au personnel'),
(2748, 'étendu', 'Autres prêts'),
(2751, 'étendu', 'Dépôts'),
(2755, 'étendu', 'Cautionnements'),
(2761, 'étendu', 'Créances diverses'),
(2768, 'étendu', 'Intérêts courus'),
(2771, 'étendu', 'Actions propres ou parts propres'),
(2772, 'étendu', 'Actions propres ou parts propres en voie d’annulation'),
(2801, 'base', 'Frais d’établissement (même ventilation que celle du compte 201)'),
(2803, 'base', 'Frais de recherche et de développement'),
(2805, 'base', 'Concessions et droits similaires, brevets, licences, logiciels, droits et valeurs similaires'),
(2807, 'base', 'Fonds commercial'),
(2808, 'base', 'Autres immobilisations incorporelles'),
(2812, 'base', 'Agencements, aménagements de terrains (même ventilation que celle du compte 212)'),
(2813, 'base', 'Constructions (même ventilation que celle du compte 213)'),
(2814, 'base', 'Constructions sur sol d’autrui (même ventilation que celle du compte 214)'),
(2815, 'base', 'Installations, matériel et outillage industriels (même ventilation que celle du compte 215)'),
(2818, 'base', 'Autres immobilisations corporelles (même ventilation que celle du compte 218)'),
(2905, 'base', 'Marques, procédés, droits et valeurs similaires'),
(2906, 'base', 'Droit au bail'),
(2907, 'base', 'Fonds commercial'),
(2908, 'base', 'Autres immobilisations incorporelles'),
(2931, 'base', 'Immobilisations corporelles en cours'),
(2932, 'base', 'Immobilisations incorporelles en cours'),
(2961, 'base', 'Titres de participation'),
(2966, 'base', 'Autres formes de participation'),
(2967, 'base', 'Créances rattachées à des participations (même ventilation que celle du compte 267)'),
(2968, 'base', 'Créances rattachées à des sociétés en participation (même ventilation que celle du compte 268)'),
(2971, 'base', 'Titres immobilisés autres que les titres immobilisés de l’activité de portefeuille – droit de propriété (même ventilation que celle du compte 271)'),
(2972, 'base', 'Droit de créance (même ventilation que celle du compte 272)'),
(2973, 'base', 'Titres immobilisés de l’activité de portefeuille'),
(2974, 'base', 'Prêts (même ventilation que celle du compte 274)'),
(2975, 'base', 'Dépôts et cautionnements versés (même ventilation que celle du compte 275)'),
(2976, 'base', 'Autres créances immobilisées (même ventilation que celle du compte 276)'),
(3211, 'étendu', 'Matières (ou groupe) C'),
(3212, 'étendu', 'Matières (ou groupe) D'),
(3221, 'étendu', 'Combustibles'),
(3222, 'étendu', 'Produits d’entretien'),
(3223, 'étendu', 'Fournitures d’atelier et d’usine'),
(3224, 'étendu', 'Fournitures de magasin'),
(3225, 'étendu', 'Fournitures de bureau'),
(3261, 'étendu', 'Emballages perdus'),
(3265, 'étendu', 'Emballages récupérables non identifiables'),
(3267, 'étendu', 'Emballages à usage mixte'),
(3311, 'étendu', 'Produits en cours P 1'),
(3312, 'étendu', 'Produits en cours P 2'),
(3351, 'étendu', 'Travaux en cours T 1'),
(3352, 'étendu', 'Travaux en cours T 2'),
(3411, 'étendu', 'Études en cours E 1'),
(3412, 'étendu', 'Études en cours E 2'),
(3451, 'étendu', 'Prestations de services S 1'),
(3452, 'étendu', 'Prestations de services S 2'),
(3511, 'étendu', 'Produits intermédiaires (ou groupe) A'),
(3512, 'étendu', 'Produits intermédiaires (ou groupe) B'),
(3551, 'étendu', 'Produits finis (ou groupe) A'),
(3552, 'étendu', 'Produits finis (ou groupe) B'),
(3581, 'étendu', 'Déchets'),
(3585, 'étendu', 'Rebuts'),
(3586, 'étendu', 'Matières de récupération'),
(3911, 'étendu', 'Matières (ou groupe) A'),
(3912, 'étendu', 'Matières (ou groupe) B'),
(3917, 'étendu', 'Fournitures A, B, C,'),
(3921, 'étendu', 'Matières consommables (même ventilation que celle du compte 321)'),
(3922, 'étendu', 'Fournitures consommables (même ventilation que celle du compte 322)'),
(3926, 'étendu', 'Emballages (même ventilation que celle du compte 326)'),
(3931, 'étendu', 'Produits en cours (même ventilation que celle du compte 331)'),
(3935, 'étendu', 'Travaux en cours (même ventilation que celle du compte 335)'),
(3941, 'étendu', 'Études en cours (même ventilation que celle du compte 341)'),
(3945, 'étendu', 'Prestations de services en cours (même ventilation que celle du compte 345)'),
(3951, 'étendu', 'Produits intermédiaires (même ventilation que celle du compte 351)'),
(3955, 'étendu', 'Produits finis (même ventilation que celle du compte 355)'),
(3971, 'étendu', 'Marchandise (ou groupe) A'),
(3972, 'étendu', 'Marchandise (ou groupe) B'),
(4011, 'étendu', 'Fournisseurs – Achats de biens et prestations de services'),
(4017, 'étendu', 'Fournisseurs – Retenues de garantie'),
(4041, 'étendu', 'Fournisseurs – Achats d’immobilisations'),
(4047, 'étendu', 'Fournisseurs d’immobilisations – Retenues de garantie'),
(4081, 'étendu', 'Fournisseurs'),
(4084, 'étendu', 'Fournisseurs d’immobilisations'),
(4088, 'étendu', 'Fournisseurs – Intérêts courus'),
(4091, 'base', 'Fournisseurs – Avances et acomptes versés sur commandes'),
(4096, 'base', 'Fournisseurs – Créances pour emballages et matériel à rendre'),
(4097, 'base', 'Fournisseurs – Autres avoirs'),
(4098, 'base', 'Rabais, remises, ristournes à obtenir et autres avoirs non encore reçus'),
(4111, 'étendu', 'Clients – Ventes de biens ou de prestations de services'),
(4117, 'étendu', 'Clients – Retenues de garantie'),
(4181, 'étendu', 'Clients – Factures à établir'),
(4188, 'étendu', 'Clients – Intérêts courus'),
(4191, 'base', 'Clients – Avances et acomptes reçus sur commandes'),
(4196, 'base', 'Clients – Dettes sur emballages et matériels consignés'),
(4197, 'base', 'Clients – Autres avoirs'),
(4198, 'base', 'Rabais, remises, ristournes à accorder et autres avoirs à établir'),
(4246, 'étendu', 'Réserve spéciale'),
(4248, 'étendu', 'Comptes courants'),
(4282, 'étendu', 'Dettes provisionnées pour congés à payer'),
(4284, 'étendu', 'Dettes provisionnées pour participation des salariés aux résultats'),
(4286, 'étendu', 'Autres charges à payer'),
(4287, 'étendu', 'Produits à recevoir'),
(4382, 'étendu', 'Charges sociales sur congés à payer'),
(4386, 'étendu', 'Autres charges à payer'),
(4387, 'étendu', 'Produits à recevoir'),
(4411, 'étendu', 'Subventions d’investissement'),
(4417, 'étendu', 'Subventions d’exploitation'),
(4418, 'étendu', 'Subventions d’équilibre'),
(4419, 'étendu', 'Avances sur subventions'),
(4424, 'étendu', 'Obligataires'),
(4425, 'étendu', 'Associés'),
(4431, 'base', 'Créances sur l’État résultant de la suppression de la règle du décalage d’un mois en matière de TVA'),
(4438, 'base', 'Intérêts courus sur créances figurant au 4431'),
(4452, 'base', 'TVA due intracommunautaire'),
(4455, 'base', 'Taxes sur le chiffre d’affaires à décaisser'),
(4456, 'base', 'Taxes sur le chiffre d’affaires déductibles'),
(4457, 'base', 'Taxes sur le chiffre d’affaires collectées par l’entreprise'),
(4458, 'base', 'Taxes sur le chiffre d’affaires à régulariser ou en attente'),
(4482, 'étendu', 'Charges fiscales sur congés à payer'),
(4486, 'étendu', 'Charges à payer'),
(4487, 'étendu', 'Produits à recevoir'),
(4551, 'étendu', 'Principal'),
(4558, 'étendu', 'Intérêts courus'),
(4561, 'étendu', 'Associés – Comptes d’apport en société'),
(4562, 'étendu', 'Apporteurs – Capital appelé, non versé'),
(4563, 'étendu', 'Associés – Versements reçus sur augmentation de capital'),
(4564, 'étendu', 'Associés – Versements anticipés'),
(4566, 'étendu', 'Actionnaires défaillants'),
(4567, 'étendu', 'Associés – Capital à rembourser'),
(4581, 'étendu', 'Opérations courantes'),
(4588, 'étendu', 'Intérêts courus'),
(4686, 'étendu', 'Charges à payer'),
(4687, 'étendu', 'Produits à recevoir'),
(4761, 'étendu', 'Diminution des créances'),
(4762, 'étendu', 'Augmentation des dettes'),
(4768, 'étendu', 'Différences compensées par couverture de change'),
(4771, 'étendu', 'Augmentation des créances'),
(4772, 'étendu', 'Diminution des dettes'),
(4778, 'étendu', 'Différences compensées par couverture de change'),
(4786, 'base', 'Différences d’évaluation sur instruments de trésorerie – ACTIF'),
(4787, 'base', 'Différences d’évaluation sur instruments de trésorerie – PASSIF'),
(4816, 'étendu', 'Frais d’émission des emprunts'),
(4886, 'étendu', 'Charges'),
(4887, 'étendu', 'Produits'),
(4951, 'base', 'Comptes du groupe'),
(4955, 'base', 'Comptes courants des associés'),
(4958, 'base', 'Opérations faites en commun et en GIE'),
(4962, 'étendu', 'Créances sur cessions d’immobilisations'),
(4965, 'étendu', 'Créances sur cessions de valeurs mobilières de placement'),
(4967, 'étendu', 'Autres comptes débiteurs'),
(5021, 'étendu', 'Actions destinées à être attribuées aux employés et affectées à des plans déterminés'),
(5022, 'étendu', 'Actions disponibles pour être attribuées aux employés ou pour la régularisation des cours de bourse'),
(5031, 'étendu', 'Titres cotés'),
(5035, 'étendu', 'Titres non cotés'),
(5061, 'étendu', 'Titres cotés'),
(5065, 'étendu', 'Titres non cotés'),
(5081, 'étendu', 'Autres valeurs mobilières'),
(5082, 'étendu', 'Bons de souscription'),
(5088, 'étendu', 'Intérêts courus sur obligations, bons et valeurs assimilés'),
(5111, 'étendu', 'Coupons échus à l’encaissement'),
(5112, 'étendu', 'Chèques à encaisser'),
(5113, 'étendu', 'Effets à l’encaissement'),
(5114, 'étendu', 'Effets à l’escompte'),
(5121, 'étendu', 'Comptes en monnaie nationale'),
(5124, 'étendu', 'Comptes en devises'),
(5181, 'étendu', 'Intérêts courus à payer'),
(5188, 'étendu', 'Intérêts courus à recevoir'),
(5191, 'étendu', 'Crédit de mobilisation de créances commerciales'),
(5193, 'étendu', 'Mobilisation de créances nées à l’étranger'),
(5198, 'étendu', 'Intérêts courus sur concours bancaires courants'),
(5311, 'étendu', 'Caisse en monnaie nationale'),
(5314, 'étendu', 'Caisse en devises'),
(5903, 'base', 'Actions'),
(5904, 'base', 'Autres titres conférant un droit de propriété'),
(5906, 'base', 'Obligations'),
(5908, 'base', 'Autres valeurs mobilières de placement et créances assimilées'),
(6011, 'étendu', 'Matières (ou groupe) A'),
(6012, 'étendu', 'Matières (ou groupe) B'),
(6017, 'étendu', 'Fournitures A, B, C,'),
(6021, 'base', 'Matières consommables'),
(6022, 'base', 'Fournitures consommables'),
(6026, 'base', 'Emballages'),
(6031, 'base', 'Variation des stocks de matières premières (et fournitures)'),
(6032, 'base', 'Variation des stocks des autres approvisionnements'),
(6037, 'base', 'Variation des stocks de marchandises 61/62 – Autres charges externes'),
(6061, 'étendu', 'Fournitures non stockables (eau, énergie, …)'),
(6063, 'étendu', 'Fournitures d’entretien et de petit équipement'),
(6064, 'étendu', 'Fournitures administratives'),
(6068, 'étendu', 'Autres matières et fournitures'),
(6071, 'étendu', 'Marchandise (ou groupe) A'),
(6072, 'étendu', 'Marchandise (ou groupe) B'),
(6091, 'étendu', 'de matières premières (et fournitures)'),
(6092, 'étendu', 'd’autres approvisionnements stockés'),
(6094, 'étendu', 'd’études et prestations de services'),
(6095, 'étendu', 'de matériel, équipements et travaux'),
(6096, 'étendu', 'd’approvisionnements non stockés'),
(6097, 'étendu', 'de marchandises'),
(6098, 'étendu', 'Rabais, remises et ristournes non affectés'),
(6122, 'base', 'Crédit-bail mobilier'),
(6125, 'base', 'Crédit-bail immobilier'),
(6132, 'étendu', 'Locations immobilières'),
(6135, 'étendu', 'Locations mobilières'),
(6136, 'étendu', 'Malis sur emballages'),
(6152, 'étendu', 'sur biens immobiliers'),
(6155, 'étendu', 'sur biens mobiliers'),
(6156, 'étendu', 'Maintenance'),
(6161, 'étendu', 'Multirisques'),
(6162, 'étendu', 'Assurance obligatoire dommage construction'),
(6163, 'étendu', 'Assurance – transport'),
(6164, 'étendu', 'Risques d’exploitation'),
(6165, 'étendu', 'Insolvabilité clients'),
(6181, 'étendu', 'Documentation générale'),
(6183, 'étendu', 'Documentation technique'),
(6185, 'étendu', 'Frais de colloques, séminaires, conférences'),
(6211, 'étendu', 'Personnel intérimaire'),
(6214, 'étendu', 'Personnel détaché ou prêté à l’entreprise'),
(6221, 'étendu', 'Commissions et courtages sur achats'),
(6222, 'étendu', 'Commissions et courtages sur ventes'),
(6224, 'étendu', 'Rémunérations des transitaires'),
(6225, 'étendu', 'Rémunérations d’affacturage'),
(6226, 'étendu', 'Honoraires'),
(6227, 'étendu', 'Frais d’actes et de contentieux'),
(6228, 'étendu', 'Divers'),
(6231, 'étendu', 'Annonces et insertions'),
(6232, 'étendu', 'Échantillons'),
(6233, 'étendu', 'Foires et expositions'),
(6234, 'étendu', 'Cadeaux à la clientèle'),
(6235, 'étendu', 'Primes'),
(6236, 'étendu', 'Catalogues et imprimés'),
(6237, 'étendu', 'Publications'),
(6238, 'étendu', 'Divers (pourboires, dons courants, …)'),
(6241, 'étendu', 'Transports sur achats'),
(6242, 'étendu', 'Transports sur ventes'),
(6243, 'étendu', 'Transports entre établissements ou chantiers'),
(6244, 'étendu', 'Transports administratifs'),
(6247, 'étendu', 'Transports collectifs du personnel'),
(6248, 'étendu', 'Divers'),
(6251, 'étendu', 'Voyages et déplacements'),
(6255, 'étendu', 'Frais de déménagement'),
(6256, 'étendu', 'Missions'),
(6257, 'étendu', 'Réceptions'),
(6271, 'étendu', 'Frais sur titres (achat, vente, garde)'),
(6272, 'étendu', 'Commissions et frais sur émission d’emprunts'),
(6275, 'étendu', 'Frais sur effets'),
(6276, 'étendu', 'Location de coffres'),
(6278, 'étendu', 'Autres frais et commissions sur prestations de services'),
(6281, 'étendu', 'Concours divers (cotisations, )'),
(6284, 'étendu', 'Frais de recrutement de personnel'),
(6311, 'étendu', 'Taxe sur les salaires'),
(6312, 'étendu', 'Taxe d’apprentissage'),
(6313, 'étendu', 'Participation des employeurs à la formation professionnelle continue'),
(6314, 'étendu', 'Cotisation pour défaut d’investissement obligatoire dans la construction'),
(6318, 'étendu', 'Autres'),
(6331, 'étendu', 'Versement de transport'),
(6332, 'étendu', 'Allocations logement'),
(6333, 'étendu', 'Participation des employeurs à la formation professionnelle continue'),
(6334, 'étendu', 'Participation des employeurs à l’effort de construction'),
(6335, 'étendu', 'Versements libératoires ouvrant droit à l’exonération de la taxe d’apprentissage'),
(6338, 'étendu', 'Autres'),
(6351, 'étendu', 'Impôts directs (sauf impôts sur les bénéfices)'),
(6352, 'étendu', 'Taxe sur le chiffre d’affaires non récupérables'),
(6353, 'étendu', 'Impôts indirects'),
(6354, 'étendu', 'Droits d’enregistrement et de timbre'),
(6358, 'base', 'Autres droits'),
(6371, 'étendu', 'Contribution sociale de solidarité à la charge des sociétés'),
(6372, 'étendu', 'Taxes perçues par les organismes publics internationaux'),
(6374, 'étendu', 'Impôts et taxes exigibles à l’Étranger'),
(6378, 'étendu', 'Taxes diverses'),
(6411, 'étendu', 'Salaires, appointements'),
(6412, 'étendu', 'Congés payés'),
(6413, 'étendu', 'Primes et gratifications'),
(6414, 'étendu', 'Indemnités et avantages divers'),
(6415, 'étendu', 'Supplément familial'),
(6451, 'étendu', 'Cotisations à l’URSSAF'),
(6452, 'étendu', 'Cotisations aux mutuelles'),
(6453, 'étendu', 'Cotisations aux caisses de retraites'),
(6454, 'étendu', 'Cotisations aux ASSEDIC'),
(6458, 'étendu', 'Cotisations aux autres organismes sociaux'),
(6471, 'étendu', 'Prestations directes'),
(6472, 'étendu', 'Versements aux comités d’entreprise et d’établissement'),
(6473, 'étendu', 'Versements aux comités d’hygiène et de sécurité'),
(6474, 'étendu', 'Versements aux autres œuvres sociales'),
(6475, 'étendu', 'Médecine du travail, pharmacie'),
(6511, 'étendu', 'Redevances pour concessions, brevets, licences, marques, procédés, logiciels'),
(6516, 'étendu', 'Droits d’auteur et de reproduction'),
(6518, 'étendu', 'Autres droits et valeurs similaires'),
(6541, 'étendu', 'Créances de l’exercice'),
(6544, 'étendu', 'Créances des exercices antérieurs'),
(6551, 'étendu', 'Quote-part de bénéfice transférée (comptabilité du gérant)'),
(6555, 'étendu', 'Quote-part de perte supportée (comptabilité des associés non gérants)'),
(6611, 'étendu', 'Intérêts des emprunts et dettes'),
(6612, 'étendu', 'Charges de la fiducie, résultat de la période'),
(6615, 'étendu', 'Intérêts des comptes courants et des dépôts créditeurs'),
(6616, 'étendu', 'Intérêts bancaires et sur opérations de financement (escompte,...)'),
(6617, 'étendu', 'Intérêts des obligations cautionnées'),
(6618, 'étendu', 'Intérêts des autres dettes'),
(6711, 'étendu', 'Pénalités sur marchés (et dédits payés sur achats et ventes)'),
(6712, 'étendu', 'Pénalités, amendes fiscales et pénales'),
(6713, 'étendu', 'Dons, libéralités'),
(6714, 'étendu', 'Créances devenues irrécouvrables dans l’exercice'),
(6715, 'étendu', 'Subventions accordées'),
(6717, 'étendu', 'Rappel d’impôts (autres qu’impôts sur les bénéfices)'),
(6718, 'étendu', 'Autres charges exceptionnelles sur opérations de gestion'),
(6741, 'étendu', 'Opérations liées à la constitution de fiducie – Transfert des éléments'),
(6742, 'étendu', 'Opérations liées à la liquidation de la fiducie'),
(6751, 'étendu', 'Immobilisations incorporelles'),
(6752, 'étendu', 'Immobilisations corporelles'),
(6756, 'étendu', 'Immobilisations financières'),
(6758, 'étendu', 'Autres éléments d’actif'),
(6781, 'étendu', 'Malis provenant de clauses d’indexation'),
(6782, 'étendu', 'Lots'),
(6783, 'étendu', 'Malis provenant du rachat par l’entreprise d’actions et obligations émises par elle-même'),
(6788, 'étendu', 'Charges exceptionnelles diverses'),
(6811, 'base', 'Dotations aux amortissements sur immobilisations incorporelles et corporelles'),
(6812, 'base', 'Dotations aux amortissements des charges d’exploitation à répartir'),
(6815, 'base', 'Dotations aux provisions d’exploitation'),
(6816, 'base', 'Dotations pour dépréciations des immobilisations incorporelles et corporelles'),
(6817, 'base', 'Dotations pour dépréciations des actifs circulants'),
(6861, 'base', 'Dotations aux amortissements des primes de remboursement des obligations'),
(6865, 'base', 'Dotations aux provisions financières'),
(6866, 'base', 'Dotations pour dépréciations des éléments financiers'),
(6868, 'base', 'Autres dotations'),
(6871, 'base', 'Dotations aux amortissements exceptionnels des immobilisations'),
(6872, 'base', 'Dotations aux provisions réglementées (immobilisations)'),
(6873, 'base', 'Dotations aux provisions réglementées (stocks)'),
(6874, 'base', 'Dotations aux autres provisions réglementées'),
(6875, 'base', 'Dotations aux provisions exceptionnelles'),
(6876, 'base', 'Dotations pour dépréciations exceptionnelles'),
(6951, 'étendu', 'Impôts dus en France'),
(6952, 'étendu', 'Contribution additionnelle à l’impôt sur les bénéfices'),
(6954, 'étendu', 'Impôts dus à l’étranger'),
(6981, 'base', 'Intégration fiscale – Charges'),
(6989, 'base', 'Intégration fiscale – Produits'),
(7011, 'étendu', 'Produits finis (ou groupe) A'),
(7012, 'étendu', 'Produits finis (ou groupe) B'),
(7041, 'base', 'Travaux de catégorie (ou activité) A'),
(7042, 'base', 'Travaux de catégorie (ou activité) B'),
(7071, 'étendu', 'Marchandises (ou groupe) A'),
(7072, 'étendu', 'Marchandises (ou groupe) B'),
(7081, 'étendu', 'Produits des services exploités dans l’intérêt du personnel'),
(7082, 'étendu', 'Commissions et courtages'),
(7083, 'étendu', 'Locations diverses'),
(7084, 'étendu', 'Mise à disposition de personnel facturée'),
(7085, 'étendu', 'Ports et frais accessoires facturés'),
(7086, 'étendu', 'Bonis sur reprises d’emballages consignés'),
(7087, 'étendu', 'Bonifications obtenues des clients et primes sur ventes'),
(7088, 'étendu', 'Autres produits d’activités annexes (cessions d’approvisionnements,)'),
(7091, 'étendu', 'sur ventes de produits finis'),
(7092, 'étendu', 'sur ventes de produits intermédiaires'),
(7094, 'étendu', 'sur travaux'),
(7095, 'étendu', 'sur études'),
(7096, 'étendu', 'sur prestations de services'),
(7097, 'étendu', 'sur ventes de marchandises'),
(7098, 'étendu', 'sur produits des activités annexes'),
(7133, 'base', 'Variation des en-cours de production de biens'),
(7134, 'base', 'Variation des en-cours de production de services'),
(7135, 'base', 'Variation des stocks de produits'),
(7511, 'étendu', 'Redevances pour concessions, brevets, licences, marques, procédés, logiciels'),
(7516, 'étendu', 'Droits d’auteur et de reproduction'),
(7518, 'étendu', 'Autres droits et valeurs similaires'),
(7551, 'étendu', 'Quote-part de perte transférée (comptabilité du gérant)'),
(7555, 'étendu', 'Quote-part de bénéfice attribuée (comptabilité des associés non-gérants)'),
(7611, 'étendu', 'Revenus des titres de participation'),
(7612, 'étendu', 'Produits de la fiducie, résultat de la période'),
(7616, 'étendu', 'Revenus sur autres formes de participation'),
(7617, 'étendu', 'Revenus des créances rattachées à des participations'),
(7621, 'étendu', 'Revenus des titres immobilisés'),
(7626, 'étendu', 'Revenus des prêts'),
(7627, 'étendu', 'Revenus des créances immobilisées'),
(7631, 'étendu', 'Revenus des créances commerciales'),
(7638, 'étendu', 'Revenus des créances diverses'),
(7711, 'étendu', 'Dédits et pénalités perçus sur achats et sur ventes'),
(7713, 'étendu', 'Libéralités reçues'),
(7714, 'étendu', 'Rentrées sur créances amorties'),
(7715, 'étendu', 'Subventions d’équilibre'),
(7717, 'étendu', 'Dégrèvements d’impôts autres qu’impôts sur les bénéfices'),
(7718, 'étendu', 'Autres produits exceptionnels sur opérations de gestion'),
(7741, 'étendu', 'Opérations liées à la constitution de fiducie – Transfert des éléments'),
(7742, 'étendu', 'Opérations liées à la liquidation de la fiducie'),
(7751, 'étendu', 'Immobilisations incorporelles'),
(7752, 'étendu', 'Immobilisations corporelles'),
(7756, 'étendu', 'Immobilisations financières'),
(7758, 'étendu', 'Autres éléments d’actif'),
(7781, 'étendu', 'Bonis provenant de clauses d’indexation'),
(7782, 'étendu', 'Lots'),
(7783, 'étendu', 'Bonis provenant du rachat par l’entreprise d’actions et d’obligations émises par elle-même'),
(7788, 'étendu', 'Produits exceptionnels divers'),
(7811, 'base', 'Reprises sur amortissements des immobilisations incorporelles et corporelles'),
(7815, 'base', 'Reprises sur provisions d’exploitation'),
(7816, 'base', 'Reprises sur dépréciations des immobilisations incorporelles et corporelles'),
(7817, 'base', 'Reprises sur dépréciations des actifs circulants'),
(7865, 'base', 'Reprises sur provisions financières'),
(7866, 'base', 'Reprises sur dépréciations des éléments financiers'),
(7872, 'base', 'Reprises sur provisions réglementées (immobilisations)'),
(7873, 'base', 'Reprises sur provisions réglementées (stocks)'),
(7874, 'base', 'Reprises sur autres provisions réglementées'),
(7875, 'base', 'Reprises sur provisions exceptionnelles'),
(7876, 'base', 'Reprises sur dépréciations exceptionnelles'),
(8011, 'étendu', 'Avals, cautions, garanties'),
(8014, 'étendu', 'Effets circulant sous l’endos de l’entité'),
(8016, 'étendu', 'Redevances crédit-bail restant à courir'),
(8018, 'étendu', 'Autres engagements donnés'),
(8021, 'étendu', 'Avals, cautions, garanties'),
(8024, 'étendu', 'Créances escomptées non échues'),
(8026, 'étendu', 'Engagements reçus pour utilisation en crédit-bail'),
(8028, 'étendu', 'Autres engagements reçus'),
(8091, 'étendu', 'Contrepartie 801'),
(8092, 'étendu', 'Contrepartie 802'),
(10131, 'étendu', 'Capital non amorti'),
(10132, 'étendu', 'Capital amorti'),
(10611, 'étendu', 'Réserve légale proprement dite'),
(10612, 'étendu', 'Plus-values nettes à long terme'),
(10641, 'étendu', 'Plus-values nettes à long terme'),
(10643, 'étendu', 'Réserves consécutives à l’octroi de subventions d’investissement'),
(10648, 'étendu', 'Autres réserves réglementées'),
(10681, 'étendu', 'Réserve de propre assureur'),
(10688, 'étendu', 'Réserves diverses'),
(13911, 'étendu', 'État'),
(13912, 'étendu', 'Régions'),
(13913, 'étendu', 'Départements'),
(13914, 'étendu', 'Communes'),
(13915, 'étendu', 'Collectivités publiques'),
(13916, 'étendu', 'Entreprises publiques'),
(13917, 'étendu', 'Entreprises et organismes privés'),
(13918, 'étendu', 'Autres'),
(16881, 'étendu', 'sur emprunts obligataires convertibles'),
(16883, 'étendu', 'sur autres emprunts obligataires'),
(16884, 'étendu', 'sur emprunts auprès des établissements de crédit'),
(16885, 'étendu', 'sur dépôts et cautionnements reçus'),
(16886, 'étendu', 'sur participation des salariés aux résultats'),
(16887, 'étendu', 'sur emprunts et dettes assortis de conditions particulières'),
(16888, 'étendu', 'sur autres emprunts et dettes assimilées'),
(20121, 'étendu', 'Frais de prospection'),
(20122, 'étendu', 'Frais de publicité'),
(21151, 'étendu', 'Ensembles immobiliers industriels (A, B)'),
(21155, 'étendu', 'Ensembles immobiliers administratifs et commerciaux (A, B)'),
(21158, 'étendu', 'Autres ensembles immobiliers'),
(21311, 'étendu', 'Ensembles immobiliers industriels (A, B)'),
(21315, 'étendu', 'Ensembles immobiliers administratifs et commerciaux (A, B)'),
(21318, 'étendu', 'Autres ensembles immobiliers'),
(21351, 'étendu', 'Ensembles immobiliers industriels (A, B)'),
(21355, 'étendu', 'Ensembles immobiliers administratifs et commerciaux (A, B)'),
(21358, 'étendu', 'Autres ensembles immobiliers'),
(21381, 'étendu', 'Voies de terre'),
(21382, 'étendu', 'Voies de fer'),
(21383, 'étendu', 'Voies d’eau'),
(21384, 'étendu', 'Barrages'),
(21385, 'étendu', 'Pistes d’aérodromes'),
(21511, 'étendu', 'sur sol propre'),
(21514, 'étendu', 'sur sol d’autrui'),
(21531, 'étendu', 'sur sol propre'),
(21534, 'étendu', 'sur sol d’autrui'),
(27682, 'étendu', 'sur titres immobilisés (droit de créance)'),
(27684, 'étendu', 'sur prêts'),
(27685, 'étendu', 'sur dépôts et cautionnements'),
(27688, 'étendu', 'sur créances diverses');
INSERT INTO `mytable` (`Numero`, `FIELD2`, `Nom`) VALUES
(28081, 'base', 'Amortissements du mali de fusion sur actifs incorporels'),
(28187, 'base', 'Amortissement du mali de fusion sur actifs corporels'),
(29081, 'base', 'Dépréciation du mali de fusion sur actifs incorporels'),
(29187, 'base', 'Dépréciation du mali de fusion sur actifs corporels'),
(29787, 'base', 'Dépréciation du mali de fusion sur actifs financiers'),
(40971, 'étendu', 'Fournisseurs d’exploitation'),
(40974, 'étendu', 'Fournisseurs d’immobilisations'),
(44551, 'étendu', 'TVA à décaisser'),
(44558, 'étendu', 'Taxes assimilées à la TVA'),
(44562, 'étendu', 'TVA sur immobilisations'),
(44563, 'étendu', 'TVA transférée par d’autres entreprises'),
(44566, 'étendu', 'TVA sur autres biens et services'),
(44567, 'étendu', 'Crédit de TVA à reporter'),
(44568, 'étendu', 'Taxes assimilées à la TVA'),
(44571, 'étendu', 'TVA collectée'),
(44578, 'étendu', 'Taxes assimilées à la TVA'),
(44581, 'étendu', 'Acomptes – Régime simplifié d’imposition'),
(44582, 'étendu', 'Acomptes – Régime de forfait'),
(44583, 'étendu', 'Remboursement de taxes sur le chiffre d’affaires demandé'),
(44584, 'étendu', 'TVA récupérée d’avance'),
(44586, 'étendu', 'Taxes sur le chiffre d’affaires sur factures non parvenues'),
(44587, 'étendu', 'Taxes sur le chiffre d’affaires sur factures à établir'),
(45611, 'étendu', 'Apports en nature'),
(45615, 'étendu', 'Apports en numéraire'),
(45621, 'étendu', 'Actionnaires – Capital souscrit et appelé, non versé'),
(45625, 'étendu', 'Associés – Capital appelé, non versé'),
(60211, 'étendu', 'Matières (ou groupe) C'),
(60212, 'étendu', 'Matières (ou groupe) D'),
(60221, 'étendu', 'Combustibles'),
(60222, 'étendu', 'Produits d’entretien'),
(60223, 'étendu', 'Fournitures d’atelier et d’usine'),
(60224, 'étendu', 'Fournitures de magasin'),
(60225, 'étendu', 'Fourniture de bureau'),
(60261, 'étendu', 'Emballages perdus'),
(60265, 'étendu', 'Emballages récupérables non identifiables'),
(60267, 'étendu', 'Emballages à usage mixte'),
(61636, 'étendu', 'sur achats'),
(61637, 'étendu', 'sur ventes'),
(61638, 'étendu', 'sur autres biens'),
(63511, 'étendu', 'Contribution économique territoriale'),
(63512, 'étendu', 'Taxes foncières'),
(63513, 'étendu', 'Autres impôts locaux'),
(63514, 'étendu', 'Taxe sur les véhicules des sociétés'),
(63541, 'étendu', 'Droits de mutation'),
(66116, 'étendu', 'des emprunts et dettes assimilées'),
(66117, 'étendu', 'des dettes rattachées à des participations'),
(66181, 'étendu', 'des dettes commerciales'),
(66188, 'étendu', 'des dettes diverses'),
(68111, 'étendu', 'Immobilisations incorporelles'),
(68112, 'étendu', 'Immobilisations corporelles'),
(68161, 'étendu', 'Immobilisations incorporelles'),
(68162, 'étendu', 'Immobilisations corporelles'),
(68173, 'étendu', 'Stocks et en-cours'),
(68174, 'étendu', 'Créances'),
(68662, 'étendu', 'Immobilisations financières'),
(68665, 'étendu', 'Valeurs mobilières de placement'),
(68725, 'étendu', 'Amortissements dérogatoires'),
(71331, 'étendu', 'Produits en cours'),
(71335, 'étendu', 'Travaux en cours'),
(71341, 'étendu', 'Études en cours'),
(71345, 'étendu', 'Prestations de services en cours'),
(71351, 'étendu', 'Produits intermédiaires'),
(71355, 'étendu', 'Produits finis'),
(71358, 'étendu', 'Produits résiduels'),
(78111, 'étendu', 'Immobilisations incorporelles'),
(78112, 'étendu', 'Immobilisations corporelles'),
(78161, 'étendu', 'Immobilisations incorporelles'),
(78162, 'étendu', 'Immobilisations corporelles'),
(78173, 'étendu', 'Stocks et en-cours'),
(78174, 'étendu', 'Créances'),
(78662, 'étendu', 'Immobilisations financières'),
(78665, 'étendu', 'Valeurs mobilières de placements'),
(78725, 'étendu', 'Amortissements dérogatoires'),
(78726, 'étendu', 'Provision spéciale de réévaluation'),
(78727, 'étendu', 'Plus-values réinvesties'),
(80161, 'étendu', 'Crédit-bail mobilier'),
(80165, 'étendu', 'Crédit-bail immobilier'),
(80261, 'étendu', 'Crédit-bail mobilier'),
(80265, 'étendu', 'Crédit-bail immobilier'),
(211581, 'étendu', 'affectés aux opérations professionnelles (A, B)'),
(211588, 'étendu', 'affectés aux opérations non professionnelles (A, B)'),
(213181, 'étendu', 'affectés aux opérations professionnelles (A, B)'),
(213188, 'étendu', 'affectés aux opérations non professionnelles (A, B)'),
(213581, 'étendu', 'affectés aux opérations professionnelles (A, B)'),
(213588, 'étendu', 'affectés aux opérations non professionnelles (A, B)');

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
(1, 'Pour avoir la porte ouverte et passer au 2 éme niveau; vous devez ramasser {la clef, la carte, le couteau}'),
(2, 'Pour avoir la porte ouverte et passer au 3 éme niveau vous devez ramasser {le marteau, le tourne vice}'),
(3, 'Pour avoir la porte ouverte et passer au 3 éme niveau vous devez ramasser tout les objets');

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

-- --------------------------------------------------------

--
-- Structure de la table `Pays`
--

CREATE TABLE `Pays` (
  `code` varchar(4) NOT NULL DEFAULT '',
  `nom` varchar(30) NOT NULL DEFAULT 'Inconnu',
  `langue` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Pays`
--

INSERT INTO `Pays` (`code`, `nom`, `langue`) VALUES
('DE', 'Allemagne', 'Allemand'),
('FR', 'France', 'Français'),
('GB', 'Royaume-Uni', 'Anglais'),
('IT', 'Italie', 'Italien'),
('JP', 'Japon', 'Japonais'),
('USA', 'Etats Unis', 'Anglais');

-- --------------------------------------------------------

--
-- Structure de la table `PCG`
--

CREATE TABLE `PCG` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `Num` int(11) NOT NULL,
  `Format` varchar(6) NOT NULL,
  `Nom` varchar(198) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `PCG`
--

INSERT INTO `PCG` (`id`, `Num`, `Format`, `Nom`) VALUES
(1, 1, 'abrégé', 'Comptes de capitaux'),
(2, 10, 'base', 'Capital et réserves'),
(3, 101, 'abrégé', 'Capital'),
(4, 1011, 'étendu', 'Capital souscrit – non appelé'),
(5, 1012, 'étendu', 'Capital souscrit – appelé, non versé'),
(6, 1013, 'étendu', 'Capital souscrit – appelé, versé'),
(7, 10131, 'étendu', 'Capital non amorti'),
(8, 10132, 'étendu', 'Capital amorti'),
(9, 1018, 'étendu', 'Capital souscrit soumis à des réglementations particulières'),
(10, 102, 'base', 'Fonds fiduciaires'),
(11, 104, 'base', 'Primes liées au capital social'),
(12, 1041, 'étendu', 'Primes d’émission'),
(13, 1042, 'étendu', 'Primes de fusion'),
(14, 1043, 'étendu', 'Primes d’apport'),
(15, 1044, 'étendu', 'Primes de conversion d’obligations en actions'),
(16, 1045, 'étendu', 'Bons de souscription d’actions'),
(17, 105, 'abrégé', 'Écarts de réévaluation'),
(18, 1051, 'étendu', 'Réserve spéciale de réévaluation'),
(19, 1052, 'étendu', 'Écart de réévaluation libre'),
(20, 1053, 'étendu', 'Réserve de réévaluation'),
(21, 1055, 'étendu', 'Écarts de réévaluation (autres opérations légales)'),
(22, 1057, 'étendu', 'Autres écarts de réévaluation en France'),
(23, 1058, 'étendu', 'Autres écarts de réévaluation à l’Étranger'),
(24, 106, 'base', 'Réserves'),
(25, 1061, 'abrégé', 'Réserve légale'),
(26, 10611, 'étendu', 'Réserve légale proprement dite'),
(27, 10612, 'étendu', 'Plus-values nettes à long terme'),
(28, 1062, 'base', 'Réserves indisponibles'),
(29, 1063, 'abrégé', 'Réserves statutaires ou contractuelles'),
(30, 1064, 'abrégé', 'Réserves réglementées'),
(31, 10641, 'étendu', 'Plus-values nettes à long terme'),
(32, 10643, 'étendu', 'Réserves consécutives à l’octroi de subventions d’investissement'),
(33, 10648, 'étendu', 'Autres réserves réglementées'),
(34, 1068, 'abrégé', 'Autres réserves'),
(35, 10681, 'étendu', 'Réserve de propre assureur'),
(36, 10688, 'étendu', 'Réserves diverses'),
(37, 107, 'base', 'Écart d’équivalence'),
(38, 108, 'abrégé', 'Compte de l’exploitant'),
(39, 109, 'base', 'Actionnaires : Capital souscrit – non appelé'),
(40, 11, 'base', 'Report à nouveau (solde créditeur ou débiteur)'),
(41, 110, 'étendu', 'Report à nouveau (solde créditeur)'),
(42, 119, 'étendu', 'Report à nouveau (solde débiteur)'),
(43, 12, 'abrégé', 'Résultat de l’exercice (bénéfice ou perte)'),
(44, 120, 'étendu', 'Résultat de l’exercice (bénéfice)'),
(45, 129, 'étendu', 'Résultat de l’exercice (perte)'),
(46, 13, 'base', 'Subventions d’investissement'),
(47, 131, 'base', 'Subventions d’équipement'),
(48, 1311, 'étendu', 'État'),
(49, 1312, 'étendu', 'Régions'),
(50, 1313, 'étendu', 'Départements'),
(51, 1314, 'étendu', 'Communes'),
(52, 1315, 'étendu', 'Collectivités publiques'),
(53, 1316, 'étendu', 'Entreprises publiques'),
(54, 1317, 'étendu', 'Entreprises et organismes privés'),
(55, 1318, 'étendu', 'Autres'),
(56, 138, 'base', 'Autres subventions d’investissement (même ventilation que celle du compte 131)'),
(57, 139, 'base', 'Subventions d’investissement inscrites au compte de résultat'),
(58, 1391, 'base', 'Subventions d’équipement'),
(59, 13911, 'étendu', 'État'),
(60, 13912, 'étendu', 'Régions'),
(61, 13913, 'étendu', 'Départements'),
(62, 13914, 'étendu', 'Communes'),
(63, 13915, 'étendu', 'Collectivités publiques'),
(64, 13916, 'étendu', 'Entreprises publiques'),
(65, 13917, 'étendu', 'Entreprises et organismes privés'),
(66, 13918, 'étendu', 'Autres'),
(67, 1398, 'base', 'Autres subventions d’investissement (même ventilation que celle du compte 1391)'),
(68, 14, 'base', 'Provisions réglementées'),
(69, 142, 'base', 'Provisions réglementées relatives aux immobilisations'),
(70, 1423, 'étendu', 'Provisions pour reconstitution des gisements miniers et pétroliers'),
(71, 1424, 'étendu', 'Provisions pour investissement (participation des salariés)'),
(72, 143, 'base', 'Provisions réglementées relatives aux stocks'),
(73, 1431, 'étendu', 'Hausse des prix'),
(74, 1432, 'étendu', 'Fluctuation des cours'),
(75, 144, 'base', 'Provisions réglementées relatives aux autres éléments de l’actif'),
(76, 145, 'abrégé', 'Amortissements dérogatoires'),
(77, 146, 'abrégé', 'Provision spéciale de réévaluation'),
(78, 147, 'abrégé', 'Plus-values réinvesties'),
(79, 148, 'abrégé', 'Autres provisions réglementées'),
(80, 15, 'abrégé', 'Provisions'),
(81, 151, 'base', 'Provisions pour risques'),
(82, 1511, 'étendu', 'Provisions pour litiges'),
(83, 1512, 'étendu', 'Provisions pour garanties données aux clients'),
(84, 1513, 'étendu', 'Provisions pour pertes sur marchés à terme'),
(85, 1514, 'étendu', 'Provisions pour amendes et pénalités'),
(86, 1515, 'étendu', 'Provisions pour pertes de change'),
(87, 1516, 'étendu', 'Provisions pour pertes sur contrats'),
(88, 1518, 'étendu', 'Autres provisions pour risques'),
(89, 153, 'base', 'Provisions pour pensions et obligations similaires'),
(90, 154, 'base', 'Provisions pour restructurations'),
(91, 155, 'base', 'Provisions pour impôts'),
(92, 156, 'base', 'Provisions pour renouvellement des immobilisations (entreprises concessionnaires)'),
(93, 157, 'base', 'Provisions pour charges à répartir sur plusieurs exercices'),
(94, 1572, 'étendu', 'Provisions pour gros entretien ou grandes révisions'),
(95, 158, 'base', 'Autres provisions pour charges'),
(96, 1581, 'étendu', 'Provisions pour remises en état'),
(97, 16, 'abrégé', 'Emprunts et dettes assimilées'),
(98, 161, 'base', 'Emprunts obligataires convertibles'),
(99, 162, 'base', 'Obligations représentatives de passifs nets remis en fiducie'),
(100, 163, 'base', 'Autres emprunts obligataires'),
(101, 164, 'base', 'Emprunts auprès des établissements de crédit'),
(102, 165, 'base', 'Dépôts et cautionnements reçus'),
(103, 1651, 'étendu', 'Dépôts'),
(104, 1655, 'étendu', 'Cautionnements'),
(105, 166, 'étendu', 'Participation des salariés aux résultats'),
(106, 1661, 'étendu', 'Comptes bloqués'),
(107, 1662, 'étendu', 'Fonds de participation'),
(108, 167, 'base', 'Emprunts et dettes assortis de conditions particulières'),
(109, 1671, 'base', 'Émissions de titres participatifs'),
(110, 1674, 'base', 'Avances conditionnées de l’État'),
(111, 1675, 'base', 'Emprunts participatifs'),
(112, 168, 'base', 'Autres emprunts et dettes assimilées'),
(113, 1681, 'étendu', 'Autres emprunts'),
(114, 1685, 'étendu', 'Rentes viagères capitalisées'),
(115, 1687, 'étendu', 'Autres dettes'),
(116, 1688, 'étendu', 'Intérêts courus'),
(117, 16881, 'étendu', 'sur emprunts obligataires convertibles'),
(118, 16883, 'étendu', 'sur autres emprunts obligataires'),
(119, 16884, 'étendu', 'sur emprunts auprès des établissements de crédit'),
(120, 16885, 'étendu', 'sur dépôts et cautionnements reçus'),
(121, 16886, 'étendu', 'sur participation des salariés aux résultats'),
(122, 16887, 'étendu', 'sur emprunts et dettes assortis de conditions particulières'),
(123, 16888, 'étendu', 'sur autres emprunts et dettes assimilées'),
(124, 169, 'base', 'Primes de remboursement des obligations'),
(125, 17, 'base', 'Dettes rattachées à des participations'),
(126, 171, 'base', 'Dettes rattachées à des participations (groupe)'),
(127, 174, 'base', 'Dettes rattachées à des participations (hors groupe)'),
(128, 178, 'base', 'Dettes rattachées à des sociétés en participation'),
(129, 1781, 'étendu', 'Principal'),
(130, 1788, 'étendu', 'Intérêts courus'),
(131, 18, 'base', 'Comptes de liaison des établissements et sociétés en participation'),
(132, 181, 'étendu', 'Comptes de liaison des établissements'),
(133, 186, 'étendu', 'Biens et prestations de services échangés entre établissements (charges)'),
(134, 187, 'étendu', 'Biens et prestations de services échangés entre établissements (produits)'),
(135, 188, 'étendu', 'Comptes de liaison des sociétés en participation'),
(136, 2, 'abrégé', 'Comptes d’immobilisations'),
(137, 20, 'abrégé', 'Immobilisations incorporelles'),
(138, 201, 'abrégé', 'Frais d’établissement'),
(139, 2011, 'étendu', 'Frais de constitution'),
(140, 2012, 'étendu', 'Frais de premier établissement'),
(141, 20121, 'étendu', 'Frais de prospection'),
(142, 20122, 'étendu', 'Frais de publicité'),
(143, 2013, 'étendu', 'Frais d’augmentation de capital et d’opérations diverses (fusions, scissions, transformations)'),
(144, 203, 'base', 'Frais de recherche et de développement'),
(145, 205, 'base', 'Concessions et droits similaires, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires'),
(146, 206, 'abrégé', 'Droit au bail'),
(147, 207, 'abrégé', 'Fonds commercial'),
(148, 208, 'abrégé', 'Autres immobilisations incorporelles'),
(149, 2081, 'base', 'Mali de fusion sur actifs incorporels'),
(150, 21, 'abrégé', 'Immobilisations corporelles'),
(151, 211, 'base', 'Terrains'),
(152, 2111, 'base', 'Terrains nus'),
(153, 2112, 'base', 'Terrains aménagés'),
(154, 2113, 'base', 'Sous-sols et sursols'),
(155, 2114, 'base', 'Terrains de carrières (Tréfonds)'),
(156, 2115, 'base', 'Terrains bâtis'),
(157, 21151, 'étendu', 'Ensembles immobiliers industriels (A, B)'),
(158, 21155, 'étendu', 'Ensembles immobiliers administratifs et commerciaux (A, B)'),
(159, 21158, 'étendu', 'Autres ensembles immobiliers'),
(160, 211581, 'étendu', 'affectés aux opérations professionnelles (A, B)'),
(161, 211588, 'étendu', 'affectés aux opérations non professionnelles (A, B)'),
(162, 2116, 'base', 'Compte d’ordre sur immobilisations'),
(163, 212, 'base', 'Agencements et aménagements de terrains (même ventilation que celle du compte 211)'),
(164, 213, 'base', 'Constructions'),
(165, 2131, 'base', 'Bâtiments'),
(166, 21311, 'étendu', 'Ensembles immobiliers industriels (A, B)'),
(167, 21315, 'étendu', 'Ensembles immobiliers administratifs et commerciaux (A, B)'),
(168, 21318, 'étendu', 'Autres ensembles immobiliers'),
(169, 213181, 'étendu', 'affectés aux opérations professionnelles (A, B)'),
(170, 213188, 'étendu', 'affectés aux opérations non professionnelles (A, B)'),
(171, 2135, 'base', 'Installations générales – agencements – aménagements des constructions'),
(172, 21351, 'étendu', 'Ensembles immobiliers industriels (A, B)'),
(173, 21355, 'étendu', 'Ensembles immobiliers administratifs et commerciaux (A, B)'),
(174, 21358, 'étendu', 'Autres ensembles immobiliers'),
(175, 213581, 'étendu', 'affectés aux opérations professionnelles (A, B)'),
(176, 213588, 'étendu', 'affectés aux opérations non professionnelles (A, B)'),
(177, 2138, 'base', 'Ouvrages d’infrastructure'),
(178, 21381, 'étendu', 'Voies de terre'),
(179, 21382, 'étendu', 'Voies de fer'),
(180, 21383, 'étendu', 'Voies d’eau'),
(181, 21384, 'étendu', 'Barrages'),
(182, 21385, 'étendu', 'Pistes d’aérodromes'),
(183, 214, 'base', 'Constructions sur sol d’autrui (même ventilation que celle du compte 213)'),
(184, 215, 'base', 'Installations techniques, matériels et outillage industriels'),
(185, 2151, 'base', 'Installations complexes spécialisées'),
(186, 21511, 'étendu', 'sur sol propre'),
(187, 21514, 'étendu', 'sur sol d’autrui'),
(188, 2153, 'base', 'Installations à caractère spécifique'),
(189, 21531, 'étendu', 'sur sol propre'),
(190, 21534, 'étendu', 'sur sol d’autrui'),
(191, 2154, 'base', 'Matériel industriel'),
(192, 2155, 'base', 'Outillage industriel'),
(193, 2157, 'base', 'Agencements et aménagements du matériel et outillage industriels'),
(194, 218, 'base', 'Autres immobilisations corporelles'),
(195, 2181, 'base', 'Installations générales, agencements, aménagements divers'),
(196, 2182, 'base', 'Matériel de transport'),
(197, 2183, 'base', 'Matériel de bureau et matériel informatique'),
(198, 2184, 'base', 'Mobilier'),
(199, 2185, 'base', 'Cheptel'),
(200, 2186, 'base', 'Emballages récupérables'),
(201, 2187, 'base', 'Mali de fusions sur actifs corporels'),
(202, 22, 'base', 'Immobilisations mises en concession'),
(203, 23, 'abrégé', 'Immobilisations en cours'),
(204, 231, 'base', 'Immobilisations corporelles en cours'),
(205, 2312, 'étendu', 'Terrains'),
(206, 2313, 'étendu', 'Constructions'),
(207, 2315, 'étendu', 'Installations techniques, matériel et outillage industriels'),
(208, 2318, 'étendu', 'Autres immobilisations corporelles'),
(209, 232, 'base', 'Immobilisations incorporelles en cours'),
(210, 237, 'base', 'Avances et acomptes versés sur immobilisations incorporelles'),
(211, 238, 'base', 'Avances et acomptes versés sur commandes d’immobilisations corporelles'),
(212, 2382, 'étendu', 'Terrains'),
(213, 2383, 'étendu', 'Constructions'),
(214, 2385, 'étendu', 'Installations techniques, matériel et outillage industriels'),
(215, 2388, 'base', 'Autres immobilisations corporelles'),
(216, 25, 'base', 'Parts dans des entreprises liées et créances sur des entreprises liées'),
(217, 26, 'base', 'Participations et créances rattachées à des participations'),
(218, 261, 'base', 'Titres de participation'),
(219, 2611, 'étendu', 'Actions'),
(220, 2618, 'étendu', 'Autres titres'),
(221, 266, 'base', 'Autres formes de participation'),
(222, 2661, 'étendu', 'Droits représentatifs d’actifs nets remis en fiducie'),
(223, 267, 'base', 'Créances rattachées à des participations'),
(224, 2671, 'étendu', 'Créances rattachées à des participations (groupe)'),
(225, 2674, 'étendu', 'Créances rattachées à des participations (hors groupe)'),
(226, 2675, 'étendu', 'Versements représentatifs d’apports non capitalisés (appel de fonds)'),
(227, 2676, 'étendu', 'Avances consolidables'),
(228, 2677, 'étendu', 'Autres créances rattachées à des participations'),
(229, 2678, 'étendu', 'Intérêts courus'),
(230, 268, 'base', 'Créances rattachées à des sociétés en participation'),
(231, 2681, 'étendu', 'Principal'),
(232, 2688, 'étendu', 'Intérêts courus'),
(233, 269, 'base', 'Versements restant à effectuer sur titres de participation non libérés'),
(234, 27, 'abrégé', 'Autres immobilisations financières'),
(235, 271, 'base', 'Titres immobilisés autres que les titres immobilisés de l’activité de portefeuille (droit de propriété)'),
(236, 2711, 'étendu', 'Actions'),
(237, 2718, 'étendu', 'Autres titres'),
(238, 272, 'base', 'Titres immobilisés (droit de créance)'),
(239, 2721, 'étendu', 'Obligations'),
(240, 2722, 'étendu', 'Bons'),
(241, 273, 'base', 'Titres immobilisés de l’activité de portefeuille'),
(242, 274, 'base', 'Prêts'),
(243, 2741, 'étendu', 'Prêts participatifs'),
(244, 2742, 'étendu', 'Prêts aux associés'),
(245, 2743, 'étendu', 'Prêts au personnel'),
(246, 2748, 'étendu', 'Autres prêts'),
(247, 275, 'base', 'Dépôts et cautionnements versés'),
(248, 2751, 'étendu', 'Dépôts'),
(249, 2755, 'étendu', 'Cautionnements'),
(250, 276, 'base', 'Autres créances immobilisées'),
(251, 2761, 'étendu', 'Créances diverses'),
(252, 2768, 'étendu', 'Intérêts courus'),
(253, 27682, 'étendu', 'sur titres immobilisés (droit de créance)'),
(254, 27684, 'étendu', 'sur prêts'),
(255, 27685, 'étendu', 'sur dépôts et cautionnements'),
(256, 27688, 'étendu', 'sur créances diverses'),
(257, 277, 'base', '(Actions propres ou parts propres)'),
(258, 2771, 'étendu', 'Actions propres ou parts propres'),
(259, 2772, 'étendu', 'Actions propres ou parts propres en voie d’annulation'),
(260, 278, 'base', 'Mali de fusion sur actifs financiers'),
(261, 279, 'base', 'Versements restant à effectuer sur titres immobilisés non libérés'),
(262, 28, 'base', 'Amortissements des immobilisations'),
(263, 280, 'abrégé', 'Amortissements des immobilisations incorporelles'),
(264, 2801, 'base', 'Frais d’établissement (même ventilation que celle du compte 201)'),
(265, 2803, 'base', 'Frais de recherche et de développement'),
(266, 2805, 'base', 'Concessions et droits similaires, brevets, licences, logiciels, droits et valeurs similaires'),
(267, 2807, 'base', 'Fonds commercial'),
(268, 2808, 'base', 'Autres immobilisations incorporelles'),
(269, 28081, 'base', 'Amortissements du mali de fusion sur actifs incorporels'),
(270, 281, 'abrégé', 'Amortissements des immobilisations corporelles'),
(271, 2812, 'base', 'Agencements, aménagements de terrains (même ventilation que celle du compte 212)'),
(272, 2813, 'base', 'Constructions (même ventilation que celle du compte 213)'),
(273, 2814, 'base', 'Constructions sur sol d’autrui (même ventilation que celle du compte 214)'),
(274, 2815, 'base', 'Installations, matériel et outillage industriels (même ventilation que celle du compte 215)'),
(275, 2818, 'base', 'Autres immobilisations corporelles (même ventilation que celle du compte 218)'),
(276, 28187, 'base', 'Amortissement du mali de fusion sur actifs corporels'),
(277, 282, 'base', 'Amortissements des immobilisations mises en concession'),
(278, 29, 'base', 'Dépréciations des immobilisations'),
(279, 290, 'abrégé', 'Dépréciations des immobilisations incorporelles'),
(280, 2905, 'base', 'Marques, procédés, droits et valeurs similaires'),
(281, 2906, 'base', 'Droit au bail'),
(282, 2907, 'base', 'Fonds commercial'),
(283, 2908, 'base', 'Autres immobilisations incorporelles'),
(284, 29081, 'base', 'Dépréciation du mali de fusion sur actifs incorporels'),
(285, 291, 'abrégé', 'Dépréciations des immobilisations corporelles (même ventilation que celle du compte 21)'),
(286, 29187, 'base', 'Dépréciation du mali de fusion sur actifs corporels'),
(287, 292, 'base', 'Dépréciations des immobilisations mises en concession'),
(288, 293, 'base', 'Dépréciations des immobilisations en cours'),
(289, 2931, 'base', 'Immobilisations corporelles en cours'),
(290, 2932, 'base', 'Immobilisations incorporelles en cours'),
(291, 296, 'base', 'Dépréciations des participations et créances rattachées à des participations'),
(292, 2961, 'base', 'Titres de participation'),
(293, 2966, 'base', 'Autres formes de participation'),
(294, 2967, 'base', 'Créances rattachées à des participations (même ventilation que celle du compte 267)'),
(295, 2968, 'base', 'Créances rattachées à des sociétés en participation (même ventilation que celle du compte 268)'),
(296, 297, 'abrégé', 'Dépréciations des autres immobilisations financières'),
(297, 2971, 'base', 'Titres immobilisés autres que les titres immobilisés de l’activité de portefeuille – droit de propriété (même ventilation que celle du compte 271)'),
(298, 2972, 'base', 'Droit de créance (même ventilation que celle du compte 272)'),
(299, 2973, 'base', 'Titres immobilisés de l’activité de portefeuille'),
(300, 2974, 'base', 'Prêts (même ventilation que celle du compte 274)'),
(301, 2975, 'base', 'Dépôts et cautionnements versés (même ventilation que celle du compte 275)'),
(302, 2976, 'base', 'Autres créances immobilisées (même ventilation que celle du compte 276)'),
(303, 29787, 'base', 'Dépréciation du mali de fusion sur actifs financiers'),
(304, 3, 'abrégé', 'Comptes de stocks et en-cours'),
(305, 31, 'abrégé', 'Matières premières (et fournitures)'),
(306, 311, 'base', 'Matières (ou groupe) A'),
(307, 312, 'base', 'Matières (ou groupe) B'),
(308, 317, 'base', 'Fournitures A, B, C,'),
(309, 32, 'abrégé', 'Autres approvisionnements'),
(310, 321, 'base', 'Matières consommables'),
(311, 3211, 'étendu', 'Matières (ou groupe) C'),
(312, 3212, 'étendu', 'Matières (ou groupe) D'),
(313, 322, 'base', 'Fournitures consommables'),
(314, 3221, 'étendu', 'Combustibles'),
(315, 3222, 'étendu', 'Produits d’entretien'),
(316, 3223, 'étendu', 'Fournitures d’atelier et d’usine'),
(317, 3224, 'étendu', 'Fournitures de magasin'),
(318, 3225, 'étendu', 'Fournitures de bureau'),
(319, 326, 'base', 'Emballages'),
(320, 3261, 'étendu', 'Emballages perdus'),
(321, 3265, 'étendu', 'Emballages récupérables non identifiables'),
(322, 3267, 'étendu', 'Emballages à usage mixte'),
(323, 33, 'abrégé', 'En-cours de production de biens'),
(324, 331, 'base', 'Produits en cours'),
(325, 3311, 'étendu', 'Produits en cours P 1'),
(326, 3312, 'étendu', 'Produits en cours P 2'),
(327, 335, 'base', 'Travaux en cours'),
(328, 3351, 'étendu', 'Travaux en cours T 1'),
(329, 3352, 'étendu', 'Travaux en cours T 2'),
(330, 34, 'abrégé', 'En-cours de production de services'),
(331, 341, 'base', 'Études en cours'),
(332, 3411, 'étendu', 'Études en cours E 1'),
(333, 3412, 'étendu', 'Études en cours E 2'),
(334, 345, 'base', 'Prestations de services en cours'),
(335, 3451, 'étendu', 'Prestations de services S 1'),
(336, 3452, 'étendu', 'Prestations de services S 2'),
(337, 35, 'abrégé', 'Stocks de produits'),
(338, 351, 'base', 'Produits intermédiaires'),
(339, 3511, 'étendu', 'Produits intermédiaires (ou groupe) A'),
(340, 3512, 'étendu', 'Produits intermédiaires (ou groupe) B'),
(341, 355, 'base', 'Produits finis'),
(342, 3551, 'étendu', 'Produits finis (ou groupe) A'),
(343, 3552, 'étendu', 'Produits finis (ou groupe) B'),
(344, 358, 'base', 'Produits résiduels (ou matières de récupération)'),
(345, 3581, 'étendu', 'Déchets'),
(346, 3585, 'étendu', 'Rebuts'),
(347, 3586, 'étendu', 'Matières de récupération'),
(348, 36, 'base', '(compte à ouvrir, le cas échéant, sous l’intitulé \"Stocks provenant d’immobilisations\")'),
(349, 37, 'abrégé', 'Stocks de marchandises'),
(350, 371, 'étendu', 'Marchandises (ou groupe) A'),
(351, 372, 'étendu', 'Marchandises (ou groupe) B'),
(352, 38, 'base', '(lorsque l’entité tient un inventaire permanent en comptabilité générale, le compte 38 peut être utilisé pour comptabiliser les stocks en voie d’acheminement, mis en dépôt ou donnés en consignation)'),
(353, 39, 'base', 'Dépréciations des stocks et en-cours'),
(354, 391, 'abrégé', 'Dépréciations des matières premières (et fournitures)'),
(355, 3911, 'étendu', 'Matières (ou groupe) A'),
(356, 3912, 'étendu', 'Matières (ou groupe) B'),
(357, 3917, 'étendu', 'Fournitures A, B, C,'),
(358, 392, 'abrégé', 'Dépréciations des autres approvisionnements'),
(359, 3921, 'étendu', 'Matières consommables (même ventilation que celle du compte 321)'),
(360, 3922, 'étendu', 'Fournitures consommables (même ventilation que celle du compte 322)'),
(361, 3926, 'étendu', 'Emballages (même ventilation que celle du compte 326)'),
(362, 393, 'abrégé', 'Dépréciations des en-cours de production de biens'),
(363, 3931, 'étendu', 'Produits en cours (même ventilation que celle du compte 331)'),
(364, 3935, 'étendu', 'Travaux en cours (même ventilation que celle du compte 335)'),
(365, 394, 'abrégé', 'Dépréciations des en-cours de production de services'),
(366, 3941, 'étendu', 'Études en cours (même ventilation que celle du compte 341)'),
(367, 3945, 'étendu', 'Prestations de services en cours (même ventilation que celle du compte 345)'),
(368, 395, 'abrégé', 'Dépréciations des stocks de produits'),
(369, 3951, 'étendu', 'Produits intermédiaires (même ventilation que celle du compte 351)'),
(370, 3955, 'étendu', 'Produits finis (même ventilation que celle du compte 355)'),
(371, 397, 'abrégé', 'Dépréciations des stocks de marchandises'),
(372, 3971, 'étendu', 'Marchandise (ou groupe) A'),
(373, 3972, 'étendu', 'Marchandise (ou groupe) B'),
(374, 4, 'abrégé', 'Comptes de tiers'),
(375, 40, 'base', 'Fournisseurs et comptes rattachés'),
(376, 400, 'abrégé', 'Fournisseurs et comptes rattachés'),
(377, 401, 'base', 'Fournisseurs'),
(378, 4011, 'étendu', 'Fournisseurs – Achats de biens et prestations de services'),
(379, 4017, 'étendu', 'Fournisseurs – Retenues de garantie'),
(380, 403, 'base', 'Fournisseurs – Effets à payer'),
(381, 404, 'base', 'Fournisseurs d’immobilisations'),
(382, 4041, 'étendu', 'Fournisseurs – Achats d’immobilisations'),
(383, 4047, 'étendu', 'Fournisseurs d’immobilisations – Retenues de garantie'),
(384, 405, 'base', 'Fournisseurs d’immobilisations – Effets à payer'),
(385, 408, 'base', 'Fournisseurs – Factures non parvenues'),
(386, 4081, 'étendu', 'Fournisseurs'),
(387, 4084, 'étendu', 'Fournisseurs d’immobilisations'),
(388, 4088, 'étendu', 'Fournisseurs – Intérêts courus'),
(389, 409, 'abrégé', 'Fournisseurs débiteurs'),
(390, 4091, 'base', 'Fournisseurs – Avances et acomptes versés sur commandes'),
(391, 4096, 'base', 'Fournisseurs – Créances pour emballages et matériel à rendre'),
(392, 4097, 'base', 'Fournisseurs – Autres avoirs'),
(393, 40971, 'étendu', 'Fournisseurs d’exploitation'),
(394, 40974, 'étendu', 'Fournisseurs d’immobilisations'),
(395, 4098, 'base', 'Rabais, remises, ristournes à obtenir et autres avoirs non encore reçus'),
(396, 41, 'base', 'Clients et comptes rattachés'),
(397, 410, 'abrégé', 'Clients et comptes rattachés'),
(398, 411, 'base', 'Clients'),
(399, 4111, 'étendu', 'Clients – Ventes de biens ou de prestations de services'),
(400, 4117, 'étendu', 'Clients – Retenues de garantie'),
(401, 413, 'base', 'Clients – Effets à recevoir'),
(402, 416, 'base', 'Clients douteux ou litigieux'),
(403, 418, 'base', 'Clients – Produits non encore facturés'),
(404, 4181, 'étendu', 'Clients – Factures à établir'),
(405, 4188, 'étendu', 'Clients – Intérêts courus'),
(406, 419, 'abrégé', 'Clients créditeurs'),
(407, 4191, 'base', 'Clients – Avances et acomptes reçus sur commandes'),
(408, 4196, 'base', 'Clients – Dettes sur emballages et matériels consignés'),
(409, 4197, 'base', 'Clients – Autres avoirs'),
(410, 4198, 'base', 'Rabais, remises, ristournes à accorder et autres avoirs à établir'),
(411, 42, 'base', 'Personnel et comptes rattachés'),
(412, 421, 'abrégé', 'Personnel – Rémunérations dues'),
(413, 422, 'base', 'Comités d’entreprises, d’établissement, …'),
(414, 424, 'base', 'Participation des salariés aux résultats'),
(415, 4246, 'étendu', 'Réserve spéciale'),
(416, 4248, 'étendu', 'Comptes courants'),
(417, 425, 'base', 'Personnel – Avances et acomptes'),
(418, 426, 'base', 'Personnel – Dépôts'),
(419, 427, 'base', 'Personnel – Oppositions'),
(420, 428, 'abrégé', 'Personnel – Charges à payer et produits à recevoir'),
(421, 4282, 'étendu', 'Dettes provisionnées pour congés à payer'),
(422, 4284, 'étendu', 'Dettes provisionnées pour participation des salariés aux résultats'),
(423, 4286, 'étendu', 'Autres charges à payer'),
(424, 4287, 'étendu', 'Produits à recevoir'),
(425, 43, 'abrégé', 'Sécurité sociale et autres organismes sociaux'),
(426, 431, 'base', 'Sécurité sociale'),
(427, 437, 'base', 'Autres organismes sociaux'),
(428, 438, 'base', 'Organismes sociaux – Charges à payer et produits à recevoir'),
(429, 4382, 'étendu', 'Charges sociales sur congés à payer'),
(430, 4386, 'étendu', 'Autres charges à payer'),
(431, 4387, 'étendu', 'Produits à recevoir'),
(432, 44, 'base', 'État et autres collectivités publiques'),
(433, 441, 'base', 'État – Subventions à recevoir'),
(434, 4411, 'étendu', 'Subventions d’investissement'),
(435, 4417, 'étendu', 'Subventions d’exploitation'),
(436, 4418, 'étendu', 'Subventions d’équilibre'),
(437, 4419, 'étendu', 'Avances sur subventions'),
(438, 442, 'base', 'État – Impôts et taxes recouvrables sur des tiers'),
(439, 4424, 'étendu', 'Obligataires'),
(440, 4425, 'étendu', 'Associés'),
(441, 443, 'base', 'Opérations particulières avec l’État les collectivités publiques, les organismes internationaux'),
(442, 4431, 'base', 'Créances sur l’État résultant de la suppression de la règle du décalage d’un mois en matière de TVA'),
(443, 4438, 'base', 'Intérêts courus sur créances figurant au 4431'),
(444, 444, 'abrégé', 'État – Impôts sur les bénéfices'),
(445, 445, 'abrégé', 'État – Taxes sur le chiffre d’affaires'),
(446, 4452, 'base', 'TVA due intracommunautaire'),
(447, 4455, 'base', 'Taxes sur le chiffre d’affaires à décaisser'),
(448, 44551, 'étendu', 'TVA à décaisser'),
(449, 44558, 'étendu', 'Taxes assimilées à la TVA'),
(450, 4456, 'base', 'Taxes sur le chiffre d’affaires déductibles'),
(451, 44562, 'étendu', 'TVA sur immobilisations'),
(452, 44563, 'étendu', 'TVA transférée par d’autres entreprises'),
(453, 44566, 'étendu', 'TVA sur autres biens et services'),
(454, 44567, 'étendu', 'Crédit de TVA à reporter'),
(455, 44568, 'étendu', 'Taxes assimilées à la TVA'),
(456, 4457, 'base', 'Taxes sur le chiffre d’affaires collectées par l’entreprise'),
(457, 44571, 'étendu', 'TVA collectée'),
(458, 44578, 'étendu', 'Taxes assimilées à la TVA'),
(459, 4458, 'base', 'Taxes sur le chiffre d’affaires à régulariser ou en attente'),
(460, 44581, 'étendu', 'Acomptes – Régime simplifié d’imposition'),
(461, 44582, 'étendu', 'Acomptes – Régime de forfait'),
(462, 44583, 'étendu', 'Remboursement de taxes sur le chiffre d’affaires demandé'),
(463, 44584, 'étendu', 'TVA récupérée d’avance'),
(464, 44586, 'étendu', 'Taxes sur le chiffre d’affaires sur factures non parvenues'),
(465, 44587, 'étendu', 'Taxes sur le chiffre d’affaires sur factures à établir'),
(466, 446, 'base', 'Obligations cautionnées'),
(467, 447, 'abrégé', 'Autres impôts, taxes et versements assimilés'),
(468, 448, 'base', 'État – Charges à payer et produits à recevoir'),
(469, 4482, 'étendu', 'Charges fiscales sur congés à payer'),
(470, 4486, 'étendu', 'Charges à payer'),
(471, 4487, 'étendu', 'Produits à recevoir'),
(472, 449, 'base', 'Quotas d’émission à acquérir'),
(473, 45, 'abrégé', 'Groupe et associés'),
(474, 451, 'base', 'Groupe'),
(475, 455, 'abrégé', 'Associés – Comptes courants'),
(476, 4551, 'étendu', 'Principal'),
(477, 4558, 'étendu', 'Intérêts courus'),
(478, 456, 'base', 'Associés – Opérations sur le capital'),
(479, 4561, 'étendu', 'Associés – Comptes d’apport en société'),
(480, 45611, 'étendu', 'Apports en nature'),
(481, 45615, 'étendu', 'Apports en numéraire'),
(482, 4562, 'étendu', 'Apporteurs – Capital appelé, non versé'),
(483, 45621, 'étendu', 'Actionnaires – Capital souscrit et appelé, non versé'),
(484, 45625, 'étendu', 'Associés – Capital appelé, non versé'),
(485, 4563, 'étendu', 'Associés – Versements reçus sur augmentation de capital'),
(486, 4564, 'étendu', 'Associés – Versements anticipés'),
(487, 4566, 'étendu', 'Actionnaires défaillants'),
(488, 4567, 'étendu', 'Associés – Capital à rembourser'),
(489, 457, 'base', 'Associés – Dividendes à payer'),
(490, 458, 'base', 'Associés – Opérations faites en commun et en GIE'),
(491, 4581, 'étendu', 'Opérations courantes'),
(492, 4588, 'étendu', 'Intérêts courus'),
(493, 46, 'abrégé', 'Débiteurs divers et créditeurs divers'),
(494, 462, 'étendu', 'Créances sur cessions d’immobilisations'),
(495, 464, 'étendu', 'Dettes sur acquisitions de valeurs mobilières de placement'),
(496, 465, 'étendu', 'Créances sur cessions de valeurs mobilières de placement'),
(497, 467, 'étendu', 'Autres comptes débiteurs ou créditeurs'),
(498, 468, 'étendu', 'Divers – Charges à payer et produits à recevoir'),
(499, 4686, 'étendu', 'Charges à payer'),
(500, 4687, 'étendu', 'Produits à recevoir'),
(501, 47, 'abrégé', 'Comptes transitoires ou d’attente'),
(502, 471, 'base', 'Comptes d’attente'),
(503, 472, 'base', 'Comptes d’attente'),
(504, 473, 'base', 'Comptes d’attente'),
(505, 474, 'base', 'Comptes d’attente'),
(506, 475, 'base', 'Comptes d’attente'),
(507, 476, 'base', 'Différence de conversion – Actif'),
(508, 4761, 'étendu', 'Diminution des créances'),
(509, 4762, 'étendu', 'Augmentation des dettes'),
(510, 4768, 'étendu', 'Différences compensées par couverture de change'),
(511, 477, 'base', 'Différences de conversion – Passif'),
(512, 4771, 'étendu', 'Augmentation des créances'),
(513, 4772, 'étendu', 'Diminution des dettes'),
(514, 4778, 'étendu', 'Différences compensées par couverture de change'),
(515, 478, 'base', 'Autres comptes transitoires'),
(516, 4786, 'base', 'Différences d’évaluation sur instruments de trésorerie – ACTIF'),
(517, 4787, 'base', 'Différences d’évaluation sur instruments de trésorerie – PASSIF'),
(518, 48, 'base', 'Comptes de régularisation'),
(519, 481, 'abrégé', 'Charges à répartir sur plusieurs exercices'),
(520, 4816, 'étendu', 'Frais d’émission des emprunts'),
(521, 486, 'abrégé', 'Charges constatées d’avance'),
(522, 487, 'abrégé', 'Produits constatés d’avance'),
(523, 488, 'base', 'Comptes de répartition périodique des charges et des produits'),
(524, 4886, 'étendu', 'Charges'),
(525, 4887, 'étendu', 'Produits'),
(526, 49, 'base', 'Dépréciations des comptes de tiers'),
(527, 491, 'abrégé', 'Dépréciations des comptes de clients'),
(528, 495, 'base', 'Dépréciations des comptes du groupe et des associés'),
(529, 4951, 'base', 'Comptes du groupe'),
(530, 4955, 'base', 'Comptes courants des associés'),
(531, 4958, 'base', 'Opérations faites en commun et en GIE'),
(532, 496, 'abrégé', 'Dépréciations des comptes de débiteurs divers'),
(533, 4962, 'étendu', 'Créances sur cessions d’immobilisations'),
(534, 4965, 'étendu', 'Créances sur cessions de valeurs mobilières de placement'),
(535, 4967, 'étendu', 'Autres comptes débiteurs'),
(536, 5, 'abrégé', 'Comptes financiers'),
(537, 50, 'abrégé', 'Valeurs mobilières de placement'),
(538, 501, 'base', 'Parts dans des entreprises liées'),
(539, 502, 'base', 'Actions propres'),
(540, 5021, 'étendu', 'Actions destinées à être attribuées aux employés et affectées à des plans déterminés'),
(541, 5022, 'étendu', 'Actions disponibles pour être attribuées aux employés ou pour la régularisation des cours de bourse'),
(542, 503, 'base', 'Actions'),
(543, 5031, 'étendu', 'Titres cotés'),
(544, 5035, 'étendu', 'Titres non cotés'),
(545, 504, 'base', 'Autres titres conférant un droit de propriété'),
(546, 505, 'base', 'Obligations et bons émis par la société et rachetés par elle'),
(547, 506, 'base', 'Obligations'),
(548, 5061, 'étendu', 'Titres cotés'),
(549, 5065, 'étendu', 'Titres non cotés'),
(550, 507, 'base', 'Bons du Trésor et bons de caisse à court terme'),
(551, 508, 'base', 'Autres valeurs mobilières de placement et autres créances assimilées'),
(552, 5081, 'étendu', 'Autres valeurs mobilières'),
(553, 5082, 'étendu', 'Bons de souscription'),
(554, 5088, 'étendu', 'Intérêts courus sur obligations, bons et valeurs assimilés'),
(555, 509, 'base', 'Versements restant à effectuer sur valeurs mobilières de placement non libérées'),
(556, 51, 'abrégé', 'Banques, établissements financiers et assimilés'),
(557, 511, 'base', 'Valeurs à l’encaissement'),
(558, 5111, 'étendu', 'Coupons échus à l’encaissement'),
(559, 5112, 'étendu', 'Chèques à encaisser'),
(560, 5113, 'étendu', 'Effets à l’encaissement'),
(561, 5114, 'étendu', 'Effets à l’escompte'),
(562, 512, 'base', 'Banques'),
(563, 5121, 'étendu', 'Comptes en monnaie nationale'),
(564, 5124, 'étendu', 'Comptes en devises'),
(565, 514, 'base', 'Chèques postaux'),
(566, 515, 'base', 'Caisses'),
(567, 516, 'base', 'Sociétés de bourse'),
(568, 517, 'base', 'Autres organismes financiers'),
(569, 518, 'base', 'Intérêts courus'),
(570, 5181, 'étendu', 'Intérêts courus à payer'),
(571, 5188, 'étendu', 'Intérêts courus à recevoir'),
(572, 519, 'base', 'Concours bancaires courants'),
(573, 5191, 'étendu', 'Crédit de mobilisation de créances commerciales'),
(574, 5193, 'étendu', 'Mobilisation de créances nées à l’étranger'),
(575, 5198, 'étendu', 'Intérêts courus sur concours bancaires courants'),
(576, 52, 'base', 'Instruments de trésorerie'),
(577, 53, 'abrégé', 'Caisse'),
(578, 531, 'base', 'Caisse siège social'),
(579, 5311, 'étendu', 'Caisse en monnaie nationale'),
(580, 5314, 'étendu', 'Caisse en devises'),
(581, 532, 'étendu', 'Caisse succursale (ou usine) A'),
(582, 533, 'étendu', 'Caisse succursale (ou usine) B'),
(583, 54, 'abrégé', 'Régies d’avance et accréditifs'),
(584, 58, 'abrégé', 'Virements internes'),
(585, 59, 'base', 'Dépréciations des comptes financiers'),
(586, 590, 'abrégé', 'Dépréciations des valeurs mobilières de placement'),
(587, 5903, 'base', 'Actions'),
(588, 5904, 'base', 'Autres titres conférant un droit de propriété'),
(589, 5906, 'base', 'Obligations'),
(590, 5908, 'base', 'Autres valeurs mobilières de placement et créances assimilées'),
(591, 6, 'abrégé', 'Comptes de charges'),
(592, 60, 'abrégé', 'Achats (sauf 603)'),
(593, 601, 'base', 'Achats stockés – Matières premières (et fournitures)'),
(594, 6011, 'étendu', 'Matières (ou groupe) A'),
(595, 6012, 'étendu', 'Matières (ou groupe) B'),
(596, 6017, 'étendu', 'Fournitures A, B, C,'),
(597, 602, 'base', 'Achats stockés – Autres approvisionnements'),
(598, 6021, 'base', 'Matières consommables'),
(599, 60211, 'étendu', 'Matières (ou groupe) C'),
(600, 60212, 'étendu', 'Matières (ou groupe) D'),
(601, 6022, 'base', 'Fournitures consommables'),
(602, 60221, 'étendu', 'Combustibles'),
(603, 60222, 'étendu', 'Produits d’entretien'),
(604, 60223, 'étendu', 'Fournitures d’atelier et d’usine'),
(605, 60224, 'étendu', 'Fournitures de magasin'),
(606, 60225, 'étendu', 'Fourniture de bureau'),
(607, 6026, 'base', 'Emballages'),
(608, 60261, 'étendu', 'Emballages perdus'),
(609, 60265, 'étendu', 'Emballages récupérables non identifiables'),
(610, 60267, 'étendu', 'Emballages à usage mixte'),
(611, 604, 'base', 'Achats d’études et prestations de services'),
(612, 605, 'base', 'Achats de matériel, équipements et travaux'),
(613, 606, 'base', 'Achats non stockés de matière et fournitures'),
(614, 6061, 'étendu', 'Fournitures non stockables (eau, énergie, …)'),
(615, 6063, 'étendu', 'Fournitures d’entretien et de petit équipement'),
(616, 6064, 'étendu', 'Fournitures administratives'),
(617, 6068, 'étendu', 'Autres matières et fournitures'),
(618, 607, 'base', 'Achats de marchandises'),
(619, 6071, 'étendu', 'Marchandise (ou groupe) A'),
(620, 6072, 'étendu', 'Marchandise (ou groupe) B'),
(621, 608, 'base', '(Compte réservé, le cas échéant, à la récapitulation des frais accessoires incorporés aux achats)'),
(622, 609, 'base', 'Rabais, remises et ristournes obtenus sur achats'),
(623, 6091, 'étendu', 'de matières premières (et fournitures)'),
(624, 6092, 'étendu', 'd’autres approvisionnements stockés'),
(625, 6094, 'étendu', 'd’études et prestations de services'),
(626, 6095, 'étendu', 'de matériel, équipements et travaux'),
(627, 6096, 'étendu', 'd’approvisionnements non stockés'),
(628, 6097, 'étendu', 'de marchandises'),
(629, 6098, 'étendu', 'Rabais, remises et ristournes non affectés'),
(630, 603, 'abrégé', 'Variations des stocks (approvisionnements et marchandises)'),
(631, 6031, 'base', 'Variation des stocks de matières premières (et fournitures)'),
(632, 6032, 'base', 'Variation des stocks des autres approvisionnements'),
(633, 6037, 'base', 'Variation des stocks de marchandises 61/62 – Autres charges externes'),
(634, 61, 'abrégé', 'Services extérieurs'),
(635, 611, 'base', 'Sous-traitance générale'),
(636, 612, 'base', 'Redevances de crédit-bail'),
(637, 6122, 'base', 'Crédit-bail mobilier'),
(638, 6125, 'base', 'Crédit-bail immobilier'),
(639, 613, 'base', 'Locations'),
(640, 6132, 'étendu', 'Locations immobilières'),
(641, 6135, 'étendu', 'Locations mobilières'),
(642, 6136, 'étendu', 'Malis sur emballages'),
(643, 614, 'base', 'Charges locatives et de copropriété'),
(644, 615, 'base', 'Entretien et réparations'),
(645, 6152, 'étendu', 'sur biens immobiliers'),
(646, 6155, 'étendu', 'sur biens mobiliers'),
(647, 6156, 'étendu', 'Maintenance'),
(648, 616, 'base', 'Primes d’assurances'),
(649, 6161, 'étendu', 'Multirisques'),
(650, 6162, 'étendu', 'Assurance obligatoire dommage construction'),
(651, 6163, 'étendu', 'Assurance – transport'),
(652, 61636, 'étendu', 'sur achats'),
(653, 61637, 'étendu', 'sur ventes'),
(654, 61638, 'étendu', 'sur autres biens'),
(655, 6164, 'étendu', 'Risques d’exploitation'),
(656, 6165, 'étendu', 'Insolvabilité clients'),
(657, 617, 'base', 'Études et recherches'),
(658, 618, 'base', 'Divers'),
(659, 6181, 'étendu', 'Documentation générale'),
(660, 6183, 'étendu', 'Documentation technique'),
(661, 6185, 'étendu', 'Frais de colloques, séminaires, conférences'),
(662, 619, 'base', 'Rabais, remises et ristournes obtenus sur services extérieurs'),
(663, 62, 'abrégé', 'Autres services extérieurs'),
(664, 621, 'base', 'Personnel extérieur à l’entreprise'),
(665, 6211, 'étendu', 'Personnel intérimaire'),
(666, 6214, 'étendu', 'Personnel détaché ou prêté à l’entreprise'),
(667, 622, 'base', 'Rémunérations d’intermédiaires et honoraires'),
(668, 6221, 'étendu', 'Commissions et courtages sur achats'),
(669, 6222, 'étendu', 'Commissions et courtages sur ventes'),
(670, 6224, 'étendu', 'Rémunérations des transitaires'),
(671, 6225, 'étendu', 'Rémunérations d’affacturage'),
(672, 6226, 'étendu', 'Honoraires'),
(673, 6227, 'étendu', 'Frais d’actes et de contentieux'),
(674, 6228, 'étendu', 'Divers'),
(675, 623, 'base', 'Publicité, publications, relations publiques'),
(676, 6231, 'étendu', 'Annonces et insertions'),
(677, 6232, 'étendu', 'Échantillons'),
(678, 6233, 'étendu', 'Foires et expositions'),
(679, 6234, 'étendu', 'Cadeaux à la clientèle'),
(680, 6235, 'étendu', 'Primes'),
(681, 6236, 'étendu', 'Catalogues et imprimés'),
(682, 6237, 'étendu', 'Publications'),
(683, 6238, 'étendu', 'Divers (pourboires, dons courants, …)'),
(684, 624, 'base', 'Transports de biens et transports collectifs du personnel'),
(685, 6241, 'étendu', 'Transports sur achats'),
(686, 6242, 'étendu', 'Transports sur ventes'),
(687, 6243, 'étendu', 'Transports entre établissements ou chantiers'),
(688, 6244, 'étendu', 'Transports administratifs'),
(689, 6247, 'étendu', 'Transports collectifs du personnel'),
(690, 6248, 'étendu', 'Divers'),
(691, 625, 'base', 'Déplacements, missions et réceptions'),
(692, 6251, 'étendu', 'Voyages et déplacements'),
(693, 6255, 'étendu', 'Frais de déménagement'),
(694, 6256, 'étendu', 'Missions'),
(695, 6257, 'étendu', 'Réceptions'),
(696, 626, 'base', 'Frais postaux et de télécommunications'),
(697, 627, 'base', 'Services bancaires et assimilés'),
(698, 6271, 'étendu', 'Frais sur titres (achat, vente, garde)'),
(699, 6272, 'étendu', 'Commissions et frais sur émission d’emprunts'),
(700, 6275, 'étendu', 'Frais sur effets'),
(701, 6276, 'étendu', 'Location de coffres'),
(702, 6278, 'étendu', 'Autres frais et commissions sur prestations de services'),
(703, 628, 'base', 'Divers'),
(704, 6281, 'étendu', 'Concours divers (cotisations, )'),
(705, 6284, 'étendu', 'Frais de recrutement de personnel'),
(706, 629, 'base', 'Rabais, remises et ristournes obtenus sur autres services extérieurs'),
(707, 63, 'abrégé', 'Impôts, taxes et versements assimilés'),
(708, 631, 'base', 'Impôts, taxes et versements assimilés sur rémunérations (administrations des impôts)'),
(709, 6311, 'étendu', 'Taxe sur les salaires'),
(710, 6312, 'étendu', 'Taxe d’apprentissage'),
(711, 6313, 'étendu', 'Participation des employeurs à la formation professionnelle continue'),
(712, 6314, 'étendu', 'Cotisation pour défaut d’investissement obligatoire dans la construction'),
(713, 6318, 'étendu', 'Autres'),
(714, 633, 'base', 'Impôts, taxes et versements assimilés sur rémunérations (autres organismes)'),
(715, 6331, 'étendu', 'Versement de transport'),
(716, 6332, 'étendu', 'Allocations logement'),
(717, 6333, 'étendu', 'Participation des employeurs à la formation professionnelle continue'),
(718, 6334, 'étendu', 'Participation des employeurs à l’effort de construction'),
(719, 6335, 'étendu', 'Versements libératoires ouvrant droit à l’exonération de la taxe d’apprentissage'),
(720, 6338, 'étendu', 'Autres'),
(721, 635, 'base', 'Autres impôts, taxes et versements assimilés (administrations des impôts)'),
(722, 6351, 'étendu', 'Impôts directs (sauf impôts sur les bénéfices)'),
(723, 63511, 'étendu', 'Contribution économique territoriale'),
(724, 63512, 'étendu', 'Taxes foncières'),
(725, 63513, 'étendu', 'Autres impôts locaux'),
(726, 63514, 'étendu', 'Taxe sur les véhicules des sociétés'),
(727, 6352, 'étendu', 'Taxe sur le chiffre d’affaires non récupérables'),
(728, 6353, 'étendu', 'Impôts indirects'),
(729, 6354, 'étendu', 'Droits d’enregistrement et de timbre'),
(730, 63541, 'étendu', 'Droits de mutation'),
(731, 6358, 'base', 'Autres droits'),
(732, 637, 'base', 'Autres impôts, taxes et versements assimilés (autres organismes)'),
(733, 6371, 'étendu', 'Contribution sociale de solidarité à la charge des sociétés'),
(734, 6372, 'étendu', 'Taxes perçues par les organismes publics internationaux'),
(735, 6374, 'étendu', 'Impôts et taxes exigibles à l’Étranger'),
(736, 6378, 'étendu', 'Taxes diverses'),
(737, 64, 'base', 'Charges de personnel'),
(738, 641, 'abrégé', 'Rémunérations du personnel'),
(739, 6411, 'étendu', 'Salaires, appointements'),
(740, 6412, 'étendu', 'Congés payés'),
(741, 6413, 'étendu', 'Primes et gratifications'),
(742, 6414, 'étendu', 'Indemnités et avantages divers'),
(743, 6415, 'étendu', 'Supplément familial'),
(744, 644, 'abrégé', 'Rémunération du travail de l’exploitant'),
(745, 645, 'abrégé', 'Charges de sécurité sociale et de prévoyance'),
(746, 6451, 'étendu', 'Cotisations à l’URSSAF'),
(747, 6452, 'étendu', 'Cotisations aux mutuelles'),
(748, 6453, 'étendu', 'Cotisations aux caisses de retraites'),
(749, 6454, 'étendu', 'Cotisations aux ASSEDIC'),
(750, 6458, 'étendu', 'Cotisations aux autres organismes sociaux'),
(751, 646, 'abrégé', 'Cotisations sociales personnelles de l’exploitant'),
(752, 647, 'base', 'Autres charges sociales'),
(753, 6471, 'étendu', 'Prestations directes'),
(754, 6472, 'étendu', 'Versements aux comités d’entreprise et d’établissement'),
(755, 6473, 'étendu', 'Versements aux comités d’hygiène et de sécurité'),
(756, 6474, 'étendu', 'Versements aux autres œuvres sociales'),
(757, 6475, 'étendu', 'Médecine du travail, pharmacie'),
(758, 648, 'base', 'Autres charges de personnel'),
(759, 65, 'abrégé', 'Autres charges de gestion courante'),
(760, 651, 'base', 'Redevances pour concessions, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires'),
(761, 6511, 'étendu', 'Redevances pour concessions, brevets, licences, marques, procédés, logiciels'),
(762, 6516, 'étendu', 'Droits d’auteur et de reproduction'),
(763, 6518, 'étendu', 'Autres droits et valeurs similaires'),
(764, 653, 'base', 'Jetons de présence'),
(765, 654, 'base', 'Pertes sur créances irrécouvrables'),
(766, 6541, 'étendu', 'Créances de l’exercice'),
(767, 6544, 'étendu', 'Créances des exercices antérieurs'),
(768, 655, 'base', 'Quote-part de résultat sur opérations faites en commun'),
(769, 6551, 'étendu', 'Quote-part de bénéfice transférée (comptabilité du gérant)'),
(770, 6555, 'étendu', 'Quote-part de perte supportée (comptabilité des associés non gérants)'),
(771, 656, 'base', 'Pertes de change sur créances commerciales'),
(772, 658, 'base', 'Charges diverses de gestion courante'),
(773, 66, 'abrégé', 'Charges financières'),
(774, 661, 'base', 'Charges d’intérêts'),
(775, 6611, 'étendu', 'Intérêts des emprunts et dettes'),
(776, 66116, 'étendu', 'des emprunts et dettes assimilées'),
(777, 66117, 'étendu', 'des dettes rattachées à des participations'),
(778, 6612, 'étendu', 'Charges de la fiducie, résultat de la période'),
(779, 6615, 'étendu', 'Intérêts des comptes courants et des dépôts créditeurs'),
(780, 6616, 'étendu', 'Intérêts bancaires et sur opérations de financement (escompte,...)'),
(781, 6617, 'étendu', 'Intérêts des obligations cautionnées'),
(782, 6618, 'étendu', 'Intérêts des autres dettes'),
(783, 66181, 'étendu', 'des dettes commerciales'),
(784, 66188, 'étendu', 'des dettes diverses'),
(785, 664, 'base', 'Pertes sur créances liées à des participations'),
(786, 665, 'base', 'Escomptes accordés'),
(787, 666, 'base', 'Pertes de change financières'),
(788, 667, 'base', 'Charges nettes sur cessions de valeurs mobilières de placement'),
(789, 668, 'base', 'Autres charges financières'),
(790, 67, 'abrégé', 'Charges exceptionnelles'),
(791, 671, 'base', 'Charges exceptionnelles sur opérations de gestion'),
(792, 6711, 'étendu', 'Pénalités sur marchés (et dédits payés sur achats et ventes)'),
(793, 6712, 'étendu', 'Pénalités, amendes fiscales et pénales'),
(794, 6713, 'étendu', 'Dons, libéralités'),
(795, 6714, 'étendu', 'Créances devenues irrécouvrables dans l’exercice'),
(796, 6715, 'étendu', 'Subventions accordées'),
(797, 6717, 'étendu', 'Rappel d’impôts (autres qu’impôts sur les bénéfices)'),
(798, 6718, 'étendu', 'Autres charges exceptionnelles sur opérations de gestion'),
(799, 672, 'base', '(Compte à la disposition des entités pour enregistrer, en cours d’exercice, les charges sur exercices antérieurs)'),
(800, 674, 'base', 'Opérations de constitution ou liquidation des fiducies'),
(801, 6741, 'étendu', 'Opérations liées à la constitution de fiducie – Transfert des éléments'),
(802, 6742, 'étendu', 'Opérations liées à la liquidation de la fiducie'),
(803, 675, 'base', 'Valeurs comptables des éléments d’actif cédés'),
(804, 6751, 'étendu', 'Immobilisations incorporelles'),
(805, 6752, 'étendu', 'Immobilisations corporelles'),
(806, 6756, 'étendu', 'Immobilisations financières'),
(807, 6758, 'étendu', 'Autres éléments d’actif'),
(808, 678, 'base', 'Autres charges exceptionnelles'),
(809, 6781, 'étendu', 'Malis provenant de clauses d’indexation'),
(810, 6782, 'étendu', 'Lots'),
(811, 6783, 'étendu', 'Malis provenant du rachat par l’entreprise d’actions et obligations émises par elle-même'),
(812, 6788, 'étendu', 'Charges exceptionnelles diverses'),
(813, 68, 'base', 'Dotations aux amortissements, aux dépréciations et aux provisions'),
(814, 681, 'abrégé', 'Dotations aux amortissements, aux dépréciations et aux provisions – Charges d’exploitation'),
(815, 6811, 'base', 'Dotations aux amortissements sur immobilisations incorporelles et corporelles'),
(816, 68111, 'étendu', 'Immobilisations incorporelles'),
(817, 68112, 'étendu', 'Immobilisations corporelles'),
(818, 6812, 'base', 'Dotations aux amortissements des charges d’exploitation à répartir'),
(819, 6815, 'base', 'Dotations aux provisions d’exploitation'),
(820, 6816, 'base', 'Dotations pour dépréciations des immobilisations incorporelles et corporelles'),
(821, 68161, 'étendu', 'Immobilisations incorporelles'),
(822, 68162, 'étendu', 'Immobilisations corporelles'),
(823, 6817, 'base', 'Dotations pour dépréciations des actifs circulants'),
(824, 68173, 'étendu', 'Stocks et en-cours'),
(825, 68174, 'étendu', 'Créances'),
(826, 686, 'abrégé', 'Dotations aux amortissements, aux dépréciations et aux provisions – Charges financières'),
(827, 6861, 'base', 'Dotations aux amortissements des primes de remboursement des obligations'),
(828, 6865, 'base', 'Dotations aux provisions financières'),
(829, 6866, 'base', 'Dotations pour dépréciations des éléments financiers'),
(830, 68662, 'étendu', 'Immobilisations financières'),
(831, 68665, 'étendu', 'Valeurs mobilières de placement'),
(832, 6868, 'base', 'Autres dotations'),
(833, 687, 'abrégé', 'Dotations aux amortissements, aux dépréciations et aux provisions – Charges exceptionnelles'),
(834, 6871, 'base', 'Dotations aux amortissements exceptionnels des immobilisations'),
(835, 6872, 'base', 'Dotations aux provisions réglementées (immobilisations)'),
(836, 68725, 'étendu', 'Amortissements dérogatoires'),
(837, 6873, 'base', 'Dotations aux provisions réglementées (stocks)'),
(838, 6874, 'base', 'Dotations aux autres provisions réglementées'),
(839, 6875, 'base', 'Dotations aux provisions exceptionnelles'),
(840, 6876, 'base', 'Dotations pour dépréciations exceptionnelles'),
(841, 69, 'base', 'Participation des salariés – Impôts sur les bénéfices et assimilés'),
(842, 691, 'abrégé', 'Participation des salariés aux résultats'),
(843, 695, 'abrégé', 'Impôts sur les bénéfices'),
(844, 6951, 'étendu', 'Impôts dus en France'),
(845, 6952, 'étendu', 'Contribution additionnelle à l’impôt sur les bénéfices'),
(846, 6954, 'étendu', 'Impôts dus à l’étranger'),
(847, 696, 'base', 'Suppléments d’impôt sur les sociétés liés aux distributions'),
(848, 698, 'base', 'Intégration fiscale'),
(849, 6981, 'base', 'Intégration fiscale – Charges'),
(850, 6989, 'base', 'Intégration fiscale – Produits'),
(851, 699, 'abrégé', 'Produits – Reports en arrière des déficits'),
(852, 7, 'abrégé', 'Comptes de produits'),
(853, 70, 'base', 'Ventes de produits fabriqués, prestations de services, marchandises'),
(854, 701, 'abrégé', 'Ventes de produits finis'),
(855, 7011, 'étendu', 'Produits finis (ou groupe) A');
INSERT INTO `PCG` (`id`, `Num`, `Format`, `Nom`) VALUES
(856, 7012, 'étendu', 'Produits finis (ou groupe) B'),
(857, 702, 'base', 'Ventes de produits intermédiaires'),
(858, 703, 'base', 'Ventes de produits résiduels'),
(859, 704, 'base', 'Travaux'),
(860, 7041, 'base', 'Travaux de catégorie (ou activité) A'),
(861, 7042, 'base', 'Travaux de catégorie (ou activité) B'),
(862, 705, 'base', 'Études'),
(863, 706, 'abrégé', 'Prestations de services'),
(864, 707, 'abrégé', 'Ventes de marchandises'),
(865, 7071, 'étendu', 'Marchandises (ou groupe) A'),
(866, 7072, 'étendu', 'Marchandises (ou groupe) B'),
(867, 708, 'abrégé', 'Produits des activités annexes'),
(868, 7081, 'étendu', 'Produits des services exploités dans l’intérêt du personnel'),
(869, 7082, 'étendu', 'Commissions et courtages'),
(870, 7083, 'étendu', 'Locations diverses'),
(871, 7084, 'étendu', 'Mise à disposition de personnel facturée'),
(872, 7085, 'étendu', 'Ports et frais accessoires facturés'),
(873, 7086, 'étendu', 'Bonis sur reprises d’emballages consignés'),
(874, 7087, 'étendu', 'Bonifications obtenues des clients et primes sur ventes'),
(875, 7088, 'étendu', 'Autres produits d’activités annexes (cessions d’approvisionnements,)'),
(876, 709, 'abrégé', 'Rabais, remises et ristournes accordés par l’entreprise'),
(877, 7091, 'étendu', 'sur ventes de produits finis'),
(878, 7092, 'étendu', 'sur ventes de produits intermédiaires'),
(879, 7094, 'étendu', 'sur travaux'),
(880, 7095, 'étendu', 'sur études'),
(881, 7096, 'étendu', 'sur prestations de services'),
(882, 7097, 'étendu', 'sur ventes de marchandises'),
(883, 7098, 'étendu', 'sur produits des activités annexes'),
(884, 71, 'base', 'Production stockée (ou déstockage)'),
(885, 713, 'abrégé', 'Variation des stocks (en-cours de production, produits)'),
(886, 7133, 'base', 'Variation des en-cours de production de biens'),
(887, 71331, 'étendu', 'Produits en cours'),
(888, 71335, 'étendu', 'Travaux en cours'),
(889, 7134, 'base', 'Variation des en-cours de production de services'),
(890, 71341, 'étendu', 'Études en cours'),
(891, 71345, 'étendu', 'Prestations de services en cours'),
(892, 7135, 'base', 'Variation des stocks de produits'),
(893, 71351, 'étendu', 'Produits intermédiaires'),
(894, 71355, 'étendu', 'Produits finis'),
(895, 71358, 'étendu', 'Produits résiduels'),
(896, 72, 'abrégé', 'Production immobilisée'),
(897, 721, 'base', 'Immobilisations incorporelles'),
(898, 722, 'base', 'Immobilisations corporelles'),
(899, 74, 'abrégé', 'Subventions d’exploitation'),
(900, 75, 'abrégé', 'Autres produits de gestion courante'),
(901, 751, 'base', 'Redevances pour concessions, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires'),
(902, 7511, 'étendu', 'Redevances pour concessions, brevets, licences, marques, procédés, logiciels'),
(903, 7516, 'étendu', 'Droits d’auteur et de reproduction'),
(904, 7518, 'étendu', 'Autres droits et valeurs similaires'),
(905, 752, 'base', 'Revenus des immeubles non affectés à des activités professionnelles'),
(906, 753, 'abrégé', 'Jetons de présence et rémunérations d’administrateurs, gérants,'),
(907, 754, 'abrégé', 'Ristournes perçues des coopératives (provenant des excédents)'),
(908, 755, 'abrégé', 'Quote-parts de résultat sur opérations faites en commun'),
(909, 7551, 'étendu', 'Quote-part de perte transférée (comptabilité du gérant)'),
(910, 7555, 'étendu', 'Quote-part de bénéfice attribuée (comptabilité des associés non-gérants)'),
(911, 756, 'base', 'Gains de change sur créances commerciales'),
(912, 758, 'base', 'Produits divers de gestion courante'),
(913, 76, 'abrégé', 'Produits financiers'),
(914, 761, 'base', 'Produits de participations'),
(915, 7611, 'étendu', 'Revenus des titres de participation'),
(916, 7612, 'étendu', 'Produits de la fiducie, résultat de la période'),
(917, 7616, 'étendu', 'Revenus sur autres formes de participation'),
(918, 7617, 'étendu', 'Revenus des créances rattachées à des participations'),
(919, 762, 'base', 'Produits des autres immobilisations financières'),
(920, 7621, 'étendu', 'Revenus des titres immobilisés'),
(921, 7626, 'étendu', 'Revenus des prêts'),
(922, 7627, 'étendu', 'Revenus des créances immobilisées'),
(923, 763, 'base', 'Revenus des autres créances'),
(924, 7631, 'étendu', 'Revenus des créances commerciales'),
(925, 7638, 'étendu', 'Revenus des créances diverses'),
(926, 764, 'base', 'Revenus des valeurs mobilières de placement'),
(927, 765, 'base', 'Escomptes obtenus'),
(928, 766, 'base', 'Gains de change financiers'),
(929, 767, 'base', 'Produits nets sur cessions de valeurs mobilières de placement'),
(930, 768, 'base', 'Autres produits financiers'),
(931, 77, 'abrégé', 'Produits exceptionnels'),
(932, 771, 'base', 'Produits exceptionnels sur opérations de gestion'),
(933, 7711, 'étendu', 'Dédits et pénalités perçus sur achats et sur ventes'),
(934, 7713, 'étendu', 'Libéralités reçues'),
(935, 7714, 'étendu', 'Rentrées sur créances amorties'),
(936, 7715, 'étendu', 'Subventions d’équilibre'),
(937, 7717, 'étendu', 'Dégrèvements d’impôts autres qu’impôts sur les bénéfices'),
(938, 7718, 'étendu', 'Autres produits exceptionnels sur opérations de gestion'),
(939, 772, 'base', '(Compte à la disposition des entités pour enregistrer, en cours d’exercice, les produits sur exercices antérieurs)'),
(940, 774, 'base', 'Opérations de constitution ou liquidation des fiducies'),
(941, 7741, 'étendu', 'Opérations liées à la constitution de fiducie – Transfert des éléments'),
(942, 7742, 'étendu', 'Opérations liées à la liquidation de la fiducie'),
(943, 775, 'base', 'Produits des cessions d’éléments d’actif'),
(944, 7751, 'étendu', 'Immobilisations incorporelles'),
(945, 7752, 'étendu', 'Immobilisations corporelles'),
(946, 7756, 'étendu', 'Immobilisations financières'),
(947, 7758, 'étendu', 'Autres éléments d’actif'),
(948, 777, 'base', 'Quote-part des subventions d’investissement virée au résultat de l’exercice'),
(949, 778, 'base', 'Autres produits exceptionnels'),
(950, 7781, 'étendu', 'Bonis provenant de clauses d’indexation'),
(951, 7782, 'étendu', 'Lots'),
(952, 7783, 'étendu', 'Bonis provenant du rachat par l’entreprise d’actions et d’obligations émises par elle-même'),
(953, 7788, 'étendu', 'Produits exceptionnels divers'),
(954, 78, 'base', 'Reprises sur amortissements, dépréciations et provisions'),
(955, 781, 'abrégé', 'Reprises sur amortissements, dépréciations et provisions (à inscrire dans les produits d’exploitation)'),
(956, 7811, 'base', 'Reprises sur amortissements des immobilisations incorporelles et corporelles'),
(957, 78111, 'étendu', 'Immobilisations incorporelles'),
(958, 78112, 'étendu', 'Immobilisations corporelles'),
(959, 7815, 'base', 'Reprises sur provisions d’exploitation'),
(960, 7816, 'base', 'Reprises sur dépréciations des immobilisations incorporelles et corporelles'),
(961, 78161, 'étendu', 'Immobilisations incorporelles'),
(962, 78162, 'étendu', 'Immobilisations corporelles'),
(963, 7817, 'base', 'Reprises sur dépréciations des actifs circulants'),
(964, 78173, 'étendu', 'Stocks et en-cours'),
(965, 78174, 'étendu', 'Créances'),
(966, 786, 'abrégé', 'Reprises sur provisions pour risques et dépréciations (à inscrire dans les produits financiers)'),
(967, 7865, 'base', 'Reprises sur provisions financières'),
(968, 7866, 'base', 'Reprises sur dépréciations des éléments financiers'),
(969, 78662, 'étendu', 'Immobilisations financières'),
(970, 78665, 'étendu', 'Valeurs mobilières de placements'),
(971, 787, 'abrégé', 'Reprises sur provisions et dépréciations (à inscrire dans les produits exceptionnels)'),
(972, 7872, 'base', 'Reprises sur provisions réglementées (immobilisations)'),
(973, 78725, 'étendu', 'Amortissements dérogatoires'),
(974, 78726, 'étendu', 'Provision spéciale de réévaluation'),
(975, 78727, 'étendu', 'Plus-values réinvesties'),
(976, 7873, 'base', 'Reprises sur provisions réglementées (stocks)'),
(977, 7874, 'base', 'Reprises sur autres provisions réglementées'),
(978, 7875, 'base', 'Reprises sur provisions exceptionnelles'),
(979, 7876, 'base', 'Reprises sur dépréciations exceptionnelles'),
(980, 79, 'abrégé', 'Transferts de charges'),
(981, 791, 'base', 'Transferts de charges d’exploitation'),
(982, 796, 'base', 'Transferts de charges financières'),
(983, 797, 'base', 'Transferts de charges exceptionnelles'),
(984, 8, 'abrégé', 'Comptes spéciaux'),
(985, 80, 'base', 'Engagements'),
(986, 801, 'abrégé', 'Engagements donnés par l’entité'),
(987, 8011, 'étendu', 'Avals, cautions, garanties'),
(988, 8014, 'étendu', 'Effets circulant sous l’endos de l’entité'),
(989, 8016, 'étendu', 'Redevances crédit-bail restant à courir'),
(990, 80161, 'étendu', 'Crédit-bail mobilier'),
(991, 80165, 'étendu', 'Crédit-bail immobilier'),
(992, 8018, 'étendu', 'Autres engagements donnés'),
(993, 802, 'abrégé', 'Engagements reçus par l’entité'),
(994, 8021, 'étendu', 'Avals, cautions, garanties'),
(995, 8024, 'étendu', 'Créances escomptées non échues'),
(996, 8026, 'étendu', 'Engagements reçus pour utilisation en crédit-bail'),
(997, 80261, 'étendu', 'Crédit-bail mobilier'),
(998, 80265, 'étendu', 'Crédit-bail immobilier'),
(999, 8028, 'étendu', 'Autres engagements reçus'),
(1000, 809, 'abrégé', 'Contrepartie des engagements'),
(1001, 8091, 'étendu', 'Contrepartie 801'),
(1002, 8092, 'étendu', 'Contrepartie 802'),
(1003, 88, 'base', 'Résultat en instance d’affectation'),
(1004, 89, 'base', 'Bilan'),
(1005, 890, 'étendu', 'Bilan d’ouverture'),
(1006, 891, 'étendu', 'Bilan de clôture');

-- --------------------------------------------------------

--
-- Structure de la table `Role`
--

CREATE TABLE `Role` (
  `idFilm` int(11) NOT NULL DEFAULT '0',
  `idActeur` int(11) NOT NULL DEFAULT '0',
  `nomRole` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Role`
--

INSERT INTO `Role` (`idFilm`, `idActeur`, `nomRole`) VALUES
(2, 5, 'Ripley'),
(5, 11, 'Sean Archer/Castor Troy'),
(17, 11, 'Vincent Vega'),
(5, 12, 'Castor Troy/Sean Archer'),
(6, 14, 'Constable Ichabod Crane'),
(1, 15, 'John Ferguson'),
(1, 16, 'Madeleine Elster'),
(7, 18, 'Lester Burnham'),
(14, 18, 'Doe'),
(52, 18, 'Roger \"Verbal\" Kint'),
(7, 19, 'Carolyn Burnham'),
(8, 20, 'William Munny'),
(26, 20, 'Luther Whitney'),
(32, 20, ''),
(63, 20, 'Frankie Dunn'),
(8, 21, 'Little Bill Dagget'),
(26, 21, 'Le président Richmond'),
(8, 22, 'Ned Logan'),
(14, 22, 'Somerset'),
(63, 22, 'Eddie Scrap-Iron Dupris'),
(9, 23, 'Maximus'),
(10, 24, 'Deckard'),
(34, 24, 'Han Solo'),
(10, 25, 'Batty'),
(11, 27, 'McClane'),
(12, 27, 'McClane'),
(15, 27, 'Cole'),
(17, 27, 'Butch Coolidge'),
(43, 27, 'Major Korben Dalla'),
(58, 27, 'McClane'),
(59, 27, 'Malcom Crowe'),
(13, 30, 'Van Gogh'),
(14, 32, 'Mills'),
(16, 35, 'Baskerville'),
(39, 35, 'Mark R'),
(16, 36, 'de Melk'),
(17, 37, 'Jimmy Dimmick'),
(36, 37, 'Mr. Brown'),
(17, 38, 'Jules Winnfield'),
(58, 38, 'Zeus Carver'),
(17, 39, 'Jody'),
(46, 39, 'Johanna'),
(17, 40, 'Mia Wallace'),
(61, 40, 'La mariée, alias \"Black Mamba\"'),
(18, 42, 'Mary Jensen Matthews'),
(18, 43, 'Pat Healy'),
(19, 44, 'Terminator'),
(20, 46, 'Martin Brody'),
(20, 47, 'Quint'),
(20, 48, 'Matt Hooper'),
(21, 50, 'Dr. Hannibal Lecter'),
(21, 51, 'Clarice Starling'),
(30, 53, 'Iceman'),
(28, 57, 'Dr. Ian Malcolm'),
(22, 59, 'Dr. Nikos Tatopoulos'),
(22, 60, 'Philippe Roach'),
(24, 60, 'Franz Krieger'),
(44, 60, 'Léon'),
(46, 60, 'Enzo Molinari'),
(23, 62, 'Neo'),
(49, 62, 'Neo'),
(50, 62, 'Neo'),
(23, 63, 'Morpheus'),
(48, 63, 'Jimmy Jump'),
(49, 63, 'Morpheus'),
(50, 63, 'Morpheus'),
(24, 65, 'Ethan Hunt'),
(29, 65, 'Charlie Babbitt'),
(30, 65, 'Lt. Pete \'Maverick\' Mitchell'),
(37, 65, 'Docteur William \"Bill\" Harford'),
(24, 66, 'Jim Phelps'),
(24, 67, 'Claire Phelps'),
(26, 69, 'Seth Frank'),
(62, 69, 'major Koenig'),
(27, 72, 'Inspecteur Cruchot'),
(27, 73, 'Adjudant Gerber'),
(31, 75, 'Nathalie Morin'),
(31, 76, 'Christiane'),
(29, 80, 'Raymond Babbitt'),
(42, 80, ''),
(30, 82, 'Charlotte Blackwood'),
(31, 84, 'Jean-Claude Dus'),
(31, 85, 'J?r?me'),
(31, 86, 'Popeye'),
(33, 88, 'Bates'),
(33, 89, 'Lila Crane'),
(33, 90, 'Marion Crane'),
(34, 92, 'Luke Skywalker'),
(34, 93, 'Princesse Leia'),
(35, 94, 'Mitch Brenner'),
(35, 95, 'Melanie Daniels'),
(39, 95, 'Marnie Edgar'),
(6, 96, 'Katrina Anne Van Tassel'),
(6, 97, 'Le cavalier'),
(17, 97, 'Capt. Koons'),
(48, 97, 'Frank White'),
(17, 98, 'Winston \"The Wolf\" Wolfe'),
(36, 98, 'Mr. White/Larry'),
(53, 98, 'Le lieutenant'),
(17, 99, 'Pumpkin (Ringo)'),
(36, 99, 'Freddy Newendyke/Mr. Orange'),
(36, 100, 'Nice Guy Eddie'),
(37, 102, 'Alice Harford'),
(38, 103, 'Jack Torrance'),
(41, 105, 'Roger O. Thornhill'),
(41, 106, 'Eve Kendall'),
(41, 107, 'Philipp Vandamm'),
(3, 109, 'Rose DeWitt Bukater'),
(3, 110, 'Jack Dawson'),
(42, 112, 'Jeanne d\'Arc'),
(43, 112, 'Leeloo'),
(42, 113, 'Yolande d\'Aragon'),
(42, 114, 'Charles VII'),
(42, 115, 'Dunois'),
(45, 115, 'Bob'),
(43, 116, 'Jean-Baptiste Emmanuel Zorg'),
(44, 116, 'Norman Stansfield'),
(43, 117, 'Vito Cornelius'),
(44, 118, 'Mathilda'),
(45, 119, 'Nikita'),
(45, 120, 'Marco'),
(46, 121, 'Jacques Mayol'),
(48, 124, 'Thomas Flanigan'),
(48, 131, 'Dennis Gilley'),
(48, 132, 'Thomas Flanigan'),
(50, 134, 'Agent Smith'),
(50, 136, 'Trinity'),
(50, 137, 'L\'Oracle'),
(54, 137, 'Sonny'),
(9, 147, 'Commode'),
(9, 148, 'Lucilla'),
(9, 149, 'Marc Aurele'),
(57, 167, 'Luis Gara'),
(57, 168, 'Jackie Brown'),
(57, 169, 'Melanie'),
(57, 170, 'Ray Nicolette'),
(59, 171, 'Cole Sear'),
(54, 176, 'Micheal'),
(54, 182, 'Don Vito Corleone'),
(54, 183, 'Kay Adams'),
(54, 184, 'Tom Hagen'),
(47, 188, 'Spider-Man'),
(49, 210, 'Trinity'),
(49, 211, 'Agent Smith'),
(57, 212, 'Ordell Robbie'),
(61, 213, 'O-Ren Ishii'),
(61, 214, 'Bill'),
(36, 215, 'Mr Blonde'),
(61, 215, 'Budd / Sidewinder'),
(61, 216, 'Elle Driver'),
(36, 217, 'Mr Pink'),
(48, 217, 'Test tube'),
(36, 218, 'Mr Blue'),
(63, 224, 'Maggie Fitzerald'),
(47, 234, 'Norman Osborn'),
(47, 235, 'Mary Jane Watson'),
(47, 236, 'Tante May'),
(47, 237, 'Oncle Ben'),
(51, 239, 'Marcel'),
(51, 240, 'Bruno'),
(60, 242, 'Bob Harris'),
(60, 243, 'Kelly'),
(60, 244, 'Charlotte'),
(60, 245, 'John'),
(62, 246, 'Vassili Zaitzev'),
(58, 249, 'Simon Gruber'),
(52, 251, 'Fred Fenster');

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
  `Ndc` varchar(24) NOT NULL,
  `Mdp` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Vote`
--

CREATE TABLE `Vote` (
  `Competiteur` int(11) NOT NULL,
  `Votants` int(11) NOT NULL,
  `Points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Vote`
--

INSERT INTO `Vote` (`Competiteur`, `Votants`, `Points`) VALUES
(1, 3, 5),
(1, 2, 5),
(3, 1, 16),
(3, 2, 1),
(2, 1, 5),
(2, 3, 8);

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dwarves.iut-fbleau.fr/~bennis/wordpress', 'yes'),
(2, 'home', 'http://dwarves.iut-fbleau.fr/~bennis/wordpress', 'yes'),
(3, 'blogname', 'tp wordpress', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mohammed.bennis@etu.u-pec.fr', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:74:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '1', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1585449437;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1585492680;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585492885;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(140, 'can_compress_scripts', '1', 'no'),
(151, '_transient_is_multi_author', '0', 'yes'),
(179, '_site_transient_timeout_theme_roots', '1585409388', 'no'),
(180, '_site_transient_theme_roots', 'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(183, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:7:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.5.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.2.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.5\";s:7:\"version\";s:5:\"5.2.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.4\";s:7:\"version\";s:5:\"5.1.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.8.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.0.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.8\";s:7:\"version\";s:5:\"5.0.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:66:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.13.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:66:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.13.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.9.13\";s:7:\"version\";s:6:\"4.9.13\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1585407590;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.1\";s:7:\"updated\";s:19:\"2018-01-02 12:37:17\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.1/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(184, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1585407592;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentyfifteen\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.9\";s:7:\"updated\";s:19:\"2018-01-02 09:02:58\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentyfifteen/1.9/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(185, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1585407591;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.6\";s:7:\"updated\";s:19:\"2018-04-27 10:03:32\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.6/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(7, 5, '_edit_last', '1'),
(8, 5, '_edit_lock', '1513695653:1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2017-12-19 15:37:17', '2017-12-19 14:37:17', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://dwarves.iut-fbleau.fr/~bennis/wordpress/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2017-12-19 15:37:17', '2017-12-19 14:37:17', '', 0, 'http://dwarves.iut-fbleau.fr/~bennis/wordpress/?page_id=2', 0, 'page', '', 0),
(5, 1, '2017-12-19 16:00:53', '0000-00-00 00:00:00', '<p style=\"text-align: left;\">Bon ma <strong>culture <span id=\"spans0e0\" class=\"sac\">cinématographique</span> </strong>est <span id=\"spans0e1\" class=\"ac\">nulle</span> donc je sais pas trop quoi <span id=\"spans0e2\" class=\"sac\">écrire</span> ici donc sur <span id=\"spans0e3\" class=\"ac\">ceux, bisous</span>.(https://fr.wikipedia.org/wiki/Je_sais_pas)</p>\n&nbsp;\n\n<img class=\"irc_mi\" src=\"http://sonnette.s.o.pic.centerblog.net/6a6ca1cb.gif\" alt=\"Résultat de recherche d\'images pour &quot;je sais pas&quot;\" width=\"300\" height=\"400\" />', 'Je ne sais pas trop quoi mettre', '', 'draft', 'open', 'open', '', '', '', '', '2017-12-19 16:00:53', '2017-12-19 15:00:53', '', 0, 'http://dwarves.iut-fbleau.fr/~bennis/wordpress/?p=5', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(5, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'bennis'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"fe2e446e9e1e93d52aca63e8b358aaf6e367d13ccb678825bd65732b997f5ec1\";a:4:{s:10:\"expiration\";i:1514903880;s:2:\"ip\";s:13:\"37.58.131.227\";s:2:\"ua\";s:68:\"Mozilla/5.0 (X11; Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0\";s:5:\"login\";i:1513694280;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.16.2.0\";}'),
(19, 1, 'wp_user-settings', 'editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1513763590');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'bennis', '$P$BhJhWVDe8go7wlZ3QoCvFbr5UNbMqa0', 'bennis', 'mohammed.bennis@etu.u-pec.fr', '', '2017-12-19 14:37:16', '', 0, 'bennis');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Artiste`
--
ALTER TABLE `Artiste`
  ADD PRIMARY KEY (`idArtiste`),
  ADD UNIQUE KEY `UniqueNomArtiste` (`nom`,`prenom`);

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `effectifs`
--
ALTER TABLE `effectifs`
  ADD UNIQUE KEY `annee` (`annee`,`code`,`nombre`,`sexe`),
  ADD KEY `code` (`code`);

--
-- Index pour la table `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`idFilm`),
  ADD KEY `idMES` (`idMes`),
  ADD KEY `codePays` (`codePays`),
  ADD KEY `genre` (`genre`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`Numero`);

--
-- Index pour la table `outil`
--
ALTER TABLE `outil`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `Pays`
--
ALTER TABLE `Pays`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `PCG`
--
ALTER TABLE `PCG`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`idActeur`,`idFilm`),
  ADD KEY `idFilm` (`idFilm`);

--
-- Index pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD PRIMARY KEY (`Ndc`);

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Artiste`
--
ALTER TABLE `Artiste`
  MODIFY `idArtiste` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Country`
--
ALTER TABLE `Country`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Film`
--
ALTER TABLE `Film`
  MODIFY `idFilm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

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

--
-- AUTO_INCREMENT pour la table `PCG`
--
ALTER TABLE `PCG`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `effectifs`
--
ALTER TABLE `effectifs`
  ADD CONSTRAINT `effectifs_ibfk_1` FOREIGN KEY (`code`) REFERENCES `formations` (`code`);

--
-- Contraintes pour la table `Film`
--
ALTER TABLE `Film`
  ADD CONSTRAINT `Film_ibfk_1` FOREIGN KEY (`idMes`) REFERENCES `Artiste` (`idArtiste`),
  ADD CONSTRAINT `Film_ibfk_2` FOREIGN KEY (`codePays`) REFERENCES `Pays` (`code`),
  ADD CONSTRAINT `Film_ibfk_3` FOREIGN KEY (`genre`) REFERENCES `Genre` (`code`);

--
-- Contraintes pour la table `Role`
--
ALTER TABLE `Role`
  ADD CONSTRAINT `Role_ibfk_1` FOREIGN KEY (`idFilm`) REFERENCES `Film` (`idFilm`),
  ADD CONSTRAINT `Role_ibfk_2` FOREIGN KEY (`idActeur`) REFERENCES `Artiste` (`idArtiste`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
