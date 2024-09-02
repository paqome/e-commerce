-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 29 août 2023 à 10:30
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `admin_ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `admine`
--

CREATE TABLE `admine` (
  `id` int(11) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admine`
--

INSERT INTO `admine` (`id`, `roles`, `password`, `username`) VALUES
(1, '{\"role\": \"admin\"}', '123', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(4, 'Composants informatiques'),
(5, 'Gaming'),
(6, 'Périphériques'),
(7, 'Processeurs'),
(8, 'Cartes graphiques'),
(9, 'Souris gaming'),
(10, 'Claviers gaming'),
(11, 'Moniteurs'),
(12, 'Disques SSD'),
(13, 'Casques audio'),
(14, 'Imprimantes'),
(15, 'Webcams'),
(16, 'Réseaux'),
(17, 'Cartes mères'),
(18, 'Alimentations'),
(19, 'Boîtiers PC'),
(20, 'Refroidissement'),
(21, 'Mémoires RAM'),
(22, 'Haut-parleurs'),
(23, 'Écrans tactiles'),
(24, 'Consoles de jeux'),
(25, 'Manettes'),
(26, 'Ordinateurs portables'),
(27, 'Tablettes'),
(28, 'Smartphones'),
(29, 'Stations de travail'),
(30, 'Accessoires mobiles'),
(31, 'Câbles et connecteurs'),
(32, 'Logiciels'),
(33, 'Stockage externe'),
(34, 'Cartes son'),
(35, 'Lecteurs optiques');

-- --------------------------------------------------------

--
-- Structure de la table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `method` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `weigth_from` int(11) NOT NULL,
  `weight_to` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230727084116', '2023-07-27 08:42:26', 2457),
('DoctrineMigrations\\Version20230731094820', '2023-07-31 09:56:01', 220);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `image`, `product_id`) VALUES
(2, '/tmp/php3Oz2nb', NULL),
(3, '/tmp/phpJwVbn6', NULL),
(4, '/tmp/phpcCNWvv', NULL),
(5, '/tmp/php5rRnDF', NULL),
(6, '/tmp/phpshORNo', NULL),
(7, '/tmp/phpSVgGME', NULL),
(8, '/tmp/phpXjoieb', NULL),
(9, '/tmp/phpu7nh9Z', NULL),
(10, '53fbd583550680afe16bf24068f2d207.jpg', NULL),
(11, '1bddc3650cdfc4a21eb66d3951cc47b4.jpg', NULL),
(12, '6bc716fada507ef0e660561bb42e798d.jpg', NULL),
(13, 'cbabd02454a19b7410485515bd36a9b4.jpg', NULL),
(14, 'f560eff76519bb9daf20094ecfd1289c.jpg', NULL),
(15, 'e18c9328f69ff20d215f73e23ba74c6e.jpg', NULL),
(16, '53cad7f4f2e0f5972991075bf9e0073f.jpg', NULL),
(17, '383b2087f2e500d3544ffaf76fd4d669.jpg', NULL),
(18, '20308d037fb16b3f67b044877de860a9.jpg', NULL),
(19, '9fd4a394676d04bdb01ef147e2cca3c8.jpg', NULL),
(20, 'e3d1adf719c989d40f007b3b2d05f8a8.png', NULL),
(21, 'aa9c92af83c4daa2e4aaec36526490ef.jpg', NULL),
(22, '7b5963911592c84b56fbb26b70ec379a.jpg', NULL),
(23, 'd26bc034150e8e2cd5bb016b7958d26f.webp', 63),
(24, 'aabbc8efd388ffedaa2d6bc76589d4fc.webp', 64),
(25, 'fc1b868a4f5a25d4b4021da3c635d718.jpg', 65),
(26, '327774c0ae2ed16f14f2c07374f12ef3.jpg', 66),
(27, '61112640c522eb4ed0ce3bd35a782276.jpg', 67),
(28, '87fda3de9b1608a0f5697fb292e7b161.jpg', 68),
(29, '876c665a5efbc427876c70b192cb2e4f.jpg', 59),
(30, '95f51ac4848d09d6d5f3ed94d9c60afc.webp', 60),
(31, 'eb5d05fc511d0ced577884e9e28ecf49.jpg', 61),
(32, '9f54b7dfcda306868d56acc33d13b183.jpg', 62),
(33, 'f62ecc4514312255540d144d7fadc3c4.jpg', 69),
(34, '8ef21f9dbd0c7e3559c6277ee05e2b91.jpg', 70),
(35, '5d95102642ad480e0cfdfe289b6469b1.jpg', 71),
(36, '550524b8dd699b4d28fa4682d5194f3b.jpg', 72),
(37, 'a195cde02873245660dea11f46eecea4.webp', 73),
(38, 'aa20661f3914863d5aefbc06d672a4e5.jpg', 74),
(39, '407934446600f54a388914d6aa271bd9.jpg', 75),
(40, 'e8ced2a0c1521b992e42d01e0cd9701f.jpg', 76),
(41, 'a67716c26a3efbf2c1541531b13da130.jpg', 77),
(42, 'c5dd5d788f385226efa9edaac17f8e2c.jpg', 78),
(43, '1a7378ec54682a33c24f131a793e9431.jpg', 79),
(44, 'fa26d7f06f376b6ef786eb0ffdcc0a4f.jpg', 80),
(45, 'bf5c7910c3f99a0c37ab00a556aeb3df.webp', 81),
(46, '0037f569386f44826cd47bffe08afac7.jpg', 82),
(47, 'b2799bd27610274dccbd96a81b0bd821.jpg', 83),
(48, '0d6bc97bbf41c7c04e0d83b69ca17dc1.jpg', 84),
(49, 'ec1b9b3ad6d7695bd08434c58a1bc1f4.jpg', 85),
(50, '702d41c884d1653578736c83f5c51455.jpg', 86),
(51, '844a9e8cb3deb201b692a7c26d47c178.jpg', 87),
(52, '272b489e7705e8b6d1f4ac428f5dfe84.jpg', 88),
(53, 'cc0395b41cdb84cc0ca54cfbb1f5fa28.jpg', 89),
(54, 'bd32591f50b527a904c8679d40084e17.jpg', 90),
(55, 'd187819962c255e6f7176be2c4e99a7c.jpg', 91),
(56, 'b0b466fe11d62a0cd7f9692fd21d6e1f.jpg', 92),
(57, '7769fb99baedaa0bf719bc9b027c2791.png', 93),
(58, '40e4e09fbc88e41a416c0c66d7b5d536.jpg', 94),
(59, 'cbf09becb13a2cad1bf928b9b5646572.jpg', 95),
(60, '98ddfdd353fff2cd733b059fed4b9f90.jpg', 96),
(61, 'f4f2e27d3e30a20830d0edba8212b4ff.jpg', 97),
(62, 'b1f2e77dfd186ee73bb826e649650726.jpg', 98),
(63, 'c225aac5e9f9c7eeb8fd945455f0ef41.jpg', 99),
(64, '9b5583e9b99efd92533e31fb55a2cbb4.jpg', 100),
(65, '9d7cdd5d4d8d9b29cc2d70b4caa00198.jpg', 101),
(66, '3fb26bf20ccfb2245d6d8d665c948700.jpg', 102),
(67, 'dc30b45372cb0ca00367de370b875bfe.webp', 103),
(68, 'e15c17ae08ddfd3ea7ee8afab4193db8.webp', 104),
(69, '8cf145e45383a4dfb365fcca36eac94a.jpg', 105),
(70, 'd2070c015c19f13aab5a6c2fc9d543a6.jpg', 106),
(71, '9e8cac4036294e1f98dbf1bbaeefae1c.jpg', 107);

-- --------------------------------------------------------

--
-- Structure de la table `json_order`
--

CREATE TABLE `json_order` (
  `id` int(11) NOT NULL,
  `data` longtext NOT NULL COMMENT '(DC2Type:json)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `json_order`
--

INSERT INTO `json_order` (`id`, `data`) VALUES
(1, '{\"email\":\"truc@truc2.com\",\"password\":\"123\"}'),
(2, '{\"cardNumber\":\"166464848\",\"expiryDate\":\"10\\/12\",\"cvv\":\"164\",\"billingAddress\":\"3464678\"}'),
(3, '{\"cardNumber\":\"646\",\"expiryDate\":\"12\\/16\",\"cvv\":\"351\",\"billingAddress\":\"qdlmkmazokeoazme\",\"cartData\":[{\"id\":59,\"img\":\"http:\\/\\/localhost:3000\\/products\\/images\\/1bddc3650cdfc4a21eb66d3951cc47b4.jpg\",\"name\":\"SSD NVMe ultra rapide\",\"price\":199.99,\"quantity\":1,\"weight\":0},{\"id\":64,\"img\":\"\\/static\\/media\\/Kompozant.88ef89ef21aade856017.png\",\"name\":\"Consoles de jeux\",\"price\":399.99,\"quantity\":1,\"weight\":5},{\"id\":64,\"img\":\"\\/static\\/media\\/Kompozant.88ef89ef21aade856017.png\",\"name\":\"Consoles de jeux\",\"price\":399.99,\"quantity\":1,\"weight\":5}]}'),
(4, '{\"cardNumber\":\"344\",\"expiryDate\":\"415\",\"cvv\":\"515\",\"billingAddress\":\"qdsdqsdqsd\",\"cartData\":[{\"id\":64,\"img\":\"\\/static\\/media\\/placeholder.bd1328375aa2a124c22b.png\",\"name\":\"Consoles de jeux\",\"price\":399.99,\"quantity\":1,\"weight\":5}]}'),
(5, '{\"cardNumber\":\"555\",\"expiryDate\":\"68\\/15\",\"cvv\":\"665\",\"billingAddress\":\"qodkqodkqpdkoqsdpko\",\"cartData\":[{\"id\":75,\"img\":\"http:\\/\\/localhost:3000\\/products\\/images\\/407934446600f54a388914d6aa271bd9.jpg\",\"name\":\"Imprimante laser\",\"price\":199.99,\"quantity\":1,\"weight\":5},{\"id\":90,\"img\":\"http:\\/\\/localhost:3000\\/products\\/images\\/bd32591f50b527a904c8679d40084e17.jpg\",\"name\":\"Imprimante photo\",\"price\":149.99,\"quantity\":1,\"weight\":3}]}');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `price` float NOT NULL,
  `features` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `weight` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `category_id`, `sub_category_id`, `price`, `features`, `views`, `stock`, `status`, `weight`, `discount`) VALUES
(58, 'Souris de jeu impressionnante', 'Découvrez la précision du jeu avec cette souris de jeu avancée.', 13, 13, 49.99, 'DPI élevé et boutons personnalisables', 128, 25, 1, 0, 5),
(59, 'SSD NVMe ultra rapide', 'Améliorez les performances de votre système avec ce SSD NVMe ultra rapide.', 12, 20, 199.99, 'Capacité de stockage de 1 To', 532, 12, 1, 0, 0),
(60, 'Carte mère gaming', 'Construisez une machine de jeu puissante avec cette carte mère performante.', 17, 29, 249.99, 'Prise en charge de l\'overclocking et de plusieurs GPU', 180, 9, 1, 1, 0),
(61, 'Casque de jeu avec son surround', 'Plongez dans l\'action avec ce casque de jeu immersif.', 13, 21, 119.99, 'Son surround virtuel 7.1 et coussinets en mousse à mémoire de forme', 215, 13, 1, 1, 0),
(62, 'Routeur Wi-Fi haute vitesse', 'Profitez d\'une connectivité Internet rapide avec ce routeur Wi-Fi avancé.', 16, 27, 149.99, 'Vitesses de téléchargement élevées et ports Gigabit Ethernet', 320, 8, 1, 1, 0),
(63, 'Moniteur tactile', 'Expérimentez l\'interaction tactile avec ce moniteur élégant.', 23, 41, 289.99, 'Technologie tactile capacitive et résolution Full HD', 174, 10, 1, 4, 0),
(64, 'Consoles de jeux', 'Plongez-vous dans le divertissement avec ces consoles de jeux de dernière génération.', 24, 43, 399.99, 'Graphismes haute définition et large bibliothèque de jeux', 407, 15, 1, 5, 0),
(65, 'Ordinateur portable élégant', 'Travaillez et jouez en déplacement avec cet ordinateur portable élégant.', 26, 47, 999.99, 'Écran Full HD et clavier rétroéclairé', 235, 7, 1, 3, 0),
(66, 'Tablette Android polyvalente', 'Restez productif avec cette tablette Android polyvalente.', 27, 49, 329.99, 'Écran tactile HD et compatibilité avec les applications Android', 170, 9, 1, 1, 0),
(67, 'Écouteurs intra-auriculaires de sport', 'Profitez de votre musique lors de vos séances d\'entraînement avec ces écouteurs confortables.', 13, 22, 59.99, 'Résistant à la transpiration et qualité audio supérieure', 291, 13, 1, 0, 0),
(68, 'Haut-parleurs Bluetooth', 'Diffusez votre musique préférée sans fil avec ces haut-parleurs Bluetooth.', 22, 39, 79.99, 'Portée sans fil de 30 mètres et batterie rechargeable', 153, 11, 1, 1, 0),
(69, 'Casque de réalité virtuelle', 'Explorez des mondes virtuels immersifs avec ce casque de réalité virtuelle.', 11, 19, 349.99, 'Capteurs de suivi et champs de vision étendu', 94, 6, 1, 1, 0),
(70, 'Smartphone iOS', 'Découvrez la puissance et la simplicité avec ce smartphone iOS.', 28, 52, 849.99, 'Processeur A14 Bionic et écran Retina', 322, 12, 1, 0, 0),
(71, 'Disque dur externe portable', 'Emportez vos fichiers partout avec ce disque dur externe portable.', 6, 11, 89.99, 'Capacité de 2 To et connectivité USB 3.0', 281, 19, 1, 0, 0),
(72, 'Processeur AMD Ryzen', 'Obtenez des performances exceptionnelles avec ce processeur AMD Ryzen.', 7, 10, 299.99, 'Fréquence d\'horloge élevée et architecture multicœur', 163, 8, 1, 0, 0),
(73, 'Carte graphique AMD Radeon', 'Profitez de graphismes époustouflants avec cette carte graphique AMD Radeon.', 8, 12, 549.99, 'GDDR6 haute vitesse et compatibilité VR', 211, 0, 1, 2, 0),
(74, 'Moniteur UltraWide', 'Profitez d\'un écran large et immersif avec ce moniteur UltraWide.', 11, 18, 699.99, 'Résolution 21:9 et technologie IPS', 149, 5, 1, 4, 0),
(75, 'Imprimante laser', 'Imprimez rapidement et efficacement avec cette imprimante laser.', 14, 24, 199.99, 'Impression recto-verso automatique et connectivité réseau', 7355555, 9, 1, 5, 0),
(76, 'Clé USB haute vitesse', 'Transférez rapidement vos fichiers avec cette clé USB haute vitesse.', 33, 61, 24.99, 'Capacité de 128 Go et connecteur rétractable', 281, 23, 1, 0, 0),
(77, 'Enceintes PC compactes', 'Profitez d\'un son de qualité avec ces enceintes PC compactes.', 22, 40, 39.99, 'Design élégant et alimentation USB', 101, 14, 1, 0, 0),
(78, 'Moniteur de dessin graphique', 'Améliorez votre créativité avec ce moniteur de dessin graphique interactif.', 23, 42, 799.99, 'Stylo sensible à la pression et affichage colorimétrique', 98, 7, 1, 3, 0),
(79, 'Console de jeu rétro', 'Revivez vos jeux rétro préférés avec cette console de jeu nostalgique.', 24, 43, 149.99, 'Des centaines de jeux classiques intégrés', 315, 10, 1, 3, 0),
(80, 'Contrôleur de jeu sans fil', 'Profitez d\'une expérience de jeu sans fil avec ce contrôleur de jeu polyvalent.', 25, 45, 59.99, 'Connectivité Bluetooth et batterie rechargeable', 194, 18, 1, 0, 0),
(81, 'Ordinateur portable ultrabook', 'Restez productif en déplacement avec cet ordinateur portable ultrabook.', 26, 46, 1299.99, 'Design mince et léger et autonomie longue durée', 143, 8, 1, 3, 0),
(82, 'Tablette iOS', 'Découvrez la polyvalence et la convivialité avec cette tablette iOS.', 27, 50, 499.99, 'Processeur A14 Bionic et écran Retina', 265, 11, 1, 1, 0),
(83, 'Écouteurs antibruit', 'Profitez de votre musique sans interruption avec ces écouteurs antibruit.', 13, 23, 149.99, 'Annulation active du bruit et mode Transparence', 172, 6, 1, 0, 0),
(84, 'Ensemble clavier et souris sans fil', 'Libérez votre espace de travail avec cet ensemble clavier et souris sans fil.', 6, 10, 79.99, 'Connexion sans fil fiable et longue durée de vie de la batterie', 317, 15, 1, 1, 0),
(85, 'Imprimante tout-en-un', 'Optimisez votre productivité avec cette imprimante tout-en-un polyvalente.', 14, 24, 189.99, 'Impression, numérisation et copie, connexion Wi-Fi', 120, 7, 1, 5, 0),
(86, 'Clé USB sécurisée', 'Protégez vos données avec cette clé USB sécurisée et cryptée.', 33, 61, 39.99, 'Protection par mot de passe et matériel de cryptage', 92, 12, 1, 0, 0),
(87, 'Processeur Intel Core', 'Obtenez des performances exceptionnelles avec ce processeur Intel Core.', 7, 9, 329.99, 'Fréquence d\'horloge élevée et technologie Turbo Boost', 173, 10, 1, 0, 0),
(88, 'Carte graphique NVIDIA GeForce', 'Plongez-vous dans le jeu avec cette carte graphique NVIDIA GeForce.', 8, 11, 699.99, 'GDDR6 haute vitesse et compatibilité G-Sync', 182, 5, 1, 2, 0),
(89, 'Moniteur de jeu incurvé', 'Plongez dans l\'action avec ce moniteur de jeu incurvé.', 11, 18, 599.99, 'Taux de rafraîchissement élevé et courbure immersive', 193, 7, 1, 4, 0),
(90, 'Imprimante photo', 'Imprimez vos souvenirs avec cette imprimante photo de qualité.', 14, 23, 149.99, 'Impression sans marge et connectivité sans fil', 78, 8, 1, 3, 0),
(91, 'Batterie externe haute capacité', 'Rechargez vos appareils en déplacement avec cette batterie externe haute capacité.', 30, 56, 49.99, 'Capacité de 20000 mAh et ports USB multiples', 229, 16, 1, 1, 0),
(92, 'Câble HDMI 4K', 'Profitez d\'une qualité d\'image exceptionnelle avec ce câble HDMI 4K.', 31, 57, 19.99, 'Prise en charge de la résolution 4K UHD et connecteurs plaqués or', 186, 20, 1, 0, 0),
(93, 'Suite logicielle de montage vidéo', 'Créez des vidéos époustouflantes avec cette suite logicielle de montage vidéo.', 32, 60, 79.99, 'Effets spéciaux et outils de montage avancés', 134, 14, 1, 0, 0),
(94, 'Disque dur externe portable SSD', 'Transférez rapidement vos fichiers avec ce disque dur externe SSD.', 33, 62, 109.99, 'Capacité de 500 Go et vitesse de transfert élevée', 271, 12, 1, 0, 0),
(95, 'Carte son externe', 'Améliorez la qualité audio avec cette carte son externe USB.', 34, 63, 34.99, 'Sorties audio 7.1 et compatibilité Plug-and-Play', 198, 18, 1, 0, 0),
(96, 'Graveur DVD externe', 'Gravez des CD et DVD avec facilité grâce à ce graveur DVD externe.', 35, 65, 29.99, 'Interface USB et design portable', 81, 15, 1, 0, 0),
(97, 'Enceintes 2.1 avec caisson de basses', 'Profitez d\'un son puissant avec ces enceintes 2.1 et leur caisson de basses.', 22, 40, 99.99, 'Puissance de sortie élevée et contrôle des basses', 161, 9, 1, 2, 0),
(98, 'Moniteur de studio', 'Optimisez votre production musicale avec ce moniteur de studio professionnel.', 22, 38, 249.99, 'Réponse en fréquence équilibrée et conception robuste', 87, 6, 1, 5, 0),
(99, 'Clavier MIDI', 'Créez de la musique avec facilité grâce à ce clavier MIDI polyvalent.', 22, 37, 169.99, 'Touches sensibles à la vélocité et boutons programmables', 105, 7, 1, 2, 0),
(100, 'Microphone USB à condensateur', 'Enregistrez un son de qualité studio avec ce microphone USB à condensateur.', 22, 36, 79.99, 'Prise casque intégrée et trépied réglable', 142, 11, 1, 1, 0),
(101, 'Moniteur de fréquence cardiaque', 'Surveillez votre santé avec ce moniteur de fréquence cardiaque avancé.', 30, 53, 39.99, 'Affichage OLED et suivi continu de la fréquence cardiaque', 116, 9, 1, 0, 0),
(102, 'Souris verticale ergonomique', 'Réduisez la fatigue et les tensions avec cette souris verticale ergonomique.', 5, 13, 39.99, 'Design ergonomique et sensibilité réglable', 164, 16, 1, 0, 0),
(103, 'Disque dur interne 3,5 pouces', 'Stockez vos données avec ce disque dur interne 3,5 pouces fiable.', 6, 11, 79.99, 'Capacité de 4 To et interface SATA III', 191, 13, 1, 1, 0),
(104, 'Carte mère Mini-ITX', 'Construisez un système compact avec cette carte mère Mini-ITX.', 17, 29, 149.99, 'Prise en charge des processeurs Ryzen et Wi-Fi intégré', 84, 8, 1, 1, 0),
(105, 'Alimentation modulaire 80+ Or', 'Obtenez une alimentation fiable et efficace avec cette alimentation modulaire 80+ Or.', 18, 31, 129.99, 'Certification 80+ Or et câbles modulaires', 131, 10, 1, 1, 0),
(106, 'Boîtier PC avec fenêtre', 'Montrez vos composants avec ce boîtier PC élégant et fenêtré.', 19, 33, 89.99, 'Panneau latéral en verre trempé et gestion des câbles', 174, 7, 1, 6, 0),
(107, 'Ventilateur de processeur RGB', 'Refroidissez efficacement votre processeur avec ce ventilateur RGB.', 20, 35, 49.99, 'Éclairage RGB personnalisable et faible niveau de bruit', 213, 9, 1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `sub_category`
--

INSERT INTO `sub_category` (`id`, `name`, `category_id`) VALUES
(5, 'Gaming Mice', 5),
(6, 'Gaming Keyboards', 5),
(7, 'External Hard Drives', 6),
(8, 'USB Cables', 6),
(9, 'Intel Processors', 7),
(10, 'AMD Processors', 7),
(11, 'Nvidia Graphics Cards', 8),
(12, 'AMD Graphics Cards', 8),
(13, 'Wired Gaming Mice', 9),
(14, 'Wireless Gaming Mice', 9),
(15, 'Mechanical Gaming Keyboards', 10),
(16, 'RGB Gaming Keyboards', 10),
(17, 'Gaming Monitors', 11),
(18, 'UltraWide Monitors', 11),
(19, 'SATA SSDs', 12),
(20, 'NVMe SSDs', 12),
(21, 'Over-Ear Headphones', 13),
(22, 'In-Ear Headphones', 13),
(23, 'Inkjet Printers', 14),
(24, 'Laser Printers', 14),
(25, 'Full HD Webcams', 15),
(26, '4K Webcams', 15),
(27, 'Routers', 16),
(28, 'Switches', 16),
(29, 'ATX Motherboards', 17),
(30, 'Micro-ATX Motherboards', 17),
(31, '650W Power Supplies', 18),
(32, '750W Power Supplies', 18),
(33, 'Mid-Tower Cases', 19),
(34, 'Full-Tower Cases', 19),
(35, 'Air Coolers', 20),
(36, 'Liquid Coolers', 20),
(37, 'DDR4 RAM', 21),
(38, 'DDR5 RAM', 21),
(39, '2.0 Speaker Systems', 22),
(40, '2.1 Speaker Systems', 22),
(41, 'Touchscreen Monitors', 23),
(42, 'Pen Display Monitors', 23),
(43, 'PlayStation Consoles', 24),
(44, 'Xbox Consoles', 24),
(45, 'PlayStation Controllers', 25),
(46, 'Xbox Controllers', 25),
(47, 'Ultrabook Laptops', 26),
(48, 'Gaming Laptops', 26),
(49, 'Android Tablets', 27),
(50, 'iOS Tablets', 27),
(51, 'Android Smartphones', 28),
(52, 'iOS Smartphones', 28),
(53, 'Desktop Workstations', 29),
(54, 'Mobile Workstations', 29),
(55, 'Phone Cases', 30),
(56, 'Power Banks', 30),
(57, 'HDMI Cables', 31),
(58, 'USB-C Cables', 31),
(59, 'Antivirus Software', 32),
(60, 'Video Editing Software', 32),
(61, 'Portable Hard Drives', 33),
(62, 'External SSDs', 33),
(63, 'Internal Sound Cards', 34),
(64, 'USB Sound Adapters', 34),
(65, 'DVD Burners', 35),
(66, 'Blu-ray Drives', 35);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `birthdate` date DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `birthdate`, `phone`, `city`, `status`, `registration_date`, `country`) VALUES
(1, 'n', 'n', 'n@n', 'nnnn', NULL, NULL, NULL, 0, '2023-07-27 12:06:59', ''),
(2, 'John', 'Doe', 'john.doe@example.com', '$2y$13$4gooBbnDUfVZ8eGTxoOoC.s6uLI5zQDQ4X/VyiFHTznmaYaHKi9UG', NULL, NULL, NULL, 0, '2023-07-27 12:08:40', ''),
(4, 'John', 'Doe', 'john.do@example.com', '$2y$13$SzSgL3DweNVLeJhfiQxmiuSkuu6.05.8be4cLqndgg82olyrzhrrm', NULL, NULL, NULL, 0, '2023-07-28 14:53:20', ''),
(5, 'John', 'Doe', 'john.de@example.com', '$2y$13$eVW/qYGIxWm6ila/stnxDOJb46tWXjJT49b9h2wEtKvD5U6Or35qO', NULL, NULL, NULL, 0, '2023-07-28 15:19:29', ''),
(6, 'aaa', 'aaa', 'aaa@example.com', '$2y$13$w3DCRifswhX9LvnUpwlPRuwZjDIKe2/EROHZtE1BrnWzOKBbkgnYS', NULL, NULL, NULL, 0, '2023-07-31 10:04:46', ''),
(7, 'nn', 'nn', 'john.e@example.com', '$2y$13$LrP94K8HEywfHn2rs3drue8evztTaxN0YJ/z9iCaj0BY/7TgIDGeS', NULL, NULL, NULL, 0, '2023-07-31 10:10:32', ''),
(8, 'b', 'b', 'b@example.com', '$2y$13$v82/X6Sb5yEcIKNNWy7JfOL2Yh4JonP2McIlFFwPNrwp2rOjdSsSu', NULL, NULL, NULL, 0, '2023-07-31 10:11:57', ''),
(9, 'a', 'a', 'cc@example.com', '$2y$13$57GaJ20C4uSR6mHSqDN6O.UYHoxM3x8AGUU26oa/8mxH1GvSQvcqa', NULL, NULL, NULL, 0, '2023-07-31 10:13:04', ''),
(10, 'cc', 'cc', 'c@example.com', '$2y$13$QaQOWFsnQPDGTryY4puRS.v9QqrCwSxFK/ZXq2wuAoSsSQZmr9rgO', NULL, NULL, NULL, 0, '2023-07-31 10:15:03', ''),
(11, 'maya', 'benziada', 'maya@example.com', '$2y$13$sZc1DquzZCIU70AIyby3geWwX8nZcvPwsYNLsY6x/pnTph1lMtW7e', NULL, NULL, NULL, 0, '2023-07-31 10:16:57', ''),
(12, 'lll', 'lll', 'lll@example.com', '$2y$13$HHO8/pHBP5WRz/VmRLUAK.qYzABr3awnHcS7rB1vZFIn2YI6VU1Z6', NULL, NULL, NULL, 0, '2023-07-31 10:20:07', ''),
(13, 'ss', 'ss', 'john.ss@example.com', '$2y$13$j7OTbeGcKIjDVaaR.pUeP.CmWDxv4CsllnWbKkbCNkcaqHL1UwmBi', NULL, NULL, NULL, 0, '2023-07-31 10:20:57', ''),
(14, 'cc', 'cc', 'm@example.com', '$2y$13$TpLXtJHhMRt2qLfq3plmTu4OB2GNBCLvYduvxfznH32S91DaodZgu', '2023-07-18', 0, NULL, 0, '2023-07-31 10:28:40', ''),
(15, 'michel', 'jjohny', 'micheljohnyyy@gcom.dot', 'sqdqsdqsdqdqdsqsdq', '2021-03-03', 2147483647, 'mdr', 1, '2023-08-01 10:45:00', ''),
(16, 'qsdlqs,d', 'pùkeape', 'qsùpkdqsd@qsdqsdqs.com', 'dpaeaze', '2022-02-02', 646444, 'aazdad', 0, '2023-08-01 10:56:00', ''),
(17, 'Sofiab', 'deklnkle', 'lkrl@ejnkef.col', '$2y$13$GlrzvSXw0IuLvWlmx8r0aOxjdXWZrS30H/ydX6hhoR3Vyrgr6qoSO', '2023-08-03', 89889898, NULL, 0, '2023-08-01 10:58:24', ''),
(18, 'Lucas', 'EMILE', 'lucas.emile@epitech.eu', '$2y$13$IjR3UvD0PdoUYZ13Z0yN.ebHL/OiyG6YFjQjp8m9G8iZEyh.FJmVu', '2001-09-27', 695929107, NULL, 0, '2023-08-01 11:45:38', ''),
(19, 'truc', 'truc', 'truc@truc.com', '$2y$13$obcd1symjI9ndvnixpQptepWrLW8m4x7i/QFADpFHG5TJGZImL222', '1990-12-12', 212354125, NULL, 0, '2023-08-07 08:33:47', ''),
(20, 'truc', 'truc', 'truc@truc2.com', '$2y$13$DLmShUCalz7OdzRIJ8gYNOcmsCQ6hwr.8yYOg7Sg7SLhAdN2mnh5W', '1000-08-10', 787190011, NULL, 0, '2023-08-07 09:41:04', '');

-- --------------------------------------------------------

--
-- Structure de la table `user_adress`
--

CREATE TABLE `user_adress` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` int(11) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_bag`
--

CREATE TABLE `user_bag` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_payment_information`
--

CREATE TABLE `user_payment_information` (
  `user_id` int(11) DEFAULT NULL,
  `card_number` int(255) NOT NULL,
  `expiration_date` date NOT NULL,
  `security_code` int(11) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_session`
--

CREATE TABLE `user_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user_session`
--

INSERT INTO `user_session` (`id`, `user_id`, `session_token`) VALUES
(1, 14, '3849p36q820h4kq7484idse58b'),
(2, 20, 'nla92a28sgvbtvle79dhmu4fvf'),
(3, 19, 'mki1ko462b4tej7vgukto7t6fm');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admine`
--
ALTER TABLE `admine`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5634A05EF85E0677` (`username`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `json_order`
--
ALTER TABLE `json_order`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `sub_category_id` (`sub_category_id`);

--
-- Index pour la table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BCE3F79812469DE2` (`category_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_adress`
--
ALTER TABLE `user_adress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `user_bag`
--
ALTER TABLE `user_bag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `user_payment_information`
--
ALTER TABLE `user_payment_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `user_session`
--
ALTER TABLE `user_session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8849CBDEA76ED395` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admine`
--
ALTER TABLE `admine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT pour la table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `json_order`
--
ALTER TABLE `json_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT pour la table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `user_adress`
--
ALTER TABLE `user_adress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_bag`
--
ALTER TABLE `user_bag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_payment_information`
--
ALTER TABLE `user_payment_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_session`
--
ALTER TABLE `user_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`);

--
-- Contraintes pour la table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `sub_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `user_adress`
--
ALTER TABLE `user_adress`
  ADD CONSTRAINT `user_adress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user_bag`
--
ALTER TABLE `user_bag`
  ADD CONSTRAINT `user_bag_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `user_bag_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user_payment_information`
--
ALTER TABLE `user_payment_information`
  ADD CONSTRAINT `user_payment_information_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user_session`
--
ALTER TABLE `user_session`
  ADD CONSTRAINT `user_session_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
