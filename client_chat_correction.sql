-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 20 déc. 2020 à 19:45
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `client_chat_correction`
--

-- --------------------------------------------------------

--
-- Structure de la table `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `iduser_1` varchar(255) NOT NULL,
  `iduser_2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `friends`
--

INSERT INTO `friends` (`id`, `iduser_1`, `iduser_2`) VALUES
(2, 'alex', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `users_id` int(11) NOT NULL,
  `sondages_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `message`, `created_at`, `users_id`, `sondages_id`) VALUES
(1, 'coucou', '2020-11-29 13:51:20', 1, 0),
(2, 'coucou', '2020-11-29 14:27:45', 2, 0),
(3, 'margaux la plus nulle', '2020-11-29 14:28:30', 2, 0),
(4, 'wsh', '2020-11-29 16:19:08', 1, 0),
(5, 'ezcsxw', '2020-11-29 17:00:23', 1, 0),
(26, 'sacha', '2020-12-05 14:47:28', 1, NULL),
(27, 'alex', '2020-12-05 14:47:29', 1, NULL),
(28, '-yrte', '2020-12-05 14:49:42', 1, NULL),
(29, 'j-thrgesd', '2020-12-05 14:53:29', 1, NULL),
(30, 'trv', '2020-12-05 14:54:44', 1, NULL),
(31, '&z', '2020-12-05 15:21:25', 1, NULL),
(32, '-èj(-yhtrgezf', '2020-12-07 19:53:17', 1, NULL),
(33, 'zesdx', '2020-12-07 23:52:12', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reponses_sondages`
--

CREATE TABLE `reponses_sondages` (
  `id` int(11) NOT NULL,
  `name_questions` varchar(255) NOT NULL,
  `sondage_id` int(11) NOT NULL,
  `nb_vote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sondages`
--

CREATE TABLE `sondages` (
  `id` int(11) NOT NULL,
  `questions` varchar(255) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `_url` varchar(255) NOT NULL,
  `date_fin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `isconnected` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `pseudo`, `isconnected`) VALUES
(1, 'alexe.delafe@outlook.fr', '$2y$10$z3oX5gzk8dZMiqQt7yf8mei7whanwBCUA7IUjAd.HEuTwiaVeV2nq', 'alexandre', 1),
(2, 'alexandre.delafosse@edu.devinci.fr', '$2y$10$KF0Yi1mMYQe1DP0lAbzzBe0y9BRkGM1ZeU4Teem8uu4ZNfkcLZ4ba', 'alex', 0),
(4, 'sabine.wong@groupe3F.fr', '$2y$10$SOjnyaMyYLX0OzWm2r4LwuYBLG4542wSAk.5K/t.p6JbiwHO.rpkO', 'test', 0),
(5, 'allex.dellaf@outlook.fr', '$2y$10$wTMYlS0gttMYRsk9QWLsGeSId6vl6Nq4r3YMZ1D8lEPQsCFpSRMZa', 'skander', 0),
(6, 'Xalex.delafx@outlook.fr', '$2y$10$hDc4QWNLgmqYTZ.qNL5sGeMoNoqSbM.4ELYz8Gmtl6SF9OiuAeDy2', 'coucou', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Index pour la table `reponses_sondages`
--
ALTER TABLE `reponses_sondages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sondages`
--
ALTER TABLE `sondages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `reponses_sondages`
--
ALTER TABLE `reponses_sondages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sondages`
--
ALTER TABLE `sondages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
