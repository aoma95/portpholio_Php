-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le :  Dim 30 juin 2019 à 18:44
-- Version du serveur :  10.3.12-MariaDB
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `db_portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `color_progressbar`
--

DROP TABLE IF EXISTS `color_progressbar`;
CREATE TABLE IF NOT EXISTS `color_progressbar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `couleur` varchar(50) NOT NULL,
  `classe` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `color_progressbar`
--

INSERT INTO `color_progressbar` (`id`, `couleur`, `classe`) VALUES
(1, 'bleu clair', 'progress-bar'),
(2, 'bleu nuancé', 'progress-bar bg-info'),
(3, 'vert', 'progress-bar bg-success'),
(4, 'jaune', 'progress-bar bg-warning'),
(5, 'rouge', 'progress-bar bg-danger'),
(6, 'bleu clair rayé', 'progress-bar progress-bar-striped'),
(7, 'bleu nuancé rayé', 'progress-bar progress-bar-striped bg-info'),
(8, 'vert rayé', 'progress-bar progress-bar-striped bg-success'),
(9, 'jaune rayé', 'progress-bar progress-bar-striped bg-warning'),
(10, 'rouge rayé', 'progress-bar progress-bar-striped bg-danger'),
(11, 'bleu clair rayé animé', 'progress-bar progress-bar-striped progress-bar-animated'),
(12, 'bleu nuancé rayé animé', 'progress-bar progress-bar-striped bg-info progress-bar-animated'),
(13, 'vert rayé animé', 'progress-bar progress-bar-striped bg-success progress-bar-animated'),
(14, 'jaune rayé animé', 'progress-bar progress-bar-striped bg-warning progress-bar-animated'),
(15, 'rouge rayé animé', 'progress-bar progress-bar-striped bg-danger progress-bar-animated');

-- --------------------------------------------------------

--
-- Structure de la table `picture`
--

DROP TABLE IF EXISTS `picture`;
CREATE TABLE IF NOT EXISTS `picture` (
  `id_picture` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  `picture` varchar(250) NOT NULL,
  PRIMARY KEY (`id_picture`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `picture`
--

INSERT INTO `picture` (`id_picture`, `libelle`, `picture`) VALUES
(1, 'fond index', 'picture/fond_acceuil.jpg'),
(2, 'icon facebook', 'picture/icon_facebook.png'),
(3, 'icon linkedin', 'picture/icon_linkedin.png'),
(4, 'icon twitter', 'picture/icon_twitter.png'),
(5, 'icon onglet site', 'picture/iconsite.png'),
(6, 'petite image index', 'picture/icon_ourobos.gif'),
(7, 'icon linkedin', 'picture/icon_linkedin.png'),
(8, 'image  projet bsi', 'picture/img_projet_bsi.jpg'),
(9, 'image  projet infra', 'picture/img_projet_infra.jpg'),
(10, 'image  projet iot', 'picture/img_projet_iot.jpg'),
(11, 'image  fond cv', 'picture/fond_cv.jpg'),
(12, 'image  fond projet', 'picture/fond_projet.jpg'),
(13, 'image  Dan ESPOSITO', 'picture/photo_profile.jpg'),
(14, 'image  Dan ESPOSITO miniature', 'picture/Dan_ESPOSITO_miniature.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `professional_and_student`
--

DROP TABLE IF EXISTS `professional_and_student`;
CREATE TABLE IF NOT EXISTS `professional_and_student` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_pro_or_stu` varchar(255) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `professional_and_student`
--

INSERT INTO `professional_and_student` (`id`, `name_pro_or_stu`, `description`, `date_begin`, `date_end`) VALUES
(1, 'Bureaux des services Informatiques', 'Le BSI s\'occupe du réseau de l\'école. J\'ai rejoint cette start-up afin d\'être en contact directe avec les problèmes techniques dus aux infrastructures réseau notre travail consiste à gérer les tickets et aussi à trouver des solutions afin de rétablir le réseau de l\'établissement', '2018-09-01', '2019-09-01'),
(2, 'Baccalauréat STI développement durable (STI2D)', 'Pendant ma période de lycée j\'ai pu toucher le monde de la technologie pour la fin d\'année nous avons programmer une voiture qui en fonction de la distance d\'un obstacle s\'arrêtait nous avions programmé divers capteurs avec le logiciel Arduino.', '2014-09-01', '2015-06-01'),
(3, 'BTS Services informatiques aux organisations (SIO)', 'Option Solutions d\'Infrastructures Systèmes et Réseaux en Alternance avec Orange.', '2016-09-01', '2017-07-01'),
(4, 'Orange', 'En tant que technicien d\'intervention dans la région du Vaucluse notre mission consite a vérifier la connectique du central vers client. Il fallait se rendre dans les différents points de distribution afin de regarder le bon fonctionnement des audits et de suivre la procédure, on etait en relation avec plateforme téléphonique dédié pour nous guider dans la tâche.', '2016-09-01', '2017-07-01'),
(5, 'CAP Plomberie', 'En alternance avec Horizon electronique', '2017-10-01', '2018-09-09'),
(6, 'Horizon Electronique', 'Entreprise de plomberie électricité et climatisation. Notre tâche consistait à refaire l’installation du circuit eau chaude et eau froide spécialisé dans les tubes polyéthylène réticulé (PER) et dans les tubes cuivre. Nous installons des climatisations Monosplite, multisplit et gainable. Cette expérience m\'a apporté beaucoup d\'expérience dans le domaine du BTP et dans le travail d\'équipe', '2017-10-01', '2018-09-09'),
(7, 'Campus Ynov', 'Bachelor en cours de formation', '2018-09-09', '2021-07-01');

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

DROP TABLE IF EXISTS `projet`;
CREATE TABLE IF NOT EXISTS `projet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_picture` int(11) NOT NULL,
  `title_projet` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`id`, `id_picture`, `title_projet`) VALUES
(1, 8, 'Bureau des système informatique'),
(2, 9, 'projet infra UF'),
(3, 10, 'Projet dev IOT');

-- --------------------------------------------------------

--
-- Structure de la table `skill`
--

DROP TABLE IF EXISTS `skill`;
CREATE TABLE IF NOT EXISTS `skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_skill` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `value_skill` int(11) UNSIGNED NOT NULL,
  `id_color` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `skill`
--

INSERT INTO `skill` (`id`, `name_skill`, `value_skill`, `id_color`) VALUES
(1, 'Langage c', 20, 3),
(2, 'Langage HTML et CSS', 40, 1),
(3, 'PHP', 40, 3),
(4, 'Python', 10, 15),
(5, 'Réseau', 50, 1),
(6, 'Pack office', 50, 1),
(7, 'SQl', 50, 13),
(10, 'JavaScript', 20, 5);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'Dan', '26b2fa03c757f28dcfa60b66975f147fdfcd09c0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
