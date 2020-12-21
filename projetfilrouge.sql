-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 21 déc. 2020 à 20:01
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
  `message` text CHARACTER SET utf8 NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `users_id` int(11) NOT NULL,
  `sondages_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(2, 'alexandre.delafosse@edu.devinci.fr', '$2y$10$KF0Yi1mMYQe1DP0lAbzzBe0y9BRkGM1ZeU4Teem8uu4ZNfkcLZ4ba', 'alex', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `reponses_sondages`
--
ALTER TABLE `reponses_sondages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `sondages`
--
ALTER TABLE `sondages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
