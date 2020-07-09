-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 09 juil. 2020 à 10:48
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
CREATE DATABASE IF NOT EXISTS `reviews2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `reviews2`;

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

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add BlackList', 7, 'add_blacklist'),
(26, 'Can change BlackList', 7, 'change_blacklist'),
(27, 'Can delete BlackList', 7, 'delete_blacklist'),
(28, 'Can view BlackList', 7, 'view_blacklist'),
(29, 'Can add IpList', 8, 'add_iplist'),
(30, 'Can change IpList', 8, 'change_iplist'),
(31, 'Can delete IpList', 8, 'delete_iplist'),
(32, 'Can view IpList', 8, 'view_iplist'),
(33, 'Can add Reviews', 9, 'add_reviews'),
(34, 'Can change Reviews', 9, 'change_reviews'),
(35, 'Can delete Reviews', 9, 'delete_reviews'),
(36, 'Can view Reviews', 9, 'view_reviews'),
(37, 'Can add DomainName', 10, 'add_domainname'),
(38, 'Can change DomainName', 10, 'change_domainname'),
(39, 'Can delete DomainName', 10, 'delete_domainname'),
(40, 'Can view DomainName', 10, 'view_domainname');

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

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$T5wWBbPrgRBF$qwRE+6p7GHb7WLXblKlwt6SBsZySwXCHf+meyOQiu9Q=', '2020-07-06 12:14:43.200199', 1, 'theoGaillard', '', '', 'theo.g.31@free.fr', 1, 1, '2020-07-05 16:23:24.751771');

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

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-07-05 16:24:11.356575', '1', '127.0.0.1', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-07-05 16:24:29.113265', '1', 'https://www.assurance-voiture-temporaire-provisoire.com/', 1, '[{\"added\": {}}]', 10, 1),
(3, '2020-07-05 16:24:52.413674', '1', 'Theo Gaillard', 1, '[{\"added\": {}}]', 9, 1),
(4, '2020-07-05 16:44:27.405544', '1', '127.0.0.2', 2, '[{\"changed\": {\"fields\": [\"Ip address\"]}}]', 8, 1),
(5, '2020-07-05 16:47:57.367170', '2', '127.0.0.3', 2, '[{\"changed\": {\"fields\": [\"Ip address\"]}}]', 8, 1),
(6, '2020-07-05 16:49:39.127141', '3', '127.0.0.2', 2, '[{\"changed\": {\"fields\": [\"Ip address\"]}}]', 8, 1),
(7, '2020-07-05 16:50:32.603370', '4', '127.0.0.3', 2, '[{\"changed\": {\"fields\": [\"Ip address\"]}}]', 8, 1),
(8, '2020-07-05 16:51:01.634217', '3', '127.0.0.1', 2, '[{\"changed\": {\"fields\": [\"Ip address\"]}}]', 8, 1),
(9, '2020-07-05 16:57:26.573099', '3', '127.0.0.1', 3, '', 8, 1),
(10, '2020-07-05 16:57:26.616457', '1', '127.0.0.2', 3, '', 8, 1),
(11, '2020-07-05 16:57:26.621752', '4', '127.0.0.3', 3, '', 8, 1),
(12, '2020-07-05 16:57:26.662673', '2', '127.0.0.3', 3, '', 8, 1),
(13, '2020-07-05 16:57:40.285500', '6', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 9, 1),
(14, '2020-07-05 16:57:44.410682', '5', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 9, 1),
(15, '2020-07-05 16:57:48.378894', '4', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 9, 1),
(16, '2020-07-05 17:26:20.745448', '14', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 9, 1),
(17, '2020-07-05 17:26:36.562432', '13', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 9, 1),
(18, '2020-07-05 17:26:40.246168', '12', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 9, 1),
(19, '2020-07-05 17:26:45.738854', '11', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 9, 1),
(20, '2020-07-05 17:26:49.879529', '10', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 9, 1),
(21, '2020-07-05 17:26:53.247285', '9', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 9, 1),
(22, '2020-07-05 17:26:57.647265', '8', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 9, 1),
(23, '2020-07-05 17:27:02.080240', '7', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 9, 1),
(24, '2020-07-05 17:27:05.693605', '16', 'Theo Gaillard', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 9, 1),
(25, '2020-07-05 17:27:09.469418', '15', 'Theo Gaillard', 2, '[{\"changed\": {\"fields\": [\"Publish\"]}}]', 9, 1),
(26, '2020-07-05 17:42:33.912784', '1', 'https://www.assurance-voiture-temporaire-provisoire.com/', 2, '[{\"changed\": {\"fields\": [\"Reviews day\"]}}]', 10, 1),
(27, '2020-07-05 18:03:40.228181', '2', 'Span la base de donnees', 1, '[{\"added\": {}}]', 7, 1),
(28, '2020-07-05 18:08:10.963884', '2', '127.0.0.1', 3, '', 7, 1),
(29, '2020-07-05 19:44:23.072456', '18', 'Jean Marc Dhrair', 2, '[{\"changed\": {\"fields\": [\"Nombre d\'\\u00e9toile(s)\", \"L\'avis est public\"]}}]', 9, 1),
(30, '2020-07-06 12:31:37.915502', '3', '127.0.0.1', 1, '[{\"added\": {}}]', 7, 1),
(31, '2020-07-06 12:31:54.436513', '4', '127.0.0.1', 1, '[{\"added\": {}}]', 7, 1),
(32, '2020-07-06 19:23:40.386376', '1', 'https://www.assurance-voiture-temporaire-provisoire.com/', 2, '[{\"changed\": {\"fields\": [\"Nombre d\'avis par Jour et par Ip\"]}}]', 10, 1),
(33, '2020-07-06 19:25:51.741341', '3', '127.0.0.1', 3, '', 7, 1),
(34, '2020-07-06 19:25:51.763347', '4', '127.0.0.1', 3, '', 7, 1),
(35, '2020-07-06 19:26:23.646836', '29', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"L\'avis est public\"]}}]', 9, 1),
(36, '2020-07-06 19:26:28.707123', '28', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"L\'avis est public\"]}}]', 9, 1),
(37, '2020-07-06 19:26:33.082674', '30', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"L\'avis est public\"]}}]', 9, 1),
(38, '2020-07-06 19:26:37.596902', '27', 'Paul Dupond', 2, '[{\"changed\": {\"fields\": [\"L\'avis est public\"]}}]', 9, 1),
(39, '2020-07-07 18:40:48.862613', '2', 'https://www.assurance-chien-2eme-categorie.com/', 1, '[{\"added\": {}}]', 10, 1),
(40, '2020-07-07 18:43:57.143710', '2', 'https://www.assurance-chien-2eme-categorie.com/', 2, '[{\"changed\": {\"fields\": [\"Cl\\u00e9e d\'api du site\"]}}]', 10, 1),
(41, '2020-07-07 19:21:36.703512', '5', '127.0.0.1', 1, '[{\"added\": {}}]', 7, 1),
(42, '2020-07-07 19:54:02.687206', '5', '127.0.0.1', 3, '', 7, 1),
(43, '2020-07-07 20:04:07.115961', '1', 'https://www.assurance-voiture-temporaire-provisoire.com/', 2, '[]', 10, 1),
(44, '2020-07-07 20:05:13.679761', '1', 'https://www.assurance-voiture-temporaire-provisoire.com/', 2, '[]', 10, 1),
(45, '2020-07-07 20:05:54.888623', '1', 'https://www.assurance-voiture-temporaire-provisoire.com/', 2, '[]', 10, 1),
(46, '2020-07-07 20:06:11.675615', '1', 'https://www.assurance-voiture-temporaire-provisoire.com/', 2, '[]', 10, 1),
(47, '2020-07-07 20:06:17.325572', '1', 'https://www.assurance-voiture-temporaire-provisoire.com/', 2, '[]', 10, 1),
(48, '2020-07-07 20:11:58.541712', '1', 'https://www.assurance-voiture-temporaire-provisoire.com/', 2, '[]', 10, 1),
(49, '2020-07-07 20:17:33.920815', '2', 'https://www.assurance-chien-2eme-categorie.com/', 2, '[{\"changed\": {\"fields\": [\"Cl\\u00e9e d\'api du site\"]}}]', 10, 1),
(50, '2020-07-07 20:24:56.535533', '1', 'https://www.assurance-voiture-temporaire-provisoire.com/', 2, '[]', 10, 1),
(51, '2020-07-07 20:25:00.234911', '1', 'https://www.assurance-voiture-temporaire-provisoire.com/', 2, '[]', 10, 1),
(52, '2020-07-08 07:45:05.960482', '1', 'https://www.assurance-voiture-temporaire-provisoire.com/', 2, '[]', 10, 1),
(53, '2020-07-08 08:22:40.474694', '3', 'https://www.tele-assistance-senior.fr/', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'Reviews', 'blacklist'),
(10, 'Reviews', 'domainname'),
(8, 'Reviews', 'iplist'),
(9, 'Reviews', 'reviews'),
(6, 'sessions', 'session');

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

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('rzidnmkk3c6wkhw2h6grbpfs6v27d3zo', 'YTVlZDRmN2FjNjYwNWRjMzViZDhiYWNlYjIxMzhiYzI2MzkxMzk3NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YzZiOTFkZmNiMTViYjNkZDQyMTY4Yjk3YmQ1ZjY0MzQ0MTAyMmI3In0=', '2020-07-20 12:14:43.290509');

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

--
-- Déchargement des données de la table `reviews_iplist`
--

INSERT INTO `reviews_iplist` (`id`, `ip_address`) VALUES
(5, '127.0.0.1');

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
-- Déchargement des données de la table `reviews_reviews`
--

INSERT INTO `reviews_reviews` (`id`, `name`, `email`, `reviews`, `star`, `publish`, `date`, `domain_id`, `ip_id`) VALUES
(4, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site d\'assurance en ligne', 4, 1, '2020-07-05 16:50:39.000000', 1, 5),
(5, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site d\'assurance', 4, 1, '2020-07-05 16:50:51.000000', 1, 5),
(6, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site d\'assurance', 4, 1, '2020-07-05 16:56:38.000000', 1, 5),
(7, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site d\'assurance', 4, 1, '2020-07-05 17:01:57.000000', 1, 5),
(8, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site d\'assurance', 4, 1, '2020-07-05 17:03:13.000000', 1, 5),
(9, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site d\'assurance', 4, 1, '2020-07-05 17:05:54.000000', 1, 5),
(10, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site d\'assurance', 4, 1, '2020-07-05 17:06:26.000000', 1, 5),
(11, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site d\'assurance', 4, 1, '2020-07-05 17:08:38.000000', 1, 5),
(12, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site d\'assurance', 4, 1, '2020-07-05 17:08:52.000000', 1, 5),
(13, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site d\'assurance', 4, 1, '2020-07-05 17:09:02.000000', 1, 5),
(14, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site d\'assurance', 4, 1, '2020-07-05 17:09:55.000000', 1, 5),
(15, 'Theo Gaillard', 'theo.h@free.fr', 'Super site', 5, 1, '2020-07-05 17:14:03.000000', 1, 5),
(16, 'Theo Gaillard', 'theo.h@free.fr', 'Super site', 5, 1, '2020-07-05 17:15:00.000000', 1, 5),
(17, 'Theo Gaillard', 'theo.g.31@free.fr', 'Super bon site teste depuis la page de teste', 3, 0, '2020-07-05 17:42:55.372467', 1, 5),
(18, 'Jean Marc Dhrair', 'Jm31@gmail.fr', 'Super bon site j\'ai eu mon aussurance rapidement', 1, 1, '2020-07-05 18:02:44.000000', 1, 5),
(19, 'Theo Gaillard', 'theo.g.31@free.fr', 'dfgxxxxxxxxxxxxxxxxxxxxxxxx', 2, 0, '2020-07-05 19:33:13.857296', 1, 5),
(20, 'Theo Gaillard', 'theo.g.31@free.fr', 'Super bon site', 3, 0, '2020-07-05 19:39:46.860843', 1, 5),
(21, 'Theo Gaillard', 'theo.g.31@free.fr', '\"<script>alert(\'Faille xss\')', 5, 0, '2020-07-05 19:41:19.719464', 1, 5),
(22, 'Theo Gaillard', 'theo.g.31@free.fr', 'Super bon site', 4, 0, '2020-07-05 19:55:44.574913', 1, 5),
(23, 'Theo Gaillard', 'theo.g.31@free.fr', 'Super site d\'assurance', 5, 0, '2020-07-05 19:56:12.914864', 1, 5),
(24, 'Theo Gaillard', 'theo.g.31@free.fr', 'sssssssssssssssssssssssssssssss', 4, 0, '2020-07-05 20:20:02.836983', 1, 5),
(25, 'Paul Dupond', 'PaulDupond@free.fr', 'Super bon site, j\'ai eu rapidement mon contrat.', 3, 0, '2020-07-06 11:07:46.557505', 1, 5),
(26, 'Paul Dupond', 'PaulDupond@free.fr', 'Super bon site, j\'ai eu rapidement mon contrat.', 3, 0, '2020-07-06 11:08:05.753382', 1, 5),
(27, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site d\'', 3, 1, '2020-07-06 11:11:47.000000', 1, 5),
(28, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site a', 2, 1, '2020-07-06 11:14:04.000000', 1, 5),
(29, 'Paul Dupond', 'PaulDupond@free.fr', 'Super site a', 2, 1, '2020-07-06 11:14:05.000000', 1, 5),
(30, 'Paul Dupond', 'PaulDupond@free.fr', 'Testetestedfddd', 3, 1, '2020-07-06 11:15:40.000000', 1, 5),
(31, 'Paul Dupond', 'PaulDupond@free.fr', 'sssssssssssssssssssssssssssssssssssss', 4, 0, '2020-07-06 11:16:52.598040', 1, 5),
(32, 'Theo Gaillard', 'theo.g.31@free.fr', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 3, 0, '2020-07-06 11:17:29.007959', 1, 5),
(33, 'Theo Gaillard', 'theo.g.31@free.fr', 'sddddddddddddddddddddddddd', 3, 0, '2020-07-06 11:19:38.142379', 1, 5),
(34, 'Theo Gaillard', 'theo.g.31@free.fr', 'sddddddddddddddddddddddddd', 3, 0, '2020-07-06 11:19:41.061824', 1, 5),
(35, 'Theo Gaillard', 'theo.g.31@free.fr', 'sddddddddddddddddddddddddd', 3, 0, '2020-07-06 11:19:43.663998', 1, 5),
(36, 'Theo Gaillard', 'theo.g.31@free.fr', 'fffffffffffffffffffffff', 4, 0, '2020-07-06 11:20:13.691404', 1, 5),
(37, 'Theo Gaillard', 'theo.g.31@free.fr', 'fffffffffffffffffffffff', 4, 0, '2020-07-06 11:20:16.178025', 1, 5),
(38, 'Theo Gaillard', 'theo.g.31@free.fr', 'cfvvvvvvvvvvvvvvvvvv', 3, 0, '2020-07-06 11:23:02.728226', 1, 5),
(39, 'Theo Gaillard', 'theo.g.31@free.fr', 'cfvvvvvvvvvvvvvvvvvv', 3, 0, '2020-07-06 11:23:03.675730', 1, 5),
(40, 'Theo Gaillard', 'theo.g.31@free.fr', 'cfvvvvvvvvvvvvvvvvvv', 3, 0, '2020-07-06 11:23:06.373679', 1, 5),
(41, 'Theo Gaillard', 'theo.g.31@free.fr', 'jjjjjjjjjjjjjjjjjjjjjjjj', 3, 0, '2020-07-06 11:25:21.625439', 1, 5),
(42, 'Theo Gaillard', 'theo.g.31@free.fr', 'Super bon site d\'assurance en ligne', 4, 0, '2020-07-08 08:14:40.416462', 1, 5);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `reviews_blacklist`
--
ALTER TABLE `reviews_blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `reviews_domainname`
--
ALTER TABLE `reviews_domainname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `reviews_iplist`
--
ALTER TABLE `reviews_iplist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `reviews_reviews`
--
ALTER TABLE `reviews_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
