-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2020 at 02:49 AM
-- Server version: 5.7.26
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pepiniere`
--

-- --------------------------------------------------------

--
-- Table structure for table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` text NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `date_commentaire` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentaires`
--

INSERT INTO `commentaires` (`id`, `commentaire`, `auteur`, `date_commentaire`) VALUES
(32, 'allo belz!', 'Darkanna', '2020-08-07 00:48:23'),
(33, 'ce site est magnifique!!', 'belz', '2020-08-07 01:18:33'),
(34, 'test', 'belz', '2020-08-11 02:16:52'),
(35, 'PHP!!!!!!!!!', 'Darkanna', '2020-08-10 23:57:51'),
(36, 'GG', 'belz', '2020-08-10 23:58:42'),
(37, 'ce site est superbe!!!', 'belz', '2020-08-12 20:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `objet` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `nom`, `email`, `objet`, `message`) VALUES
(1, 'ben rose', 'master_ben25@msn.com', 'a l\'aide', 'le site se comporte de façon étrange'),
(2, 'Darkanna', 'darkanna@hotmail.ca', 'demande de remboursement', 'mon pommier est mort!!!'),
(3, 'belz', 'belz@hotmail.ca', 'erreur de commande', 'je me suis trompé d\'arbre'),
(4, 'belzebuth', 'belz@hotmail.ca', 'mauvaise commande', 'je me suis trompé');

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `prix` double(6,2) NOT NULL,
  `quantite` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `categorie`, `description`, `prix`, `quantite`, `image`) VALUES
(1, 'Pommier', 'Arbre fruitier', 'Arbre de taille moyenne, de la famille des Rosacées, comportant de nombreuses variétés et dont le fruit est la pomme.', 35.99, 15, '/public/images/pommier.jpg'),
(2, 'Poirier', 'Arbre fruitier', 'Poirier (du genre Pyrus) est le nom commun de plus de 20 espèces d\'arbres fruitiers et d\'ornement de la famille des Rosacées, de souches européennes et asiatiques. Le poirier européen (P. communis), qui produit un fruit butyreux, juteux et aromatique, est grandement cultivé.', 34.99, 20, '/public/images/poirier.jpg'),
(3, 'Prunier', 'Arbre fruitier', 'Le prunier ou prunier cultivé (Prunus domestica L.) est un arbre fruitier appartenant au genre Prunus, au clade Amygdalus-Prunus, section Prunus, de la famille des Rosaceae, cultivé pour ses fruits, les prunes. Il est plus rarement appelé prunier domestique.', 32.99, 15, '/public/images/prunier.jpg'),
(4, 'Framboisier', 'Arbuste fruitier', 'Le Framboisier ou la Ronce du mont Ida (Rubus idaeus L., 1753) est une espèce d\'arbrisseaux de la famille des Rosacées (tribu des Rubae), couramment cultivée pour leurs petits fruits, les framboises.', 4.99, 30, '/public/images/framboisier.jpg'),
(5, 'Mûrier', 'Arbuste fruitier', 'Le mûrier noir (Morus nigra L.) est une espèce d\'arbres fruitiers originaire d\'Asie occidentale (Sud du Caucase, Arménie, Iran) et naturalisée en Amérique du Nord (Canada, États-Unis), en Europe et en Chine et appartenant à la famille des Moracées. Elle a été introduite et cultivée dans tout le bassin méditerranéen depuis l\'Antiquité pour ses fruits, les mûres, qui sont plutôt délaissés de nos jours.', 5.99, 50, '/public/images/murier.jpg'),
(6, 'Fraisier', 'Arbuste fruitier', 'Fraisier est un nom vernaculaire ambigu désignant en français diverses espèces du genre Fragaria produisant généralement des fraises, qui sont des faux-fruits consommés comme fruits. Ces plantes de la famille des Rosacées ont un port prostré et un mode de propagation végétative par stolons particulièrement marqué.\r\n', 2.99, 46, '/public/images/fraisier.jpg'),
(7, 'Amandier', 'Arbre à noix', 'L\'amandier (Prunus dulcis) est une espèce d\'arbres de la famille des Rosaceae, dont les fleurs d\'un blanc rosé, apparaissent avant les feuilles. C\'est le premier arbre fruitier à fleurir à la fin de l\'hiver, une période où il peut geler encore le matin. Il produit un fruit charnu à noyau (ou drupe) dont la chair devient sèche à maturité et s’ouvre en deux valves, libérant un noyau contenant une amande comestible.', 7.99, 27, '/public/images/amandier.jpg'),
(8, 'Noyer', 'Arbre à noix', 'Le Noyer d\'Amérique ou Noyer noir (Juglans nigra) est un grand arbre de la famille des Juglandacées, originaire d\'Amérique du Nord, largement cultivé pour ses fruits, son bois et ses qualités ornementales1. Il est introduit un peu partout dans le monde. Les deux pays européens qui comprennent les plus grandes superficies plantées en noyer noir sont la Hongrie et la Roumanie.', 9.99, 42, '/public/images/noyer.jpg'),
(9, 'Noisetier', 'Arbre à noix', 'Le noisetier ou coudrier (Corylus avellana) est un arbrisseau de 5 à 8 mètres de hauteur et appartenant au genre Corylus et à la famille des Bétulacées. Les 15 espèces du genre Corylus qui donnent toutes des fruits à coque contenant une amande comestible, sont aussi nommées en français « noisetier ». Deux espèces de Corylus sont indigènes en Europe, le Corylus avellana et le Corylus colurna, le « noisetier de Byzance », présent dans les Balkans, la Roumanie et la Turquie. Pour distinguer le Corylus avellana des autres, on l’appelle généralement « noisetier commun » ou « noisetier européen.\r\n\r\n', 17.99, 18, '/public/images/noisetier.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rating_info`
--

DROP TABLE IF EXISTS `rating_info`;
CREATE TABLE IF NOT EXISTS `rating_info` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating_action` varchar(20) NOT NULL,
  UNIQUE KEY `comment_id` (`comment_id`,`user_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating_info`
--

INSERT INTO `rating_info` (`comment_id`, `user_id`, `rating_action`) VALUES
(32, 1, 'like'),
(32, 2, 'dislike'),
(33, 2, 'like'),
(34, 1, 'like'),
(34, 2, 'like'),
(35, 2, 'dislike'),
(36, 2, 'like'),
(37, 2, 'dislike');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `username`, `password`, `email`, `nom`, `prenom`) VALUES
(1, 'Darkanna', '$2y$10$Exxm3m98wK9.umJR1.WfhuVKhqI1foURqM5ODMJzPCNo64RW2hy0u', 'andreeaciobanu@hotmail.ca', 'Ciobanu', 'Andreea'),
(2, 'belz', '$2y$10$mB3.c9Ufsrt22efEyT3E/ut2ohT7CMA7bjhLgDz4u99RCWdHHSkeW', 'master_ben25@msn.com', 'Rose', 'Ben'),
(3, 'Benjamin', '$2y$10$lAY8LQsnK5sHMDgy0cXOI.fg/k.N9zofr5Epp36XbM9fdvXbSJJ3G', 'masterben25@gmail.com', 'Rose', 'Ben');

-- --------------------------------------------------------

--
-- Table structure for table `visiteurs`
--

DROP TABLE IF EXISTS `visiteurs`;
CREATE TABLE IF NOT EXISTS `visiteurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_url` varchar(200) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `date_jour` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `derniere_modif` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=893 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visiteurs`
--

INSERT INTO `visiteurs` (`id`, `page_url`, `counter`, `date_jour`, `derniere_modif`) VALUES
(890, '/wamp64/www/projetTP3/view/index.php', 1, '2020-08-12 22:48:57', '2020-08-11 02:03:42'),
(891, '/wamp64/www/projetTP3/view/index.php', 1, '2020-08-12 22:49:04', '2020-08-11 02:03:42'),
(892, '/wamp64/www/projetTP3/view/contact.php', 1, '2020-08-12 22:49:07', '2020-08-12 22:26:44');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rating_info`
--
ALTER TABLE `rating_info`
  ADD CONSTRAINT `rating_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_info_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `commentaires` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
