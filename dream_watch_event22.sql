-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2019 at 12:22 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dream_watch_event`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-05-20 08:32:53', '2019-05-20 08:32:53', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/dream_watch_event', 'yes'),
(2, 'home', 'http://localhost/dream_watch_event', 'yes'),
(3, 'blogname', 'Dream Watch Event', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sajedaiub@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:86:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:81:\"add-featured-image-column-to-the-posts-screen/Add_feature_imge_to_post_column.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'dream_watch_event', 'yes'),
(41, 'stylesheet', 'dream_watch_event', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1558434777;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558470777;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558513975;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558513984;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558513985;a:2:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:1:{s:22:\"0RM2n9pBdwqxS5b4us3id0\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BuDNjzXT6cQ4rrF4.nvEDtQmfwZJ7n.\";s:10:\"created_at\";i:1558355243;}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558428593;s:15:\"version_checked\";s:3:\"5.2\";s:12:\"translations\";a:0:{}}', 'no'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1558342337;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558428595;s:7:\"checked\";a:4:{s:17:\"dream_watch_event\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(124, 'current_theme', 'Biztrox', 'yes'),
(125, 'theme_mods_dream_watch_event', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(126, 'theme_switched', '', 'yes'),
(131, 'recovery_mode_email_last_sent', '1558355242', 'yes'),
(138, 'category_children', 'a:0:{}', 'yes'),
(167, 'recently_activated', 'a:0:{}', 'yes'),
(169, '_transient_timeout_plugin_slugs', '1558451605', 'no'),
(170, '_transient_plugin_slugs', 'a:3:{i:0;s:81:\"add-featured-image-column-to-the-posts-screen/Add_feature_imge_to_post_column.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:9:\"hello.php\";}', 'no'),
(173, '_site_transient_timeout_theme_roots', '1558430394', 'no'),
(174, '_site_transient_theme_roots', 'a:4:{s:17:\"dream_watch_event\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(175, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558428597;s:7:\"checked\";a:3:{s:81:\"add-featured-image-column-to-the-posts-screen/Add_feature_imge_to_post_column.php\";s:3:\"1.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.1\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:81:\"add-featured-image-column-to-the-posts-screen/Add_feature_imge_to_post_column.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:59:\"w.org/plugins/add-featured-image-column-to-the-posts-screen\";s:4:\"slug\";s:45:\"add-featured-image-column-to-the-posts-screen\";s:6:\"plugin\";s:81:\"add-featured-image-column-to-the-posts-screen/Add_feature_imge_to_post_column.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:76:\"https://wordpress.org/plugins/add-featured-image-column-to-the-posts-screen/\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/plugin/add-featured-image-column-to-the-posts-screen.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:89:\"https://s.w.org/plugins/geopattern-icon/add-featured-image-column-to-the-posts-screen.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(177, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_wp_trash_meta_status', 'publish'),
(4, 1, '_wp_trash_meta_time', '1558361011'),
(5, 1, '_wp_desired_post_slug', 'hello-world'),
(6, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(7, 6, '_edit_lock', '1558367586:1'),
(12, 9, '_edit_lock', '1558367585:1'),
(15, 6, '_edit_last', '1'),
(18, 11, '_edit_lock', '1558367584:1'),
(21, 13, '_edit_lock', '1558367583:1'),
(30, 18, '_edit_lock', '1558367583:1'),
(33, 20, '_edit_lock', '1558428512:1'),
(36, 18, '_edit_last', '1'),
(39, 22, '_edit_lock', '1558367389:1'),
(42, 24, '_edit_lock', '1558367393:1'),
(45, 26, '_edit_lock', '1558367395:1'),
(48, 28, '_edit_lock', '1558367397:1'),
(51, 30, '_edit_lock', '1558367240:1'),
(54, 32, '_edit_lock', '1558367191:1'),
(57, 34, '_edit_lock', '1558367109:1'),
(71, 40, '_wp_attached_file', '2019/05/LED_Wall_Rent.jpg'),
(72, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:670;s:4:\"file\";s:25:\"2019/05/LED_Wall_Rent.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"LED_Wall_Rent-55x18.jpg\";s:5:\"width\";i:55;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"LED_Wall_Rent-300x101.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:101;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"LED_Wall_Rent-768x257.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"LED_Wall_Rent-1024x343.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:343;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"LED_Wall_Rent-1200x402.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 42, '_wp_attached_file', '2019/05/Archway-Gate-Rent.jpg'),
(76, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1145;s:6:\"height\";i:1500;s:4:\"file\";s:29:\"2019/05/Archway-Gate-Rent.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Archway-Gate-Rent-55x72.jpg\";s:5:\"width\";i:55;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Archway-Gate-Rent-229x300.jpg\";s:5:\"width\";i:229;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Archway-Gate-Rent-768x1006.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1006;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Archway-Gate-Rent-782x1024.jpg\";s:5:\"width\";i:782;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 43, '_wp_attached_file', '2019/05/cctv_camera_rent-1.jpg'),
(78, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:675;s:4:\"file\";s:30:\"2019/05/cctv_camera_rent-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cctv_camera_rent-1-55x31.jpg\";s:5:\"width\";i:55;s:6:\"height\";i:31;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cctv_camera_rent-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cctv_camera_rent-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"cctv_camera_rent-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"cctv_camera_rent-1-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 44, '_wp_attached_file', '2019/05/Gift-Items-1.jpg'),
(80, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:1300;s:4:\"file\";s:24:\"2019/05/Gift-Items-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Gift-Items-1-55x55.jpg\";s:5:\"width\";i:55;s:6:\"height\";i:55;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Gift-Items-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Gift-Items-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"Gift-Items-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"Gift-Items-1-1200x1200.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:102:\"Set Christmas gift boxes with ribbon. Isolated on white background. Flat cartoon. Vector illustration.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:88:\"Set Christmas gift boxes with ribbon. Isolated on white background. Flat cartoon. Vector\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:50:{i:0;s:3:\"box\";i:1;s:6:\"ribbon\";i:2;s:4:\"gift\";i:3;s:7:\"holiday\";i:4;s:8:\"isolated\";i:5;s:12:\"illustration\";i:6;s:6:\"vector\";i:7;s:8:\"birthday\";i:8;s:9:\"christmas\";i:9;s:10:\"background\";i:10;s:11:\"celebration\";i:11;s:7:\"present\";i:12;s:10:\"decoration\";i:13;s:3:\"set\";i:14;s:8:\"surprise\";i:15;s:5:\"white\";i:16;s:6:\"object\";i:17;s:6:\"design\";i:18;s:3:\"bow\";i:19;s:7:\"package\";i:20;s:8:\"shopping\";i:21;s:3:\"new\";i:22;s:4:\"xmas\";i:23;s:5:\"happy\";i:24;s:4:\"year\";i:25;s:4:\"icon\";i:26;s:6:\"symbol\";i:27;s:5:\"paper\";i:28;s:5:\"color\";i:29;s:8:\"colorful\";i:30;s:3:\"red\";i:31;s:11:\"anniversary\";i:32;s:10:\"collection\";i:33;s:9:\"valentine\";i:34;s:5:\"party\";i:35;s:5:\"decor\";i:36;s:4:\"wrap\";i:37;s:7:\"element\";i:38;s:3:\"day\";i:39;s:3:\"art\";i:40;s:9:\"packaging\";i:41;s:4:\"card\";i:42;s:7:\"festive\";i:43;s:8:\"greeting\";i:44;s:4:\"blue\";i:45;s:5:\"green\";i:46;s:8:\"ornament\";i:47;s:6:\"season\";i:48;s:7:\"cartoon\";i:49;s:5:\"event\";}}}'),
(81, 45, '_wp_attached_file', '2019/05/Laptop-Rent.jpg'),
(82, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:23:\"2019/05/Laptop-Rent.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Laptop-Rent-55x31.jpg\";s:5:\"width\";i:55;s:6:\"height\";i:31;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Laptop-Rent-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"Laptop-Rent-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"Laptop-Rent-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"Laptop-Rent-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 46, '_wp_attached_file', '2019/05/Multimedia-Projector-Rent.jpg'),
(84, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:37:\"2019/05/Multimedia-Projector-Rent.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Multimedia-Projector-Rent-55x41.jpg\";s:5:\"width\";i:55;s:6:\"height\";i:41;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"Multimedia-Projector-Rent-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"Multimedia-Projector-Rent-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"Multimedia-Projector-Rent-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 47, '_wp_attached_file', '2019/05/Photography.jpg'),
(86, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2019/05/Photography.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Photography-55x37.jpg\";s:5:\"width\";i:55;s:6:\"height\";i:37;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Photography-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"Photography-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"Photography-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"Photography-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 48, '_wp_attached_file', '2019/05/printing-1.jpg'),
(88, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:800;s:4:\"file\";s:22:\"2019/05/printing-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"printing-1-55x29.jpg\";s:5:\"width\";i:55;s:6:\"height\";i:29;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"printing-1-300x160.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"printing-1-768x410.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"printing-1-1024x546.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:546;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:23:\"printing-1-1200x640.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 49, '_wp_attached_file', '2019/05/Security-Guard-Service.jpg'),
(90, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:590;s:4:\"file\";s:34:\"2019/05/Security-Guard-Service.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Security-Guard-Service-55x17.jpg\";s:5:\"width\";i:55;s:6:\"height\";i:17;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Security-Guard-Service-300x92.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:92;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Security-Guard-Service-768x236.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:236;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Security-Guard-Service-1024x315.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:35:\"Security-Guard-Service-1200x369.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:369;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 50, '_wp_attached_file', '2019/05/Sound-System-Rent.jpg'),
(92, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:833;s:4:\"file\";s:29:\"2019/05/Sound-System-Rent.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Sound-System-Rent-55x46.jpg\";s:5:\"width\";i:55;s:6:\"height\";i:46;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Sound-System-Rent-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"Sound-System-Rent-768x640.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(93, 51, '_wp_attached_file', '2019/05/Stage-decoration.jpeg'),
(94, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:675;s:4:\"file\";s:29:\"2019/05/Stage-decoration.jpeg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Stage-decoration-55x41.jpeg\";s:5:\"width\";i:55;s:6:\"height\";i:41;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Stage-decoration-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"Stage-decoration-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 52, '_wp_attached_file', '2019/05/Walkie-talkie-Rent.jpg'),
(96, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:30:\"2019/05/Walkie-talkie-Rent.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Walkie-talkie-Rent-55x41.jpg\";s:5:\"width\";i:55;s:6:\"height\";i:41;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Walkie-talkie-Rent-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Walkie-talkie-Rent-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"Walkie-talkie-Rent-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"Walkie-talkie-Rent-1200x900.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 40, '_wp_attachment_image_alt', 'LED Wall Rent'),
(100, 34, '_thumbnail_id', '40'),
(101, 44, '_wp_attachment_image_alt', 'gift item'),
(104, 32, '_thumbnail_id', '44'),
(105, 48, '_wp_attachment_image_alt', 'Printing'),
(108, 30, '_thumbnail_id', '48'),
(109, 43, '_wp_attachment_image_alt', 'cctv camera_ rent'),
(112, 28, '_thumbnail_id', '43'),
(113, 49, '_wp_attachment_image_alt', 'Security Guard Service'),
(116, 26, '_thumbnail_id', '49'),
(117, 42, '_wp_attachment_image_alt', 'Archway Gate Rent'),
(120, 24, '_thumbnail_id', '42'),
(121, 52, '_wp_attachment_image_alt', 'Walkie-talkie Rent'),
(124, 22, '_thumbnail_id', '52'),
(128, 51, '_wp_attachment_image_alt', 'Stage decoration'),
(131, 18, '_thumbnail_id', '51'),
(132, 50, '_wp_attachment_image_alt', 'Sound System Rent'),
(135, 13, '_thumbnail_id', '50'),
(136, 47, '_wp_attachment_image_alt', 'Photography'),
(139, 11, '_thumbnail_id', '47'),
(140, 45, '_wp_attachment_image_alt', 'Laptop Rent'),
(143, 9, '_thumbnail_id', '45'),
(144, 46, '_wp_attachment_image_alt', 'Multimedia Projector Rent'),
(147, 6, '_thumbnail_id', '46'),
(148, 53, '_wp_attached_file', '2019/05/Lighting-Rent.jpg'),
(149, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1504;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2019/05/Lighting-Rent.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Lighting-Rent-55x37.jpg\";s:5:\"width\";i:55;s:6:\"height\";i:37;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Lighting-Rent-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Lighting-Rent-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"Lighting-Rent-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"Lighting-Rent-1200x798.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:798;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"Pixi\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1275151179\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"2.66\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 53, '_wp_attachment_image_alt', 'Lighting Rent'),
(153, 20, '_thumbnail_id', '53'),
(154, 2, '_edit_lock', '1558429462:1'),
(155, 3, '_wp_trash_meta_status', 'draft'),
(156, 3, '_wp_trash_meta_time', '1558429621'),
(157, 3, '_wp_desired_post_slug', 'privacy-policy'),
(158, 56, '_edit_lock', '1558429530:1'),
(159, 58, '_edit_lock', '1558432500:1'),
(160, 60, '_edit_lock', '1558430745:1'),
(161, 62, '_menu_item_type', 'custom'),
(162, 62, '_menu_item_menu_item_parent', '0'),
(163, 62, '_menu_item_object_id', '62'),
(164, 62, '_menu_item_object', 'custom'),
(165, 62, '_menu_item_target', ''),
(166, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 62, '_menu_item_xfn', ''),
(168, 62, '_menu_item_url', 'http://localhost/dream_watch_event/'),
(170, 63, '_menu_item_type', 'post_type'),
(171, 63, '_menu_item_menu_item_parent', '0'),
(172, 63, '_menu_item_object_id', '60'),
(173, 63, '_menu_item_object', 'page'),
(174, 63, '_menu_item_target', ''),
(175, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 63, '_menu_item_xfn', ''),
(177, 63, '_menu_item_url', ''),
(179, 64, '_menu_item_type', 'post_type'),
(180, 64, '_menu_item_menu_item_parent', '0'),
(181, 64, '_menu_item_object_id', '58'),
(182, 64, '_menu_item_object', 'page'),
(183, 64, '_menu_item_target', ''),
(184, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 64, '_menu_item_xfn', ''),
(186, 64, '_menu_item_url', ''),
(188, 65, '_menu_item_type', 'post_type'),
(189, 65, '_menu_item_menu_item_parent', '0'),
(190, 65, '_menu_item_object_id', '56'),
(191, 65, '_menu_item_object', 'page'),
(192, 65, '_menu_item_target', ''),
(193, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(194, 65, '_menu_item_xfn', ''),
(195, 65, '_menu_item_url', ''),
(197, 66, '_menu_item_type', 'post_type'),
(198, 66, '_menu_item_menu_item_parent', '0'),
(199, 66, '_menu_item_object_id', '2'),
(200, 66, '_menu_item_object', 'page'),
(201, 66, '_menu_item_target', ''),
(202, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(203, 66, '_menu_item_xfn', ''),
(204, 66, '_menu_item_url', ''),
(205, 66, '_menu_item_orphaned', '1558430933'),
(206, 67, '_menu_item_type', 'taxonomy'),
(207, 67, '_menu_item_menu_item_parent', '0'),
(208, 67, '_menu_item_object_id', '3'),
(209, 67, '_menu_item_object', 'category'),
(210, 67, '_menu_item_target', ''),
(211, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(212, 67, '_menu_item_xfn', ''),
(213, 67, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-05-20 08:32:53', '2019-05-20 08:32:53', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-05-20 14:03:31', '2019-05-20 14:03:31', '', 0, 'http://localhost/dream_watch_event/?p=1', 0, 'post', '', 1),
(2, 1, '2019-05-20 08:32:53', '2019-05-20 08:32:53', '', 'Services', '', 'publish', 'open', 'open', '', 'services', '', '', '2019-05-21 09:06:41', '2019-05-21 09:06:41', '', 0, 'http://localhost/dream_watch_event/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-05-20 08:32:53', '2019-05-20 08:32:53', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/dream_watch_event.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-05-21 09:07:02', '2019-05-21 09:07:02', '', 0, 'http://localhost/dream_watch_event/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-05-20 08:33:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-20 08:33:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/dream_watch_event/?p=4', 0, 'post', '', 0),
(5, 1, '2019-05-20 14:03:31', '2019-05-20 14:03:31', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-05-20 14:03:31', '2019-05-20 14:03:31', '', 1, 'http://localhost/dream_watch_event/2019/05/20/1-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2019-05-20 14:06:01', '2019-05-20 14:06:01', '<!-- wp:paragraph -->\n<p>We have been providingrental projectors for Business events, corporate events, seminars, wedding events, birthday events, cultural programs, govt. events for many years. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br><strong> We have:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Multimedia Projectors</li><li>Multimedia Projectors (with projection screen)</li><li>Portable Sound Systems (PA)<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</li></ol>\n<!-- /wp:list -->', 'Multimedia Projector Rent', 'We have been providingrental projectors for Business events, corporate events, seminars, wedding events, birthday events, cultural programs, govt. events for many years. ', 'publish', 'open', 'open', '', 'multimedia-projector-rent', '', '', '2019-05-20 15:55:24', '2019-05-20 15:55:24', '', 0, 'http://localhost/dream_watch_event/?p=6', 0, 'post', '', 0),
(7, 1, '2019-05-20 14:06:01', '2019-05-20 14:06:01', '<!-- wp:paragraph -->\n<p>We have been\nprovidingrental projectors for Business events, corporate events, seminars,\nwedding events, birthday events, cultural programs, govt. events for many\nyears. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We have</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1. Multimedia Projectors</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. Multimedia Projectors\n(with projection screen)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. Portable Sound Systems\n(PA)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Call for\nbooking01920-873393, 01671-829340</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Multimedia Projector Rent', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-05-20 14:06:01', '2019-05-20 14:06:01', '', 6, 'http://localhost/dream_watch_event/2019/05/20/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-05-20 14:20:43', '2019-05-20 14:20:43', '<!-- wp:paragraph -->\n<p>We have been providingrental projectors for Business events, corporate events, seminars, wedding events, birthday events, cultural programs, govt. events for many years. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br><strong> We have:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Multimedia Projectors</li><li>Multimedia Projectors (with projection screen)</li><li>Portable Sound Systems (PA)<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</li></ol>\n<!-- /wp:list -->', 'Multimedia Projector Rent', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-05-20 14:20:43', '2019-05-20 14:20:43', '', 6, 'http://localhost/dream_watch_event/2019/05/20/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-05-20 14:24:02', '2019-05-20 14:24:02', '<!-- wp:paragraph -->\n<p>We are proudly providing laptop rents for all kinds of events and programs. You don’t need to worry about your own laptops and the quantity of it at all. We are always here to solve your problems and you can rely on us for laptop rent. <br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Laptop Rent', 'We are proudly providing laptop rents for all kinds of events and programs. You don’t need to worry about your own laptops and the quantity of it at all.', 'publish', 'open', 'open', '', 'laptop-rent', '', '', '2019-05-20 15:54:45', '2019-05-20 15:54:45', '', 0, 'http://localhost/dream_watch_event/?p=9', 0, 'post', '', 0),
(10, 1, '2019-05-20 14:24:02', '2019-05-20 14:24:02', '<!-- wp:paragraph -->\n<p>We are proudly providing laptop rents for all kinds of events and programs. You don’t need to worry about your own laptops and the quantity of it at all. We are always here to solve your problems and you can rely on us for laptop rent. <br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Laptop Rent', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-05-20 14:24:02', '2019-05-20 14:24:02', '', 9, 'http://localhost/dream_watch_event/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-05-20 14:27:39', '2019-05-20 14:27:39', '<!-- wp:paragraph -->\n<p>If you are planning to capture your wonderful moments in a frame and never let them fade away then we are here to help you out. Our professional photography team is always there for you to shoot your wedding moments, birthday party moments and so on. Our team shoots photos very clean with the absolute background. All the images are shot with an experienced hand and edited them by our professional and creative directors. <br>\nHere are the most important features of our service:<br>\nPure White Background<br>\nImage Enhancements<br>\nHigh Resolution<br>\nFull Copyright<br>\nMarketplace Ready<br>\n100% Satisfaction Guaranteed<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Photography', 'If you are planning to capture your wonderful moments in a frame and never let them fade away then we are here to help you out.', 'publish', 'open', 'open', '', 'photography', '', '', '2019-05-20 15:54:23', '2019-05-20 15:54:23', '', 0, 'http://localhost/dream_watch_event/?p=11', 0, 'post', '', 0),
(12, 1, '2019-05-20 14:27:39', '2019-05-20 14:27:39', '<!-- wp:paragraph -->\n<p>If you are planning to capture your wonderful moments in a frame and never let them fade away then we are here to help you out. Our professional photography team is always there for you to shoot your wedding moments, birthday party moments and so on. Our team shoots photos very clean with the absolute background. All the images are shot with an experienced hand and edited them by our professional and creative directors. <br>\nHere are the most important features of our service:<br>\nPure White Background<br>\nImage Enhancements<br>\nHigh Resolution<br>\nFull Copyright<br>\nMarketplace Ready<br>\n100% Satisfaction Guaranteed<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Photography', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-05-20 14:27:39', '2019-05-20 14:27:39', '', 11, 'http://localhost/dream_watch_event/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-05-20 14:30:04', '2019-05-20 14:30:04', '<!-- wp:paragraph -->\n<p>As an Integral part of your Company Event, Wedding Event, Birthday Event, Conference, Convocation Sound system has to be uninterrupted and accurate as well. To make your event hassle free and memorable we are providing each and every equipment to decorate your sound systems.<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Sound System Rent', 'As an Integral part of your Company Event, Wedding Event, Birthday Event, Conference, Convocation Sound system has to be uninterrupted and accurate as well. ', 'publish', 'open', 'open', '', 'sound-system-rent', '', '', '2019-05-20 15:54:03', '2019-05-20 15:54:03', '', 0, 'http://localhost/dream_watch_event/?p=13', 0, 'post', '', 0),
(14, 1, '2019-05-20 14:30:04', '2019-05-20 14:30:04', '<!-- wp:paragraph -->\n<p>As an Integral part of your Company Event, Wedding Event, Birthday Event, Conference, Convocation Sound system has to be uninterrupted and accurate as well. To make your event hassle free and memorable we are providing each and every equipment to decorate your sound systems.<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Sound System Rent', 'As an Integral part of your Company Event, Wedding Event, Birthday Event, Conference, Convocation Sound system has to be uninterrupted and accurate as well. ', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-20 14:30:04', '2019-05-20 14:30:04', '', 13, 'http://localhost/dream_watch_event/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-05-20 14:30:39', '2019-05-20 14:30:39', '<!-- wp:paragraph -->\n<p>If you are planning to capture your wonderful moments in a frame and never let them fade away then we are here to help you out. Our professional photography team is always there for you to shoot your wedding moments, birthday party moments and so on. Our team shoots photos very clean with the absolute background. All the images are shot with an experienced hand and edited them by our professional and creative directors. <br>\nHere are the most important features of our service:<br>\nPure White Background<br>\nImage Enhancements<br>\nHigh Resolution<br>\nFull Copyright<br>\nMarketplace Ready<br>\n100% Satisfaction Guaranteed<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Photography', 'If you are planning to capture your wonderful moments in a frame and never let them fade away then we are here to help you out.', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-05-20 14:30:39', '2019-05-20 14:30:39', '', 11, 'http://localhost/dream_watch_event/11-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-05-20 14:31:11', '2019-05-20 14:31:11', '<!-- wp:paragraph -->\n<p>We are proudly providing laptop rents for all kinds of events and programs. You don’t need to worry about your own laptops and the quantity of it at all. We are always here to solve your problems and you can rely on us for laptop rent. <br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Laptop Rent', 'We are proudly providing laptop rents for all kinds of events and programs. You don’t need to worry about your own laptops and the quantity of it at all.', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-05-20 14:31:11', '2019-05-20 14:31:11', '', 9, 'http://localhost/dream_watch_event/9-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-05-20 14:31:43', '2019-05-20 14:31:43', '<!-- wp:paragraph -->\n<p>We have been providingrental projectors for Business events, corporate events, seminars, wedding events, birthday events, cultural programs, govt. events for many years. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br><strong> We have:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Multimedia Projectors</li><li>Multimedia Projectors (with projection screen)</li><li>Portable Sound Systems (PA)<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</li></ol>\n<!-- /wp:list -->', 'Multimedia Projector Rent', 'We have been providingrental projectors for Business events, corporate events, seminars, wedding events, birthday events, cultural programs, govt. events for many years. ', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-05-20 14:31:43', '2019-05-20 14:31:43', '', 6, 'http://localhost/dream_watch_event/6-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-05-20 14:32:56', '2019-05-20 14:32:56', '<!-- wp:paragraph -->\n<p>The key thing of an event is the stage of it. To make your event successful and exceptional the stage should be flashy and ostentatious. Dream watch never compromise to carry out the best possible output of stage decoration of an event. We have been prominently decorating Company Event Stage, Wedding Event Stage, Birthday Event Stage, Conference Stage, and Convocation Stage for over 10 years. You can knock us anytime with such query. <br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Stage decoration', 'The key thing of an event is the stage of it. To make your event successful and exceptional the stage should be flashy and ostentatious.', 'publish', 'open', 'open', '', 'stage-decoration', '', '', '2019-05-20 15:53:47', '2019-05-20 15:53:47', '', 0, 'http://localhost/dream_watch_event/?p=18', 0, 'post', '', 0),
(19, 1, '2019-05-20 14:32:56', '2019-05-20 14:32:56', '<!-- wp:paragraph -->\n<p>The key thing of an event is the stage of it. To make your event successful and exceptional the stage should be flashy and ostentatious. Dream watch never compromise to carry out the best possible output of stage decoration of an event. We have been prominently decorating Company Event Stage, Wedding Event Stage, Birthday Event Stage, Conference Stage, and Convocation Stage for over 10 years. You can knock us anytime with such query. <br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Stage decoration', 'The key thing of an event is the stage of it. To make your event successful and exceptional the stage should be flashy and ostentatious.', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-05-20 14:32:56', '2019-05-20 14:32:56', '', 18, 'http://localhost/dream_watch_event/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-05-20 14:34:23', '2019-05-20 14:34:23', '<!-- wp:paragraph -->\n<p>As a prominent event management company of Bangladesh we care for every single equipment of an event. Lighting is one of the most necessary things to run an event and from that perspective we are making you sure that we are giving rent all kinds of lightings that you need. We can assure you the highest quality of lights and we will never let you down. <br>\nThe types of lights we have<br>\n*Wedding building lighting<br>\n*Event exhibition hall lighting<br>\n*Truss with lighting<br>\n*Tinkle lighting design decoration<br>\n*Tent and tree lighting decoration<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Lighting Rent', 'As a prominent event management company of Bangladesh we care for every single equipment of an event. ', 'publish', 'open', 'open', '', 'lighting-rent', '', '', '2019-05-21 08:50:50', '2019-05-21 08:50:50', '', 0, 'http://localhost/dream_watch_event/?p=20', 0, 'post', '', 0),
(21, 1, '2019-05-20 14:34:23', '2019-05-20 14:34:23', '<!-- wp:paragraph -->\n<p>As a prominent event management company of Bangladesh we care for every single equipment of an event. Lighting is one of the most necessary things to run an event and from that perspective we are making you sure that we are giving rent all kinds of lightings that you need. We can assure you the highest quality of lights and we will never let you down. <br>\nThe types of lights we have<br>\n*Wedding building lighting<br>\n*Event exhibition hall lighting<br>\n*Truss with lighting<br>\n*Tinkle lighting design decoration<br>\n*Tent and tree lighting decoration<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Lighting Rent', 'As a prominent event management company of Bangladesh we care for every single equipment of an event. ', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-05-20 14:34:23', '2019-05-20 14:34:23', '', 20, 'http://localhost/dream_watch_event/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-05-20 14:35:36', '2019-05-20 14:35:36', '<!-- wp:paragraph -->\n<p>Besides other equipment for event and program we also provide Walkie-talkie according to your need. You can knock us anytime for Walkie-talkie rent.<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Walkie-talkie Rent', 'Besides other equipment for event and program we also provide Walkie-talkie according to your need. You can knock us anytime for Walkie-talkie rent.', 'publish', 'open', 'open', '', 'walkie-talkie-rent', '', '', '2019-05-20 15:52:11', '2019-05-20 15:52:11', '', 0, 'http://localhost/dream_watch_event/?p=22', 0, 'post', '', 0),
(23, 1, '2019-05-20 14:35:36', '2019-05-20 14:35:36', '<!-- wp:paragraph -->\n<p>Besides other equipment for event and program we also provide Walkie-talkie according to your need. You can knock us anytime for Walkie-talkie rent.<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Walkie-talkie Rent', 'Besides other equipment for event and program we also provide Walkie-talkie according to your need. You can knock us anytime for Walkie-talkie rent.', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-05-20 14:35:36', '2019-05-20 14:35:36', '', 22, 'http://localhost/dream_watch_event/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-05-20 14:36:40', '2019-05-20 14:36:40', '<!-- wp:paragraph -->\n<p>Does your company require a compatible access verification system? We are here to help you out on this issue. Through our service your company will be safe from unexpected perils. To detect unwanted and prohibited things you can use our Archway Gate with dependence. Currently we are supplying Archway Gates throughout the Dhaka.  <br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Archway Gate Rent', 'Does your company require a compatible access verification system? We are here to help you out on this issue. ', 'publish', 'open', 'open', '', 'archway-gate-rent', '', '', '2019-05-20 15:51:51', '2019-05-20 15:51:51', '', 0, 'http://localhost/dream_watch_event/?p=24', 0, 'post', '', 0),
(25, 1, '2019-05-20 14:36:40', '2019-05-20 14:36:40', '<!-- wp:paragraph -->\n<p>Does your company require a compatible access verification system? We are here to help you out on this issue. Through our service your company will be safe from unexpected perils. To detect unwanted and prohibited things you can use our Archway Gate with dependence. Currently we are supplying Archway Gates throughout the Dhaka.  <br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Archway Gate Rent', 'Does your company require a compatible access verification system? We are here to help you out on this issue. ', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-05-20 14:36:40', '2019-05-20 14:36:40', '', 24, 'http://localhost/dream_watch_event/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-05-20 14:38:32', '2019-05-20 14:38:32', '<!-- wp:paragraph -->\n<p>Since we have started our journey to assist you with logistics supports we approached in a holistic way. Need security guards for a short period of time? No problem, we are providing security guards as well. We are capable to provide you with security guards at any quantity and time package. We hope you can secure your workplace and event by the help of our elegant security team.<br> Call for booking:01920-873393, 01671-829340<br> Email: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Security Guard Service', 'Since we have started our journey to assist you with logistics supports we approached in a holistic way. ', 'publish', 'open', 'open', '', 'security-guard-service', '', '', '2019-05-20 15:51:33', '2019-05-20 15:51:33', '', 0, 'http://localhost/dream_watch_event/?p=26', 0, 'post', '', 0),
(27, 1, '2019-05-20 14:38:32', '2019-05-20 14:38:32', '<!-- wp:paragraph -->\n<p>Since we have started our journey to assist you with logistics supports we approached in a holistic way. Need security guards for a short period of time? No problem, we are providing security guards as well. We are capable to provide you with security guards at any quantity and time package. We hope you can secure your workplace and event by the help of our elegant security team.<br> Call for booking:01920-873393, 01671-829340<br> Email: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Security Guard Service', 'Since we have started our journey to assist you with logistics supports we approached in a holistic way. ', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-05-20 14:38:32', '2019-05-20 14:38:32', '', 26, 'http://localhost/dream_watch_event/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-05-20 14:40:50', '2019-05-20 14:40:50', '<!-- wp:paragraph -->\n<p>What happens if you can monitor the entrance or premise of your home, office, factory, school, college, university or other important places by a single device like Laptop, phone or tablet from anywhere? We are facilitating these services for you and making your home or office secured.<br>\nWe provide up-to-date technology CCTV camera installation service throughout the Dhaka.<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'CCTV Camera Rent', 'What happens if you can monitor the entrance or premise of your home, office, factory, school, college, university or other important places', 'publish', 'open', 'open', '', 'cctv-camera-rent', '', '', '2019-05-20 15:51:17', '2019-05-20 15:51:17', '', 0, 'http://localhost/dream_watch_event/?p=28', 0, 'post', '', 0),
(29, 1, '2019-05-20 14:40:50', '2019-05-20 14:40:50', '<!-- wp:paragraph -->\n<p>What happens if you can monitor the entrance or premise of your home, office, factory, school, college, university or other important places by a single device like Laptop, phone or tablet from anywhere? We are facilitating these services for you and making your home or office secured.<br>\nWe provide up-to-date technology CCTV camera installation service throughout the Dhaka.<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'CCTV Camera Rent', 'What happens if you can monitor the entrance or premise of your home, office, factory, school, college, university or other important places', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-05-20 14:40:50', '2019-05-20 14:40:50', '', 28, 'http://localhost/dream_watch_event/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-05-20 14:42:36', '2019-05-20 14:42:36', '<!-- wp:paragraph -->\n<p>Besides event management logistic supports we are also think about your printing concern. As an extensive organization we have been carrying out all types of digital printing for many years. All you have to do just leave a design to us and we will do the rest and deliver you the item within fastest possible time.<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Printing', 'Besides event management logistic supports we are also think about your printing concern.', 'publish', 'open', 'open', '', 'printing', '', '', '2019-05-20 15:49:40', '2019-05-20 15:49:40', '', 0, 'http://localhost/dream_watch_event/?p=30', 0, 'post', '', 0),
(31, 1, '2019-05-20 14:42:36', '2019-05-20 14:42:36', '<!-- wp:paragraph -->\n<p>Besides event management logistic supports we are also think about your printing concern. As an extensive organization we have been carrying out all types of digital printing for many years. All you have to do just leave a design to us and we will do the rest and deliver you the item within fastest possible time.<br>\nCall for booking01920-873393, 01671-829340<br>\nEmail: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Printing', 'Besides event management logistic supports we are also think about your printing concern.', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-05-20 14:42:36', '2019-05-20 14:42:36', '', 30, 'http://localhost/dream_watch_event/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-05-20 14:43:38', '2019-05-20 14:43:38', '<!-- wp:paragraph -->\n<p>If you are planning to choose an exceptional gift item and make your beloved one surprise then you are at the right place. We have an extensive inventory of various gift items which will match your choice. We also help you consult the right gift item for the right occasion. <br> Call for booking01920-873393, 01671-829340<br> Email: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Gift Items', 'If you are planning to choose an exceptional gift item and make your beloved one surprise then you are at the right place.', 'publish', 'open', 'open', '', 'gift-items', '', '', '2019-05-20 15:48:51', '2019-05-20 15:48:51', '', 0, 'http://localhost/dream_watch_event/?p=32', 0, 'post', '', 0),
(33, 1, '2019-05-20 14:43:38', '2019-05-20 14:43:38', '<!-- wp:paragraph -->\n<p>If you are planning to choose an exceptional gift item and make your beloved one surprise then you are at the right place. We have an extensive inventory of various gift items which will match your choice. We also help you consult the right gift item for the right occasion. <br> Call for booking01920-873393, 01671-829340<br> Email: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'Gift Items', 'If you are planning to choose an exceptional gift item and make your beloved one surprise then you are at the right place.', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-05-20 14:43:38', '2019-05-20 14:43:38', '', 32, 'http://localhost/dream_watch_event/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-05-20 14:45:17', '2019-05-20 14:45:17', '<!-- wp:paragraph -->\n<p>To make your Company Event, Wedding Event, Birthday Event, Conference, Convocation more flashy and memorable you can utilize giant LED wall from us. Unlike LCD TV or LED TV this is far more durable and bigger. In any stadium, crowded event or vehicle LED walls will be helpful to project your videos. We have various size of LED Wall in our collection. All you have to do is to knock us and we will install the wall at your selected place. <br> Call for booking01920-873393, 01671-829340<br> Email: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'LED Wall Rent', 'To make your Company Event, Wedding Event, Birthday Event, Conference, Convocation more flashy and memorable you can utilize giant LED wall from us', 'publish', 'open', 'open', '', 'led-wall-rent', '', '', '2019-05-20 15:47:28', '2019-05-20 15:47:28', '', 0, 'http://localhost/dream_watch_event/?p=34', 0, 'post', '', 0),
(35, 1, '2019-05-20 14:45:17', '2019-05-20 14:45:17', '<!-- wp:paragraph -->\n<p>To make your Company Event, Wedding Event, Birthday Event, Conference, Convocation more flashy and memorable you can utilize giant LED wall from us. Unlike LCD TV or LED TV this is far more durable and bigger. In any stadium, crowded event or vehicle LED walls will be helpful to project your videos. We have various size of LED Wall in our collection. All you have to do is to knock us and we will install the wall at your selected place. <br> Call for booking01920-873393, 01671-829340<br> Email: dreamwatchevent@gmail.com</p>\n<!-- /wp:paragraph -->', 'LED Wall Rent', 'To make your Company Event, Wedding Event, Birthday Event, Conference, Convocation more flashy and memorable you can utilize giant LED wall from us', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-05-20 14:45:17', '2019-05-20 14:45:17', '', 34, 'http://localhost/dream_watch_event/34-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-05-20 15:20:10', '2019-05-20 15:20:10', '', 'LED_Wall_Rent', '', 'inherit', 'open', 'closed', '', 'led_wall_rent', '', '', '2019-05-20 15:47:26', '2019-05-20 15:47:26', '', 30, 'http://localhost/dream_watch_event/wp-content/uploads/2019/05/LED_Wall_Rent.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-05-20 15:46:37', '2019-05-20 15:46:37', '', 'Archway Gate Rent', 'Archway Gate Rent', 'inherit', 'open', 'closed', '', 'archway-gate-rent-2', '', '', '2019-05-20 15:51:49', '2019-05-20 15:51:49', '', 34, 'http://localhost/dream_watch_event/wp-content/uploads/2019/05/Archway-Gate-Rent.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-05-20 15:46:39', '2019-05-20 15:46:39', '', 'cctv_camera_rent', 'cctv camera_ rent', 'inherit', 'open', 'closed', '', 'cctv_camera_rent', '', '', '2019-05-20 15:51:13', '2019-05-20 15:51:13', '', 34, 'http://localhost/dream_watch_event/wp-content/uploads/2019/05/cctv_camera_rent-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2019-05-20 15:46:40', '2019-05-20 15:46:40', '', 'gift item', 'gift itemcartoon. Vector illustration.', 'inherit', 'open', 'closed', '', 'set-christmas-gift-boxes-with-ribbon-isolated-on-white-background-flat-cartoon-vector', '', '', '2019-05-20 15:48:47', '2019-05-20 15:48:47', '', 34, 'http://localhost/dream_watch_event/wp-content/uploads/2019/05/Gift-Items-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-05-20 15:46:42', '2019-05-20 15:46:42', '', 'Laptop Rent', 'Laptop Rent', 'inherit', 'open', 'closed', '', 'laptop-rent-2', '', '', '2019-05-20 15:54:43', '2019-05-20 15:54:43', '', 34, 'http://localhost/dream_watch_event/wp-content/uploads/2019/05/Laptop-Rent.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-05-20 15:46:44', '2019-05-20 15:46:44', '', 'Multimedia Projector Rent', 'Multimedia Projector Rent', 'inherit', 'open', 'closed', '', 'multimedia-projector-rent-2', '', '', '2019-05-20 15:55:21', '2019-05-20 15:55:21', '', 34, 'http://localhost/dream_watch_event/wp-content/uploads/2019/05/Multimedia-Projector-Rent.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-05-20 15:46:45', '2019-05-20 15:46:45', '', 'Photography', 'Photography', 'inherit', 'open', 'closed', '', 'photography-2', '', '', '2019-05-20 15:54:21', '2019-05-20 15:54:21', '', 34, 'http://localhost/dream_watch_event/wp-content/uploads/2019/05/Photography.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-05-20 15:46:46', '2019-05-20 15:46:46', '', 'printing', 'Printing', 'inherit', 'open', 'closed', '', 'printing-2', '', '', '2019-05-20 15:49:38', '2019-05-20 15:49:38', '', 34, 'http://localhost/dream_watch_event/wp-content/uploads/2019/05/printing-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-05-20 15:46:48', '2019-05-20 15:46:48', '', 'Security Guard Service', 'Security Guard Service', 'inherit', 'open', 'closed', '', 'security-guard-service-2', '', '', '2019-05-20 15:51:31', '2019-05-20 15:51:31', '', 34, 'http://localhost/dream_watch_event/wp-content/uploads/2019/05/Security-Guard-Service.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-05-20 15:46:49', '2019-05-20 15:46:49', '', 'Sound System Rent', 'Sound System Rent', 'inherit', 'open', 'closed', '', 'sound-system-rent-2', '', '', '2019-05-20 15:54:02', '2019-05-20 15:54:02', '', 34, 'http://localhost/dream_watch_event/wp-content/uploads/2019/05/Sound-System-Rent.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-05-20 15:46:50', '2019-05-20 15:46:50', '', 'Stage decoration', 'Stage decoration', 'inherit', 'open', 'closed', '', 'stage-decoration-2', '', '', '2019-05-20 15:53:43', '2019-05-20 15:53:43', '', 34, 'http://localhost/dream_watch_event/wp-content/uploads/2019/05/Stage-decoration.jpeg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-05-20 15:46:51', '2019-05-20 15:46:51', '', 'Walkie-talkie Rent', 'Walkie-talkie Rent', 'inherit', 'open', 'closed', '', 'walkie-talkie-rent-2', '', '', '2019-05-20 15:52:08', '2019-05-20 15:52:08', '', 34, 'http://localhost/dream_watch_event/wp-content/uploads/2019/05/Walkie-talkie-Rent.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-05-21 08:50:35', '2019-05-21 08:50:35', '', 'Lighting Rent', 'Lighting Rent', 'inherit', 'open', 'closed', '', 'lighting-rent-2', '', '', '2019-05-21 08:50:47', '2019-05-21 08:50:47', '', 20, 'http://localhost/dream_watch_event/wp-content/uploads/2019/05/Lighting-Rent.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2019-05-21 09:06:41', '2019-05-21 09:06:41', '', 'Services', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-21 09:06:41', '2019-05-21 09:06:41', '', 2, 'http://localhost/dream_watch_event/2-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-05-21 09:07:02', '2019-05-21 09:07:02', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/dream_watch_event.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-05-21 09:07:02', '2019-05-21 09:07:02', '', 3, 'http://localhost/dream_watch_event/3-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-05-21 09:07:50', '2019-05-21 09:07:50', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2019-05-21 09:07:50', '2019-05-21 09:07:50', '', 0, 'http://localhost/dream_watch_event/?page_id=56', 0, 'page', '', 0),
(57, 1, '2019-05-21 09:07:50', '2019-05-21 09:07:50', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-05-21 09:07:50', '2019-05-21 09:07:50', '', 56, 'http://localhost/dream_watch_event/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-05-21 09:08:16', '2019-05-21 09:08:16', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n\n<style>\n.accordion {\n  background-color: #eee;\n  color: #444;\n  cursor: pointer;\n  padding: 18px;\n  width: 100%;\n  border: none;\n  text-align: left;\n  outline: none;\n  font-size: 15px;\n  transition: 0.4s;\n}\n\n.active, .accordion:hover {\n  background-color: #ccc; \n}\n\n.panel {\n  padding: 0 18px;\n  display: none;\n  background-color: white;\n  overflow: hidden;\n}\n</style>\n\n\n\n\n<button class=\"accordion\">How do I contact with you?</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<button class=\"accordion\">What is your service quality ?</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<button class=\"accordion\">What is the price of LED light ?</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<script>\nvar acc = document.getElementsByClassName(\"accordion\");\nvar i;\n\nfor (i = 0; i < acc.length; i++) {\n  acc[i].addEventListener(\"click\", function() {\n    this.classList.toggle(\"active\");\n    var panel = this.nextElementSibling;\n    if (panel.style.display === \"block\") {\n      panel.style.display = \"none\";\n    } else {\n      panel.style.display = \"block\";\n    }\n  });\n}\n</script>\n\n\n\n<!-- /wp:html -->', 'Frequently Ask Question', '', 'publish', 'open', 'closed', '', 'faq', '', '', '2019-05-21 09:57:18', '2019-05-21 09:57:18', '', 0, 'http://localhost/dream_watch_event/?page_id=58', 0, 'page', '', 0),
(59, 1, '2019-05-21 09:08:16', '2019-05-21 09:08:16', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-05-21 09:08:16', '2019-05-21 09:08:16', '', 58, 'http://localhost/dream_watch_event/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-05-21 09:08:40', '2019-05-21 09:08:40', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-05-21 09:08:40', '2019-05-21 09:08:40', '', 0, 'http://localhost/dream_watch_event/?page_id=60', 0, 'page', '', 0),
(61, 1, '2019-05-21 09:08:40', '2019-05-21 09:08:40', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-05-21 09:08:40', '2019-05-21 09:08:40', '', 60, 'http://localhost/dream_watch_event/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-05-21 09:30:27', '2019-05-21 09:30:27', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-05-21 09:57:40', '2019-05-21 09:57:40', '', 0, 'http://localhost/dream_watch_event/?p=62', 1, 'nav_menu_item', '', 0),
(63, 1, '2019-05-21 09:30:29', '2019-05-21 09:30:29', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2019-05-21 09:57:41', '2019-05-21 09:57:41', '', 0, 'http://localhost/dream_watch_event/?p=63', 5, 'nav_menu_item', '', 0),
(64, 1, '2019-05-21 09:30:29', '2019-05-21 09:30:29', '', 'FAQ', '', 'publish', 'closed', 'closed', '', '64', '', '', '2019-05-21 09:57:41', '2019-05-21 09:57:41', '', 0, 'http://localhost/dream_watch_event/?p=64', 4, 'nav_menu_item', '', 0),
(65, 1, '2019-05-21 09:30:28', '2019-05-21 09:30:28', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2019-05-21 09:57:41', '2019-05-21 09:57:41', '', 0, 'http://localhost/dream_watch_event/?p=65', 3, 'nav_menu_item', '', 0),
(66, 1, '2019-05-21 09:28:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-05-21 09:28:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/dream_watch_event/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2019-05-21 09:30:28', '2019-05-21 09:30:28', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2019-05-21 09:57:41', '2019-05-21 09:57:41', '', 0, 'http://localhost/dream_watch_event/?p=67', 2, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(68, 1, '2019-05-21 09:53:41', '2019-05-21 09:53:41', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n\n<style>\n.accordion {\n  background-color: #eee;\n  color: #444;\n  cursor: pointer;\n  padding: 18px;\n  width: 100%;\n  border: none;\n  text-align: left;\n  outline: none;\n  font-size: 15px;\n  transition: 0.4s;\n}\n\n.active, .accordion:hover {\n  background-color: #ccc; \n}\n\n.panel {\n  padding: 0 18px;\n  display: none;\n  background-color: white;\n  overflow: hidden;\n}\n</style>\n\n\n<h2>Accordion</h2>\n\n<button class=\"accordion\">Section 1</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<button class=\"accordion\">Section 2</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<button class=\"accordion\">Section 3</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<script>\nvar acc = document.getElementsByClassName(\"accordion\");\nvar i;\n\nfor (i = 0; i < acc.length; i++) {\n  acc[i].addEventListener(\"click\", function() {\n    this.classList.toggle(\"active\");\n    var panel = this.nextElementSibling;\n    if (panel.style.display === \"block\") {\n      panel.style.display = \"none\";\n    } else {\n      panel.style.display = \"block\";\n    }\n  });\n}\n</script>\n\n\n\n<!-- /wp:html -->', 'FAQ', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-05-21 09:53:41', '2019-05-21 09:53:41', '', 58, 'http://localhost/dream_watch_event/58-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-05-21 09:56:09', '2019-05-21 09:56:09', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n\n<style>\n.accordion {\n  background-color: #eee;\n  color: #444;\n  cursor: pointer;\n  padding: 18px;\n  width: 100%;\n  border: none;\n  text-align: left;\n  outline: none;\n  font-size: 15px;\n  transition: 0.4s;\n}\n\n.active, .accordion:hover {\n  background-color: #ccc; \n}\n\n.panel {\n  padding: 0 18px;\n  display: none;\n  background-color: white;\n  overflow: hidden;\n}\n</style>\n\n\n<h2>Frequently Ask Question:</h2>\n\n<button class=\"accordion\">How do I contact with you?</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<button class=\"accordion\">What is your service quality ?</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<button class=\"accordion\">What is the price of LED light ?</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<script>\nvar acc = document.getElementsByClassName(\"accordion\");\nvar i;\n\nfor (i = 0; i < acc.length; i++) {\n  acc[i].addEventListener(\"click\", function() {\n    this.classList.toggle(\"active\");\n    var panel = this.nextElementSibling;\n    if (panel.style.display === \"block\") {\n      panel.style.display = \"none\";\n    } else {\n      panel.style.display = \"block\";\n    }\n  });\n}\n</script>\n\n\n\n<!-- /wp:html -->', 'FAQ', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-05-21 09:56:09', '2019-05-21 09:56:09', '', 58, 'http://localhost/dream_watch_event/58-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-05-21 09:56:57', '2019-05-21 09:56:57', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n\n<style>\n.accordion {\n  background-color: #eee;\n  color: #444;\n  cursor: pointer;\n  padding: 18px;\n  width: 100%;\n  border: none;\n  text-align: left;\n  outline: none;\n  font-size: 15px;\n  transition: 0.4s;\n}\n\n.active, .accordion:hover {\n  background-color: #ccc; \n}\n\n.panel {\n  padding: 0 18px;\n  display: none;\n  background-color: white;\n  overflow: hidden;\n}\n</style>\n\n\n<h2>Frequently Ask Question:</h2>\n\n<button class=\"accordion\">How do I contact with you?</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<button class=\"accordion\">What is your service quality ?</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<button class=\"accordion\">What is the price of LED light ?</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<script>\nvar acc = document.getElementsByClassName(\"accordion\");\nvar i;\n\nfor (i = 0; i < acc.length; i++) {\n  acc[i].addEventListener(\"click\", function() {\n    this.classList.toggle(\"active\");\n    var panel = this.nextElementSibling;\n    if (panel.style.display === \"block\") {\n      panel.style.display = \"none\";\n    } else {\n      panel.style.display = \"block\";\n    }\n  });\n}\n</script>\n\n\n\n<!-- /wp:html -->', 'Frequently Ask Question', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-05-21 09:56:57', '2019-05-21 09:56:57', '', 58, 'http://localhost/dream_watch_event/58-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-05-21 09:57:18', '2019-05-21 09:57:18', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n\n<style>\n.accordion {\n  background-color: #eee;\n  color: #444;\n  cursor: pointer;\n  padding: 18px;\n  width: 100%;\n  border: none;\n  text-align: left;\n  outline: none;\n  font-size: 15px;\n  transition: 0.4s;\n}\n\n.active, .accordion:hover {\n  background-color: #ccc; \n}\n\n.panel {\n  padding: 0 18px;\n  display: none;\n  background-color: white;\n  overflow: hidden;\n}\n</style>\n\n\n\n\n<button class=\"accordion\">How do I contact with you?</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<button class=\"accordion\">What is your service quality ?</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<button class=\"accordion\">What is the price of LED light ?</button>\n<div class=\"panel\">\n  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n</div>\n\n<script>\nvar acc = document.getElementsByClassName(\"accordion\");\nvar i;\n\nfor (i = 0; i < acc.length; i++) {\n  acc[i].addEventListener(\"click\", function() {\n    this.classList.toggle(\"active\");\n    var panel = this.nextElementSibling;\n    if (panel.style.display === \"block\") {\n      panel.style.display = \"none\";\n    } else {\n      panel.style.display = \"block\";\n    }\n  });\n}\n</script>\n\n\n\n<!-- /wp:html -->', 'Frequently Ask Question', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-05-21 09:57:18', '2019-05-21 09:57:18', '', 58, 'http://localhost/dream_watch_event/58-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main_menu', 'main_menu', 0),
(3, 'Service', 'service', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 3, 0),
(9, 3, 0),
(11, 3, 0),
(13, 3, 0),
(18, 3, 0),
(20, 3, 0),
(22, 3, 0),
(24, 3, 0),
(26, 3, 0),
(28, 3, 0),
(30, 3, 0),
(32, 3, 0),
(34, 3, 0),
(62, 2, 0),
(63, 2, 0),
(64, 2, 0),
(65, 2, 0),
(67, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'session_tokens', 'a:1:{s:64:\"de04fe3ba0bf5297fa2e83803dad4f9373f857dd6d970a525c9ca5f60c307c5d\";a:4:{s:10:\"expiration\";i:1558528087;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:66.0) Gecko/20100101 Firefox/66.0\";s:5:\"login\";i:1558355287;}}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1558364460');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bx..BeW8XRmVRaYccMZR2j4bwPwGeY/', 'admin', 'sajedaiub@gmail.com', '', '2019-05-20 08:32:53', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
