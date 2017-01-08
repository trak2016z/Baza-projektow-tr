-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 08 Sty 2017, 19:29
-- Wersja serwera: 5.5.47-0ubuntu0.14.04.1
-- Wersja PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `projekty`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=70 ;

--
-- Zrzut danych tabeli `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add cathegory', 7, 'add_cathegory'),
(20, 'Can change cathegory', 7, 'change_cathegory'),
(21, 'Can delete cathegory', 7, 'delete_cathegory'),
(22, 'Can add comment', 8, 'add_comment'),
(23, 'Can change comment', 8, 'change_comment'),
(24, 'Can delete comment', 8, 'delete_comment'),
(25, 'Can add component', 9, 'add_component'),
(26, 'Can change component', 9, 'change_component'),
(27, 'Can delete component', 9, 'delete_component'),
(28, 'Can add django migrations', 10, 'add_djangomigrations'),
(29, 'Can change django migrations', 10, 'change_djangomigrations'),
(30, 'Can delete django migrations', 10, 'delete_djangomigrations'),
(31, 'Can add file', 11, 'add_file'),
(32, 'Can change file', 11, 'change_file'),
(33, 'Can delete file', 11, 'delete_file'),
(34, 'Can add project', 12, 'add_project'),
(35, 'Can change project', 12, 'change_project'),
(36, 'Can delete project', 12, 'delete_project'),
(37, 'Can add tag', 13, 'add_tag'),
(38, 'Can change tag', 13, 'change_tag'),
(39, 'Can delete tag', 13, 'delete_tag'),
(40, 'Can add user', 14, 'add_user'),
(41, 'Can change user', 14, 'change_user'),
(42, 'Can delete user', 14, 'delete_user'),
(43, 'Can add auth group', 15, 'add_authgroup'),
(44, 'Can change auth group', 15, 'change_authgroup'),
(45, 'Can delete auth group', 15, 'delete_authgroup'),
(46, 'Can add auth group permissions', 16, 'add_authgrouppermissions'),
(47, 'Can change auth group permissions', 16, 'change_authgrouppermissions'),
(48, 'Can delete auth group permissions', 16, 'delete_authgrouppermissions'),
(49, 'Can add auth permission', 17, 'add_authpermission'),
(50, 'Can change auth permission', 17, 'change_authpermission'),
(51, 'Can delete auth permission', 17, 'delete_authpermission'),
(52, 'Can add auth user', 18, 'add_authuser'),
(53, 'Can change auth user', 18, 'change_authuser'),
(54, 'Can delete auth user', 18, 'delete_authuser'),
(55, 'Can add auth user groups', 19, 'add_authusergroups'),
(56, 'Can change auth user groups', 19, 'change_authusergroups'),
(57, 'Can delete auth user groups', 19, 'delete_authusergroups'),
(58, 'Can add auth user user permissions', 20, 'add_authuseruserpermissions'),
(59, 'Can change auth user user permissions', 20, 'change_authuseruserpermissions'),
(60, 'Can delete auth user user permissions', 20, 'delete_authuseruserpermissions'),
(61, 'Can add django admin log', 21, 'add_djangoadminlog'),
(62, 'Can change django admin log', 21, 'change_djangoadminlog'),
(63, 'Can delete django admin log', 21, 'delete_djangoadminlog'),
(64, 'Can add django content type', 22, 'add_djangocontenttype'),
(65, 'Can change django content type', 22, 'change_djangocontenttype'),
(66, 'Can delete django content type', 22, 'delete_djangocontenttype'),
(67, 'Can add django session', 23, 'add_djangosession'),
(68, 'Can change django session', 23, 'change_djangosession'),
(69, 'Can delete django session', 23, 'delete_djangosession');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_polish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=13 ;

--
-- Zrzut danych tabeli `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$30000$yfIwaBtc7WLz$p6ue7j8B9sjzyrwv3U5GlCB+brLzxSm8fPIQqDHnRSU=', '2017-01-08 17:14:35', 0, 'dkocur', '', '', 'dkocur987@gmail.com', 0, 1, '2016-11-07 22:40:12'),
(3, 'pbkdf2_sha256$30000$jpOL6h598NjS$tJcp2XkqxQwk5goGG5uTS/XmGXJz6/XvlynVcgdMgbk=', '2017-01-08 17:21:57', 1, 'admin', '', '', 'dkocur11987@gmail.com', 1, 1, '2016-11-16 17:39:31'),
(9, 'pbkdf2_sha256$30000$6uEDbAQVWdT8$CceyqUzxgWbuf1yh2lV+Ie7Wpxifmx/o80XTPYrMwQo=', NULL, 0, 'lel', '', '', 'zxz@gmail.com', 0, 1, '2016-11-20 15:13:43'),
(10, 'pbkdf2_sha256$30000$BYogHA5dt94m$eQZkt0C1KfGoMMPWryYWPB0Y+fA3Pw8e+T2/QgApqZg=', NULL, 0, 'dominik', 'Dominik', 'Kocur', 'dominik745@o2.pl', 0, 1, '2016-11-20 15:19:02'),
(11, 'pbkdf2_sha256$30000$XxRf41pIsfNL$R3rCj6o/huRJdaZLXR06lOID9/G+MESQ7Sac4pxN5SA=', NULL, 0, 'kkkkk', '654', '654', '55@o2.pl', 0, 1, '2016-11-21 22:35:35'),
(12, 'pbkdf2_sha256$30000$z1wKlx1JZO0j$y0mTvegg2PYWzCyum1yxoHqz+VGEJ1CQUN2uBv9/E0A=', NULL, 0, 'llll', '654', '654', '553@o2.pl', 0, 1, '2016-11-21 22:40:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cathegory`
--

CREATE TABLE IF NOT EXISTS `cathegory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `short_desc` varchar(180) COLLATE utf8_polish_ci NOT NULL,
  `photo_url` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `text_UNIQUE` (`text`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=9 ;

--
-- Zrzut danych tabeli `cathegory`
--

INSERT INTO `cathegory` (`id`, `text`, `short_desc`, `photo_url`) VALUES
(1, 'Elektronika', 'Projekty elektroniczne - Arduino, Raspberry Pi', '/static/login/assets/img/backgrounds/electronics.jpg'),
(2, 'Drewniane', 'Projekty wykonane z drewna, stolarstwo', '/static/login/assets/img/backgrounds/woodwork.jpg'),
(3, 'Metalowe', 'Projekty wykonane z metalu', '/static/login/assets/img/backgrounds/metalwork.jpg'),
(5, 'Outdoor', 'Projekty realizowane na świeżym powietrzu', '/static/login/assets/img/backgrounds/outdoor.jpg'),
(6, 'Jedzenie', 'Przepisy na świeże i pyszne dania', '/static/login/assets/img/backgrounds/food.jpg'),
(8, 'Różne', 'Rzeczy wykonane własnoręcznie - zabawki, ozdoby itp.', '/static/login/assets/img/backgrounds/misc.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8_polish_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_comment_user1_idx` (`user_id`),
  KEY `fk_comment_project1_idx` (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=29 ;

--
-- Zrzut danych tabeli `comment`
--

INSERT INTO `comment` (`id`, `text`, `date_added`, `user_id`, `project_id`) VALUES
(1, 'Pierwszy komentarz', '2017-01-08 12:14:42', 3, 25),
(2, 'Drugi komentarz', '2017-01-08 12:14:58', 10, 25),
(3, 'Trzeci komentarz', '2017-01-08 12:15:19', 12, 25),
(15, 'Test komentarzy', '2017-01-08 17:50:59', 3, 25),
(16, 'pierwszy', '2017-01-08 17:52:48', 3, 57),
(17, 'sdfsdf', '2017-01-08 17:53:11', 3, 57),
(18, 'fsdfsdf', '2017-01-08 17:53:29', 3, 57),
(19, 'sdfsdfs', '2017-01-08 17:53:59', 3, 57),
(20, '1', '2017-01-08 18:09:22', 3, 26),
(21, '2', '2017-01-08 18:09:24', 3, 26),
(22, '3', '2017-01-08 18:09:25', 3, 26),
(23, '4', '2017-01-08 18:09:26', 3, 26),
(24, '5', '2017-01-08 18:09:27', 3, 26),
(25, '6', '2017-01-08 18:09:28', 3, 26),
(26, 'cvxcv', '2017-01-08 18:09:54', 3, 9),
(27, 'Projekt', '2017-01-08 18:25:41', 3, 24),
(28, 'projekt z arduino', '2017-01-08 18:28:26', 3, 55);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `component`
--

CREATE TABLE IF NOT EXISTS `component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `description` varchar(70) COLLATE utf8_polish_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_component_project1_idx` (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=40 ;

--
-- Zrzut danych tabeli `component`
--

INSERT INTO `component` (`id`, `quantity`, `description`, `project_id`) VALUES
(1, 4, '33435345345', 11),
(2, 3, 'NOWYNOWY', 12),
(3, 34, 'NOWYNOWY', 12),
(4, 1, 'el1', 13),
(5, 2, 'el2', 13),
(6, 3, 'el3', 13),
(7, 4, 'el4', 13),
(8, 5, 'el5', 13),
(9, 1, 'fd', 15),
(10, 1, 'gh', 17),
(11, 1, 'gh', 18),
(12, 1, 'Arduino board', 22),
(13, 1, 'Battery pack', 22),
(14, 15, 'Jumper cables', 22),
(15, 1, 'LED tape', 23),
(16, 50, 'Metal screws', 23),
(17, 1, 'Duct tape', 23),
(18, 8, 'Aluminium mount', 23),
(19, 2, 'Plywood', 23),
(20, 1, '1/8-inch thick (7-8-ounce) leather at least 12 inch x 13 inch', 24),
(21, 1, 'Snap and tools to set it', 24),
(22, 5, 'Stitching supplies', 24),
(23, 3, 'tooling supplies', 24),
(24, 5, 'Threaded irons', 25),
(25, 1, 'Handsaw', 25),
(26, 1, 'Chisel', 25),
(27, 1, 'Mallet', 25),
(28, 3, 'Printer rollers', 26),
(29, 2, '4 ft pieces of 1x1 Angle Iron', 26),
(30, 1, '3 ft piece of ¼ in C-Channel', 26),
(31, 1, '3 ft piece of 2 x ¼ inch flat metal', 26),
(32, 1, 'Conduit pipe holder', 26),
(33, 1, '¾ x 9 inch bolt and nut', 26),
(34, 1, 'Scrap rebar or other metal', 26),
(35, 20, 'Finishing nails', 26),
(36, 99, 'różne rzeczy', 52),
(38, 2, 'Arduino uno', 55),
(39, 4, 'Buttons', 55);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext COLLATE utf8_polish_ci,
  `object_repr` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_polish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=61 ;

--
-- Zrzut danych tabeli `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2016-11-16 17:45:14', '2', 'Cathegory object', 1, '[{"added": {}}]', 7, 3),
(2, '2016-11-16 17:57:09', '2', 'Drewniane', 2, '[{"changed": {"fields": ["text"]}}]', 7, 3),
(3, '2016-11-16 17:57:18', '3', 'Metalowe', 1, '[{"added": {}}]', 7, 3),
(4, '2016-11-16 17:57:55', '4', 'Architektura', 1, '[{"added": {}}]', 7, 3),
(5, '2016-11-21 19:21:22', '4', 'Architektura', 3, '', 7, 3),
(6, '2016-11-21 19:23:04', '2', 'Drewniane', 2, '[{"changed": {"fields": ["photo_url"]}}]', 7, 3),
(7, '2016-11-21 19:26:01', '3', 'Metalowe', 2, '[{"changed": {"fields": ["photo_url"]}}]', 7, 3),
(8, '2016-11-21 19:26:18', '1', 'Elektronika', 2, '[{"changed": {"fields": ["photo_url"]}}]', 7, 3),
(9, '2016-11-21 20:18:18', '3', 'Metalowe', 2, '[{"changed": {"fields": ["short_desc"]}}]', 7, 3),
(10, '2016-11-21 20:18:31', '2', 'Drewniane', 2, '[{"changed": {"fields": ["short_desc"]}}]', 7, 3),
(11, '2016-11-21 20:19:05', '1', 'Elektronika', 2, '[{"changed": {"fields": ["short_desc"]}}]', 7, 3),
(12, '2016-11-21 20:20:11', '1', 'Elektronika', 2, '[{"changed": {"fields": ["short_desc"]}}]', 7, 3),
(13, '2016-11-21 20:20:26', '1', 'Elektronika', 2, '[{"changed": {"fields": ["short_desc"]}}]', 7, 3),
(14, '2016-11-21 21:56:10', '5', 'Outdoor', 1, '[{"added": {}}]', 7, 3),
(15, '2016-11-21 21:58:01', '6', 'Jedzenie', 1, '[{"added": {}}]', 7, 3),
(16, '2016-11-21 22:02:12', '8', 'Inne', 1, '[{"added": {}}]', 7, 3),
(17, '2016-12-06 15:35:51', '27', 'Project object', 3, '', 12, 3),
(18, '2016-12-06 16:10:35', '21', 'fghfgh', 3, '', 12, 3),
(19, '2016-12-06 16:10:35', '20', 'fghfgh', 3, '', 12, 3),
(20, '2016-12-06 16:10:35', '19', 'fghfgh', 3, '', 12, 3),
(21, '2016-12-06 16:10:35', '18', 'fghfgh', 3, '', 12, 3),
(22, '2016-12-06 16:10:35', '17', 'fghfgh', 3, '', 12, 3),
(23, '2016-12-06 16:10:35', '16', 'gdfg', 3, '', 12, 3),
(24, '2016-12-06 16:10:35', '15', 'gdfg', 3, '', 12, 3),
(25, '2016-12-06 16:10:35', '14', 'gdfg', 3, '', 12, 3),
(26, '2016-12-06 16:10:35', '13', '12345', 3, '', 12, 3),
(27, '2016-12-06 16:10:35', '12', 'NOWYNOWY', 3, '', 12, 3),
(28, '2016-12-06 16:10:35', '11', '33333333333333', 3, '', 12, 3),
(29, '2016-12-06 16:10:35', '10', '33333333333333', 3, '', 12, 3),
(30, '2016-12-06 16:10:35', '9', 'Projekt testowy 2', 3, '', 12, 3),
(31, '2016-12-06 16:10:35', '8', 'Projekt testowy 2', 3, '', 12, 3),
(32, '2016-12-06 16:10:35', '7', 'Projekt testowy 2', 3, '', 12, 3),
(33, '2016-12-06 16:10:35', '6', 'Projekt testowy 2', 3, '', 12, 3),
(34, '2016-12-06 16:10:35', '5', 'Projekt testowy 2', 3, '', 12, 3),
(35, '2016-12-06 16:10:35', '4', 'Projekt testowy 2', 3, '', 12, 3),
(36, '2016-12-06 16:10:35', '3', 'Tytuł', 3, '', 12, 3),
(37, '2016-12-06 16:10:35', '2', 'Drugi', 3, '', 12, 3),
(38, '2016-12-06 16:10:35', '1', 'Pierwszy', 3, '', 12, 3),
(39, '2017-01-08 12:14:50', '1', 'Comment object', 1, '[{"added": {}}]', 8, 3),
(40, '2017-01-08 12:15:02', '2', 'Comment object', 1, '[{"added": {}}]', 8, 3),
(41, '2017-01-08 12:15:23', '3', 'Comment object', 1, '[{"added": {}}]', 8, 3),
(42, '2017-01-08 17:49:33', '14', 'dkocur | dynamicznie', 3, '', 8, 3),
(43, '2017-01-08 17:49:33', '13', 'dkocur | vcxvxcvxcvxdsfsd', 3, '', 8, 3),
(44, '2017-01-08 17:49:33', '12', 'dkocur | vcxvxcvxcvxdsfsd', 3, '', 8, 3),
(45, '2017-01-08 17:49:33', '11', 'dkocur | vcxvxcvxcvxdsfsd', 3, '', 8, 3),
(46, '2017-01-08 17:49:33', '10', 'dkocur | dsfsd', 3, '', 8, 3),
(47, '2017-01-08 17:49:33', '9', 'dkocur | ngnsng', 3, '', 8, 3),
(48, '2017-01-08 17:49:33', '8', 'dkocur | adfasasf', 3, '', 8, 3),
(49, '2017-01-08 17:49:33', '7', 'dkocur | Komentarz', 3, '', 8, 3),
(50, '2017-01-08 17:49:33', '6', 'dkocur | rgregrr', 3, '', 8, 3),
(51, '2017-01-08 17:49:33', '5', 'admin | fdhdsfhsfsdfhs', 3, '', 8, 3),
(52, '2017-01-08 17:49:33', '4', 'admin | gfjdfjgdf', 3, '', 8, 3),
(53, '2017-01-08 17:49:51', '21', 'fghfgh', 3, '', 12, 3),
(54, '2017-01-08 17:49:51', '20', 'fghfgh', 3, '', 12, 3),
(55, '2017-01-08 17:49:51', '19', 'fghfgh', 3, '', 12, 3),
(56, '2017-01-08 17:49:51', '18', 'fghfgh', 3, '', 12, 3),
(57, '2017-01-08 17:49:51', '17', 'fghfgh', 3, '', 12, 3),
(58, '2017-01-08 17:49:51', '16', 'gdfg', 3, '', 12, 3),
(59, '2017-01-08 17:49:51', '15', 'gdfg', 3, '', 12, 3),
(60, '2017-01-08 17:49:51', '14', 'gdfg', 3, '', 12, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=24 ;

--
-- Zrzut danych tabeli `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(15, 'projekty', 'authgroup'),
(16, 'projekty', 'authgrouppermissions'),
(17, 'projekty', 'authpermission'),
(18, 'projekty', 'authuser'),
(19, 'projekty', 'authusergroups'),
(20, 'projekty', 'authuseruserpermissions'),
(7, 'projekty', 'cathegory'),
(8, 'projekty', 'comment'),
(9, 'projekty', 'component'),
(21, 'projekty', 'djangoadminlog'),
(22, 'projekty', 'djangocontenttype'),
(10, 'projekty', 'djangomigrations'),
(23, 'projekty', 'djangosession'),
(11, 'projekty', 'file'),
(12, 'projekty', 'project'),
(13, 'projekty', 'tag'),
(14, 'projekty', 'user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=18 ;

--
-- Zrzut danych tabeli `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-11-06 16:06:21'),
(2, 'auth', '0001_initial', '2016-11-06 16:06:24'),
(3, 'admin', '0001_initial', '2016-11-06 16:06:25'),
(4, 'admin', '0002_logentry_remove_auto_add', '2016-11-06 16:06:25'),
(5, 'contenttypes', '0002_remove_content_type_name', '2016-11-06 16:06:25'),
(6, 'auth', '0002_alter_permission_name_max_length', '2016-11-06 16:06:26'),
(7, 'auth', '0003_alter_user_email_max_length', '2016-11-06 16:06:26'),
(8, 'auth', '0004_alter_user_username_opts', '2016-11-06 16:06:26'),
(9, 'auth', '0005_alter_user_last_login_null', '2016-11-06 16:06:26'),
(10, 'auth', '0006_require_contenttypes_0002', '2016-11-06 16:06:26'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2016-11-06 16:06:26'),
(12, 'auth', '0008_alter_user_username_max_length', '2016-11-06 16:06:26'),
(13, 'sessions', '0001_initial', '2016-11-06 16:06:27'),
(14, 'projekty', '0001_initial', '2016-11-06 16:18:30'),
(15, 'projekty', '0002_auto_20161107_1951', '2016-11-07 19:51:55'),
(16, 'projekty', '0003_auto_20161107_2001', '2016-11-07 20:01:52'),
(17, 'projekty', '0004_authgroup_authgrouppermissions_authpermission_authuser_authusergroups_authuseruserpermissions_django', '2016-11-07 20:20:59');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_polish_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2o2wm02s90fmua9gstfzcmvk1tda8oy2', 'MTdjYjYyYzc1OWRkYTgzZmIwZGViYWQ0NDE3NzQyNzc0Y2FmZTNjNzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg5MGU3MTQ2ZDg3OGVlNTM1YWUwYTFlNjgzNjhiMjRmMWVlNDJjZWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=', '2017-01-22 17:21:57'),
('4uoj4oeljqyyb2uktmnrm4yxhfpgv755', 'Y2RkOTUwMjZmZTUyNTYwMTNhY2RmYjNkMzYzZTI1Y2MwMzM1NTMxYTp7fQ==', '2016-12-15 17:27:44'),
('6amzkp37hn2zouv7vnvnic48cdpjg2eo', 'MTdjYjYyYzc1OWRkYTgzZmIwZGViYWQ0NDE3NzQyNzc0Y2FmZTNjNzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg5MGU3MTQ2ZDg3OGVlNTM1YWUwYTFlNjgzNjhiMjRmMWVlNDJjZWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=', '2016-12-20 15:34:13');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `text` varchar(80) COLLATE utf8_polish_ci DEFAULT NULL,
  `description` varchar(150) COLLATE utf8_polish_ci DEFAULT NULL,
  `file_type` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `url_UNIQUE` (`url`),
  KEY `fk_file_project1_idx` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) COLLATE utf8_polish_ci NOT NULL,
  `short_description` varchar(250) COLLATE utf8_polish_ci DEFAULT NULL,
  `text` longtext COLLATE utf8_polish_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `cathegory_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `thumbnail_url` varchar(250) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_project_cathegory1_idx` (`cathegory_id`),
  KEY `fk_project_user1_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=58 ;

--
-- Zrzut danych tabeli `project`
--

INSERT INTO `project` (`id`, `title`, `short_description`, `text`, `date_added`, `cathegory_id`, `user_id`, `thumbnail_url`) VALUES
(9, 'Projekt testowy 2', 'Metalowe, Projekt testowy 2', 'Projekt testowy 2 treść', '2016-12-04 15:39:42', 3, 2, NULL),
(10, '33333333333333', '444444444444444', '44444444444444444', '2016-12-04 15:42:21', 1, 2, NULL),
(11, '33333333333333', '444444444444444', '44444444444444444', '2016-12-04 15:44:56', 1, 2, NULL),
(12, 'NOWYNOWY', 'NOWYNOWY', 'NOWYNOWY', '2016-12-04 15:45:29', 3, 2, NULL),
(13, '12345', '123345', '12345', '2016-12-04 17:09:13', 1, 2, NULL),
(14, 'gdfg', 'dfg', 'dfg', '2016-12-04 17:30:59', 1, 2, NULL),
(15, 'gdfg', 'dfg', 'dfg', '2016-12-04 17:31:11', 1, 2, NULL),
(16, 'gdfg', 'dfg', 'dfg', '2016-12-04 17:33:56', 1, 2, NULL),
(17, 'fghfgh', 'fghfgh', 'fghfgh', '2016-12-04 17:52:22', 1, 2, NULL),
(18, 'fghfgh', 'fghfgh', 'fghfgh', '2016-12-04 17:52:35', 1, 2, NULL),
(19, 'fghfgh', 'fghfgh', 'fghfgh', '2016-12-04 17:52:40', 1, 2, NULL),
(20, 'fghfgh', 'fghfgh', 'fghfgh', '2016-12-04 17:52:46', 1, 2, NULL),
(21, 'fghfgh', 'fghfgh', 'fghfgh', '2016-12-04 18:01:16', 1, 2, NULL),
(22, 'Portable Game Emulator', 'Project shows how to build portable game emulator using Arduino board.', 'This project started several years ago when I first saw Raspberry Pi embedded into a Gameboy case. Sadly my electronics skills were nowhere near the level required to assemble it. Now that my skills are finally up to par for the challenge the whole thing just didn''t feel practical enough.\r\n\r\nFirst thing that I had issues with is that the whole thing wasn''t modular at all and any fault that might occur within the unit would take at least some soldering to fix. Second thing is that when I picked up my old Gameboy before ordering the case, it felt too small for everything I wanted to put in it.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FHM/CB0R/IW6PH4LH/FHMCB0RIW6PH4LH.LARGE.jpg"/>\r\n</div>\r\n\r\nThus I decided to make a custom enclosure, and being how I don''t own a CNC or 3D printer it got made with hand tools.\r\n\r\nI got a lot of the inspiration from PiGRRL2 and numerous projects here on Instructables, as well as Ben Heck''s Show on youtube.\r\n\r\nStarted with dismantling the SNES controller and marking the holes on the front side of my case. I had no intentions on building the controller circuit board from scratch since the SNES one was perfectly good and only required adapting my enclosure to it. I cut out most of the button holes with the scalpel after drilling through.\r\nI continued to thin out the wood until it felt that the button clicks felt somewhat proper. It took about half an hour until I was satisfied with the feel of the buttons.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/F54/9XAU/IW6PH42K/F549XAUIW6PH42K.LARGE.jpg"/>\r\n</div>\r\n\r\nNext came the installation of the battery. I''m gonna go on and say that I have somewhat of a love hate relationship with this particular "power supply".\r\n\r\nI love it for it''s price (10€) and simplicity and I hate it for the terrible craftsmanship. The on/off switch broke after 7 uses and charging port broke loose after few uses. If you opt for this one just remove the on/off switch right away (leaving the unit in a constant on state) and add solder to the mini USB''s pegs.\r\n\r\nI put the spacers onto the back, put the "power supply" on them and soldered on two wires onto the USB port. I decided not to remove the female jacks but simply walled them in instead.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FWU/TBW5/IW6PKXA2/FWUTBW5IW6PKXA2.LARGE.jpg"/>\r\n</div>\r\n\r\nAfter applying paint I wasn''t satisfied with the blue/green button combo on the front so I changed it for the yellow/red. Finally I was happy with it and thus the project was complete. The wear of the paint on the corners and the D pad is after 1 month of playing; I used water based acrylic paint without base or finish overcoat to get the worn-out look. This is intentional.\r\n\r\nBattery lasts for 6 hours of continuous playing; this was thoroughly tested.', '2016-12-04 18:31:42', 1, 2, NULL),
(23, 'Solar analemma chandelier', 'Project describes how to create solar analemma chandelier', 'The solar analemma is the shape described by the sun when photographed over the course of a year at the exact same time of day and same location.* Because the Earth''s axis is tilted and its orbit is elliptical rather than circular, it generates an asymmetrical figure of eight. And a beautiful one! So I decided to make an LED chandelier with 365 LEDs, which mimicked the solar analemma and therefore acted as both a stylistic astronomical calendar and a source of illumination for our dining room. I decided to stretch the analemma in such a way that it could be cut out of a 4'' × 8'' piece of plywood and the LEDs could be placed accurately. This last requirement was really important to me... and made the project vastly more challenging, because every. single. last. LED. needed to be uniquely located and was uniquely spaced.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/F1K/S73H/IW6PH197/F1KS73HIW6PH197.LARGE.jpg"/>\r\n</div>\r\n\r\nEarth''s orbit took care of all the pesky details of creating the beautiful shape, and Larry McNish of the Calgary Centre of the Royal Astronomical Society of Canada did all the hard work of creating the spreadsheet that computes the layout. I used his spreadsheet to calculate the solar analemma for the exact latitude and longitude of my house for the calendar year 2016, did some manipulation to convert it into the right aspect ratio to fit it comfortably on to a 4'' × 8'' sheet of plywood, and imported it into Fusion360 using Add-Ins > Scripts > ImportSplineCSV. \r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FWM/YME5/IVO4721F/FWMYME5IVO4721F.LARGE.jpg"/>\r\n</div>\r\n\r\nI used Julie Kumar''s tutorial on how to toolpath for the Shopbot using Fusion360, and wrote the appropriate files (many thanks to Julie and Mei for help with this step). Toolpathing is interesting but I feel like we''re still at a pretty primitive point - it''s very far from plug''n''play and CNC-ing anything takes a lot of setup. Having said that: I''m a complete newcomer to these tools and the fact that I can do it at all probably speaks to how far we''ve come! The Shopbot at Pier 9 had some issues with spindle speed when I was using it (it was stuck on 12,000 rpm) so all operations were performed with end mills rather than with drill bits.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FPH/1O2D/IVO48ZN0/FPH1O2DIVO48ZN0.LARGE.jpg"/>\r\n</div>', '2016-12-05 21:33:25', 8, 2, NULL),
(24, 'Leather Domino Case', 'This is a fairly simple project and a good intro if you''re trying to learn to hand stitch.', 'If you throw bones - whether in the noble game of Forty-Two or the mad chaos of Chickenfoot - you''ll do so in more style if you have a hand-made leather case to hold your double-sixes.\r\nI''ve attached a PDF of the pattern that will print on three 8.5x11 inch pages. Overlap them and tape them together, trace the black lines on your leather, and cut out the outline.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FZA/L3CN/IVO4QBG6/FZAL3CNIVO4QBG6.LARGE.jpg"/>\r\n</div>\r\n\r\nThe dotted red lines are fold lines. Gouge them on the flesh side of the leather. If you have one, use an adjustable v-gouge. If not, just score the lines with an X-acto knife. To make folding a little easier, make small 1/8 inch slits at all four inside corners of the bottom section.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FO6/7ZYL/IVO62EEI/FO67ZYLIVO62EEI.MEDIUM.jpg"/>\r\n</div>\r\n\r\nUse an adjustable groover to make eight stitching grooves where the four sides of the case will meet. Grooves should be about 1/8 inch from the edge.\r\n\r\nIf you don''t have a groover, don''t worry: the groove helps hide the stitches and make things look nice, but it isn''t absolutely necessary. \r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FWL/1CBY/IVO686DG/FWL1CBYIVO686DG.MEDIUM.jpg"/>\r\n</div>\r\n\r\nUse a pear-shader on leaves and petals\r\n\r\nRemember to keep re-casing the leather as necessary. You want to keep everything in that clay-like state of dampness. As the edges dry out, re-dampen them with a sponge, and the moisture will migrate inward to keep the entire piece damp.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FIK/QEM9/IVO69M1J/FIKQEM9IVO69M1J.MEDIUM.jpg"/>\r\n</div>', '2016-12-05 21:44:09', 8, 2, NULL),
(25, 'Spokeshave', 'Spokeshave is a fantastic tool to play with and a surprisingly easy tool to make. There are only two parts to a traditional spokeshave. 1. the iron, 2. the body.', '<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FIC/5D92/IW6PTPMQ/FIC5D92IW6PTPMQ.MEDIUM.jpg"/>\r\n</div>\r\n\r\nThe body can be made out of most any hardwood, but traditionally, European Beach one of the best. In this case I used White Oak which works very nicely as well. One of the most common Woods used today hard maple.\r\n\r\nFirst, choose a blank that is approximately 8 inches longer than the iron you want to use. The blank I am using is approximately 1-inch square by 11 inches long, as I''m using a 3 inch long iron. Position the iron centered on one side of the black, and then with light taps use the iron to Mark out the locations for the tangs that need to go through the body.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FE3/8ABC/IW6PTPOG/FE38ABCIW6PTPOG.MEDIUM.jpg"/>\r\n</div>\r\n\r\nNext, drill two the holes all the way through the blank. Make the hole diameter approximately the same with as the Tang, but that can vary as a square tang will shape its own hole.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FK1/40W8/IW6PTPPH/FK140W8IW6PTPPH.MEDIUM.jpg"/>\r\n</div>\r\n\r\nNext, Align the iron in the two holes that you made, and mark on the blank where the front of the iron is. Also, mark the sides of the iron so you know how wide to make the slot. Once the marks have been made and take the iron out and then cut two stop cuts on either side of where the iron will be at 45° back from the tip of the iron. Then remove the waste with a chisel. This will create an opening for the chips to eject from iron.\r\n\r\nYou need to cut a small Groove from the hole you drilled to the mouth you cut so that the iron can''t fit all the way down flat to the blank. Then, test the fit of the iron. The first time you drive it down it will be tight and will probably need small adjustments to make it fit all the way down.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FND/4N5E/IW6PTPQD/FND4N5EIW6PTPQD.MEDIUM.jpg"/>\r\n</div>\r\n\r\nNext, shape the sole if you want it rounded or flat. This can be made any way you want to fit your uses. The handles also can be shaped with chisels to remove most of the waste. And then rasps and files or another spokeshave. There you go. A functional spoke shave.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FXN/DUXK/IW6PTPN6/FXNDUXKIW6PTPN6.MEDIUM.jpg"/>\r\n</div>\r\n', '2016-12-05 21:49:36', 2, 2, NULL),
(26, 'Metal Bender', 'This instructable will show you how to make a metal roller out of old printer rollers and some angle iron. ', 'No matter what your hobby, sometimes you need to bend some light weight metal into nice, circular shapes.  This instructable will show you how to make a metal roller out of old printer rollers and some angle iron. \r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/F9H/AUQ4/H05NT85D/F9HAUQ4H05NT85D.MEDIUM.jpg"/>\r\n</div>\r\n\r\nSo far, I have used this bender to make circles out of 1x1/16 aluminum for some of my hobby robots, to bend some 1x1/8 inch aluminum into a perfect circle for a US First Robotics high school team I mentor (Go Team 1631), and to bend two 5 inch wide 1/8 inch steel sheets 9 feet long for a fire pit I am making (but that’s another instructable).\r\n\r\nThis instructable will have you cutting metal and braising.  Don’t forget all the safety rules involved with each of these activities.  If you are new to any of the tasks below, I recommend looking up safety tips on the internet before trying something new.  As you will see in step 10 “Next Time” I made a few errors on this one, but I finished with all my fingers and toes intact.  That’s a good thing.\r\n\r\nThis is my first of hopefully many instructables, so if something doesn’t make sense, just ask, and I’ll try to explain it better.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FHQ/A322/H05NT86R/FHQA322H05NT86R.MEDIUM.jpg"/>\r\n</div>\r\n\r\nStart with the printer rollers.  Take apart the old printers until you are left with just the printer roller.  Use a screwdriver to make sure all extra pieces are removed.  You only want the roller with its metal bar core.  The rollers should be close in size, but do not have to be the exact same size.  One roller should have an extended metal core.  That one you will use for the top roller.  You will need the extended core to attach a handle. \r\n\r\nYou can cut the remaining two rollers so the overall length is the same using your metal saw.  Make sure you leave at least ½ inch or more metal core exposed beyond the rubber on each side so you can attach them to the bottom rail.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/F6J/S2DC/H05NT892/F6JS2DCH05NT892.MEDIUM.jpg"/>\r\n</div>\r\n\r\nCut 2 pieces of angle iron 18 inches in length.  These will be used for the bottom rails of the bender, and will hold the bottom 2 rollers.  Lay out where you want the bottom rollers.  Center them on the angle iron, and space them the width of the 3rd roller plus ¼ inch apart.  This will allow the top roller to pass between the two bottom rollers and still leave room for a piece of 1/8 inch metal. \r\n\r\nIf the rollers or their metal core are not the same size, the holes will not be lined up even on the bottom rail.  That is okay, it is more important to make sure the rollers are level, and drill the holes where they need to be.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/F9S/93JO/H05NT899/F9S93JOH05NT899.LARGE.jpg"/>\r\n</div>\r\n\r\nFinish the 3rd roller holder by adding a cup to hold the push bolt and some metal for strength.  Start by rolling a conduit holder to a circle that the end of the bolt will fit in. \r\n\r\nCut a 9 and ½ inch and 4 inch piece of flat metal (your long piece may differ in size depending on the size of your bottom roller).  Braise the 9 and ½ in piece on the inside of the 3rd roller holder channel.  Center and braise the 4 inch piece of flat metal to the top.  Finally, braise the cup to the center of the top.\r\n\r\n<div class="projectInnerPhoto">\r\n<img src="https://cdn.instructables.com/FVZ/PZDP/H05NT93U/FVZPZDPH05NT93U.MEDIUM.jpg"/>\r\n</div>\r\n\r\nTo finish the project, measure and cut two pieces of angle iron to fit the front and back of the bender.  Don’t make it too tight so the rollers can easily move, or too loose that they fall out. \r\n\r\nFor the turning handle, cut a 6 inch piece of C-Channel, and drill a hole in the center that fits over the 3rd roller metal core.  Braise some rebar or other scrap metal to give you some leverage, and attach the handle with some finishing nails to fill the hole and get a tight fit.', '2016-12-05 21:55:37', 3, 2, NULL),
(52, 'Testowy projekt z tagami', 'Projekt do testowania nowych funkcji', '<p><strong>Krok I</strong></p>\r\n\r\nW pierwszym kroku zrobiono to i tamto.\r\n\r\n<div class="projectInnerPhoto"><img src="http://www.w3schools.com/css/img_lights.jpg"/></div>\r\n\r\n<p><strong>Krok II</strong></p>\r\n\r\nThis method returns a copy of the string with all occurrences of substring old replaced by new. If the optional argument max is given, only the first count occurrences are replaced.\r\n\r\n<p><strong>Krok III</strong></p>\r\n\r\nPython is a high-level, interpreted, interactive and object-oriented scripting language. Python is designed to be highly readable. It uses English keywords frequently where as other languages use punctuation, and it has fewer syntactical constructions than other languages.\r\n\r\n<div class="projectInnerPhoto"><img src="http://www.w3schools.com/css/img_fjords.jpg"/></div>', '2016-12-29 14:00:52', 3, 3, '/static/projekty/media/OYCZURDCthumb.jpg'),
(55, 'Simple Remote Control for Arduino', 'The end result of this project is a simple remote control that allows you to send both PWM and digital data from one Arduino to the other. It is a short step from this to using a joystick to control a robot, copter, boat, or car.', '<div class="projectInnerPhoto"><img src="https://cdn.instructables.com/FAQ/RD5B/IX6FY7WA/FAQRD5BIX6FY7WA.MEDIUM.jpg"/></div>\r\n\r\n<p><strong>Step I - Build the Transmitter Circuit</strong></p>\r\n\r\nThis Arduino contains two potentiometers and a pushbutton. In its place, you could use a joystick that has all three of these components built in, but as a basic first attempt, I kept them separate.\r\n\r\nMake sure that your pushbutton resistor has a high value. I used 10K Ohms since that is Sparkfun''s goto high resistor.\r\n\r\n<div class="projectInnerPhoto"><img src="https://cdn.instructables.com/FH2/PS29/IX6FVOA1/FH2PS29IX6FVOA1.MEDIUM.jpg"/></div>\r\n\r\n<p><strong>Step 2 - Code the transmitter''s Arduino</strong></p>\r\n\r\nUpload this code to the transmitter''s Arduino Board. It is a very simple sketch that takes digital input from the button and analog input from the two potentiometers and produces a comma separated serial string:\r\n\r\nvertOutput,horzOutput,selOutput\r\n\r\nvertOutput ranges from 0 to 1023\r\n\r\nhorzOutput ranges from 0 to 1023\r\n\r\nselOutput is either 0 (LOW) or 1 (HIGH)\r\n\r\nTest this by opening the Serial Monitor in your Arduino IDE. Turn the knobs and push the button to make sure that it tracks. You should get a scroll of these strings down your monitor screen.\r\n\r\nNote that I used a baud rate of 57600. Whatever rate you choose, you''ll need to make sure that your xBee radios and Arduino Boards are all operating at the same rate.\r\n\r\n<div class="projectInnerPhoto"><img src="https://cdn.instructables.com/FMT/7LDP/IX6FVUVW/FMT7LDPIX6FVUVW.MEDIUM.jpg"/></div>\r\n\r\nBefore you mess with the radios, make sure that your boards are sending and receiving what you think they are. This way, if things don''t work once you''ve added the radios, you''ll know that the problem is with the radios, and not your code or existing circuits.\r\n\r\nRun a wire from pin 1 (TX) on your transmitter to Pin 0 (RX) on the receiver. Also, run a wire to connect ground on your receiver to ground on your transmitter. I didn''t do this at first and couldn''t figure out why it didn''t work!\r\n\r\nWith both Arduinos connected and powered, you should see the results of your knob turning and button pressing on both of the serial monitor screens and on the receiver LED''s as in the video. If this works, you are ready for Wireless!\r\n\r\nNOTE: Whenever you have wires attached to TX or RX pins, you will potentially disrupt your ability to upload code to your board. Make sure to disconnect these wires if you need to re-upload!', '2016-12-29 14:23:53', 1, 3, '/static/projekty/media/W3NLYXBKarduino.jpg'),
(56, 'fsdfsdf', 'test', 'sdfsd', '2016-12-29 17:21:15', 1, 3, NULL),
(57, 'wefjniwnfisdf', 'erunfiernf', 'erfref', '2016-12-29 17:30:29', 1, 3, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_tag_project1_idx` (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=36 ;

--
-- Zrzut danych tabeli `tag`
--

INSERT INTO `tag` (`id`, `text`, `project_id`) VALUES
(1, 'projekttestowy2', 9),
(2, 'tag', 9),
(3, 'test', 9),
(4, 'baza', 9),
(5, 'tag', 10),
(6, 'lll', 10),
(7, 'tag', 11),
(8, 'lll', 11),
(9, 'NOWYNOWY', 12),
(10, 'f', 15),
(11, 'f', 16),
(12, 'electronics', 22),
(13, 'arduino', 22),
(14, 'diy', 22),
(15, 'led', 23),
(16, 'solar', 23),
(17, 'design', 23),
(18, 'leather', 24),
(19, 'case', 24),
(20, 'spokeshave', 25),
(21, 'woodwork', 25),
(22, 'easy', 25),
(23, 'metal', 26),
(24, 'bender', 26),
(25, 'welding', 26),
(28, 'test', 52),
(29, 'projekt', 52),
(30, 'tag', 52),
(34, 'arduino', 55),
(35, 'test', 57);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `role` varchar(25) COLLATE utf8_polish_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `date_registered` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Ograniczenia dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Ograniczenia dla tabeli `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_project1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comment_user1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `component`
--
ALTER TABLE `component`
  ADD CONSTRAINT `fk_component_project1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ograniczenia dla tabeli `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `fk_file_project1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `fk_project_cathegory1` FOREIGN KEY (`cathegory_id`) REFERENCES `cathegory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_project_user1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `fk_tag_project1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
