-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 09 juil. 2020 à 11:47
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `reviews`
--
CREATE DATABASE IF NOT EXISTS `reviews` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `reviews`;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Reviews', '0001_initial_manual', '2020-07-05 16:21:29.388752'),
(2, 'contenttypes', '0001_initial', '2020-07-05 16:21:29.632141'),
(3, 'auth', '0001_initial', '2020-07-05 16:21:30.116872'),
(4, 'admin', '0001_initial', '2020-07-05 16:21:33.024724'),
(5, 'admin', '0002_logentry_remove_auto_add', '2020-07-05 16:21:34.269348'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-05 16:21:34.319543'),
(7, 'contenttypes', '0002_remove_content_type_name', '2020-07-05 16:21:34.818100'),
(8, 'auth', '0002_alter_permission_name_max_length', '2020-07-05 16:21:35.192299'),
(9, 'auth', '0003_alter_user_email_max_length', '2020-07-05 16:21:35.289543'),
(10, 'auth', '0004_alter_user_username_opts', '2020-07-05 16:21:35.372122'),
(11, 'auth', '0005_alter_user_last_login_null', '2020-07-05 16:21:35.637364'),
(12, 'auth', '0006_require_contenttypes_0002', '2020-07-05 16:21:35.664974'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2020-07-05 16:21:35.741009'),
(14, 'auth', '0008_alter_user_username_max_length', '2020-07-05 16:21:36.182768'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2020-07-05 16:21:36.436077'),
(16, 'auth', '0010_alter_group_name_max_length', '2020-07-05 16:21:36.593522'),
(17, 'auth', '0011_update_proxy_permissions', '2020-07-05 16:21:36.660779'),
(18, 'sessions', '0001_initial', '2020-07-05 16:21:36.924736'),
(19, 'Reviews', '0002_blacklist_domainname_iplist_reviews', '2020-07-05 16:22:20.762961'),
(20, 'Reviews', '0003_auto_20200706_2108', '2020-07-06 19:09:08.828195');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reviews_blacklist`
--

CREATE TABLE `reviews_blacklist` (
  `id` int(11) NOT NULL,
  `reason` longtext NOT NULL,
  `banned_at` datetime(6) NOT NULL,
  `banned_by_id` int(11) NOT NULL,
  `ip_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reviews_domainname`
--

CREATE TABLE `reviews_domainname` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `reviews_day` smallint(5) UNSIGNED NOT NULL CHECK (`reviews_day` >= 0),
  `created_at` datetime(6) NOT NULL,
  `api_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reviews_domainname`
--

INSERT INTO `reviews_domainname` (`id`, `url`, `reviews_day`, `created_at`, `api_key`) VALUES
(1, 'https://www.assurance-voiture-temporaire-provisoire.com/', 5, '2020-07-05 16:24:20.000000', 'RvKDVxUirxzYNMbMDPFbOSYQxmGEfEhTQbacVAbyOYLkfgRmUVudkDJNQkocLeOR'),
(2, 'https://www.assurance-chien-2eme-categorie.com/', 5, '2020-07-07 18:40:48.861600', '637Q4aPEEetnl07SWMiMcJuJXuJ3ueePjvRekZtmSjPOZI8CBxBrb17WwLiWgQdI'),
(3, 'https://www.tele-assistance-senior.fr/', 5, '2020-07-08 08:22:40.462714', 'bd0XdfLlecdfkFtQbzerHi8BmHOPCi8mT13vCljOPs2TGBlop858nk5YbNF7ySAX');

-- --------------------------------------------------------

--
-- Structure de la table `reviews_iplist`
--

CREATE TABLE `reviews_iplist` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reviews_reviews`
--

CREATE TABLE `reviews_reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(56) NOT NULL,
  `email` varchar(254) NOT NULL,
  `reviews` longtext NOT NULL,
  `star` smallint(5) UNSIGNED NOT NULL CHECK (`star` >= 0),
  `publish` tinyint(1) NOT NULL,
  `date` datetime(6) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `ip_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `reviews_blacklist`
--
ALTER TABLE `reviews_blacklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Reviews_blacklist_banned_by_id_6ab654f0_fk_auth_user_id` (`banned_by_id`),
  ADD KEY `Reviews_blacklist_ip_address_id_81d1caee_fk_Reviews_iplist_id` (`ip_address_id`);

--
-- Index pour la table `reviews_domainname`
--
ALTER TABLE `reviews_domainname`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reviews_iplist`
--
ALTER TABLE `reviews_iplist`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reviews_reviews`
--
ALTER TABLE `reviews_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Reviews_reviews_ip_id_015500f1_fk_Reviews_iplist_id` (`ip_id`),
  ADD KEY `Reviews_reviews_domain_id_04fa8374_fk_Reviews_domainname_id` (`domain_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `reviews_blacklist`
--
ALTER TABLE `reviews_blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reviews_domainname`
--
ALTER TABLE `reviews_domainname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `reviews_iplist`
--
ALTER TABLE `reviews_iplist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reviews_reviews`
--
ALTER TABLE `reviews_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `reviews_blacklist`
--
ALTER TABLE `reviews_blacklist`
  ADD CONSTRAINT `Reviews_blacklist_banned_by_id_6ab654f0_fk_auth_user_id` FOREIGN KEY (`banned_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `Reviews_blacklist_ip_address_id_81d1caee_fk_Reviews_iplist_id` FOREIGN KEY (`ip_address_id`) REFERENCES `reviews_iplist` (`id`);

--
-- Contraintes pour la table `reviews_reviews`
--
ALTER TABLE `reviews_reviews`
  ADD CONSTRAINT `Reviews_reviews_domain_id_04fa8374_fk_Reviews_domainname_id` FOREIGN KEY (`domain_id`) REFERENCES `reviews_domainname` (`id`),
  ADD CONSTRAINT `Reviews_reviews_ip_id_015500f1_fk_Reviews_iplist_id` FOREIGN KEY (`ip_id`) REFERENCES `reviews_iplist` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
