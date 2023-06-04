-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2023 a las 23:06:23
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wordpress`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-05-29 15:04:34', '2023-05-29 15:04:34', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'More', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'santy.garcia19996g@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:106:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:46:\"genesis_custom_block/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"genesis_custom_block/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"genesis_custom_block/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"genesis_custom_block/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"genesis_custom_block/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"genesis_custom_block/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"genesis_custom_block/(.+?)/embed/?$\";s:53:\"index.php?genesis_custom_block=$matches[1]&embed=true\";s:39:\"genesis_custom_block/(.+?)/trackback/?$\";s:47:\"index.php?genesis_custom_block=$matches[1]&tb=1\";s:47:\"genesis_custom_block/(.+?)/page/?([0-9]{1,})/?$\";s:60:\"index.php?genesis_custom_block=$matches[1]&paged=$matches[2]\";s:54:\"genesis_custom_block/(.+?)/comment-page-([0-9]{1,})/?$\";s:60:\"index.php?genesis_custom_block=$matches[1]&cpage=$matches[2]\";s:43:\"genesis_custom_block/(.+?)(?:/([0-9]+))?/?$\";s:59:\"index.php?genesis_custom_block=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:29:\"custom-fonts/custom-fonts.php\";i:2;s:47:\"genesis-custom-blocks/genesis-custom-blocks.php\";i:3;s:33:\"jquery-updater/jquery-updater.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:67:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/funderprotest/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'funderprotest', 'yes'),
(41, 'stylesheet', 'funderprotest', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1700924674', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:68:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:31:\"genesis_custom_block_edit_block\";b:1;s:32:\"genesis_custom_block_edit_blocks\";b:1;s:39:\"genesis_custom_block_edit_others_blocks\";b:1;s:35:\"genesis_custom_block_publish_blocks\";b:1;s:31:\"genesis_custom_block_read_block\";b:1;s:40:\"genesis_custom_block_read_private_blocks\";b:1;s:33:\"genesis_custom_block_delete_block\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1685913552;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1685934275;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1685934285;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1685977475;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1685977485;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1685977487;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1686063875;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1685373687;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(124, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(125, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1685907246;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(131, '_site_transient_timeout_browser_c2e8770a57bb05f02fa99fc10237a511', '1685977486', 'no'),
(132, '_site_transient_browser_c2e8770a57bb05f02fa99fc10237a511', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"113.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1685977487', 'no'),
(134, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(154, 'current_theme', 'FunderProTest', 'yes'),
(155, 'theme_mods_funderprotest', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:6:\"menu-1\";i:2;s:7:\"primary\";i:2;s:19:\"left-wp-mobile-menu\";i:0;s:20:\"right-wp-mobile-menu\";i:2;}s:18:\"custom_css_post_id\";i:32;s:16:\"header_textcolor\";s:5:\"blank\";}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(157, 'recovery_mode_email_last_sent', '1685661680', 'yes'),
(159, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(160, 'category_children', 'a:0:{}', 'yes'),
(169, 'recently_activated', 'a:8:{s:25:\"duplicator/duplicator.php\";i:1685877666;s:31:\"wp-migrate-db/wp-migrate-db.php\";i:1685808635;s:23:\"mobile-menu/mobmenu.php\";i:1685743087;s:31:\"backup-backup/backup-backup.php\";i:1685730934;s:53:\"animated-fullscreen-menu/animated-fullscreen-menu.php\";i:1685392034;s:51:\"responsive-sliding-menu/responsive-sliding-menu.php\";i:1685390098;s:22:\"wp-hamburger/index.php\";i:1685389961;s:35:\"responsive-menu/responsive-menu.php\";i:1685383006;}', 'yes'),
(170, 'rm_review_message_trigger', '1', 'yes'),
(173, 'rmp_global_setting_options', 'a:12:{s:14:\"rmp_custom_css\";s:0:\"\";s:13:\"rmp_dark_mode\";s:3:\"off\";s:15:\"rmp_license_key\";s:0:\"\";s:28:\"menu_adjust_for_wp_admin_bar\";s:6:\"adjust\";s:18:\"rmp_external_files\";s:2:\"on\";s:18:\"rmp_minify_scripts\";s:2:\"on\";s:21:\"rmp_scripts_in_footer\";s:2:\"on\";s:22:\"rmp_remove_fontawesome\";s:3:\"off\";s:20:\"rmp_remove_glyphicon\";s:3:\"off\";s:20:\"rmp_remove_dashicons\";s:3:\"off\";s:25:\"rmp_remove_material_icons\";s:3:\"off\";s:18:\"rmp_wp_footer_hook\";s:3:\"off\";}', 'yes'),
(174, 'rmp_dynamic_file_version', '17.55.47', 'yes'),
(188, 'wpha_options', 'a:3:{s:5:\"skins\";s:7:\"default\";s:8:\"position\";s:7:\"default\";s:3:\"dom\";s:0:\"\";}', 'yes'),
(192, 'wpha-configuration', 'a:1:{s:9:\"wpha-menu\";s:4:\"test\";}', 'yes'),
(195, 'rsm_activated_date', '2023-05-29', 'yes'),
(196, 'rsm_chosen_menu', '2', 'yes'),
(197, 'rsm_responsive_width', '768', 'yes'),
(198, 'rsm_main_menu_transform', 'uppercase', 'yes'),
(199, 'rsm_main_menu_size', '11', 'yes'),
(200, 'rsm_main_menu_color', '#4e4e4e', 'yes'),
(201, 'rsm_hover_menu_color', '#aaa', 'yes'),
(202, 'rsm_burger_menu_size', '25', 'yes'),
(203, 'rsm_burger_menu_background', '#1a1919', 'yes'),
(204, 'rsm_main_burger_color', '#4e4e4e', 'yes'),
(205, 'rsm_hover_burger_color', '#aaa', 'yes'),
(206, 'rsm_burger_menu_color', '#4e4e4e', 'yes'),
(207, 'rsm_burger_icon', 'dashicons dashicons-menu-alt', 'yes'),
(217, 'fs_active_plugins', 'O:8:\"stdClass\":0:{}', 'yes'),
(218, 'fs_debug_mode', '', 'yes'),
(219, 'fs_accounts', 'a:8:{s:21:\"id_slug_type_path_map\";a:2:{i:3887;a:2:{s:4:\"slug\";s:24:\"animated-fullscreen-menu\";s:4:\"type\";s:6:\"plugin\";}i:235;a:3:{s:4:\"slug\";s:11:\"mobile-menu\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:23:\"mobile-menu/mobmenu.php\";}}s:11:\"plugin_data\";a:2:{s:24:\"animated-fullscreen-menu\";a:15:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:9:\"prev_path\";s:53:\"animated-fullscreen-menu/animated-fullscreen-menu.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1685392020;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.5\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"2.3.6\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1685392020;s:7:\"version\";s:5:\"2.3.6\";}s:15:\"prev_is_premium\";b:1;}s:11:\"mobile-menu\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:23:\"mobile-menu/mobmenu.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1685479265;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.5.3\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"2.8.3\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1685479265;s:7:\"version\";s:5:\"2.8.3\";}s:15:\"prev_is_premium\";b:0;s:21:\"is_pending_activation\";b:1;}}s:13:\"file_slug_map\";a:2:{s:53:\"animated-fullscreen-menu/animated-fullscreen-menu.php\";s:24:\"animated-fullscreen-menu\";s:23:\"mobile-menu/mobmenu.php\";s:11:\"mobile-menu\";}s:7:\"plugins\";a:2:{s:24:\"animated-fullscreen-menu\";O:9:\"FS_Plugin\":23:{s:2:\"id\";s:4:\"3887\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_95d707fced75c19ff9b793853ac8a\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";N;s:5:\"title\";s:48:\"FullScreen Menu - Mobile Friendly and Responsive\";s:4:\"slug\";s:24:\"animated-fullscreen-menu\";s:12:\"premium_slug\";s:24:\"animated-fullscreen-menu\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:53:\"animated-fullscreen-menu/animated-fullscreen-menu.php\";s:7:\"version\";s:5:\"2.3.6\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:1;s:14:\"premium_suffix\";s:3:\"Pro\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;}s:11:\"mobile-menu\";O:9:\"FS_Plugin\":23:{s:2:\"id\";s:3:\"235\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_1ec93edfb66875251b62505b96489\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";N;s:5:\"title\";s:11:\"Mobile Menu\";s:4:\"slug\";s:11:\"mobile-menu\";s:12:\"premium_slug\";s:19:\"mobile-menu-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:23:\"mobile-menu/mobmenu.php\";s:7:\"version\";s:5:\"2.8.3\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:1;s:14:\"premium_suffix\";s:7:\"Premium\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;}}s:9:\"unique_id\";s:32:\"fe782eac10cec78d87f0d2955334b56c\";s:13:\"admin_notices\";a:2:{s:24:\"animated-fullscreen-menu\";a:0:{}s:11:\"mobile-menu\";a:0:{}}s:6:\"addons\";a:1:{i:235;a:0:{}}s:7:\"updates\";a:1:{i:235;N;}}', 'yes'),
(220, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(221, 'fs_api_cache', 'a:0:{}', 'no'),
(251, 'genesis_custom_blocks_example_post_id', '27', 'yes'),
(292, '_transient_health-check-site-status-result', '{\"good\":\"18\",\"recommended\":\"4\",\"critical\":\"1\"}', 'yes'),
(307, 'mobmenu_latest_update_version', '2.8.3', 'yes'),
(308, 'mobmenu_options', 's:7543:\"a:118:{s:16:\"e1d8a32af4691b25\";s:0:\"\";s:20:\"enabled_naked_header\";s:1:\"1\";s:16:\"enable_left_menu\";s:1:\"0\";s:9:\"left_menu\";s:0:\"\";s:17:\"enable_right_menu\";s:1:\"1\";s:10:\"right_menu\";s:4:\"test\";s:17:\"menu_display_type\";s:13:\"slideout-over\";s:16:\"191e3ef04be6197a\";s:0:\"\";s:16:\"8916567b56eea5e5\";s:0:\"\";s:19:\"only_mobile_devices\";s:1:\"0\";s:13:\"width_trigger\";s:4:\"1024\";s:13:\"hide_elements\";s:0:\"\";s:17:\"only_testing_mode\";s:1:\"0\";s:16:\"b35f41ca2fda44f5\";s:0:\"\";s:22:\"default_hided_elements\";s:226:\"a:17:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"7\";i:7;s:1:\"8\";i:8;s:1:\"9\";i:9;s:2:\"10\";i:10;s:2:\"11\";i:11;s:2:\"12\";i:12;s:2:\"13\";i:13;s:2:\"14\";i:14;s:2:\"15\";i:15;s:2:\"16\";i:16;s:2:\"17\";}\";s:18:\"autoclose_submenus\";s:1:\"0\";s:22:\"menu_items_border_size\";s:1:\"0\";s:10:\"custom_css\";s:0:\"\";s:9:\"custom_js\";s:0:\"\";s:15:\"close_icon_font\";s:8:\"cancel-1\";s:20:\"close_icon_font_size\";s:2:\"30\";s:22:\"submenu_open_icon_font\";s:9:\"down-open\";s:23:\"submenu_close_icon_font\";s:7:\"up-open\";s:22:\"submenu_icon_font_size\";s:2:\"25\";s:17:\"cache_dynamic_css\";s:1:\"1\";s:15:\"sticky_elements\";s:0:\"\";s:16:\"0510cfd5db4d4b49\";s:0:\"\";s:16:\"e89b1625c4a9cf4b\";s:0:\"\";s:21:\"enabled_sticky_header\";s:1:\"1\";s:18:\"disabled_logo_text\";s:1:\"1\";s:13:\"header_shadow\";s:1:\"0\";s:13:\"header_height\";s:2:\"50\";s:11:\"header_text\";s:0:\"\";s:16:\"header_font_size\";s:2:\"20\";s:17:\"header_text_align\";s:6:\"center\";s:23:\"header_text_left_margin\";s:2:\"20\";s:24:\"header_text_right_margin\";s:2:\"20\";s:15:\"header_branding\";s:4:\"text\";s:8:\"logo_img\";s:0:\"\";s:15:\"logo_img_retina\";s:0:\"\";s:11:\"logo_height\";s:1:\"0\";s:17:\"disabled_logo_url\";s:1:\"0\";s:8:\"logo_url\";s:0:\"\";s:15:\"logo_top_margin\";s:1:\"0\";s:16:\"header_menu_font\";s:544:\"a:17:{s:11:\"font-family\";s:11:\"Donegal One\";s:9:\"font-type\";s:6:\"google\";s:5:\"color\";s:7:\"#333333\";s:9:\"font-size\";s:4:\"20px\";s:11:\"font-weight\";s:7:\"inherit\";s:10:\"font-style\";s:6:\"normal\";s:11:\"line-height\";s:5:\"1.5em\";s:14:\"letter-spacing\";s:6:\"normal\";s:14:\"text-transform\";s:4:\"none\";s:12:\"font-variant\";s:6:\"normal\";s:20:\"text-shadow-location\";s:4:\"none\";s:20:\"text-shadow-distance\";s:3:\"0px\";s:16:\"text-shadow-blur\";s:3:\"0px\";s:17:\"text-shadow-color\";s:7:\"#333333\";s:19:\"text-shadow-opacity\";s:1:\"1\";s:4:\"dark\";s:0:\"\";s:4:\"text\";s:0:\"\";}\";s:29:\"left_menu_parent_link_submenu\";s:1:\"0\";s:18:\"left_menu_icon_new\";s:4:\"icon\";s:19:\"left_menu_icon_font\";s:4:\"menu\";s:19:\"left_icon_font_size\";s:2:\"30\";s:14:\"left_menu_icon\";s:0:\"\";s:21:\"left_menu_icon_action\";s:1:\"1\";s:13:\"left_icon_url\";s:0:\"\";s:20:\"left_icon_url_target\";s:1:\"1\";s:14:\"left_menu_text\";s:0:\"\";s:25:\"text_after_left_icon_font\";s:540:\"a:17:{s:11:\"font-family\";s:5:\"Dosis\";s:9:\"font-type\";s:6:\"google\";s:5:\"color\";s:7:\"#333333\";s:9:\"font-size\";s:7:\"inherit\";s:11:\"font-weight\";s:7:\"inherit\";s:10:\"font-style\";s:6:\"normal\";s:11:\"line-height\";s:5:\"1.5em\";s:14:\"letter-spacing\";s:6:\"normal\";s:14:\"text-transform\";s:4:\"none\";s:12:\"font-variant\";s:6:\"normal\";s:20:\"text-shadow-location\";s:4:\"none\";s:20:\"text-shadow-distance\";s:3:\"0px\";s:16:\"text-shadow-blur\";s:3:\"0px\";s:17:\"text-shadow-color\";s:7:\"#333333\";s:19:\"text-shadow-opacity\";s:1:\"1\";s:4:\"dark\";s:0:\"\";s:4:\"text\";s:0:\"\";}\";s:20:\"left_icon_top_margin\";s:2:\"10\";s:21:\"left_icon_left_margin\";s:1:\"5\";s:18:\"left_menu_bg_image\";s:0:\"\";s:20:\"left_menu_bg_opacity\";s:3:\"100\";s:23:\"left_menu_bg_image_size\";s:5:\"cover\";s:21:\"left_menu_bg_gradient\";s:0:\"\";s:21:\"left_menu_width_units\";s:1:\"1\";s:15:\"left_menu_width\";s:3:\"270\";s:26:\"left_menu_width_percentage\";s:2:\"70\";s:25:\"left_menu_content_padding\";s:2:\"10\";s:14:\"left_menu_font\";s:540:\"a:17:{s:11:\"font-family\";s:5:\"Dosis\";s:9:\"font-type\";s:6:\"google\";s:5:\"color\";s:7:\"#333333\";s:9:\"font-size\";s:7:\"inherit\";s:11:\"font-weight\";s:7:\"inherit\";s:10:\"font-style\";s:6:\"normal\";s:11:\"line-height\";s:5:\"1.5em\";s:14:\"letter-spacing\";s:6:\"normal\";s:14:\"text-transform\";s:4:\"none\";s:12:\"font-variant\";s:6:\"normal\";s:20:\"text-shadow-location\";s:4:\"none\";s:20:\"text-shadow-distance\";s:3:\"0px\";s:16:\"text-shadow-blur\";s:3:\"0px\";s:17:\"text-shadow-color\";s:7:\"#333333\";s:19:\"text-shadow-opacity\";s:1:\"1\";s:4:\"dark\";s:0:\"\";s:4:\"text\";s:0:\"\";}\";s:30:\"right_menu_parent_link_submenu\";s:1:\"0\";s:19:\"right_menu_icon_new\";s:5:\"image\";s:20:\"right_menu_icon_font\";s:4:\"menu\";s:20:\"right_icon_font_size\";s:2:\"30\";s:15:\"right_menu_icon\";s:2:\"70\";s:22:\"right_menu_icon_action\";s:1:\"1\";s:14:\"right_icon_url\";s:0:\"\";s:21:\"right_icon_url_target\";s:1:\"1\";s:15:\"right_menu_text\";s:0:\"\";s:27:\"text_before_right_icon_font\";s:540:\"a:17:{s:11:\"font-family\";s:5:\"Dosis\";s:9:\"font-type\";s:6:\"google\";s:5:\"color\";s:7:\"#333333\";s:9:\"font-size\";s:7:\"inherit\";s:11:\"font-weight\";s:7:\"inherit\";s:10:\"font-style\";s:6:\"normal\";s:11:\"line-height\";s:5:\"1.5em\";s:14:\"letter-spacing\";s:6:\"normal\";s:14:\"text-transform\";s:4:\"none\";s:12:\"font-variant\";s:6:\"normal\";s:20:\"text-shadow-location\";s:4:\"none\";s:20:\"text-shadow-distance\";s:3:\"0px\";s:16:\"text-shadow-blur\";s:3:\"0px\";s:17:\"text-shadow-color\";s:7:\"#333333\";s:19:\"text-shadow-opacity\";s:1:\"1\";s:4:\"dark\";s:0:\"\";s:4:\"text\";s:0:\"\";}\";s:21:\"right_icon_top_margin\";s:2:\"10\";s:23:\"right_icon_right_margin\";s:1:\"5\";s:19:\"right_menu_bg_image\";s:0:\"\";s:21:\"right_menu_bg_opacity\";s:3:\"100\";s:24:\"right_menu_bg_image_size\";s:5:\"cover\";s:22:\"right_menu_bg_gradient\";s:0:\"\";s:22:\"right_menu_width_units\";s:1:\"1\";s:16:\"right_menu_width\";s:3:\"450\";s:27:\"right_menu_width_percentage\";s:2:\"90\";s:26:\"right_menu_content_padding\";s:2:\"10\";s:15:\"right_menu_font\";s:547:\"a:17:{s:11:\"font-family\";s:11:\"Droid Serif\";s:9:\"font-type\";s:6:\"google\";s:5:\"color\";s:7:\"#333333\";s:9:\"font-size\";s:7:\"inherit\";s:11:\"font-weight\";s:7:\"inherit\";s:10:\"font-style\";s:6:\"normal\";s:11:\"line-height\";s:5:\"1.5em\";s:14:\"letter-spacing\";s:6:\"normal\";s:14:\"text-transform\";s:4:\"none\";s:12:\"font-variant\";s:6:\"normal\";s:20:\"text-shadow-location\";s:4:\"none\";s:20:\"text-shadow-distance\";s:3:\"0px\";s:16:\"text-shadow-blur\";s:3:\"0px\";s:17:\"text-shadow-color\";s:7:\"#333333\";s:19:\"text-shadow-opacity\";s:1:\"1\";s:4:\"dark\";s:0:\"\";s:4:\"text\";s:0:\"\";}\";s:16:\"overlay_bg_color\";s:21:\"rgba(162,144,249,0.6)\";s:23:\"menu_items_border_color\";s:22:\"rgba(152,134,249,0.57)\";s:15:\"header_bg_color\";s:7:\"#000000\";s:17:\"header_text_color\";s:7:\"#000000\";s:16:\"fbba5f988ff4ea73\";s:0:\"\";s:20:\"left_menu_icon_color\";s:4:\"#FFF\";s:22:\"header_text_after_icon\";s:4:\"#222\";s:19:\"left_panel_bg_color\";s:7:\"#F7F7F7\";s:21:\"left_panel_text_color\";s:4:\"#666\";s:24:\"left_panel_hover_bgcolor\";s:4:\"#666\";s:27:\"left_panel_hover_text_color\";s:4:\"#FFF\";s:26:\"left_panel_submenu_bgcolor\";s:7:\"#3a3a3a\";s:29:\"left_panel_submenu_text_color\";s:4:\"#fff\";s:30:\"left_panel_cancel_button_color\";s:4:\"#666\";s:21:\"right_menu_icon_color\";s:7:\"#000000\";s:23:\"header_text_before_icon\";s:4:\"#222\";s:20:\"right_panel_bg_color\";s:22:\"rgba(247,247,247,0.59)\";s:22:\"right_panel_text_color\";s:7:\"#6371f4\";s:25:\"right_panel_hover_bgcolor\";s:19:\"rgba(249,249,249,0)\";s:28:\"right_panel_hover_text_color\";s:4:\"#FFF\";s:27:\"right_panel_submenu_bgcolor\";s:19:\"rgba(249,249,249,0)\";s:30:\"right_panel_submenu_text_color\";s:7:\"#251f6e\";s:31:\"right_panel_cancel_button_color\";s:4:\"#666\";s:30:\"left_panel_3rd_menu_text_color\";s:4:\"#fff\";s:36:\"left_panel_3rd_menu_text_color_hover\";s:4:\"#ccc\";s:28:\"left_panel_3rd_menu_bg_color\";s:4:\"#222\";s:34:\"left_panel_3rd_menu_bg_color_hover\";s:4:\"#666\";s:31:\"right_panel_3rd_menu_text_color\";s:21:\"rgba(255,255,255,0.6)\";s:37:\"right_panel_3rd_menu_text_color_hover\";s:21:\"rgba(255,255,255,0.6)\";s:29:\"right_panel_3rd_menu_bg_color\";s:21:\"rgba(255,255,255,0.6)\";s:35:\"right_panel_3rd_menu_bg_color_hover\";s:21:\"rgba(255,255,255,0.6)\";}\";', 'yes'),
(342, '_custom_fonts_db_version', '1.3.7', 'yes'),
(343, 'bsf_analytics_installed_time', '1685566477', 'no'),
(344, 'taxonomy_bsf_custom_fonts_3', 'a:9:{s:13:\"font_fallback\";s:0:\"\";s:12:\"font-display\";s:4:\"auto\";s:13:\"font-weight-0\";s:3:\"100\";s:13:\"font_woff_2-0\";s:0:\"\";s:11:\"font_woff-0\";s:0:\"\";s:10:\"font_ttf-0\";s:69:\"http://localhost/wordpress/wp-content/uploads/2023/05/Dongle-Bold.ttf\";s:10:\"font_eot-0\";s:0:\"\";s:10:\"font_svg-0\";s:0:\"\";s:10:\"font_otf-0\";s:0:\"\";}', 'yes'),
(345, 'taxonomy_bsf_custom_fonts_4', 'a:9:{s:13:\"font_fallback\";s:0:\"\";s:12:\"font-display\";s:4:\"auto\";s:13:\"font-weight-0\";s:3:\"100\";s:13:\"font_woff_2-0\";s:0:\"\";s:11:\"font_woff-0\";s:0:\"\";s:10:\"font_ttf-0\";s:70:\"http://localhost/wordpress/wp-content/uploads/2023/05/Dongle-Light.ttf\";s:10:\"font_eot-0\";s:0:\"\";s:10:\"font_svg-0\";s:0:\"\";s:10:\"font_otf-0\";s:0:\"\";}', 'yes'),
(346, 'taxonomy_bsf_custom_fonts_5', 'a:9:{s:13:\"font_fallback\";s:0:\"\";s:12:\"font-display\";s:4:\"auto\";s:13:\"font-weight-0\";s:3:\"100\";s:13:\"font_woff_2-0\";s:0:\"\";s:11:\"font_woff-0\";s:0:\"\";s:10:\"font_ttf-0\";s:71:\"http://localhost/wordpress/wp-content/uploads/2023/05/Inter-Regular.ttf\";s:10:\"font_eot-0\";s:0:\"\";s:10:\"font_svg-0\";s:0:\"\";s:10:\"font_otf-0\";s:0:\"\";}', 'yes'),
(393, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1685907246;s:7:\"checked\";a:1:{s:13:\"funderprotest\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(429, 'bmi_initial_installation_version', '1.2.8', 'yes'),
(431, 'analyst_cache', 's:6:\"a:0:{}\";', 'yes'),
(432, '_irb_h_bn_review', 'a:2:{s:5:\"users\";a:0:{}s:13:\"backup-backup\";i:1685721454;}', 'yes'),
(433, 'bmi_gdrive_banner_dismissed', '1', 'yes'),
(434, 'bmi_hotfixes', 'a:2:{i:0;s:14:\"BMI_D20_M07_01\";i:1;s:18:\"BMI_D17_M12_Y21_02\";}', 'yes'),
(438, 'bsf_analytics_optin', 'no', 'no'),
(480, 'wpmdb_settings', 'a:14:{s:3:\"key\";s:40:\"6or4i1mcSqrIAkfTpXEyeLb8NXfcOZ7iRUyQEqmI\";s:10:\"allow_pull\";b:0;s:10:\"allow_push\";b:0;s:8:\"profiles\";a:0:{}s:7:\"licence\";s:0:\"\";s:10:\"verify_ssl\";b:0;s:17:\"whitelist_plugins\";a:0:{}s:11:\"max_request\";i:1048576;s:22:\"delay_between_requests\";i:0;s:18:\"prog_tables_hidden\";b:1;s:21:\"pause_before_finalize\";b:0;s:14:\"allow_tracking\";N;s:26:\"high_performance_transfers\";b:0;s:18:\"compatibility_mode\";b:1;}', 'no'),
(481, '_site_transient_wpmdb_disabled_legacy_addons', '1', 'no'),
(482, 'wpmdb_saved_profiles', '', 'no'),
(483, 'wpmdb_recent_migrations', '', 'no'),
(484, 'wpmdb_migration_options', '', 'no'),
(485, 'wpmdb_migration_state', '', 'no'),
(486, 'wpmdb_remote_response', '', 'no'),
(487, 'wpmdb_remote_migration_state', '', 'no'),
(488, 'wpmdb_schema_version', '3.6', 'no'),
(492, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1685907246;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:29:\"custom-fonts/custom-fonts.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/custom-fonts\";s:4:\"slug\";s:12:\"custom-fonts\";s:6:\"plugin\";s:29:\"custom-fonts/custom-fonts.php\";s:11:\"new_version\";s:5:\"1.3.7\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/custom-fonts/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/custom-fonts.1.3.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/custom-fonts/assets/icon-256x256.png?rev=1816364\";s:2:\"1x\";s:65:\"https://ps.w.org/custom-fonts/assets/icon-128x128.png?rev=1816364\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/custom-fonts/assets/banner-1544x500.png?rev=1816364\";s:2:\"1x\";s:67:\"https://ps.w.org/custom-fonts/assets/banner-772x250.png?rev=1816364\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.4\";}s:47:\"genesis-custom-blocks/genesis-custom-blocks.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/genesis-custom-blocks\";s:4:\"slug\";s:21:\"genesis-custom-blocks\";s:6:\"plugin\";s:47:\"genesis-custom-blocks/genesis-custom-blocks.php\";s:11:\"new_version\";s:5:\"1.5.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/genesis-custom-blocks/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/genesis-custom-blocks.1.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/genesis-custom-blocks/assets/icon.svg?rev=2373248\";s:3:\"svg\";s:66:\"https://ps.w.org/genesis-custom-blocks/assets/icon.svg?rev=2373248\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/genesis-custom-blocks/assets/banner-1544x500.png?rev=2463780\";s:2:\"1x\";s:76:\"https://ps.w.org/genesis-custom-blocks/assets/banner-772x250.png?rev=2463780\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:33:\"jquery-updater/jquery-updater.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/jquery-updater\";s:4:\"slug\";s:14:\"jquery-updater\";s:6:\"plugin\";s:33:\"jquery-updater/jquery-updater.php\";s:11:\"new_version\";s:5:\"3.7.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/jquery-updater/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/jquery-updater.3.7.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/jquery-updater.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";}}s:7:\"checked\";a:3:{s:29:\"custom-fonts/custom-fonts.php\";s:5:\"1.3.7\";s:47:\"genesis-custom-blocks/genesis-custom-blocks.php\";s:5:\"1.5.1\";s:33:\"jquery-updater/jquery-updater.php\";s:5:\"3.7.0\";}}', 'no'),
(515, '_site_transient_timeout_theme_roots', '1685909046', 'no'),
(516, '_site_transient_theme_roots', 'a:1:{s:13:\"funderprotest\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_menu_item_type', 'custom'),
(6, 6, '_menu_item_menu_item_parent', '0'),
(7, 6, '_menu_item_object_id', '6'),
(8, 6, '_menu_item_object', 'custom'),
(9, 6, '_menu_item_target', ''),
(10, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(11, 6, '_menu_item_xfn', ''),
(12, 6, '_menu_item_url', '#'),
(14, 7, '_menu_item_type', 'custom'),
(15, 7, '_menu_item_menu_item_parent', '0'),
(16, 7, '_menu_item_object_id', '7'),
(17, 7, '_menu_item_object', 'custom'),
(18, 7, '_menu_item_target', ''),
(19, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 7, '_menu_item_xfn', ''),
(21, 7, '_menu_item_url', '#'),
(23, 8, '_menu_item_type', 'custom'),
(24, 8, '_menu_item_menu_item_parent', '0'),
(25, 8, '_menu_item_object_id', '8'),
(26, 8, '_menu_item_object', 'custom'),
(27, 8, '_menu_item_target', ''),
(28, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 8, '_menu_item_xfn', ''),
(30, 8, '_menu_item_url', '#'),
(32, 9, '_menu_item_type', 'custom'),
(33, 9, '_menu_item_menu_item_parent', '0'),
(34, 9, '_menu_item_object_id', '9'),
(35, 9, '_menu_item_object', 'custom'),
(36, 9, '_menu_item_target', ''),
(37, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 9, '_menu_item_xfn', ''),
(39, 9, '_menu_item_url', '#'),
(41, 10, '_menu_item_type', 'custom'),
(42, 10, '_menu_item_menu_item_parent', '0'),
(43, 10, '_menu_item_object_id', '10'),
(44, 10, '_menu_item_object', 'custom'),
(45, 10, '_menu_item_target', ''),
(46, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 10, '_menu_item_xfn', ''),
(48, 10, '_menu_item_url', '#'),
(50, 11, 'rmp_menu_meta', 'a:275:{s:10:\"menu_theme\";s:0:\"\";s:10:\"theme_type\";s:7:\"default\";s:19:\"theme_location_menu\";s:1:\"0\";s:27:\"submenu_submenu_arrow_width\";s:2:\"40\";s:32:\"submenu_submenu_arrow_width_unit\";s:2:\"px\";s:28:\"submenu_submenu_arrow_height\";s:2:\"39\";s:33:\"submenu_submenu_arrow_height_unit\";s:2:\"px\";s:22:\"submenu_arrow_position\";s:5:\"right\";s:35:\"submenu_sub_arrow_background_colour\";s:0:\"\";s:41:\"submenu_sub_arrow_background_hover_colour\";s:0:\"\";s:42:\"submenu_sub_arrow_background_colour_active\";s:0:\"\";s:48:\"submenu_sub_arrow_background_hover_colour_active\";s:0:\"\";s:30:\"submenu_sub_arrow_border_width\";s:0:\"\";s:35:\"submenu_sub_arrow_border_width_unit\";s:2:\"px\";s:31:\"submenu_sub_arrow_border_colour\";s:7:\"#1d4354\";s:37:\"submenu_sub_arrow_border_hover_colour\";s:7:\"#3f3f3f\";s:38:\"submenu_sub_arrow_border_colour_active\";s:7:\"#1d4354\";s:44:\"submenu_sub_arrow_border_hover_colour_active\";s:7:\"#3f3f3f\";s:30:\"submenu_sub_arrow_shape_colour\";s:4:\"#fff\";s:36:\"submenu_sub_arrow_shape_hover_colour\";s:4:\"#fff\";s:37:\"submenu_sub_arrow_shape_colour_active\";s:4:\"#fff\";s:43:\"submenu_sub_arrow_shape_hover_colour_active\";s:4:\"#fff\";s:14:\"use_header_bar\";s:3:\"off\";s:22:\"header_bar_items_order\";a:5:{s:4:\"logo\";s:3:\"off\";s:5:\"title\";s:2:\"on\";s:18:\"additional content\";s:3:\"off\";s:4:\"menu\";s:2:\"on\";s:6:\"search\";s:3:\"off\";}s:16:\"header_bar_title\";s:15:\"Responsive Menu\";s:23:\"header_bar_html_content\";s:0:\"\";s:15:\"header_bar_logo\";s:0:\"\";s:20:\"header_bar_logo_link\";s:0:\"\";s:21:\"header_bar_logo_width\";s:0:\"\";s:26:\"header_bar_logo_width_unit\";s:1:\"%\";s:22:\"header_bar_logo_height\";s:0:\"\";s:27:\"header_bar_logo_height_unit\";s:2:\"px\";s:17:\"header_bar_height\";s:2:\"80\";s:22:\"header_bar_height_unit\";s:2:\"px\";s:18:\"header_bar_padding\";a:4:{s:3:\"top\";s:3:\"0px\";s:5:\"right\";s:2:\"5%\";s:6:\"bottom\";s:3:\"0px\";s:4:\"left\";s:2:\"5%\";}s:15:\"header_bar_font\";s:0:\"\";s:20:\"header_bar_font_size\";s:2:\"14\";s:25:\"header_bar_font_size_unit\";s:2:\"px\";s:21:\"header_bar_text_color\";s:7:\"#ffffff\";s:27:\"header_bar_background_color\";s:7:\"#1d4354\";s:21:\"header_bar_breakpoint\";s:4:\"8000\";s:24:\"header_bar_position_type\";s:5:\"fixed\";s:22:\"header_bar_adjust_page\";s:2:\"on\";s:24:\"header_bar_scroll_enable\";s:3:\"off\";s:34:\"header_bar_scroll_background_color\";s:7:\"#36bdf6\";s:17:\"mobile_breakpoint\";s:3:\"600\";s:17:\"tablet_breakpoint\";s:4:\"1024\";s:16:\"transition_speed\";s:3:\"0.5\";s:14:\"sub_menu_speed\";s:3:\"0.2\";s:22:\"show_menu_on_page_load\";s:3:\"off\";s:22:\"menu_disable_scrolling\";s:3:\"off\";s:12:\"menu_overlay\";s:3:\"off\";s:19:\"menu_overlay_colour\";s:15:\"rgba(0,0,0,0.7)\";s:18:\"desktop_menu_width\";s:0:\"\";s:23:\"desktop_menu_width_unit\";s:1:\"%\";s:24:\"desktop_menu_positioning\";s:8:\"absolute\";s:17:\"desktop_menu_side\";s:4:\"left\";s:20:\"desktop_menu_to_hide\";s:0:\"\";s:26:\"use_current_theme_location\";s:3:\"off\";s:9:\"mega_menu\";a:5:{i:225;s:3:\"off\";i:227;s:3:\"off\";i:229;s:3:\"off\";i:228;s:3:\"off\";i:226;s:3:\"off\";}s:30:\"desktop_submenu_open_animation\";s:4:\"none\";s:36:\"desktop_submenu_open_animation_speed\";s:5:\"100ms\";s:29:\"desktop_submenu_open_on_click\";s:3:\"off\";s:26:\"desktop_menu_hide_and_show\";s:3:\"off\";s:9:\"menu_name\";s:5:\"movil\";s:11:\"menu_to_use\";s:1:\"2\";s:25:\"different_menu_for_mobile\";s:3:\"off\";s:21:\"menu_to_use_in_mobile\";s:9:\"main-menu\";s:15:\"use_mobile_menu\";s:2:\"on\";s:15:\"use_tablet_menu\";s:2:\"on\";s:16:\"use_desktop_menu\";s:2:\"on\";s:15:\"menu_display_on\";s:9:\"all-pages\";s:12:\"menu_to_hide\";s:0:\"\";s:23:\"submenu_descriptions_on\";s:3:\"off\";s:13:\"custom_walker\";s:0:\"\";s:22:\"menu_background_colour\";s:0:\"\";s:10:\"menu_depth\";s:1:\"5\";s:16:\"smooth_scroll_on\";s:3:\"off\";s:19:\"smooth_scroll_speed\";s:3:\"500\";s:15:\"menu_font_icons\";a:2:{s:2:\"id\";a:1:{i:0;s:3:\"225\";}s:4:\"icon\";a:1:{i:0;s:0:\"\";}}s:17:\"menu_links_height\";s:2:\"40\";s:22:\"menu_links_height_unit\";s:2:\"px\";s:22:\"menu_links_line_height\";s:2:\"40\";s:27:\"menu_links_line_height_unit\";s:2:\"px\";s:12:\"menu_depth_0\";s:1:\"5\";s:17:\"menu_depth_0_unit\";s:1:\"%\";s:14:\"menu_font_size\";s:2:\"15\";s:19:\"menu_font_size_unit\";s:2:\"px\";s:9:\"menu_font\";s:0:\"\";s:16:\"menu_font_weight\";s:6:\"normal\";s:19:\"menu_text_alignment\";s:4:\"left\";s:24:\"menu_text_letter_spacing\";s:0:\"\";s:14:\"menu_word_wrap\";s:3:\"off\";s:16:\"menu_link_colour\";s:4:\"#fff\";s:22:\"menu_link_hover_colour\";s:4:\"#fff\";s:24:\"menu_current_link_colour\";s:4:\"#fff\";s:30:\"menu_current_link_hover_colour\";s:4:\"#fff\";s:27:\"menu_item_background_colour\";s:0:\"\";s:33:\"menu_item_background_hover_colour\";s:0:\"\";s:35:\"menu_current_item_background_colour\";s:7:\"#6fda44\";s:41:\"menu_current_item_background_hover_colour\";s:0:\"\";s:17:\"menu_border_width\";s:0:\"\";s:22:\"menu_border_width_unit\";s:2:\"px\";s:23:\"menu_item_border_colour\";s:7:\"#1d4354\";s:29:\"menu_item_border_colour_hover\";s:7:\"#1d4354\";s:31:\"menu_current_item_border_colour\";s:7:\"#1d4354\";s:37:\"menu_current_item_border_hover_colour\";s:7:\"#3f3f3f\";s:20:\"submenu_links_height\";s:2:\"40\";s:25:\"submenu_links_height_unit\";s:2:\"px\";s:25:\"submenu_links_line_height\";s:2:\"40\";s:30:\"submenu_links_line_height_unit\";s:2:\"px\";s:15:\"menu_depth_side\";s:4:\"left\";s:12:\"menu_depth_1\";s:2:\"10\";s:17:\"menu_depth_1_unit\";s:1:\"%\";s:12:\"menu_depth_2\";s:2:\"15\";s:17:\"menu_depth_2_unit\";s:1:\"%\";s:12:\"menu_depth_3\";s:2:\"20\";s:17:\"menu_depth_3_unit\";s:1:\"%\";s:12:\"menu_depth_4\";s:2:\"25\";s:17:\"menu_depth_4_unit\";s:1:\"%\";s:30:\"submenu_item_background_colour\";s:0:\"\";s:36:\"submenu_item_background_hover_colour\";s:0:\"\";s:38:\"submenu_current_item_background_colour\";s:0:\"\";s:44:\"submenu_current_item_background_hover_colour\";s:0:\"\";s:20:\"submenu_border_width\";s:0:\"\";s:25:\"submenu_border_width_unit\";s:2:\"px\";s:26:\"submenu_item_border_colour\";s:7:\"#1d4354\";s:32:\"submenu_item_border_colour_hover\";s:7:\"#1d4354\";s:34:\"submenu_current_item_border_colour\";s:7:\"#1d4354\";s:40:\"submenu_current_item_border_hover_colour\";s:7:\"#3f3f3f\";s:17:\"submenu_font_size\";s:2:\"13\";s:22:\"submenu_font_size_unit\";s:2:\"px\";s:12:\"submenu_font\";s:0:\"\";s:19:\"submenu_font_weight\";s:6:\"normal\";s:27:\"submenu_text_letter_spacing\";s:0:\"\";s:22:\"submenu_text_alignment\";s:4:\"left\";s:19:\"submenu_link_colour\";s:4:\"#fff\";s:25:\"submenu_link_hover_colour\";s:4:\"#fff\";s:27:\"submenu_current_link_colour\";s:4:\"#fff\";s:33:\"submenu_current_link_hover_colour\";s:4:\"#fff\";s:20:\"inactive_arrow_shape\";s:3:\"▼\";s:18:\"active_arrow_shape\";s:3:\"▲\";s:24:\"inactive_arrow_font_icon\";s:0:\"\";s:22:\"active_arrow_font_icon\";s:0:\"\";s:20:\"inactive_arrow_image\";s:0:\"\";s:18:\"active_arrow_image\";s:0:\"\";s:19:\"submenu_arrow_width\";s:2:\"40\";s:24:\"submenu_arrow_width_unit\";s:2:\"px\";s:20:\"submenu_arrow_height\";s:2:\"39\";s:25:\"submenu_arrow_height_unit\";s:2:\"px\";s:14:\"arrow_position\";s:5:\"right\";s:27:\"menu_sub_arrow_shape_colour\";s:4:\"#fff\";s:33:\"menu_sub_arrow_shape_hover_colour\";s:4:\"#fff\";s:34:\"menu_sub_arrow_shape_colour_active\";s:4:\"#fff\";s:40:\"menu_sub_arrow_shape_hover_colour_active\";s:4:\"#fff\";s:27:\"menu_sub_arrow_border_width\";s:0:\"\";s:32:\"menu_sub_arrow_border_width_unit\";s:2:\"px\";s:28:\"menu_sub_arrow_border_colour\";s:7:\"#1d4354\";s:34:\"menu_sub_arrow_border_hover_colour\";s:7:\"#3f3f3f\";s:35:\"menu_sub_arrow_border_colour_active\";s:7:\"#1d4354\";s:41:\"menu_sub_arrow_border_hover_colour_active\";s:7:\"#3f3f3f\";s:32:\"menu_sub_arrow_background_colour\";s:0:\"\";s:38:\"menu_sub_arrow_background_hover_colour\";s:0:\"\";s:39:\"menu_sub_arrow_background_colour_active\";s:19:\"rgba(33,33,33,0.01)\";s:45:\"menu_sub_arrow_background_hover_colour_active\";s:0:\"\";s:13:\"fade_submenus\";s:3:\"off\";s:18:\"fade_submenus_side\";s:4:\"left\";s:19:\"fade_submenus_delay\";s:3:\"100\";s:19:\"fade_submenus_speed\";s:3:\"500\";s:16:\"use_slide_effect\";s:3:\"off\";s:25:\"slide_effect_back_to_text\";s:4:\"Back\";s:19:\"accordion_animation\";s:3:\"off\";s:24:\"auto_expand_all_submenus\";s:3:\"off\";s:28:\"auto_expand_current_submenus\";s:3:\"off\";s:34:\"menu_item_click_to_trigger_submenu\";s:3:\"off\";s:12:\"button_width\";s:2:\"55\";s:17:\"button_width_unit\";s:2:\"px\";s:13:\"button_height\";s:2:\"55\";s:18:\"button_height_unit\";s:2:\"px\";s:24:\"button_background_colour\";s:7:\"#1d4354\";s:30:\"button_background_colour_hover\";s:7:\"#1d4354\";s:31:\"button_background_colour_active\";s:7:\"#6fda44\";s:27:\"toggle_button_border_radius\";s:1:\"5\";s:29:\"button_transparent_background\";s:3:\"off\";s:20:\"button_left_or_right\";s:5:\"right\";s:20:\"button_position_type\";s:5:\"fixed\";s:25:\"button_distance_from_side\";s:1:\"5\";s:30:\"button_distance_from_side_unit\";s:1:\"%\";s:10:\"button_top\";s:2:\"15\";s:15:\"button_top_unit\";s:2:\"px\";s:26:\"button_push_with_animation\";s:3:\"off\";s:22:\"button_click_animation\";s:6:\"boring\";s:18:\"button_line_margin\";s:1:\"5\";s:23:\"button_line_margin_unit\";s:2:\"px\";s:17:\"button_line_width\";s:2:\"25\";s:22:\"button_line_width_unit\";s:2:\"px\";s:18:\"button_line_height\";s:1:\"3\";s:23:\"button_line_height_unit\";s:2:\"px\";s:18:\"button_line_colour\";s:4:\"#fff\";s:24:\"button_line_colour_hover\";s:4:\"#fff\";s:25:\"button_line_colour_active\";s:4:\"#fff\";s:16:\"button_font_icon\";s:0:\"\";s:29:\"button_font_icon_when_clicked\";s:0:\"\";s:12:\"button_image\";s:0:\"\";s:25:\"button_image_when_clicked\";s:0:\"\";s:12:\"button_title\";s:0:\"\";s:17:\"button_title_open\";s:0:\"\";s:21:\"button_title_position\";s:4:\"left\";s:22:\"menu_container_columns\";s:0:\"\";s:11:\"button_font\";s:0:\"\";s:16:\"button_font_size\";s:2:\"14\";s:21:\"button_font_size_unit\";s:2:\"px\";s:24:\"button_title_line_height\";s:2:\"13\";s:29:\"button_title_line_height_unit\";s:2:\"px\";s:18:\"button_text_colour\";s:4:\"#fff\";s:25:\"button_trigger_type_click\";s:2:\"on\";s:25:\"button_trigger_type_hover\";s:3:\"off\";s:20:\"button_click_trigger\";s:0:\"\";s:11:\"items_order\";a:4:{s:5:\"title\";s:2:\"on\";s:18:\"additional content\";s:2:\"on\";s:4:\"menu\";s:2:\"on\";s:6:\"search\";s:2:\"on\";}s:10:\"menu_title\";s:15:\"Responsive Menu\";s:15:\"menu_title_link\";s:0:\"\";s:24:\"menu_title_link_location\";s:5:\"_self\";s:16:\"menu_title_image\";s:0:\"\";s:20:\"menu_title_font_icon\";s:0:\"\";s:26:\"menu_title_section_padding\";a:4:{s:3:\"top\";s:3:\"10%\";s:5:\"right\";s:2:\"5%\";s:6:\"bottom\";s:2:\"0%\";s:4:\"left\";s:2:\"5%\";}s:28:\"menu_title_background_colour\";s:0:\"\";s:34:\"menu_title_background_hover_colour\";s:0:\"\";s:20:\"menu_title_font_size\";s:2:\"25\";s:25:\"menu_title_font_size_unit\";s:2:\"px\";s:20:\"menu_title_alignment\";s:6:\"center\";s:22:\"menu_title_font_weight\";s:3:\"400\";s:22:\"menu_title_font_family\";s:0:\"\";s:17:\"menu_title_colour\";s:7:\"#ffffff\";s:23:\"menu_title_hover_colour\";s:4:\"#fff\";s:22:\"menu_title_image_width\";s:0:\"\";s:27:\"menu_title_image_width_unit\";s:1:\"%\";s:23:\"menu_title_image_height\";s:0:\"\";s:28:\"menu_title_image_height_unit\";s:2:\"px\";s:23:\"menu_additional_content\";s:24:\"Add more content here...\";s:31:\"menu_additional_section_padding\";a:4:{s:3:\"top\";s:2:\"0%\";s:5:\"right\";s:2:\"5%\";s:6:\"bottom\";s:3:\"10%\";s:4:\"left\";s:2:\"5%\";}s:33:\"menu_additional_content_font_size\";s:2:\"16\";s:38:\"menu_additional_content_font_size_unit\";s:2:\"px\";s:33:\"menu_additional_content_alignment\";s:6:\"center\";s:30:\"menu_additional_content_colour\";s:7:\"#6fda44\";s:20:\"menu_search_box_text\";s:6:\"Search\";s:20:\"menu_search_box_code\";s:0:\"\";s:27:\"menu_search_section_padding\";a:4:{s:3:\"top\";s:2:\"5%\";s:5:\"right\";s:2:\"5%\";s:6:\"bottom\";s:2:\"5%\";s:4:\"left\";s:2:\"5%\";}s:22:\"menu_search_box_height\";s:2:\"45\";s:27:\"menu_search_box_height_unit\";s:2:\"px\";s:29:\"menu_search_box_border_radius\";s:2:\"30\";s:27:\"menu_search_box_text_colour\";s:7:\"#1d4354\";s:33:\"menu_search_box_background_colour\";s:7:\"#ffffff\";s:34:\"menu_search_box_placeholder_colour\";s:7:\"#1d4354\";s:29:\"menu_search_box_border_colour\";s:0:\"\";s:20:\"menu_section_padding\";a:4:{s:3:\"top\";s:3:\"0px\";s:5:\"right\";s:3:\"0px\";s:6:\"bottom\";s:3:\"0px\";s:4:\"left\";s:3:\"0px\";}s:10:\"menu_width\";s:2:\"75\";s:15:\"menu_width_unit\";s:1:\"%\";s:18:\"menu_maximum_width\";s:3:\"350\";s:23:\"menu_maximum_width_unit\";s:2:\"px\";s:18:\"menu_minimum_width\";s:3:\"320\";s:23:\"menu_minimum_width_unit\";s:2:\"px\";s:16:\"menu_auto_height\";s:3:\"off\";s:22:\"menu_container_padding\";a:4:{s:3:\"top\";s:3:\"0px\";s:5:\"right\";s:3:\"0px\";s:6:\"bottom\";s:3:\"0px\";s:4:\"left\";s:3:\"0px\";}s:32:\"menu_container_background_colour\";s:7:\"#1d4354\";s:21:\"menu_background_image\";s:0:\"\";s:14:\"animation_type\";s:5:\"slide\";s:16:\"menu_appear_from\";s:4:\"left\";s:15:\"animation_speed\";s:3:\"0.5\";s:12:\"page_wrapper\";s:4:\"body\";s:24:\"menu_close_on_body_click\";s:3:\"off\";s:20:\"menu_close_on_scroll\";s:3:\"off\";s:24:\"menu_close_on_link_click\";s:3:\"off\";s:21:\"enable_touch_gestures\";s:3:\"off\";s:18:\"menu_show_on_pages\";a:0:{}s:7:\"menu_id\";i:11;}'),
(51, 11, '_edit_lock', '1685382948:1'),
(52, 12, '_edit_lock', '1685384534:1'),
(53, 14, '_wp_trash_meta_status', 'publish'),
(54, 14, '_wp_trash_meta_time', '1685389268'),
(55, 2, '_edit_lock', '1685647906:1'),
(56, 16, '_wp_attached_file', '2023/05/HERO.png'),
(57, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1130;s:6:\"height\";i:958;s:4:\"file\";s:16:\"2023/05/HERO.png\";s:8:\"filesize\";i:516920;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 31, '_edit_lock', '1685444452:1'),
(59, 31, '_wp_trash_meta_status', 'publish'),
(60, 31, '_wp_trash_meta_time', '1685444463'),
(61, 52, '_edit_lock', '1685460241:1'),
(62, 52, '_wp_trash_meta_status', 'publish'),
(63, 52, '_wp_trash_meta_time', '1685460273'),
(64, 54, '_edit_lock', '1685460283:1'),
(65, 54, '_wp_trash_meta_status', 'publish'),
(66, 54, '_wp_trash_meta_time', '1685460286'),
(67, 55, '_wp_trash_meta_status', 'publish'),
(68, 55, '_wp_trash_meta_time', '1685460370'),
(69, 57, '_wp_trash_meta_status', 'publish'),
(70, 57, '_wp_trash_meta_time', '1685460384'),
(73, 61, '_wp_attached_file', '2023/05/Dongle-Bold.ttf'),
(74, 61, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:4476536;}'),
(75, 6, '_wp_old_date', '2023-05-29'),
(76, 7, '_wp_old_date', '2023-05-29'),
(77, 8, '_wp_old_date', '2023-05-29'),
(78, 9, '_wp_old_date', '2023-05-29'),
(79, 10, '_wp_old_date', '2023-05-29'),
(80, 62, '_wp_attached_file', '2023/05/Dongle-Light.ttf'),
(81, 62, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:4386532;}'),
(82, 63, '_wp_attached_file', '2023/05/Inter-Regular.ttf'),
(83, 63, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:303504;}'),
(84, 1, '_wp_trash_meta_status', 'publish'),
(85, 1, '_wp_trash_meta_time', '1685648064'),
(86, 1, '_wp_desired_post_slug', 'hello-world'),
(87, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(88, 65, '_edit_lock', '1685648153:1'),
(89, 66, '_menu_item_type', 'custom'),
(90, 66, '_menu_item_menu_item_parent', '6'),
(91, 66, '_menu_item_object_id', '66'),
(92, 66, '_menu_item_object', 'custom'),
(93, 66, '_menu_item_target', ''),
(94, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 66, '_menu_item_xfn', ''),
(96, 66, '_menu_item_url', '#'),
(98, 67, '_menu_item_type', 'custom'),
(99, 67, '_menu_item_menu_item_parent', '6'),
(100, 67, '_menu_item_object_id', '67'),
(101, 67, '_menu_item_object', 'custom'),
(102, 67, '_menu_item_target', ''),
(103, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 67, '_menu_item_xfn', ''),
(105, 67, '_menu_item_url', '#'),
(107, 68, '_menu_item_type', 'custom'),
(108, 68, '_menu_item_menu_item_parent', '6'),
(109, 68, '_menu_item_object_id', '68'),
(110, 68, '_menu_item_object', 'custom'),
(111, 68, '_menu_item_target', ''),
(112, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 68, '_menu_item_xfn', ''),
(114, 68, '_menu_item_url', '#'),
(116, 69, '_menu_item_type', 'custom'),
(117, 69, '_menu_item_menu_item_parent', '6'),
(118, 69, '_menu_item_object_id', '69'),
(119, 69, '_menu_item_object', 'custom'),
(120, 69, '_menu_item_target', ''),
(121, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 69, '_menu_item_xfn', ''),
(123, 69, '_menu_item_url', '#'),
(125, 6, '_wp_old_date', '2023-05-31'),
(126, 7, '_wp_old_date', '2023-05-31'),
(127, 8, '_wp_old_date', '2023-05-31'),
(128, 9, '_wp_old_date', '2023-05-31'),
(129, 10, '_wp_old_date', '2023-05-31'),
(130, 6, '_mobmenu_icon', ''),
(131, 7, '_mobmenu_icon', ''),
(132, 8, '_mobmenu_icon', ''),
(133, 9, '_mobmenu_icon', ''),
(134, 10, '_mobmenu_icon', ''),
(135, 65, '_customize_restore_dismissed', '1'),
(136, 70, '_wp_attached_file', '2023/06/Vector-2.png'),
(137, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:26;s:6:\"height\";i:16;s:4:\"file\";s:20:\"2023/06/Vector-2.png\";s:8:\"filesize\";i:218;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 6, '_wp_old_date', '2023-06-01'),
(139, 66, '_wp_old_date', '2023-06-01'),
(140, 67, '_wp_old_date', '2023-06-01'),
(141, 68, '_wp_old_date', '2023-06-01'),
(142, 69, '_wp_old_date', '2023-06-01'),
(143, 7, '_wp_old_date', '2023-06-01'),
(144, 8, '_wp_old_date', '2023-06-01'),
(145, 9, '_wp_old_date', '2023-06-01'),
(146, 10, '_wp_old_date', '2023-06-01'),
(147, 12, '_wp_trash_meta_status', 'publish'),
(148, 12, '_wp_trash_meta_status', 'publish'),
(149, 12, '_wp_trash_meta_time', '1685751539'),
(150, 12, '_wp_trash_meta_time', '1685751539'),
(151, 12, '_wp_desired_post_slug', 'home'),
(152, 12, '_wp_desired_post_slug', 'home');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-05-29 15:04:34', '2023-05-29 15:04:34', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2023-06-01 19:34:24', '2023-06-01 19:34:24', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2023-05-29 15:04:34', '2023-05-29 15:04:34', '<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/hero {\"new-field\":\"hero\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:genesis-custom-blocks/h3 /-->\n\n<!-- wp:columns {\"className\":\".container {   display: flex;   justify-content: center;  }\"} -->\n<div class=\"wp-block-columns .container { display: flex; justify-content: center; }\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-05-30 13:14:29', '2023-05-30 13:14:29', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-05-29 15:04:34', '2023-05-29 15:04:34', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-05-29 15:04:34', '2023-05-29 15:04:34', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-05-29 15:04:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-05-29 15:04:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(6, 1, '2023-06-02 18:49:44', '2023-05-29 17:46:46', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-06-02 18:49:44', '2023-06-02 18:49:44', '', 0, 'http://localhost/wordpress/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2023-06-02 18:49:44', '2023-05-29 17:46:46', '', 'Affiliates', '', 'publish', 'closed', 'closed', '', 'affiliates', '', '', '2023-06-02 18:49:44', '2023-06-02 18:49:44', '', 0, 'http://localhost/wordpress/?p=7', 6, 'nav_menu_item', '', 0),
(8, 1, '2023-06-02 18:49:44', '2023-05-29 17:46:46', '', 'Trading', '', 'publish', 'closed', 'closed', '', 'trading', '', '', '2023-06-02 18:49:44', '2023-06-02 18:49:44', '', 0, 'http://localhost/wordpress/?p=8', 7, 'nav_menu_item', '', 0),
(9, 1, '2023-06-02 18:49:44', '2023-05-29 17:46:46', '', 'Resources', '', 'publish', 'closed', 'closed', '', 'resources', '', '', '2023-06-02 18:49:44', '2023-06-02 18:49:44', '', 0, 'http://localhost/wordpress/?p=9', 8, 'nav_menu_item', '', 0),
(10, 1, '2023-06-02 18:49:44', '2023-05-29 17:46:46', '', 'Markets', '', 'publish', 'closed', 'closed', '', 'markets', '', '', '2023-06-02 18:49:44', '2023-06-02 18:49:44', '', 0, 'http://localhost/wordpress/?p=10', 9, 'nav_menu_item', '', 0),
(11, 1, '2023-05-29 17:55:47', '2023-05-29 17:55:47', '', 'movil', '', 'publish', 'closed', 'closed', '', 'movil', '', '', '2023-05-29 17:55:47', '2023-05-29 17:55:47', '', 0, 'http://localhost/wordpress/rmp_menu/movil/', 0, 'rmp_menu', '', 0),
(12, 1, '2023-05-29 18:24:14', '2023-05-29 18:24:14', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2023-06-03 00:18:59', '2023-06-03 00:18:59', '', 0, 'http://localhost/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-05-29 18:24:14', '2023-05-29 18:24:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-05-29 18:24:14', '2023-05-29 18:24:14', '', 12, 'http://localhost/wordpress/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-05-29 19:41:08', '2023-05-29 19:41:08', '{\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-29 19:41:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '57281604-86a1-484a-85d3-cae5b85feaae', '', '', '2023-05-29 19:41:08', '2023-05-29 19:41:08', '', 0, 'http://localhost/wordpress/2023/05/29/57281604-86a1-484a-85d3-cae5b85feaae/', 0, 'customize_changeset', '', 0),
(16, 1, '2023-05-30 08:50:44', '2023-05-30 08:50:44', '', 'HERO', '', 'inherit', 'open', 'closed', '', 'hero', '', '', '2023-05-30 08:50:44', '2023-05-30 08:50:44', '', 2, 'http://localhost/wordpress/wp-content/uploads/2023/05/HERO.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2023-05-30 08:54:31', '2023-05-30 08:54:31', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"className\":\"/* Tighter Spreads \\u0026 Faster Execution */  width: 491px; height: 102px;  font-family: \'Dongle\'; font-style: normal; font-weight: 700; font-size: 64px; line-height: 80%; /* or 51px */  color: #251F6E;   /* Inside auto layout */ flex: none; order: 0; flex-grow: 0;\"} -->\n<h2 class=\"wp-block-heading /* Tighter Spreads &amp; Faster Execution */ width: 491px; height: 102px; font-family: \'Dongle\'; font-style: normal; font-weight: 700; font-size: 64px; line-height: 80%; or 51px color: #251F6E; Inside auto layout flex: none; order: 0; flex-grow:\">Tighter Spreads &amp; Faster<br>Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz!<br>With quality execution and some of the best<br>trading conditions in the industry, your trading<br>experience will be none other than epic.<br>No dealing desk or requotes<br>Commissions as low as $0</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":16,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wordpress/wp-content/uploads/2023/05/HERO.png\" alt=\"\" class=\"wp-image-16\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 08:54:31', '2023-05-30 08:54:31', '', 2, 'http://localhost/wordpress/?p=17', 0, 'revision', '', 0),
(19, 1, '2023-05-30 09:04:33', '2023-05-30 09:04:33', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"className\":\"/* Tighter Spreads \\u0026 Faster Execution */  width: 491px; height: 102px;  font-family: \'Dongle\'; font-style: normal; font-weight: 700; font-size: 64px; line-height: 80%; /* or 51px */  color: #251F6E;   /* Inside auto layout */ flex: none; order: 0; flex-grow: 0;\"} -->\n<h2 class=\"wp-block-heading /* Tighter Spreads &amp; Faster Execution */ width: 491px; height: 102px; font-family: \'Dongle\'; font-style: normal; font-weight: 700; font-size: 64px; line-height: 80%; or 51px color: #251F6E; Inside auto layout flex: none; order: 0; flex-grow:\">Tighter Spreads &amp; Faster<br>Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz!<br>With quality execution and some of the best<br>trading conditions in the industry, your trading<br>experience will be none other than epic.<br>No dealing desk or requotes<br>Commissions as low as $0</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":16,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wordpress/wp-content/uploads/2023/05/HERO.png\" alt=\"\" class=\"wp-image-16\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 09:04:33', '2023-05-30 09:04:33', '', 2, 'http://localhost/wordpress/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-05-30 09:10:05', '2023-05-30 09:10:05', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"className\":\"text-red-500 font-bold\"} -->\n<h2 class=\"wp-block-heading text-red-500 font-bold\">\n  Tighter Spreads &amp; Faster<br>Execution\n</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz!<br>With quality execution and some of the best<br>trading conditions in the industry, your trading<br>experience will be none other than epic.<br>No dealing desk or requotes<br>Commissions as low as $0</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":16,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wordpress/wp-content/uploads/2023/05/HERO.png\" alt=\"\" class=\"wp-image-16\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 09:10:05', '2023-05-30 09:10:05', '', 2, 'http://localhost/wordpress/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-05-30 09:10:35', '2023-05-30 09:10:35', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"className\":\"text-red-500 font-bold\"} -->\n<h2 class=\"wp-block-heading font-dongle font-bold text-64 leading-5\">\n  Tighter Spreads &amp; Faster<br>Execution\n</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz!<br>With quality execution and some of the best<br>trading conditions in the industry, your trading<br>experience will be none other than epic.<br>No dealing desk or requotes<br>Commissions as low as $0</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":16,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wordpress/wp-content/uploads/2023/05/HERO.png\" alt=\"\" class=\"wp-image-16\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 09:10:35', '2023-05-30 09:10:35', '', 2, 'http://localhost/wordpress/?p=21', 0, 'revision', '', 0),
(23, 1, '2023-05-30 09:12:59', '2023-05-30 09:12:59', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"className\":\"font-dongle font-bold text-64 leading-5\"} -->\n<h2 class=\"wp-block-heading tighter-spreads\">Tighter Spreads & Faster<br>Execution</h2>\n\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz!<br>With quality execution and some of the best<br>trading conditions in the industry, your trading<br>experience will be none other than epic.<br>No dealing desk or requotes<br>Commissions as low as $0</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":16,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wordpress/wp-content/uploads/2023/05/HERO.png\" alt=\"\" class=\"wp-image-16\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 09:12:59', '2023-05-30 09:12:59', '', 2, 'http://localhost/wordpress/?p=23', 0, 'revision', '', 0),
(25, 1, '2023-05-30 09:15:12', '2023-05-30 09:15:12', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading tighter-spreads\">Tighter Spreads &amp; Faster<br>Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz!<br>With quality execution and some of the best<br>trading conditions in the industry, your trading<br>experience will be none other than epic.<br>No dealing desk or requotes<br>Commissions as low as $0</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":16,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wordpress/wp-content/uploads/2023/05/HERO.png\" alt=\"\" class=\"wp-image-16\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 09:15:12', '2023-05-30 09:15:12', '', 2, 'http://localhost/wordpress/?p=25', 0, 'revision', '', 0),
(27, 1, '2023-05-30 09:23:38', '0000-00-00 00:00:00', '{\"genesis-custom-blocks\\/example-block\":{\"name\":\"example-block\",\"title\":\"Example Block\",\"icon\":\"genesis_custom_blocks\",\"category\":{\"slug\":\"text\",\"title\":\"Text\",\"icon\":null},\"keywords\":[\"sample\",\"tutorial\",\"template\"],\"fields\":{\"title\":{\"name\":\"title\",\"label\":\"Title\",\"control\":\"text\",\"type\":\"string\",\"location\":\"editor\",\"order\":0,\"help\":\"The primary display text\",\"default\":\"\",\"placeholder\":\"\",\"maxlength\":null},\"description\":{\"name\":\"description\",\"label\":\"Description\",\"control\":\"textarea\",\"type\":\"string\",\"location\":\"editor\",\"order\":1,\"help\":\"\",\"default\":\"\",\"placeholder\":\"\",\"maxlength\":null,\"number_rows\":4},\"button-text\":{\"name\":\"button-text\",\"label\":\"Button Text\",\"control\":\"text\",\"type\":\"string\",\"location\":\"editor\",\"order\":2,\"help\":\"A Call-to-Action\",\"default\":\"\",\"placeholder\":\"\",\"maxlength\":null},\"button-link\":{\"name\":\"button-link\",\"label\":\"Button Link\",\"control\":\"url\",\"type\":\"string\",\"location\":\"editor\",\"order\":3,\"help\":\"The destination URL\",\"default\":\"\",\"placeholder\":\"\"}}}}', 'Example Block', '', 'draft', 'closed', 'closed', '', 'example-block', '', '', '2023-05-30 09:23:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=27', 0, 'genesis_custom_block', '', 0),
(28, 1, '2023-05-30 09:23:58', '2023-05-30 09:23:58', '{\"genesis-custom-blocks/hero\":{\"name\":\"hero\",\"title\":\"Hero\",\"excluded\":[],\"icon\":\"genesis_custom_blocks\",\"category\":{\"icon\":null,\"slug\":\"reusable\",\"title\":\"Reusable Blocks\"},\"keywords\":[],\"fields\":{\"new-field\":{\"location\":\"editor\",\"width\":\"100\",\"help\":\"\",\"default\":\"\",\"placeholder\":\"\",\"maxlength\":\"\",\"name\":\"new-field\",\"label\":\"hero\",\"control\":\"text\",\"type\":\"string\",\"order\":0}},\"templateMarkup\":\"<section>\\r\\n  <div class=\\\"hero-container\\\">\\r\\n    <div class=\\\"content-container\\\">\\r\\n      <h2 class=\\\"headline\\\">Tighter Spreads & Faster Execution</h2>\\r\\n      <p class=\\\"description\\\">With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\\r\\n      <ul class=\\\"custom-list\\\">\\r\\n        <li><span class=\\\"bullet-icon\\\"><svg width=\\\"16\\\" height=\\\"15\\\" viewBox=\\\"0 0 16 15\\\" fill=\\\"none\\\" xmlns=\\\"http://www.w3.org/2000/svg\\\"><ellipse cx=\\\"7.92146\\\" cy=\\\"7.5\\\" rx=\\\"7.42146\\\" ry=\\\"7.5\\\" fill=\\\"#6371F4\\\"/></svg></span>No dealing desk or requotes</li>\\r\\n        <li><span class=\\\"bullet-icon\\\"><svg width=\\\"16\\\" height=\\\"15\\\" viewBox=\\\"0 0 16 15\\\" fill=\\\"none\\\" xmlns=\\\"http://www.w3.org/2000/svg\\\"><ellipse cx=\\\"7.92146\\\" cy=\\\"7.5\\\" rx=\\\"7.42146\\\" ry=\\\"7.5\\\" fill=\\\"#6371F4\\\"/></svg></span>Commissions as low as $0</li>\\r\\n      </ul>\\r\\n    </div>\\r\\n    <div class=\\\"image-container\\\">\\r\\n      <img class=\\\"hero-image\\\" alt=\\\"hero\\\" src=\\\"https://i.ibb.co/KsPxPvX/HERO.png\\\">\\r\\n    </div>\\r\\n  </div>\\r\\n</section>\\r\\n\",\"previewAttributes\":{\"new-field\":\"hero\"},\"templateCss\":\"section {\\n  padding: 40px 0;\\n}\\n\\n.hero-container {\\n  display: flex;\\n  flex-wrap: wrap-reverse;\\n  align-items: center;\\n  justify-content: center;\\n  max-width: 1200px;\\n  margin: 0 auto;\\n  margin-bottom: 10px;\\n}\\n\\n.content-container {\\n  flex: 1;\\n  margin-top: 50px;\\n  margin-right: 30px;\\n  text-align: left;\\n  max-width: 800px;\\n}\\n\\n.image-container {\\n  margin-top: 7px;\\n  position: relative;\\n  flex: 2; \\n  max-width: 100%;\\n  margin-right: 20px;\\n  border-radius: 16px;\\n  overflow: hidden;\\n  \\n}\\n  \\n.hero-image {\\n  width: 100%;\\n  height: auto;\\n  object-fit: cover;\\n  object-position: center top;\\n  border-radius: 16px;\\n      margin-bottom: 10px;\\n\\n}\\n\\n.headline {\\n  width: 100%;\\n  font-family: \'Dongle\';\\n  font-style: normal;\\n  font-weight: 700;\\n  font-size: 50px;\\n  line-height: 90%;\\n  color: #251F6E;\\n  margin-bottom: 16px;\\n}\\n\\n.description {\\n  width: 100%;\\n  font-family: \'Dongle\';\\n  font-style: normal;\\n  font-weight: 700;\\n  font-size: 24px;\\n  line-height: 36px;\\n  color: #848484;\\n  margin-top: -20px;\\n}\\n\\n.bullet-icon {\\n  display: inline-block;\\n  vertical-align: middle;\\n  margin-right: 8px;\\n  width: 14.84px;\\n  height: 15px;\\n  background: #6371F4;\\n  border-radius: 50%;\\n  flex: none;\\n  order: 0;\\n  flex-grow: 0;\\n}\\n\\n.custom-list {\\n  list-style: none;\\n  padding: 0;\\n}\\n\\n.custom-list li {\\n  font-family: \'Dongle\';\\n  font-style: normal;\\n  font-weight: 400;\\n  font-size: 24px;\\n  line-height: 120%;\\n  color: #797979;\\n  margin-bottom: 16px;\\n}\\n\\n@media (max-width: 767px) {\\n  .hero-container {\\n    flex-direction: column-reverse;\\n  }\\n\\n  .content-container {\\n    margin-right: 0;\\n    text-align: center;\\n  }\\n\\n  .image-container {\\n    margin-right: 0;\\n    margin-bottom: 20px;\\n    z-index: 1; \\n  }\\n\\n  .mobile-new {\\n    position: absolute;\\n    left: 10px; \\n    z-index: 9999; \\n  }\\n}\\n\"}}', 'Hero', '', 'publish', 'closed', 'closed', '', 'hero', '', '', '2023-06-03 17:41:00', '2023-06-03 17:41:00', '', 0, 'http://localhost/wordpress/?post_type=genesis_custom_block&#038;p=28', 0, 'genesis_custom_block', '', 0),
(29, 1, '2023-05-30 09:28:34', '2023-05-30 09:28:34', '<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/hero {\"new-field\":\"hero\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 09:28:34', '2023-05-30 09:28:34', '', 2, 'http://localhost/wordpress/?p=29', 0, 'revision', '', 0),
(31, 1, '2023-05-30 11:01:03', '2023-05-30 11:01:03', '{\n    \"funderprotest::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 11:00:52\"\n    },\n    \"custom_css[funderprotest]\": {\n        \"value\": \".entry-title {\\n    display: none;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 11:01:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c88fcebe-41cc-40a4-be77-80c510cbb4fb', '', '', '2023-05-30 11:01:03', '2023-05-30 11:01:03', '', 0, 'http://localhost/wordpress/?p=31', 0, 'customize_changeset', '', 0),
(32, 1, '2023-05-30 11:01:03', '2023-05-30 11:01:03', '.entry-title {\n    display: none;\n}\n.widget-area{\n	    display: none;\n}\n', 'funderprotest', '', 'publish', 'closed', 'closed', '', 'funderprotest', '', '', '2023-05-30 15:26:24', '2023-05-30 15:26:24', '', 0, 'http://localhost/wordpress/2023/05/30/funderprotest/', 0, 'custom_css', '', 0),
(33, 1, '2023-05-30 11:01:03', '2023-05-30 11:01:03', '.entry-title {\n    display: none;\n}', 'funderprotest', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-05-30 11:01:03', '2023-05-30 11:01:03', '', 32, 'http://localhost/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2023-05-30 11:35:07', '2023-05-30 11:35:07', '{\"genesis-custom-blocks/h3\":{\"name\":\"h3\",\"title\":\"h3\",\"excluded\":[],\"icon\":\"genesis_custom_blocks\",\"category\":{\"icon\":null,\"slug\":\"text\",\"title\":\"Text\"},\"keywords\":[],\"fields\":{},\"templateMarkup\":\"<div class=\\\"title\\\">\\r\\n\\r\\n  <div class=\\\"title-text\\\">\\r\\n    Tools to Compliment <br>Your Trading\\r\\n  </div>\\r\\n  <div class=\\\"text\\\">\\r\\n    Access news & economic calendar, technical indicators & charts, Forex Calculators, educational resources and many more tools to help you excel.\\r\\n  </div>\\r\\n</div>\\r\\n\",\"templateCss\":\".title {\\r\\n  display: flex;\\r\\n  justify-content: center;\\r\\n  align-items: center;\\r\\n  text-align: center;\\r\\n  flex-direction: column;\\r\\n  width: 100%;\\r\\n  margin-top: -55px;\\r\\n  overflow: hidden;\\r\\n}\\r\\n\\r\\n.title-text {\\r\\n  font-family: \'Dongle\';\\r\\n  font-style: normal;\\r\\n  font-weight: 700;\\r\\n  font-size: 60px;\\r\\n  line-height: 1.2;\\r\\nline-height: 0.6; \\r\\n\\r\\n  color: #251F6E;\\r\\n}\\r\\n\\r\\n.text {\\r\\n  width: 758px;\\r\\n  height: 44px;\\r\\n  font-family: \'Inter\';\\r\\n  font-style: normal;\\r\\n  font-weight: 600;\\r\\n  font-size: 15px;\\r\\n  line-height: 22px;\\r\\n  text-align: center;\\r\\n  color: #848484;\\r\\n  margin-top: 16px;\\r\\n}\\r\\n\\r\\n@media only screen and (max-width: 600px) {\\r\\n  .title {\\r\\n    width: 90%;\\r\\n  }\\r\\n\\r\\n  .text {\\r\\n    width: 100%; \\r\\n    word-wrap: break-word; \\r\\n    white-space: normal;\\r\\n  }\\r\\n}\"}}', 'h3', '', 'publish', 'closed', 'closed', '', 'h3', '', '', '2023-06-03 17:42:27', '2023-06-03 17:42:27', '', 0, 'http://localhost/wordpress/?post_type=genesis_custom_block&#038;p=34', 0, 'genesis_custom_block', '', 0),
(35, 1, '2023-05-30 11:35:54', '2023-05-30 11:35:54', '<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/hero {\"new-field\":\"hero\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:genesis-custom-blocks/h3 /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 11:35:54', '2023-05-30 11:35:54', '', 2, 'http://localhost/wordpress/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-05-30 11:51:51', '2023-05-30 11:51:51', '{\"genesis-custom-blocks/features\":{\"name\":\"features\",\"title\":\"features\",\"excluded\":[],\"icon\":\"genesis_custom_blocks\",\"category\":{\"icon\":null,\"slug\":\"reusable\",\"title\":\"Reusable Blocks\"},\"keywords\":[],\"fields\":{},\"templateMarkup\":\"<div class=\\\"container-feature\\\">\\r\\n  <div class=\\\"custom-block\\\">\\r\\n    <img src=\\\"https://i.ibb.co/Bss2ZLH/Group-6666.png\\\" alt=\\\"Economic Calendar\\\" class=\\\"image\\\">\\r\\n    <hr/>\\r\\n    <h4 class=\\\"title\\\">Economic Calendar</h4>\\r\\n    <p class=\\\"description\\\">Access all major events & economic news that impact financial markets.</p>\\r\\n  </div>\\r\\n  <div class=\\\"custom-block\\\">\\r\\n    <img src=\\\"https://i.ibb.co/CQQ8GjN/Group-6665.png\\\" alt=\\\"Economic Calendar\\\" class=\\\"image\\\">\\r\\n    <hr/>\\r\\n    <h4 class=\\\"title-center\\\">Trading Calculators</h4>\\r\\n    <p class=\\\"description\\\">Make trading calculations in real-time & forecast the potential growth of your account.</p>\\r\\n  </div>\\r\\n  <div class=\\\"custom-block\\\">\\r\\n    <img src=\\\"https://i.ibb.co/JHTH1nR/Group-6667.png\\\" alt=\\\"Economic Calendar\\\" class=\\\"image\\\">\\r\\n    <hr/>\\r\\n    <h4 class=\\\"title\\\">Educational Resources</h4>\\r\\n    <p class=\\\"description\\\">From top tips & trading psychology to more ways to earn, we make learning more fun.</p>\\r\\n  </div>\\r\\n</div>\\r\\n\",\"templateCss\":\".container-feature {\\n  display: flex;\\n  flex-wrap: wrap;\\n  justify-content: center;\\n  align-items: center;\\n  margin-top: -40px; /* Ajusta el margen superior en PC */\\n}\\n\\n.custom-block {\\n  flex-basis: 100%;\\n  display: flex;\\n  flex-direction: column;\\n  align-items: center;\\n  text-align: center;\\n  margin-bottom: 20px;\\n}\\n\\n.custom-block .image {\\n  width: 241.87px;\\n  margin-bottom: 10px;\\n  height: 251.55px;\\n}\\n\\n.custom-block .title {\\n  font-family: \'Dongle\';\\n  font-style: normal;\\n  margin-top: 0;\\n  margin-bottom: 10px;\\n  font-weight: 500;\\n  font-size: 38px;\\n  line-height: 1;\\n  display: flex;\\n  align-items: center;\\n  color: #251F6E !important; /* Agrega !important */\\n \\n  text-overflow: ellipsis;\\n  white-space: nowrap;\\n}\\n.title-center {\\n    margin-top: -30px;\\n  font-family: \'Dongle\';\\n  font-style: normal;\\n  margin-bottom: 10px;\\n  font-weight: 500;\\n  font-size: 38px;\\n  line-height: 1;\\n  display: flex;\\n  align-items: center;\\n  color: #251F6E !important; /* Agrega !important */\\n \\n  text-overflow: ellipsis;\\n  white-space: nowrap;\\n}\\n\\n.custom-block .description {\\n  font-family: \'Inter\';\\n  font-style: normal;\\n  font-weight: 400;\\n  font-size: 18px;\\n  margin-top: 10px;\\n  line-height: 22px;\\n  text-align: center;\\n  color: #474747;\\n}\\n\\n@media screen and (min-width: 768px) {\\n  .custom-block {\\n    flex-basis: calc(33.33% - 20px);\\n    margin: 10px;\\n  }\\n}\\n\\n@media screen and (max-width: 767px) {\\n  .custom-block {\\n    flex-basis: 100%; /* Ajusta el ancho en dispositivos móviles */\\n    margin-top: 190px; /* Ajusta el margen superior en dispositivos móviles */\\n  }\\n}\\n\\n.custom-block:nth-child(2) {\\n  box-sizing: border-box;\\n  display: flex;\\n  flex-direction: column;\\n  align-items: center;\\n  padding: 32px;\\n  gap: 24px;\\n  width: 350px;\\n  height: 500.94px;\\n  border: 4px solid #6371F4;\\n  border-radius: 24px;\\n  flex: none;\\n  flex-grow: 0;\\n  margin-top: 50px; /* Ajustar el margen superior para moverlo hacia abajo */\\n}\",\"displayModal\":true}}', 'features', '', 'publish', 'closed', 'closed', '', 'features', '', '', '2023-06-03 15:25:22', '2023-06-03 15:25:22', '', 0, 'http://localhost/wordpress/?post_type=genesis_custom_block&#038;p=36', 0, 'genesis_custom_block', '', 0),
(38, 1, '2023-05-30 11:53:40', '2023-05-30 11:53:40', '<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/hero {\"new-field\":\"hero\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:genesis-custom-blocks/h3 /-->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 11:53:40', '2023-05-30 11:53:40', '', 2, 'http://localhost/wordpress/?p=38', 0, 'revision', '', 0),
(40, 1, '2023-05-30 11:58:47', '2023-05-30 11:58:47', '<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/hero {\"new-field\":\"hero\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:genesis-custom-blocks/h3 /-->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 11:58:47', '2023-05-30 11:58:47', '', 2, 'http://localhost/wordpress/?p=40', 0, 'revision', '', 0),
(42, 1, '2023-05-30 12:04:45', '2023-05-30 12:04:45', '<!-- wp:genesis-custom-blocks/features /-->', 'feautre', '', 'publish', 'closed', 'closed', '', 'feautre', '', '', '2023-05-30 12:04:45', '2023-05-30 12:04:45', '', 0, 'http://localhost/wordpress/2023/05/30/feautre/', 0, 'wp_block', '', 0),
(43, 1, '2023-05-30 12:50:43', '2023-05-30 12:50:43', '<!-- wp:genesis-custom-blocks/features /-->', 'feature', '', 'publish', 'closed', 'closed', '', 'feature', '', '', '2023-05-30 12:50:43', '2023-05-30 12:50:43', '', 0, 'http://localhost/wordpress/2023/05/30/feature/', 0, 'wp_block', '', 0),
(44, 1, '2023-05-30 12:51:22', '2023-05-30 12:51:22', '<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/hero {\"new-field\":\"hero\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:genesis-custom-blocks/h3 /-->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 12:51:22', '2023-05-30 12:51:22', '', 2, 'http://localhost/wordpress/?p=44', 0, 'revision', '', 0),
(45, 1, '2023-05-30 12:51:38', '2023-05-30 12:51:38', '<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/hero {\"new-field\":\"hero\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:genesis-custom-blocks/h3 /-->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 12:51:38', '2023-05-30 12:51:38', '', 2, 'http://localhost/wordpress/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-05-30 13:06:07', '2023-05-30 13:06:07', '<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/hero {\"new-field\":\"hero\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:genesis-custom-blocks/h3 /-->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 13:06:07', '2023-05-30 13:06:07', '', 2, 'http://localhost/wordpress/?p=46', 0, 'revision', '', 0),
(48, 1, '2023-05-30 13:11:21', '2023-05-30 13:11:21', '<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/hero {\"new-field\":\"hero\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:genesis-custom-blocks/h3 /-->\n\n<!-- wp:columns {\"className\":\".container {   display: flex;   justify-content: center; /* Alinea las columnas horizontalmente en el centro */ }\"} -->\n<div class=\"wp-block-columns .container { display: flex; justify-content: center; /* Alinea las columnas horizontalmente en el centro */ }\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 13:11:21', '2023-05-30 13:11:21', '', 2, 'http://localhost/wordpress/?p=48', 0, 'revision', '', 0),
(49, 1, '2023-05-30 13:11:48', '2023-05-30 13:11:48', '<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/hero {\"new-field\":\"hero\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:genesis-custom-blocks/h3 /-->\n\n<!-- wp:columns {\"className\":\".container {   display: flex;   justify-content: center;  }\"} -->\n<div class=\"wp-block-columns .container { display: flex; justify-content: center; }\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 13:11:48', '2023-05-30 13:11:48', '', 2, 'http://localhost/wordpress/?p=49', 0, 'revision', '', 0),
(50, 1, '2023-05-30 13:14:29', '2023-05-30 13:14:29', '<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/hero {\"new-field\":\"hero\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:genesis-custom-blocks/h3 /-->\n\n<!-- wp:columns {\"className\":\".container {   display: flex;   justify-content: center;  }\"} -->\n<div class=\"wp-block-columns .container { display: flex; justify-content: center; }\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-05-30 13:14:29', '2023-05-30 13:14:29', '', 2, 'http://localhost/wordpress/?p=50', 0, 'revision', '', 0),
(51, 1, '2023-05-30 14:33:44', '2023-05-30 14:33:44', '<!-- wp:group {\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/hero {\"new-field\":\"hero\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\n\n<!-- wp:genesis-custom-blocks/h3 /-->\n\n<!-- wp:columns {\"className\":\".container {   display: flex;   justify-content: center;  }\"} -->\n<div class=\"wp-block-columns .container { display: flex; justify-content: center; }\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:genesis-custom-blocks/features /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2023-05-30 14:33:44', '2023-05-30 14:33:44', '', 2, 'http://localhost/wordpress/?p=51', 0, 'revision', '', 0),
(52, 1, '2023-05-30 15:24:33', '2023-05-30 15:24:33', '{\n    \"custom_css[funderprotest]\": {\n        \"value\": \".entry-title {\\n    display: none;\\n}\\n.widget-area{\\n\\t    display: none;\\n\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 15:24:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b018c914-d7ad-4b52-bbd1-e40afdbf1f6e', '', '', '2023-05-30 15:24:33', '2023-05-30 15:24:33', '', 0, 'http://localhost/wordpress/?p=52', 0, 'customize_changeset', '', 0),
(53, 1, '2023-05-30 15:24:33', '2023-05-30 15:24:33', '.entry-title {\n    display: none;\n}\n.widget-area{\n	    display: none;\n\n}', 'funderprotest', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-05-30 15:24:33', '2023-05-30 15:24:33', '', 32, 'http://localhost/wordpress/?p=53', 0, 'revision', '', 0),
(54, 1, '2023-05-30 15:24:46', '2023-05-30 15:24:46', '{\n    \"custom_css[funderprotest]\": {\n        \"value\": \".entry-title {\\n    display: none;\\n}\\n.widget-area{\\n\\t    display: none;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 15:24:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'abe91444-7ca6-41cb-9fed-44dcd1a0f704', '', '', '2023-05-30 15:24:46', '2023-05-30 15:24:46', '', 0, 'http://localhost/wordpress/?p=54', 0, 'customize_changeset', '', 0),
(55, 1, '2023-05-30 15:26:10', '2023-05-30 15:26:10', '{\n    \"custom_css[funderprotest]\": {\n        \"value\": \".entry-title {\\n    display: none;\\n}\\n.widget-area{\\n\\t    display: hiddenen;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 15:26:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '41b0436c-4bb0-47a0-8b5c-1cfdfa4abc9d', '', '', '2023-05-30 15:26:10', '2023-05-30 15:26:10', '', 0, 'http://localhost/wordpress/2023/05/30/41b0436c-4bb0-47a0-8b5c-1cfdfa4abc9d/', 0, 'customize_changeset', '', 0),
(56, 1, '2023-05-30 15:26:10', '2023-05-30 15:26:10', '.entry-title {\n    display: none;\n}\n.widget-area{\n	    display: hiddenen;\n}\n', 'funderprotest', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-05-30 15:26:10', '2023-05-30 15:26:10', '', 32, 'http://localhost/wordpress/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-05-30 15:26:24', '2023-05-30 15:26:24', '{\n    \"custom_css[funderprotest]\": {\n        \"value\": \".entry-title {\\n    display: none;\\n}\\n.widget-area{\\n\\t    display: none;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 15:26:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8135fab9-4bb3-4a36-88d2-fc3e8fd3f5c4', '', '', '2023-05-30 15:26:24', '2023-05-30 15:26:24', '', 0, 'http://localhost/wordpress/2023/05/30/8135fab9-4bb3-4a36-88d2-fc3e8fd3f5c4/', 0, 'customize_changeset', '', 0),
(58, 1, '2023-05-30 15:26:24', '2023-05-30 15:26:24', '.entry-title {\n    display: none;\n}\n.widget-area{\n	    display: none;\n}\n', 'funderprotest', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-05-30 15:26:24', '2023-05-30 15:26:24', '', 32, 'http://localhost/wordpress/?p=58', 0, 'revision', '', 0),
(60, 1, '2023-05-31 18:43:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-31 18:43:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=genesis_custom_block&p=60', 0, 'genesis_custom_block', '', 0),
(61, 1, '2023-05-31 20:55:16', '2023-05-31 20:55:16', '', 'Dongle-Bold', '', 'inherit', 'open', 'closed', '', 'dongle-bold', '', '', '2023-05-31 20:55:16', '2023-05-31 20:55:16', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/05/Dongle-Bold.ttf', 0, 'attachment', 'application/x-font-ttf', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(62, 1, '2023-05-31 21:01:30', '2023-05-31 21:01:30', '', 'Dongle-Light', '', 'inherit', 'open', 'closed', '', 'dongle-light', '', '', '2023-05-31 21:01:30', '2023-05-31 21:01:30', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/05/Dongle-Light.ttf', 0, 'attachment', 'application/x-font-ttf', 0),
(63, 1, '2023-05-31 21:02:06', '2023-05-31 21:02:06', '', 'Inter-Regular', '', 'inherit', 'open', 'closed', '', 'inter-regular', '', '', '2023-05-31 21:02:06', '2023-05-31 21:02:06', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/05/Inter-Regular.ttf', 0, 'attachment', 'application/x-font-ttf', 0),
(64, 1, '2023-06-01 19:34:24', '2023-06-01 19:34:24', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-01 19:34:24', '2023-06-01 19:34:24', '', 1, 'http://localhost/wordpress/?p=64', 0, 'revision', '', 0),
(65, 1, '2023-06-01 19:35:53', '0000-00-00 00:00:00', '{\n    \"blogname\": {\n        \"value\": \"MORE\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-01 19:35:53\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '6af828c8-d4ce-41f0-bb1c-4ee60fdc8b86', '', '', '2023-06-01 19:35:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=65', 0, 'customize_changeset', '', 0),
(66, 1, '2023-06-02 18:49:44', '2023-06-01 22:06:18', '', 'Who We Are', '', 'publish', 'closed', 'closed', '', 'who-we-are', '', '', '2023-06-02 18:49:44', '2023-06-02 18:49:44', '', 0, 'http://localhost/wordpress/?p=66', 2, 'nav_menu_item', '', 0),
(67, 1, '2023-06-02 18:49:44', '2023-06-01 22:06:18', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-06-02 18:49:44', '2023-06-02 18:49:44', '', 0, 'http://localhost/wordpress/?p=67', 3, 'nav_menu_item', '', 0),
(68, 1, '2023-06-02 18:49:44', '2023-06-01 22:06:18', '', 'Terms & Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2023-06-02 18:49:44', '2023-06-02 18:49:44', '', 0, 'http://localhost/wordpress/?p=68', 4, 'nav_menu_item', '', 0),
(69, 1, '2023-06-02 18:49:44', '2023-06-01 22:06:18', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2023-06-02 18:49:44', '2023-06-02 18:49:44', '', 0, 'http://localhost/wordpress/?p=69', 5, 'nav_menu_item', '', 0),
(70, 1, '2023-06-02 18:48:09', '2023-06-02 18:48:09', '', 'Vector (2)', '', 'inherit', 'open', 'closed', '', 'vector-2', '', '', '2023-06-02 18:48:09', '2023-06-02 18:48:09', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/06/Vector-2.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'test', 'test', 0),
(3, 'Dongle', 'dongle', 0),
(4, 'Dongle-header', 'dongle-header', 0),
(5, 'Inter', 'inter', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(66, 2, 0),
(67, 2, 0),
(68, 2, 0),
(69, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'bsf_custom_fonts', '', 0, 0),
(4, 4, 'bsf_custom_fonts', '', 0, 0),
(5, 5, 'bsf_custom_fonts', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'fundertest'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a9ed77346109b4162529676086c7d6d198a9f0b774b3b67ed8ba629483d120a2\";a:4:{s:10:\"expiration\";i:1686582285;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36\";s:5:\"login\";i:1685372685;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_persisted_preferences', 'a:3:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:16:\"discussion-panel\";i:3;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-05-30T15:23:40.397Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;}}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1685566516');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'fundertest', '$P$BX9o2OIfBXs4o4dFBk2LcKtHugFd3X/', 'fundertest', 'santy.garcia19996g@gmail.com', 'http://localhost/wordpress', '2023-05-29 15:04:34', '', 0, 'fundertest');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
