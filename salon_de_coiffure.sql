-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 16 nov. 2025 à 01:09
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `salon_de_coiffure`
--

-- --------------------------------------------------------

--
-- Structure de la table `coiffure`
--

DROP TABLE IF EXISTS `coiffure`;
CREATE TABLE IF NOT EXISTS `coiffure` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `coiffure`
--

INSERT INTO `coiffure` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(7),
(8),
(95),
(96),
(97),
(98),
(102),
(103),
(104),
(113),
(114),
(126),
(129),
(141);

-- --------------------------------------------------------

--
-- Structure de la table `coloration`
--

DROP TABLE IF EXISTS `coloration`;
CREATE TABLE IF NOT EXISTS `coloration` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `coloration`
--

INSERT INTO `coloration` (`id`) VALUES
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24);

-- --------------------------------------------------------

--
-- Structure de la table `coupes`
--

DROP TABLE IF EXISTS `coupes`;
CREATE TABLE IF NOT EXISTS `coupes` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `coupes`
--

INSERT INTO `coupes` (`id`) VALUES
(25),
(26),
(27),
(28);

-- --------------------------------------------------------

--
-- Structure de la table `email_verifications`
--

DROP TABLE IF EXISTS `email_verifications`;
CREATE TABLE IF NOT EXISTS `email_verifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `token` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `epilation_corp`
--

DROP TABLE IF EXISTS `epilation_corp`;
CREATE TABLE IF NOT EXISTS `epilation_corp` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `epilation_corp`
--

INSERT INTO `epilation_corp` (`id`) VALUES
(29),
(30),
(31),
(32),
(33);

-- --------------------------------------------------------

--
-- Structure de la table `epilation_visage`
--

DROP TABLE IF EXISTS `epilation_visage`;
CREATE TABLE IF NOT EXISTS `epilation_visage` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `epilation_visage`
--

INSERT INTO `epilation_visage` (`id`) VALUES
(34),
(35),
(36),
(37);

-- --------------------------------------------------------

--
-- Structure de la table `extension_cils`
--

DROP TABLE IF EXISTS `extension_cils`;
CREATE TABLE IF NOT EXISTS `extension_cils` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `extension_cils`
--

INSERT INTO `extension_cils` (`id`) VALUES
(38),
(39),
(40),
(41);

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int NOT NULL,
  `prestation_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `utilisateur_id` (`utilisateur_id`),
  KEY `prestation_id` (`prestation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `utilisateur_id`, `prestation_id`) VALUES
(77, 18, 2),
(81, 30, 1),
(40, 18, 97),
(47, 18, 95),
(71, 18, 5),
(62, 19, 17),
(64, 19, 96),
(60, 19, 3),
(70, 18, 3),
(73, 18, 26),
(32, 19, 2),
(72, 18, 1),
(75, 25, 26),
(63, 19, 8),
(65, 19, 5),
(76, 26, 63),
(78, 18, 81);

-- --------------------------------------------------------

--
-- Structure de la table `manicure_pedicure`
--

DROP TABLE IF EXISTS `manicure_pedicure`;
CREATE TABLE IF NOT EXISTS `manicure_pedicure` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `manicure_pedicure`
--

INSERT INTO `manicure_pedicure` (`id`) VALUES
(42),
(43),
(45),
(46),
(47),
(48),
(49);

-- --------------------------------------------------------

--
-- Structure de la table `maquillage`
--

DROP TABLE IF EXISTS `maquillage`;
CREATE TABLE IF NOT EXISTS `maquillage` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `maquillage`
--

INSERT INTO `maquillage` (`id`) VALUES
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57);

-- --------------------------------------------------------

--
-- Structure de la table `massage`
--

DROP TABLE IF EXISTS `massage`;
CREATE TABLE IF NOT EXISTS `massage` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `massage`
--

INSERT INTO `massage` (`id`) VALUES
(58),
(59),
(60),
(61);

-- --------------------------------------------------------

--
-- Structure de la table `nettoyage_de_peau`
--

DROP TABLE IF EXISTS `nettoyage_de_peau`;
CREATE TABLE IF NOT EXISTS `nettoyage_de_peau` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `nettoyage_de_peau`
--

INSERT INTO `nettoyage_de_peau` (`id`) VALUES
(62),
(63),
(64),
(65),
(66),
(67),
(68);

-- --------------------------------------------------------

--
-- Structure de la table `onglerie`
--

DROP TABLE IF EXISTS `onglerie`;
CREATE TABLE IF NOT EXISTS `onglerie` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `onglerie`
--

INSERT INTO `onglerie` (`id`) VALUES
(69),
(70),
(71),
(72),
(73),
(74),
(75);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `reset_code` varchar(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_id`, `reset_code`, `created_at`, `type`) VALUES
(4, 19, '480675', '2024-09-16 16:29:37', NULL),
(5, 19, '459263', '2024-09-16 16:29:39', NULL),
(7, 27, '441589', '2024-09-28 22:51:26', 'verification'),
(9, 18, '290574', '2025-11-15 21:11:23', NULL),
(10, 18, '784253', '2025-11-15 21:11:33', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
CREATE TABLE IF NOT EXISTS `personnel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) DEFAULT NULL,
  `nom` varchar(100) NOT NULL,
  `profession` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`id`, `photo`, `nom`, `profession`) VALUES
(1, 'uploads/bb liza.jpg', 'MEZIOUG ', 'coiffeuse'),
(2, 'uploads/bb liza.jpg', 'liza', 'maquilleuse'),
(3, 'uploads/space-3.jpg', 'liza', 'ongleriste'),
(4, 'uploads/LIZA MEZIOUG.png', 'liza', 'ongleriste'),
(5, 'uploads/space-1.jpg', 'imene', 'coiffeuse'),
(9, 'uploads/prestation.jpg', 'louiza', 'coiffeuse maquilleuse'),
(11, 'uploads/visage.jpg', 'rosa', 'coiffeuse maquilleuse');

-- --------------------------------------------------------

--
-- Structure de la table `prestations`
--

DROP TABLE IF EXISTS `prestations`;
CREATE TABLE IF NOT EXISTS `prestations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `prestations`
--

INSERT INTO `prestations` (`id`, `designation`, `prix`, `image`) VALUES
(1, 'Coiffure 1', 50000000.00, 'https://i.pinimg.com/564x/42/cc/41/42cc411f71a33b48f8daff24cfb37f36.jpg'),
(2, 'Coiffure 2', 40.00, 'https://i.pinimg.com/564x/82/bf/b5/82bfb5e14736a4d406ee3149aaef0ce5.jpg'),
(3, 'Coiffure 3', 50.00, 'https://i.pinimg.com/564x/58/63/9d/58639d4d6c0b370dcb331370dedff00c.jpg'),
(4, 'Coiffure 4', 60.00, 'https://i.pinimg.com/564x/b7/1a/e5/b71ae5edb50ecc53b1856107cd2c1ab0.jpg'),
(5, 'Coiffure 5', 35.00, 'https://i.pinimg.com/564x/c5/7d/12/c57d127ca23d83593e53a8cb4e6a7dd2.jpg'),
(7, 'Coiffure 7', 55.00, 'https://i.pinimg.com/474x/61/3a/28/613a28387f97089b9c1828d8ca301883.jpg'),
(8, 'Coiffure 8', 65.00, 'https://i.pinimg.com/236x/be/26/50/be26508d5a69972572acada137eb09da.jpg'),
(23, 'couleur 7', 55.00, 'https://i.pinimg.com/564x/64/87/81/6487814f9a9f40e7868ba4575f02fd90.jpg'),
(21, 'couleur 5', 35.00, 'https://i.pinimg.com/564x/eb/eb/54/ebeb5490fa26f9c54e2bba41452d5a77.jpg'),
(20, 'couleur 4', 60.00, 'https://i.pinimg.com/564x/03/b2/da/03b2daedb74f20ba83f5cce42ff54c5c.jpg'),
(19, 'couleur 3', 50.00, 'https://i.pinimg.com/564x/c1/4b/5b/c14b5bfe468fec8f9ef546b23f7d2401.jpg'),
(17, 'couleur 1', 30.00, 'https://i.pinimg.com/236x/78/68/7b/78687bdb63d3291455da2295b8d67866.jpg'),
(18, 'couleur 2', 40.00, 'https://i.pinimg.com/564x/df/4c/4c/df4c4ce4ad0038a5269d6e5c4be3d0e5.jpg'),
(24, 'couleur 8', 65.00, 'https://i.pinimg.com/236x/43/31/15/4331158780ab0ffa99db89c07f4c605e.jpg'),
(25, 'coupe 1', 30.00, 'https://i.pinimg.com/236x/78/68/7b/78687bdb63d3291455da2295b8d67866.jpg'),
(26, 'coupe 2', 40.00, 'https://i.pinimg.com/236x/7a/ee/9c/7aee9c9d4f57a691dcf04607c879bdab.jpg'),
(27, 'coupe 3', 50.00, 'https://i.pinimg.com/564x/be/fe/cc/befeccb9831a1cd2405ef32adf1aa02a.jpg'),
(28, 'coupe 4', 60.00, 'https://i.pinimg.com/564x/6b/4e/be/6b4ebe2a6976d6495d8adf7e6aa5b929.jpg'),
(29, 'Epilation Corps 1', 30.00, 'https://i.pinimg.com/564x/1b/0b/f1/1b0bf12c1a590f896b85cafe07ce875b.jpg'),
(30, 'Epilation Corps 2', 40.00, 'https://i.pinimg.com/564x/67/c7/7e/67c77ee602c07b292b56102434da8e58.jpg'),
(31, 'Epilation Corps 3', 50.00, 'https://i.pinimg.com/564x/6b/59/ac/6b59ace1830cd7f731c325fce02baa3e.jpg'),
(32, 'Epilation Corps 4', 60.00, 'https://i.pinimg.com/564x/de/6f/33/de6f3336a80c6fdf68da9c99ef97eaa4.jpg'),
(33, 'Epilation Corps 5', 80.00, 'https://i.pinimg.com/564x/15/17/c5/1517c5003ad2413578991c9825bfd6bf.jpg'),
(34, 'Epilation Visage 1', 70.00, 'https://i.pinimg.com/564x/27/82/1d/27821d13f8006d41637d1933ca471ccf.jpg'),
(35, 'Epilation Visage 2', 40.00, 'https://i.pinimg.com/564x/f1/5b/92/f15b923eb6b7437e6f8d02be416ecd06.jpg'),
(36, 'Epilation Visage 3', 50.00, 'https://i.pinimg.com/564x/7d/dd/5b/7ddd5b47cd28a5c42328ab8ee8db802c.jpg'),
(37, 'Epilation Visage 4', 60.00, 'https://i.pinimg.com/564x/54/91/dd/5491dd7bda9120a15f48746da3a77cac.jpg'),
(38, 'Extension de cils ', 30.00, 'https://i.pinimg.com/564x/f6/f9/36/f6f93668f90252afcc5671fe015dfe3f.jpg'),
(39, 'Extension de cils ', 40.00, 'https://i.pinimg.com/564x/f5/f1/a9/f5f1a90c5a66f15b43a787ace0bdb7c0.jpg'),
(40, 'Extension de cils ', 50.00, 'https://i.pinimg.com/564x/48/71/62/4871628c7f1407f441b05c1cb7632bf0.jpg'),
(41, 'Extension de cils ', 70.00, 'https://i.pinimg.com/564x/81/90/9e/81909e0da53c38efa52e430c806786c3.jpg'),
(42, 'Manicure 1', 30.00, 'https://i.pinimg.com/236x/0a/66/34/0a6634fde659c1be82b60566d907937e.jpg'),
(43, 'Manicure 2', 40.00, 'https://i.pinimg.com/564x/3d/89/d6/3d89d6909c19fef95a8bf9051a69dfd3.jpg'),
(45, 'Manicure 2', 45.00, 'https://i.pinimg.com/564x/38/c8/78/38c87862dac23524663757b7daa3227e.jpg'),
(46, 'Pedicure 3', 50.00, 'https://i.pinimg.com/564x/a6/11/fc/a611fcf2384a3ff1ad92072cc84616e8.jpg'),
(47, 'Pedicure 3', 55.00, 'https://i.pinimg.com/564x/bc/d2/83/bcd2836849e2b76c7c94ab8def211e2a.jpg'),
(48, 'Pedicure 4', 60.00, 'https://i.pinimg.com/564x/5d/50/8f/5d508fb402a6423eca52dc5d982492ec.jpg'),
(49, 'Pedicure 4', 65.00, 'https://i.pinimg.com/564x/98/85/4f/98854f8cf425fb8423ddc9ff90f9d8ff.jpg'),
(50, 'Maquillage 1', 30.00, 'https://i.pinimg.com/736x/ad/c7/e9/adc7e93edbfd7f7903c250006a085eb3.jpg'),
(51, 'Maquillage 2', 40.00, 'https://i.pinimg.com/564x/ca/9f/9d/ca9f9d88faaf3ef073325ec3a5f22536.jpg'),
(52, 'Maquillage 3', 50.00, 'https://i.pinimg.com/564x/6d/c1/56/6dc156208d2515303e4f2c8ed632fdcf.jpg'),
(53, 'Maquillage 4', 60.00, 'https://i.pinimg.com/564x/16/44/23/16442392bf6fa8c6229aa1cfba884ea8.jpg'),
(54, 'Maquillage 5', 35.00, 'https://i.pinimg.com/736x/e9/23/bc/e923bcd8ed2095493c7ec048978fa03d.jpg'),
(55, 'Maquillage 6', 45.00, 'https://i.pinimg.com/564x/f2/9d/ae/f29dae978e055b9f427fba3e1b24ea19.jpg'),
(56, 'Maquillage 7', 55.00, 'https://i.pinimg.com/564x/e7/8d/f2/e78df236fb8ec38e2bff032e54792907.jpg'),
(57, 'Maquillage 8', 65.00, 'https://i.pinimg.com/564x/b9/3a/85/b93a85b593d3901d640295e51e97023e.jpg'),
(58, 'Massage 1', 300.00, 'https://i.pinimg.com/564x/f4/1d/44/f41d44ac5a88d1cf046552963cd1af5e.jpg'),
(59, 'Massage 2', 40.00, 'https://i.pinimg.com/564x/95/77/9e/95779e015c5ce6b01b14aaa3bf2b54e2.jpg'),
(60, 'Massage 3', 50.00, 'https://i.pinimg.com/564x/f1/a6/9f/f1a69fbc3ade2f7da55bb418a3f9b5e1.jpg'),
(61, 'Massage 4', 60.00, 'https://i.pinimg.com/564x/ff/e7/05/ffe70551fd14f630abffa8a1ccc71fb1.jpg'),
(62, 'Nettoyage de peau 1', 30.00, 'https://i.pinimg.com/564x/ad/22/f6/ad22f675585bc12fbdcd8fcc726a09c0.jpg'),
(63, 'Nettoyage de peau 2', 40.00, 'https://i.pinimg.com/564x/6d/09/d5/6d09d5ff44713ebbcd0a0ebf08530254.jpg'),
(64, 'Nettoyage de peau 3', 70.00, 'https://i.pinimg.com/564x/67/de/36/67de362ec7a1b5b99686cf6d92a4901d.jpg'),
(65, 'Nettoyage de peau 4', 60.00, 'https://i.pinimg.com/564x/a0/68/01/a068018b4c6201b6c1756d6e5ca10827.jpg'),
(66, 'Nettoyage de peau 5', 35.00, 'https://i.pinimg.com/564x/c3/c2/0a/c3c20a0f0e48fa714ab6ecab9f91fb24.jpg'),
(67, 'Nettoyage de peau 6', 45.00, 'https://i.pinimg.com/564x/8b/79/21/8b79213468cda59f0cc726fd4e25e7c1.jpg'),
(68, 'Nettoyage de peau 7', 55.00, 'https://i.pinimg.com/564x/ba/1d/13/ba1d132efb4672cbd22e6d54fd9f3612.jpg'),
(69, 'Onglerie 1', 200.00, 'https://i.pinimg.com/564x/13/5e/6a/135e6a998288618b60f7f66011133fae.jpg'),
(70, 'Onglerie 2', 25.00, 'https://i.pinimg.com/564x/70/1c/7c/701c7cfd76ee874981f850482ffa2feb.jpg'),
(71, 'Onglerie 3', 30.00, 'https://i.pinimg.com/564x/da/97/12/da97122f689f1b3a3892d23830d673c3.jpg'),
(72, 'Onglerie 4', 35.00, 'https://i.pinimg.com/564x/60/c7/55/60c755ab5e5bd8f1ce7a1739e395a660.jpg'),
(73, 'Onglerie 5', 40.00, 'https://i.pinimg.com/564x/9e/37/ca/9e37ca45065c82d8369cccea51b9d87a.jpg'),
(74, 'Onglerie 6', 45.00, 'https://i.pinimg.com/564x/97/24/29/9724297b5bf5aa173fa3581b8ba9fad3.jpg'),
(75, 'Onglerie 7', 50.00, 'https://i.pinimg.com/564x/bd/08/14/bd0814ffce5c612090c3a1f25a803488.jpg'),
(76, 'Soin capillaire 1', 50.00, 'https://i.pinimg.com/564x/07/42/56/07425690819091f75a28d2ebcc7930f1.jpg'),
(77, 'Soin capillaire 2', 40.00, 'https://i.pinimg.com/564x/c0/41/91/c041910856eef6065dd8ee9d4dbc1419.jpg'),
(78, 'Soin capillaire 3', 50.00, 'https://i.pinimg.com/564x/30/66/43/30664320f352e7767377543a5a606d65.jpg'),
(79, 'Soin capillaire 4', 60.00, 'https://i.pinimg.com/564x/96/e5/01/96e5011fc85c40785a22ddfaea969081.jpg'),
(80, 'Tresse 1', 30.00, 'https://i.pinimg.com/564x/36/30/b5/3630b55129a9f7507bd2b73a9f82f02a.jpg'),
(82, 'Tresse 3', 50.00, 'https://i.pinimg.com/236x/18/d1/35/18d1354ceb580fe783ea9df468a10974.jpg'),
(84, 'Tresse 5', 35.00, 'https://i.pinimg.com/564x/2a/0a/83/2a0a83fc78b5c59b91b02d2968490f9f.jpg'),
(85, 'Tresse 6', 45.00, 'https://i.pinimg.com/564x/9b/ec/24/9bec24c294e224feb9d096cfe52c703f.jpg'),
(95, 'coiffure 500', 100.00, 'uploads/space-1.jpg'),
(96, 'coiffure 15', 100000.00, 'uploads/bb liza.jpg'),
(98, 'liza', 22200.00, 'https://i.pinimg.com/564x/42/cc/41/42cc411f71a33b48f8daff24cfb37f36.jpg'),
(129, 'coiffure 500', 1000.00, 'uploads/space-1.jpg'),
(141, 'essai2', 1111.00, 'uploads/space-3.jpg'),
(113, 'coiffure 50', 40.00, 'uploads/LIZA MEZIOUG.png'),
(114, 'coiffure 500', 100000.00, 'uploads/Liza.ico'),
(126, 'essaie', 100.00, 'uploads/bb liza.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `id_reservation` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `id_prestation` int DEFAULT NULL,
  `date_reservation` date DEFAULT NULL,
  `heure_reservation` time DEFAULT NULL,
  `adresse_client` varchar(255) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `etat` varchar(20) DEFAULT 'en attente',
  `id_personnel` int DEFAULT NULL,
  PRIMARY KEY (`id_reservation`),
  KEY `fk_user` (`id_user`),
  KEY `fk_prestation` (`id_prestation`),
  KEY `fk_personnel` (`id_personnel`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id_reservation`, `id_user`, `id_prestation`, `date_reservation`, `heure_reservation`, `adresse_client`, `telephone`, `email`, `etat`, `id_personnel`) VALUES
(65, 18, 62, '2024-09-18', '19:08:00', 'CW 1 , Issahounene, Tizi Ouzou, 15051', '0555444', 'lizamezioug22@gmail.com', 'refusée', 7),
(28, 19, 96, '2024-09-14', '16:06:00', NULL, '0554791535', 'liza@gmail.com', 'refusée', NULL),
(26, 18, 3, '2024-09-07', '08:15:00', 'طريق إقوفاف - آيت هلة - الصوامع, آيت هلة, Souamaâ, Daïra Mekla, Tizi Ouzou, 15088, Algérie', '0554791535', 'liza@gmail.com', 'annulée', NULL),
(25, 18, 3, '2024-08-30', '11:58:00', 'أورير, Merdja, Bounouh, Daïra Boghni, Tizi Ouzou, 15445, Algérie', '0554791535', 'liza@gmail.com', 'acceptée', NULL),
(29, 18, 81, '2024-09-25', '14:49:00', 'Cité Bouassem, Souk El Had, Daïra Thenia, Boumerdès, 35006, Algérie', '123684', 'li2022za@gmail.com', 'acceptée', NULL),
(30, 18, 51, '2024-09-18', '14:54:00', 'bbz', '123684', 'li2022za@gmail.com', 'acceptée', NULL),
(31, 18, 70, '2024-09-21', '14:58:00', 'bbz', '123684', 'lizamezioug22@gmail.com', 'acceptée', NULL),
(32, 18, 24, '2024-09-18', '15:40:00', 'bbz', '123684', 'lizamezioug22@gmail.com', 'acceptée', NULL),
(33, 18, 3, '2024-09-13', '15:58:00', NULL, '123684', 'lizamezioug22@gmail.com', 'refusée', NULL),
(35, 19, 2, '2024-09-12', '18:16:00', 'Route de Corso, Boudouaou El Bahri, Daïra Boudouaou, Boumerdès, 35400, Algérie', '123684', 'li2022za@gmail.com', 'acceptée', NULL),
(49, 19, 52, '2024-09-10', '01:04:00', NULL, '0554791535', 'liza@gmail.com', 'acceptée', 0),
(51, 18, 52, '2024-09-11', '07:09:00', 'Rue Salem Benramdane , , Tizi Ouzou, 15000', '123684', 'li2022za@gmail.com', 'acceptée', 2),
(48, 19, 75, '2024-09-10', '06:02:00', 'bbz', '0554791535', 'lizamezioug22@gmail.com', 'acceptée', 3),
(50, 19, 50, '2024-09-10', '06:05:00', 'طريق إقوفاف - آيت هلة - الصوامع , آيت هلة, Tizi Ouzou, 15088', '0554791535', 'liza@gmail.com', 'refusée', 6),
(64, 19, 60, '2024-09-21', '07:37:00', 'طريق إقوفاف - آيت هلة - الصوامع , آيت هلة, Tizi Ouzou, 15088', '0554791535', 'lizamezioug22@gmail.com', 'refusée', 11),
(63, 18, 71, '2024-09-16', '08:49:00', ' , Châayeb, Tizi Ouzou, 15051', '0555444', 'li2022za@gmail.com', 'acceptée', 4),
(62, 18, 31, '2024-10-04', '08:26:00', ' , , Alger, 16036', '0554791535', 'lizamezioug22@gmail.com', 'annulée', 9),
(66, 18, 74, '2024-09-25', '17:09:00', 'bounouh', '0555444', 'li2022za@gmail.com', 'acceptée', 0),
(67, 18, 70, '2024-09-18', '19:39:00', NULL, '0555444', 'li2022za@gmail.com', 'annulée', 0),
(68, 18, 55, '2024-09-18', '19:00:00', NULL, '0555444', 'lizamezioug22@gmail.com', 'acceptée', 2),
(69, 18, 62, '2024-09-18', '11:54:00', 'CW 1 , Issahounene, Tizi Ouzou, 15051', '0555444', 'li2022za@gmail.com', 'refusée', 9),
(70, 18, 79, '2024-09-26', '09:54:00', 'bounouh', '0555444', 'lizamezioug22@gmail.com', 'acceptée', 0),
(71, 18, 27, '2024-10-05', '08:55:00', NULL, '0554444', 'lizamezioug22@gmail.com', 'annulée', 7),
(72, 18, 83, '2024-09-26', '08:47:00', NULL, '0554791535', 'lizamezioug22@gmail.com', 'refusée', 1),
(73, 18, 40, '2024-10-03', '08:48:00', 'طريق إقوفاف - آيت هلة - الصوامع , آيت هلة, Tizi Ouzou, 15088', '0554791535', 'lizamezioug22@gmail.com', 'acceptée', 0),
(74, 18, 44, '2024-10-03', '09:49:00', 'طريق إقوفاف - آيت هلة - الصوامع , آيت هلة, Tizi Ouzou, 15088', '0554791535', 'lizamezioug22@gmail.com', 'acceptée', 6),
(75, 1, 75, '2024-09-16', '18:00:00', 'طريق إقوفاف - آيت هلة - الصوامع, آيت هلة, Souamaâ, Daïra Mekla, Tizi Ouzou, 15088, Algérie', '0554791535', 'lizamezioug22@gmail.com', 'refusée', 4),
(76, 18, 26, '2024-09-19', '08:48:00', 'طريق إقوفاف - آيت هلة - الصوامع , آيت هلة, Tizi Ouzou, 15088', '0554791535', 'lizamezioug22@gmail.com', 'refusée', 1),
(77, 25, 1, '2024-09-20', '09:30:00', 'bounouh', '0556412333', 'karimmezioug595@gmail.com', 'acceptée', 1),
(78, 26, 63, '2024-09-20', '09:28:00', '', '055555', 'zaloui023@gmail.com', 'acceptée', 9),
(79, 18, 81, '2024-09-28', '15:53:00', '', '0555444', 'li2022za@gmail.com', 'acceptée', 0),
(80, 18, 2, '2024-10-05', '16:59:00', NULL, '0555444', 'li2022za@gmail.com', 'acceptée', 0),
(81, 18, 4, '2024-10-05', '18:13:00', NULL, '0555444', 'lizamezioug22@gmail.com', 'refusée', 5),
(82, 18, 17, '2024-11-13', '17:03:00', ' , , Alger, 16006', '123684', 'lizamezioug22@gmail.com', 'acceptée', 2),
(83, 18, 26, '2024-12-18', '18:29:00', ' , , Alger, 16104', '123684', 'lizamezioug22@gmail.com', 'refusée', 0),
(84, 30, 1, '2025-11-22', '18:25:00', ' , Tirika, Bouira, ', '0554791535', 'li2022za@gmail.com', 'acceptée', 11);

-- --------------------------------------------------------

--
-- Structure de la table `soins_cappilaire`
--

DROP TABLE IF EXISTS `soins_cappilaire`;
CREATE TABLE IF NOT EXISTS `soins_cappilaire` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `soins_cappilaire`
--

INSERT INTO `soins_cappilaire` (`id`) VALUES
(76),
(77),
(78),
(79);

-- --------------------------------------------------------

--
-- Structure de la table `tresses`
--

DROP TABLE IF EXISTS `tresses`;
CREATE TABLE IF NOT EXISTS `tresses` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tresses`
--

INSERT INTO `tresses` (`id`) VALUES
(80),
(81),
(82),
(83),
(84),
(85);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_utilisateur` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `adresse` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom_utilisateur`, `email`, `mot_de_passe`, `telephone`, `adresse`) VALUES
(29, 'mama', 'liza.sii.2024@gmail.com', '$2y$10$x9IaDqSYAWvPDqqw2vFe3Oefn8jwCcAGm4qPS7C4kCKYMw9vNnYT.', '05555555', 'bbz'),
(25, 'kaghim', 'karimmezioug595@gmail.com', '$2y$10$YvhPWzCnud0KYPH6b/2fXeKQPNoBf1crm/jpzHfUSA8gjrvL4ds7C', '0556412333', 'bounouh'),
(26, 'louisaa', 'zaloui023@gmail.com', '$2y$10$a31TFssFhNx/SZOjm8YXnOyKgRMKudx.rCzQibqU4KWqJgzg2gKNa', '0554791535', 'bounouh'),
(18, 'walid', 'lizamezioug22@gmail.com', '$2y$10$mQOmzrQKrlg7EZJ7Bh3MBuv3GE8jZyisWSc2qPxYPxy3DsFgJvZNG', '05555555', 'bbz'),
(19, 'rosaly', 'liza@gmail.com', '$2y$10$8HKKqAOPY7v71bCJ1upPaunfHWUwFGhtYfns4C3oU//9OM1nAP9M6', '055555', 'bbz'),
(30, 'liza', 'li2022za@gmail.com', '$2y$10$a16VOaa8YuioRkBzgTuQSednrhsyS2wSoTn18TqWLtWfALQ0ZjVmW', '+213554791535', 'alger');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
