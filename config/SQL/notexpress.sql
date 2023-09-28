-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le : jeu. 28 sep. 2023 à 22:17
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `notexpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_64C19C1A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `user_id`) VALUES
(11, 'Travail', 201),
(12, 'Bricolage', 251),
(13, 'Achats', 280),
(14, 'Administratif', 290),
(15, 'Formation', 263),
(16, 'Entretien', 201);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230928081911', '2023-09-28 08:22:00', 100),
('DoctrineMigrations\\Version20230928090105', '2023-09-28 09:01:15', 252),
('DoctrineMigrations\\Version20230928124634', '2023-09-28 12:46:55', 185);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CFBDFA14A76ED395` (`user_id`),
  KEY `IDX_CFBDFA1412469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id`, `title`, `content`, `user_id`, `category_id`) VALUES
(201, 'Nulla sapiente.', 'Eligendi dolor molestiae quaerat vero ex autem architecto et laboriosam reiciendis aspernatur doloremque non.', 272, 11),
(202, 'Fugit et.', 'Harum saepe et corporis aut itaque quis reiciendis.', 269, 13),
(203, 'Beatae non ex.', 'Et enim repellat eaque beatae voluptatibus eaque repellendus voluptas ut architecto.', 245, 14),
(204, 'Ut dolorum.', 'Voluptas excepturi enim consequuntur autem iste exercitationem voluptatum ullam sit.', 235, 12),
(205, 'Autem porro.', 'Et mollitia dolores molestias eos non quidem autem quos.', 290, 13),
(206, 'Non error sunt.', 'Neque quis aperiam quod perferendis officia ad eum sint.', 217, 14),
(207, 'Nulla vel.', 'Sit rem porro consequuntur dignissimos repudiandae veniam voluptatem in omnis deserunt aut laboriosam.', 219, 12),
(208, 'Et quia.', 'Suscipit sed est excepturi dolores autem rem dolorum fuga odio.', 287, 13),
(209, 'Et qui asperiores.', 'Temporibus laboriosam neque accusantium enim nam non delectus quaerat aut iusto.', 223, 13),
(210, 'Tenetur est.', 'Quia dolore optio possimus amet qui molestias nulla expedita impedit modi.', 207, 12),
(211, 'Natus doloribus.', 'Exercitationem excepturi et rerum quidem quia nostrum quia dolor soluta.', 285, 12),
(212, 'Unde qui sit.', 'Autem natus quibusdam consequatur quo qui harum quia recusandae totam impedit earum commodi.', 250, 12),
(213, 'Voluptates aut ad.', 'Eos rerum unde impedit iure ut et ea sit possimus suscipit ut eaque.', 209, 15),
(214, 'Aperiam officiis odio.', 'Voluptas quam facilis voluptate consequatur voluptatum est magnam harum delectus necessitatibus qui quas.', 243, 11),
(215, 'Veniam minima odio.', 'Et ratione in odio ratione esse perspiciatis sapiente labore expedita aliquam nobis inventore impedit omnis.', 204, 15),
(216, 'Est veniam.', 'Corporis assumenda totam id sapiente et vitae at laudantium qui repellendus illum quia sed.', 273, 11),
(217, 'Consequatur maiores earum.', 'Ullam ea ut qui dolorum illo hic nihil libero iste.', 222, 15),
(218, 'In eum.', 'Modi sit ut repellendus omnis eum consequatur est ipsam fuga et.', 290, 12),
(219, 'Adipisci omnis dolorem.', 'A dolores quasi autem animi ut iure.', 232, 11),
(220, 'Architecto qui.', 'Et error voluptas voluptas numquam qui reiciendis error perferendis.', 264, 15),
(221, 'Aut laborum.', 'Ut voluptatem asperiores sed autem ad temporibus et animi ducimus quidem repellendus quos.', 271, 15),
(222, 'Odio quia.', 'Dolores itaque doloremque soluta nesciunt odio voluptas perferendis quod debitis minima ea vel.', 299, 13),
(223, 'Vel inventore.', 'Ullam vitae ullam deserunt et corporis dolorum.', 288, 14),
(224, 'Vel rem.', 'Consequatur atque quas nisi numquam non aliquam.', 287, 11),
(225, 'Praesentium labore nulla.', 'Id officiis omnis et voluptatem quibusdam voluptatibus.', 288, 15),
(226, 'Aliquid non.', 'Incidunt repellat rem voluptas nisi quo quaerat a suscipit exercitationem quia sunt quisquam.', 212, 11),
(227, 'Dolor eos.', 'Accusantium commodi qui porro provident et quas quasi facilis nisi delectus velit enim voluptatum.', 267, 11),
(228, 'Et molestiae.', 'Deleniti sunt nulla sunt dolorem fuga aspernatur tempore molestias quidem impedit.', 251, 12),
(229, 'Ea est.', 'Molestias quia dolore voluptate placeat commodi pariatur sunt nesciunt nisi numquam.', 206, 13),
(230, 'Asperiores suscipit.', 'Nesciunt doloremque tempore qui et modi ratione consequatur quia.', 283, 14),
(231, 'Temporibus itaque vel.', 'Aperiam dolore ipsam nemo consequuntur rerum consequatur nulla voluptatum veniam animi.', 265, 11),
(232, 'Sapiente et.', 'Beatae iste cupiditate sint aspernatur sed suscipit laudantium et aut.', 216, 12),
(233, 'Eos nulla.', 'Qui velit mollitia voluptas eum sapiente impedit qui.', 242, 12),
(234, 'Velit aut aspernatur.', 'Ut quaerat aliquam assumenda ut dicta et tenetur.', 236, 12),
(235, 'Non omnis.', 'Quasi et temporibus aperiam odio inventore esse necessitatibus consequuntur iusto eius est aspernatur.', 250, 15),
(236, 'Voluptate dolorem.', 'Accusamus ullam fugit fugit quidem similique aperiam sint aut molestiae alias voluptas.', 213, 15),
(237, 'Rem ut.', 'Reiciendis est quod dolores inventore quis iste vero eos eos.', 287, 12),
(238, 'Libero tenetur.', 'Aliquam minus ut accusamus hic aut voluptas maxime enim reprehenderit provident.', 228, 12),
(239, 'Voluptas aut consequatur.', 'Suscipit eaque rerum sapiente distinctio non vel quo cum id.', 217, 11),
(240, 'Atque unde soluta.', 'Dolorem sunt beatae a qui sint libero asperiores.', 283, 12),
(241, 'Corrupti quo.', 'Rerum est minus laboriosam et ut id vitae eligendi quos sed.', 248, 11),
(242, 'Nemo necessitatibus incidunt.', 'Quibusdam ut alias consequatur ea est qui quasi provident omnis molestiae aut qui.', 230, 11),
(243, 'Dolor sed itaque.', 'Quidem ut ratione expedita quae consequatur molestias optio aut et occaecati aut quod.', 212, 12),
(244, 'Placeat et in.', 'Eum accusantium doloribus recusandae ut nisi a perspiciatis.', 282, 12),
(245, 'Quis iure ullam.', 'Minima quia sed consequatur omnis magnam sed qui neque dolor soluta.', 224, 11),
(246, 'Labore laborum impedit.', 'Aut quis dolor rerum eum rerum qui laboriosam et.', 210, 15),
(247, 'Eaque accusantium sed.', 'Non non ullam omnis reiciendis perspiciatis tempora magni nihil.', 285, 12),
(248, 'Aliquid quaerat.', 'Molestiae nisi facere quod rem ut occaecati reiciendis sapiente architecto omnis dignissimos iste.', 231, 15),
(249, 'In sed ex.', 'Sunt esse modi omnis eligendi repellendus magnam omnis et officia officiis.', 213, 12),
(250, 'Quasi sit.', 'Sunt sunt error porro explicabo nulla qui at in tempore dolore.', 234, 14),
(251, 'Provident a ipsum.', 'Facilis incidunt labore temporibus omnis est quibusdam.', 270, 12),
(252, 'Sint vel.', 'Sint quo vitae quo iste doloribus aut cupiditate veritatis provident quae libero sit atque.', 283, 12),
(253, 'Est error.', 'Adipisci eos occaecati maxime enim qui qui dolorem nesciunt dolorem reiciendis.', 239, 12),
(254, 'Aperiam deleniti.', 'Natus quo veniam sint illum tempora quas possimus perspiciatis aliquid voluptatem labore.', 264, 12),
(255, 'Ipsam delectus.', 'Expedita beatae adipisci quos esse nihil laudantium eum eum minus.', 267, 14),
(256, 'At nobis odit.', 'Et dolor qui eius necessitatibus enim voluptatum ad esse quis sit.', 270, 14),
(257, 'Molestiae sequi quia.', 'Ipsam ipsum necessitatibus minima dolorem ad soluta beatae.', 284, 15),
(258, 'Facere possimus dolor.', 'Laboriosam rerum modi rem odit commodi ullam consequatur.', 227, 15),
(259, 'Et delectus saepe.', 'Suscipit enim voluptatem harum nihil explicabo sit autem fugit temporibus similique reprehenderit sed.', 262, 11),
(260, 'Sed voluptatem voluptate.', 'Porro eligendi dolorum tempore modi maxime id eos maxime perspiciatis corrupti consequatur fugiat.', 210, 15),
(261, 'Et quae.', 'Ut non dolore omnis ratione minima iusto ipsa tenetur id maxime iure quo.', 242, 14),
(262, 'Ut ducimus.', 'Ut rerum nesciunt dolorum ad sequi nam dignissimos magni et aliquid autem.', 292, 12),
(263, 'Qui excepturi architecto.', 'Tempore illo et et eum qui voluptas.', 225, 15),
(264, 'Et id perferendis.', 'Esse assumenda necessitatibus molestiae aut molestiae aut quis et.', 201, 14),
(265, 'Quos asperiores.', 'Et ipsa deleniti vel quo iure ut.', 288, 15),
(266, 'Debitis et.', 'Ea quaerat sunt laudantium minus libero officiis eveniet.', 204, 13),
(267, 'Illo ut.', 'Enim quos sint vel aut itaque magni nemo unde.', 220, 11),
(268, 'Dolore non rerum.', 'Corporis non expedita fugit dolorem quia ut ab et neque.', 264, 12),
(269, 'Ea quia.', 'Voluptas temporibus non sunt recusandae ad autem pariatur non rerum mollitia.', 239, 11),
(270, 'Repudiandae minus.', 'Dolor est saepe reprehenderit a et sed minima voluptatem facere temporibus.', 206, 14),
(271, 'Unde sunt velit.', 'Non ipsa asperiores dolorum ea consequuntur dignissimos sit.', 274, 12),
(272, 'Tempora in a.', 'Et accusamus dicta eum eius in placeat amet voluptas veritatis explicabo sequi.', 210, 11),
(273, 'Adipisci quaerat.', 'Velit nam quo soluta voluptatem illo voluptatem eius.', 201, 13),
(274, 'Vitae ab.', 'Neque distinctio ab corrupti consequatur aut quisquam optio a doloremque.', 214, 12),
(275, 'Soluta voluptatem.', 'Ea praesentium deleniti minus beatae quia ut repudiandae aut omnis officia maxime.', 274, 14),
(276, 'Magni accusamus enim.', 'Consectetur voluptatem iste ea corporis et dolor qui deleniti cumque quas.', 209, 13),
(277, 'Sit doloremque distinctio.', 'Nam dolor ut et unde beatae nemo.', 204, 13),
(278, 'Qui sapiente quo.', 'Voluptas debitis voluptas dolores iste deserunt non.', 243, 12),
(279, 'Culpa voluptas similique.', 'Sint ut sunt perspiciatis recusandae praesentium repellat reprehenderit quod.', 296, 11),
(280, 'Iure similique quae.', 'Eveniet porro eos illum ad qui id molestias at sit cumque dolor sapiente.', 273, 14),
(281, 'Nemo temporibus aut.', 'Exercitationem quaerat est facilis itaque eum officia adipisci repellendus est occaecati.', 283, 15),
(282, 'Molestiae in harum.', 'Atque quo quae similique est nostrum aut voluptatem.', 224, 12),
(283, 'Fuga molestias.', 'Sequi ipsum dolor et corrupti deleniti dolores fugiat doloremque quaerat quia at expedita.', 234, 13),
(284, 'Assumenda ea praesentium.', 'Ratione pariatur voluptatum dolorem eum autem qui est quia sunt.', 210, 14),
(285, 'Praesentium omnis voluptatem.', 'Ratione adipisci impedit est consequatur temporibus necessitatibus qui et maxime molestiae ducimus sunt qui.', 220, 14),
(286, 'Maiores deserunt voluptates.', 'Et omnis a aut rerum temporibus ipsa natus ducimus consequatur blanditiis.', 209, 11),
(287, 'Quasi qui nulla.', 'Quia maxime qui error occaecati quis praesentium quis eos.', 208, 15),
(288, 'Fugiat similique.', 'Magni alias quas non temporibus eius quia aut tenetur temporibus nulla hic et vel.', 298, 15),
(289, 'Quae suscipit.', 'Ex et quia voluptas totam quo eligendi soluta.', 242, 12),
(290, 'Dolores molestiae.', 'Excepturi similique iure alias explicabo qui eaque dolorem.', 206, 13),
(291, 'Aliquam quam.', 'Deleniti atque nulla deleniti pariatur voluptas dolore quam nemo voluptatem assumenda saepe.', 293, 13),
(292, 'Est eos mollitia.', 'Tenetur magnam eius nobis libero nam quia nulla ad dolores officiis odio sed sed.', 243, 15),
(293, 'Saepe iusto.', 'Ut laudantium in qui molestias omnis facere et minima.', 277, 15),
(294, 'Illum aut aperiam.', 'Nobis aut nemo recusandae non quod maiores minima minima.', 223, 11),
(295, 'Non dolor.', 'Quasi vel amet tenetur perferendis nulla at.', 218, 13),
(296, 'Aliquid aut asperiores.', 'Deserunt fugit necessitatibus aut vel est qui sit sed et sit incidunt distinctio.', 299, 13),
(297, 'Voluptates autem quae.', 'Odio illum et dolorem ut voluptatem aspernatur recusandae enim illo facere sequi.', 286, 11),
(298, 'Omnis a.', 'Eligendi accusantium inventore inventore in expedita eaque quaerat in voluptatem itaque quia quo repellendus.', 230, 11),
(299, 'Et eligendi et.', 'Quam delectus sapiente ratione vel soluta est eum qui est ut exercitationem eos.', 260, 13),
(300, 'Totam deserunt.', 'Placeat qui consectetur qui et vero soluta dolore temporibus recusandae non sunt qui voluptatem.', 272, 14),
(301, 'ergbeebteryb', '<div>qebeqtrbertbzrbtzr</div>', 201, 12);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `roles`) VALUES
(201, 'jules22', '(kPyY:yfvh=Yn20&TUgv', '[\"ROLE_USER\"]'),
(202, 'suzanne43', 'wQHDkEv{vioH\\97V^', '[\"ROLE_USER\"]'),
(203, 'fhenry', 'wK1dcR>.|y', '[\"ROLE_USER\"]'),
(204, 'omoreno', 'ZiwaXYb6/5Fp9Y)\"\\w', '[\"ROLE_USER\"]'),
(205, 'richard.benoit', '<.l}2|}LyJeW9Qp', '[\"ROLE_USER\"]'),
(206, 'zoe.guerin', '(UV{U+WI^EG;8V&', '[\"ROLE_USER\"]'),
(207, 'andree92', 'fSfNm~[N-#nn(^', '[\"ROLE_USER\"]'),
(208, 'caroline30', 'G:B)_IIKv$TZ', '[\"ROLE_USER\"]'),
(209, 'ypayet', '<S8Kar\\~!swSo', '[\"ROLE_USER\"]'),
(210, 'laurent.david', '\'q>4o-d+}j&Fx`?D', '[\"ROLE_USER\"]'),
(211, 'maurice.guichard', 'vV5EJ2Ch]_U`{ZW!cFL@', '[\"ROLE_USER\"]'),
(212, 'petit.aime', 'in(&~\":', '[\"ROLE_USER\"]'),
(213, 'richard.suzanne', 'rcO;Od$dp38~32)N\"(z', '[\"ROLE_USER\"]'),
(214, 'alexandria78', '$_fa-E2Y', '[\"ROLE_USER\"]'),
(215, 'alaroche', '`u{y9O3cbNWO%d!(Gkm', '[\"ROLE_USER\"]'),
(216, 'dgay', 'DhRzw`F', '[\"ROLE_USER\"]'),
(217, 'nicolas44', 'p#00dt9XT', '[\"ROLE_USER\"]'),
(218, 'mmasson', 'N.nP./l', '[\"ROLE_USER\"]'),
(219, 'jeannine29', '3xuExwQ;R`@dC5[', '[\"ROLE_USER\"]'),
(220, 'goncalves.zoe', '_RwLM3', '[\"ROLE_USER\"]'),
(221, 'nathalie99', 'f.~9p;d0={>74L>4/wa5', '[\"ROLE_USER\"]'),
(222, 'torres.simone', 'T9%07iU%VC', '[\"ROLE_USER\"]'),
(223, 'thierry23', 'SlS)qEwAvBbO', '[\"ROLE_USER\"]'),
(224, 'ucarlier', '>8+M^&kMLNq-yP(z', '[\"ROLE_USER\"]'),
(225, 'pruvost.alfred', '[+ww\\zGT?\'F9]X.>)', '[\"ROLE_USER\"]'),
(226, 'louis50', '/5vw(i#<d~8<VT8MO3', '[\"ROLE_USER\"]'),
(227, 'christiane.vidal', 'xMO/>}UT9rGUj%\\/8,', '[\"ROLE_USER\"]'),
(228, 'zoe.leroux', '\'6#4|73E:2.)[', '[\"ROLE_USER\"]'),
(229, 'mhubert', '9>7Y3C(%g\\T\'_zU*L', '[\"ROLE_USER\"]'),
(230, 'lorraine.bousquet', 'N\'R|1g]NPvCi', '[\"ROLE_USER\"]'),
(231, 'vincent.adrien', 'tCOZUW>|\\7a;', '[\"ROLE_USER\"]'),
(232, 'henry.jules', '&gZ+kRjz?}#?PV_n}n', '[\"ROLE_USER\"]'),
(233, 'zlejeune', '(Vm:\\J0XQpx|v', '[\"ROLE_USER\"]'),
(234, 'delattre.manon', ']aw@.\"/JB}m', '[\"ROLE_USER\"]'),
(235, 'boulanger.isaac', ')z[zc,E', '[\"ROLE_USER\"]'),
(236, 'alphonse92', '4nLs`,172Xzl', '[\"ROLE_USER\"]'),
(237, 'francois.dupuis', 'MN(FLngy3DM1fw~', '[\"ROLE_USER\"]'),
(238, 'chauveau.luc', '_uW\'0yb/', '[\"ROLE_USER\"]'),
(239, 'frederic98', 'Z+EDi+2ANOy>R5', '[\"ROLE_USER\"]'),
(240, 'leblanc.margaux', 'esRHh`L_', '[\"ROLE_USER\"]'),
(241, 'stephanie13', 'vG+^t,qMLKcW', '[\"ROLE_USER\"]'),
(242, 'mathilde.bonneau', 'JjVQj]Ep);&7', '[\"ROLE_USER\"]'),
(243, 'julie.dasilva', 'sF6GNaO*', '[\"ROLE_USER\"]'),
(244, 'marthe00', '%d?9a/n[jJk\"`h~\")', '[\"ROLE_USER\"]'),
(245, 'marion.christine', 'fI[RcJI\'AbJ^;Men]', '[\"ROLE_USER\"]'),
(246, 'poirier.nicolas', '}\\D`jL!', '[\"ROLE_USER\"]'),
(247, 'onavarro', '}=ffka', '[\"ROLE_USER\"]'),
(248, 'fernandes.adrien', ',rvkdLPKMeVl', '[\"ROLE_USER\"]'),
(249, 'renee.richard', '>6\'B~bpNtex9pdD+{R:?', '[\"ROLE_USER\"]'),
(250, 'emmanuel43', 'K4|=!i2`g=w!a~s_wB7&', '[\"ROLE_USER\"]'),
(251, 'ijulien', '||sR<Z90&|.ba|P\'', '[\"ROLE_USER\"]'),
(252, 'nathalie.courtois', '~\'x[v|i{S$qf\'', '[\"ROLE_USER\"]'),
(253, 'theodore45', '~UW:_Gy', '[\"ROLE_USER\"]'),
(254, 'emmanuelle85', '5BW|5gO~+#', '[\"ROLE_USER\"]'),
(255, 'louise13', '%{aW<-_4X', '[\"ROLE_USER\"]'),
(256, 'juliette74', 'gXbzC^ewKpl!P', '[\"ROLE_USER\"]'),
(257, 'didier.honore', 'N3`U(-3r', '[\"ROLE_USER\"]'),
(258, 'blanc.victoire', '#b-Gr5SL(y;%4\\iV=!~B', '[\"ROLE_USER\"]'),
(259, 'thibaut.hoarau', 'i!T[`@n=^\"\"', '[\"ROLE_USER\"]'),
(260, 'margaud.vallet', '8{wnw2xI', '[\"ROLE_USER\"]'),
(261, 'etienne.allain', '{5FH\\-Ht', '[\"ROLE_USER\"]'),
(262, 'juliette23', 'tFJ@)Gvk^6JVhyB<', '[\"ROLE_USER\"]'),
(263, 'emmanuel68', 'WFkn)wE>s9X', '[\"ROLE_USER\"]'),
(264, 'philippe.celine', ']<4S5[e', '[\"ROLE_USER\"]'),
(265, 'grenaud', 'mA8}Bnf~zD%S}BB&rK', '[\"ROLE_USER\"]'),
(266, 'georges.pichon', 'Y=RJ:4', '[\"ROLE_USER\"]'),
(267, 'margaret89', '|DNNGr\\f-C=i~*<', '[\"ROLE_USER\"]'),
(268, 'augustin.etienne', 'S)GBDF\\&eL0kdR~R2k', '[\"ROLE_USER\"]'),
(269, 'lorraine.mendes', 'Usd,[88L4A5`', '[\"ROLE_USER\"]'),
(270, 'xhuet', 'Q;k8016kCp?#W', '[\"ROLE_USER\"]'),
(271, 'mathilde.collin', 'a:jKcuBM>$yB', '[\"ROLE_USER\"]'),
(272, 'gerard.poirier', 'aQ8!1F}fG#Lm;a[', '[\"ROLE_USER\"]'),
(273, 'gabriel50', 'QU~X2f0Ldm', '[\"ROLE_USER\"]'),
(274, 'alfred22', '29&d\\JK>BR0nVN\'', '[\"ROLE_USER\"]'),
(275, 'yves89', 'Bc9R2),Okn]0Z=8)a$', '[\"ROLE_USER\"]'),
(276, 'abourdon', '2fh*#tob3WB:D)1y', '[\"ROLE_USER\"]'),
(277, 'marguerite.martineau', 'y{z.BHXBW', '[\"ROLE_USER\"]'),
(278, 'ngallet', ':0?xSI#@1p2YKe!Z<\\', '[\"ROLE_USER\"]'),
(279, 'hernandez.celina', 'xnzF5O<2', '[\"ROLE_USER\"]'),
(280, 'epages', 'H$VX5Q', '[\"ROLE_USER\"]'),
(281, 'lbazin', '4P~(q\"yi2G6c', '[\"ROLE_USER\"]'),
(282, 'ines.labbe', 'X8BC:/1Lt@7u_e!B', '[\"ROLE_USER\"]'),
(283, 'lamy.tristan', '=@Z=5CAD$', '[\"ROLE_USER\"]'),
(284, 'emmanuel71', '\"{-,OW', '[\"ROLE_USER\"]'),
(285, 'alex.guibert', 'Q(]CmWF9_9:{ol', '[\"ROLE_USER\"]'),
(286, 'roche.lucas', 'U6~m/4hm', '[\"ROLE_USER\"]'),
(287, 'celine.girard', '%}\'vQ7;', '[\"ROLE_USER\"]'),
(288, 'jacqueline11', ']}di{[\\EN', '[\"ROLE_USER\"]'),
(289, 'raymond.juliette', 'vS0HAqJ7_3f{', '[\"ROLE_USER\"]'),
(290, 'bblanchard', '[]cJV^', '[\"ROLE_USER\"]'),
(291, 'claude.hardy', ';K\"kEh8', '[\"ROLE_USER\"]'),
(292, 'hfleury', 'p$JN,x~Qk9#9LN:8mC,_', '[\"ROLE_USER\"]'),
(293, 'dominique55', '_(/q2oL', '[\"ROLE_USER\"]'),
(294, 'perrier.anouk', '9u<np5L4n|O', '[\"ROLE_USER\"]'),
(295, 'christine05', 'F[#&iL~', '[\"ROLE_USER\"]'),
(296, 'ycollin', 'h9@x{epm$', '[\"ROLE_USER\"]'),
(297, 'lbernard', 'oH)`^ME<Z4-', '[\"ROLE_USER\"]'),
(298, 'dominique23', 'KCY]S+j#<\\YRX35`8LRE', '[\"ROLE_USER\"]'),
(299, 'dasilva.clemence', '<+#]se}e9R/B7np~UDd@', '[\"ROLE_USER\"]'),
(300, 'storres', 'I~Ju+fjle', '[\"ROLE_USER\"]'),
(301, 'totovaalaplage', '$2y$13$HfdShFoW86lVEO83NEcBNunullGpWSgC/Gbz7y8YA38E91yALwcIu', '[]'),
(302, 'joseGarnil', '$2y$13$0Y9xMH6yty5KZxRpVqIUnegq6GDu6dTOahFKUg3iFl0V5yfndYZL.', '[\"ROLE_USER\"]');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `FK_64C19C1A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `FK_CFBDFA1412469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_CFBDFA14A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
