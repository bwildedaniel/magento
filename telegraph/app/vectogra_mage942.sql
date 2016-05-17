-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 08, 2016 at 03:58 PM
-- Server version: 5.6.28-76.1-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vectogra_mage942`
--

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_adminnotification_inbox`
--

CREATE TABLE IF NOT EXISTS `mgeg_adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `IDX_MGEG_ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `IDX_MGEG_ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `IDX_MGEG_ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox' AUTO_INCREMENT=156 ;

--
-- Dumping data for table `mgeg_adminnotification_inbox`
--

INSERT INTO `mgeg_adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 4, '2008-08-02 03:30:16', 'Updated iPhone Theme is now available', 'Updated iPhone theme for Magento 1.1 is now available on Magento Connect and for upgrade through your Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/updated-iphone-theme-for-magento-11-is-now-available/', 0, 0),
(2, 3, '2008-08-02 03:40:27', 'Magento version 1.1.2 is now available', 'Magento version 1.1.2 is now available for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-version-112-is-now-available/', 0, 0),
(3, 3, '2008-08-13 19:51:46', 'Magento version 1.1.3 is now available', 'Magento version 1.1.3 is now available', 'http://www.magentocommerce.com/blog/comments/magento-version-113-is-now-available/', 0, 0),
(4, 1, '2008-09-02 23:10:31', 'Magento Version 1.1.4 Security Update Now Available', 'Magento 1.1.4 Security Update Now Available. If you are using Magento version 1.1.x, we highly recommend upgrading to this version as soon as possible.', 'http://www.magentocommerce.com/blog/comments/magento-version-114-security-update/', 0, 0),
(5, 3, '2008-09-16 00:09:54', 'Magento version 1.1.5 Now Available', 'Magento version 1.1.5 Now Available.\n\nThis release includes many bug fixes, a new category manager and a new skin for the default Magento theme.', 'http://www.magentocommerce.com/blog/comments/magento-version-115-now-available/', 0, 0),
(6, 3, '2008-09-17 22:18:35', 'Magento version 1.1.6 Now Available', 'Magento version 1.1.6 Now Available.\n\nThis version includes bug fixes for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-116-now-available/', 0, 0),
(7, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(8, 3, '2008-11-20 05:31:12', 'Magento version 1.1.7 Now Available', 'Magento version 1.1.7 Now Available.\n\nThis version includes over 350 issue resolutions for Magento 1.1.x that are listed in the release notes section, and new functionality that includes:\n\n-Google Website Optimizer integration\n-Google Base integration\n-Scheduled DB logs cleaning option', 'http://www.magentocommerce.com/blog/comments/magento-version-117-now-available/', 0, 0),
(9, 3, '2008-11-27 01:24:50', 'Magento Version 1.1.8 Now Available', 'Magento version 1.1.8 now available.\n\nThis version includes some issue resolutions for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-118-now-available/', 0, 0),
(10, 3, '2008-12-30 11:45:59', 'Magento version 1.2.0 is now available for download and upgrade', 'We are extremely happy to announce the availability of Magento version 1.2.0 for download and upgrade.\n\nThis version includes numerous issue resolutions for Magento version 1.1.x and some highly requested new features such as:\n\n    * Support for Downloadable/Digital Products. \n    * Added Layered Navigation to site search result page.\n    * Improved site search to utilize MySQL fulltext search\n    * Added support for fixed-taxes on product level.\n    * Upgraded Zend Framework to the latest stable version 1.7.2', 'http://www.magentocommerce.com/blog/comments/magento-version-120-is-now-available/', 0, 0),
(11, 2, '2008-12-31 01:59:22', 'Magento version 1.2.0.1 now available', 'Magento version 1.2.0.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1201-available/', 0, 0),
(12, 2, '2009-01-13 00:41:49', 'Magento version 1.2.0.2 now available', 'Magento version 1.2.0.2 is now available for download and upgrade. This version includes an issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1202-now-available/', 0, 0),
(13, 3, '2009-01-24 04:25:56', 'Magento version 1.2.0.3 now available', 'Magento version 1.2.0.3 is now available for download and upgrade. This version includes issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1203-now-available/', 0, 0),
(14, 3, '2009-02-03 01:57:00', 'Magento version 1.2.1 is now available for download and upgrade', 'We are happy to announce the availability of Magento version 1.2.1 for download and upgrade.\n\nThis version includes some issue resolutions for Magento version 1.2.x. A full list of items included in this release can be found on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-121-now-available/', 0, 0),
(15, 3, '2009-02-24 04:45:47', 'Magento version 1.2.1.1 now available', 'Magento version 1.2.1.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1211-now-available/', 0, 0),
(16, 3, '2009-02-27 05:39:24', 'CSRF Attack Prevention', 'We have just posted a blog entry about a hypothetical CSRF attack on a Magento admin panel. Please read the post to find out if your Magento installation is at risk at http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 'http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 0, 0),
(17, 2, '2009-03-04 03:03:58', 'Magento version 1.2.1.2 now available', 'Magento version 1.2.1.2 is now available for download and upgrade.\nThis version includes some updates to improve admin security as described in the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-1212-now-available/', 0, 0),
(18, 3, '2009-03-31 04:22:40', 'Magento version 1.3.0 now available', 'Magento version 1.3.0 is now available for download and upgrade. This version includes numerous issue resolutions for Magento version 1.2.x and new features as described on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-130-is-now-available/', 0, 0),
(19, 3, '2009-04-18 06:06:02', 'Magento version 1.3.1 now available', 'Magento version 1.3.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and new features such as Checkout By Amazon and Amazon Flexible Payment. To see a full list of updates please check the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-131-now-available/', 0, 0),
(20, 3, '2009-05-20 00:31:21', 'Magento version 1.3.1.1 now available', 'Magento version 1.3.1.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and a security update for Magento installations that run on multiple domains or sub-domains. If you are running Magento with multiple domains or sub-domains we highly recommend upgrading to this version.', 'http://www.magentocommerce.com/blog/comments/magento-version-1311-now-available/', 0, 0),
(21, 3, '2009-05-30 00:54:06', 'Magento version 1.3.2 now available', 'This version includes some improvements and issue resolutions for version 1.3.x that are listed on the release notes page. also included is a Beta version of the Compile module.', 'http://www.magentocommerce.com/blog/comments/magento-version-132-now-available/', 0, 0),
(22, 3, '2009-06-01 21:32:52', 'Magento version 1.3.2.1 now available', 'Magento version 1.3.2.1 now available for download and upgrade.\n\nThis release solves an issue for users running Magento with PHP 5.2.0, and changes to index.php to support the new Compiler Module.', 'http://www.magentocommerce.com/blog/comments/magento-version-1321-now-available/', 0, 0),
(23, 3, '2009-07-02 03:21:44', 'Magento version 1.3.2.2 now available', 'Magento version 1.3.2.2 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1322-now-available/', 0, 0),
(24, 3, '2009-07-23 08:48:54', 'Magento version 1.3.2.3 now available', 'Magento version 1.3.2.3 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. We recommend to upgrade to this version if PayPal payment modules are in use. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1323-now-available/', 0, 0),
(25, 4, '2009-08-28 20:26:28', 'PayPal is updating Payflow Pro and Website Payments Pro (Payflow Edition) UK.', 'If you are using Payflow Pro and/or Website Payments Pro (Payflow Edition) UK.  payment methods, you will need to update the URLâ€˜s in your Magento Administrator Panel in order to process transactions after September 1, 2009. Full details are available here: http://www.magentocommerce.com/wiki/paypal_payflow_changes', 'http://www.magentocommerce.com/wiki/paypal_payflow_changes', 0, 0),
(26, 2, '2009-09-23 22:16:49', 'Magento Version 1.3.2.4 Security Update', 'Magento Version 1.3.2.4 is now available. This version includes a security updates for Magento 1.3.x that solves possible XSS vulnerability issue on customer registration page and is available through SVN, Download Page and through the Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-version-1324-security-update/', 0, 0),
(27, 4, '2009-09-25 16:57:54', 'Magento Preview Version 1.4.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha2-now-available/', 0, 0),
(28, 4, '2009-10-07 02:55:40', 'Magento Preview Version 1.4.0.0-alpha3 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha3 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha3-now-available/', 0, 0),
(29, 4, '2009-12-09 03:30:36', 'Magento Preview Version 1.4.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-beta1-now-available/', 0, 0),
(30, 4, '2009-12-31 13:22:12', 'Magento Preview Version 1.4.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-rc1-now-available/', 0, 0),
(31, 4, '2010-02-13 07:39:53', 'Magento CE Version 1.4.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.0.0 Stable for upgrade and download.', 'http://bit.ly/c53rpK', 0, 0),
(32, 3, '2010-02-20 06:39:36', 'Magento CE Version 1.4.0.1 Stable is now available', 'Magento CE 1.4.0.1 Stable is now available for upgrade and download.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1401-stable-now-available/', 0, 0),
(33, 4, '2010-04-23 22:09:03', 'Magento Version CE 1.3.3.0 Stable - Now Available With Support for 3-D Secure', 'Based on community requests, we are excited to announce the release of Magento CE 1.3.3.0-Stable with support for 3-D Secure. This release is intended for Magento merchants using version 1.3.x, who want to add support for 3-D Secure.', 'http://www.magentocommerce.com/blog/comments/magento-version-ce-1330-stable-now-available-with-support-for-3-d-secure/', 0, 0),
(34, 4, '2010-05-31 19:20:21', 'Announcing the Launch of Magento Mobile', 'The Magento team is pleased to announce the launch of Magento mobile, a new product that will allow Magento merchants to easily create branded, native mobile storefront applications that are deeply integrated with Magentoâ€™s market-leading eCommerce platform. The product includes a new administrative manager, a native iPhone app that is fully customizable, and a service where Magento manages the submission and maintenance process for the iTunes App Store.\n\nLearn more by visiting the Magento mobile product page and sign-up to be the first to launch a native mobile commerce app, fully integrated with Magento.', 'http://www.magentocommerce.com/product/mobile', 0, 0),
(35, 4, '2010-06-10 22:08:08', 'Magento CE Version 1.4.1.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.0 Stable for upgrade and download. Some of the highlights of this release include: Enhanced PayPal integration (more info to follow), Change of Database structure of the Sales module to no longer use EAV, and much more.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1410-stable-now-available/', 0, 0),
(36, 4, '2010-07-26 23:37:34', 'Magento CE Version 1.4.1.1 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-now-available/', 0, 0),
(37, 4, '2010-07-28 07:12:12', 'Magento CE Version 1.4.2.0-beta1 Preview Release Now Available', 'This release gives a preview of the new Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-beta1-now-available/', 0, 0),
(38, 4, '2010-07-28 22:15:01', 'Magento CE Version 1.4.1.1 Patch Available', 'As some users experienced issues with upgrading to CE 1.4.1.1 through PEAR channels we provided a patch for it that is available on our blog http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 0, 0),
(39, 4, '2010-10-12 02:13:25', 'Magento Mobile is now live!', 'Magento Mobile is now live! Signup today to have your own native iPhone mobile-shopping app in iTunes for the holiday season! Learn more at http://www.magentomobile.com/', 'http://www.magentomobile.com/', 0, 0),
(40, 4, '2010-11-09 01:52:06', 'Magento CE Version 1.4.2.0-RC1 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC1 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc1-now-available/', 0, 0),
(41, 4, '2010-12-03 00:33:00', 'Magento CE Version 1.4.2.0-RC2 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC2 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc2-now-available/', 0, 0),
(42, 4, '2010-12-09 02:29:55', 'Magento CE Version 1.4.2.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1420-stable-now-available/', 0, 0),
(43, 4, '2010-12-18 03:23:55', 'Magento Preview Version CE 1.5.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha1-now-available/', 0, 0),
(44, 4, '2010-12-30 03:51:08', 'Magento Preview Version CE 1.5.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha2-now-available/', 0, 0),
(45, 4, '2011-01-14 04:35:36', 'Magento Preview Version CE 1.5.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta1-now-available/', 0, 0),
(46, 4, '2011-01-22 01:19:09', 'Magento Preview Version CE 1.5.0.0-beta2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta2-now-available/', 0, 0),
(47, 4, '2011-01-28 01:27:57', 'Magento Preview Version CE 1.5.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc1-now-available/', 0, 0),
(48, 4, '2011-02-04 01:56:33', 'Magento Preview Version CE 1.5.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc2-now-available/', 0, 0),
(49, 4, '2011-02-08 23:43:23', 'Magento CE Version 1.5.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.5.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-community-professional-and-enterprise-editions-releases-now-availab/', 0, 0),
(50, 4, '2011-02-10 03:42:57', 'Magento CE 1.5.0.1 stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.0.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-1501-stable-now-available/', 0, 0),
(51, 4, '2011-03-18 23:15:45', 'Magento CE 1.5.1.0-beta1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-beta1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-beta1-now-available/', 0, 0),
(52, 4, '2011-03-31 20:43:02', 'Magento CE 1.5.1.0-rc1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-rc1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-rc1-now-available/', 0, 0),
(53, 4, '2011-04-26 21:21:07', 'Magento CE 1.5.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1510-stable-now-available/', 0, 0),
(54, 4, '2011-05-26 21:33:23', 'Magento Preview Version CE 1.6.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-alpha1-now-available/', 0, 0),
(55, 4, '2011-06-15 20:12:08', 'Magento Preview Version CE 1.6.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-beta1for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-beta1-now-available/', 0, 0),
(56, 4, '2011-06-30 21:03:58', 'Magento Preview Version CE 1.6.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc1-now-available/', 0, 0),
(57, 4, '2011-07-11 21:07:39', 'Magento Preview Version CE 1.6.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc2-now-available/', 0, 0),
(58, 4, '2011-08-19 19:58:31', 'Magento CE 1.6.0.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1600-stable-now-available/', 0, 0),
(59, 4, '2011-09-17 03:31:26', 'Magento Preview Version CE 1.6.1.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-beta1-now-available/', 0, 0),
(60, 4, '2011-09-29 17:44:10', 'Magento Preview Version CE 1.6.1.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-rc1-now-available/', 0, 0),
(61, 4, '2011-10-19 19:50:05', 'Magento CE 1.6.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1610-stable-now-available/', 0, 0),
(62, 4, '2011-12-30 21:39:35', 'Magento Preview Version CE 1.7.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-alpha1-now-available/', 0, 0),
(63, 4, '2012-01-11 21:24:20', 'Magento CE 1.6.2.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1620-stable-now-available/', 0, 0),
(64, 4, '2012-03-02 23:54:12', 'Magento Preview Version CE 1.7.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-beta1-now-available/', 0, 0),
(65, 4, '2012-04-23 12:02:40', 'Magento Community Preview Version CE 1.7.0.0-RC1 has been released!', 'Learn more about the exciting new features and updates in this release and how you can take it for a test drive. As this is a preview version, we need to stress that it''s likely unstable and that we DON''T recommend that you use it in any production environment just yet.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-rc1-now-available/', 0, 0),
(66, 4, '2012-05-11 07:46:54', 'Magento Community 1.7 and Magento Enterprise 1.12 now available!', 'Learn more about the exciting new features and updates in these releases.', 'http://www.magentocommerce.com/blog/comments/magento-enterprise-112-and-community-17-now-available/', 0, 0),
(67, 4, '2012-06-20 16:54:07', 'Magento Community Edition 1.7.0.1 now available! ', 'We have just released an updated version of Magento Community Edition, version 1.7.0.1. This update delivers new, minor functionality and fixes for some potential security vulnerabilities.', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1701-released/', 0, 0),
(68, 4, '2012-07-05 17:21:43', 'Important Security Update - Zend Platform Vulnerability', 'We have recently learned of a serious vulnerability in the Zend platform on which Magento is built. Learn more and access a patch that addresses this issue. ', 'http://www.magentocommerce.com/blog/comments/important-security-update-zend-platform-vulnerability/', 0, 0),
(69, 4, '2012-11-19 19:27:42', 'Wrap up more holiday sales with financing', 'Give your customers up to 6 months financing. You get paid right away with Bill Me Later, a PayPal service. It’s a great way to extend financing in time for the holidays. Learn More.', 'http://www.magentocommerce.com/paypal/billmelater?utm_source=CEMessaging&utm_medium=copy&utm_content=sixmonths&utm_campaign=BML', 0, 0),
(70, 4, '2012-12-07 10:22:30', 'Increase Your Sales With PayPal', 'Magento merchants using PayPal Express Checkout can help increase their sales on average 18%. It is one simple thing you can do right now to help boost your sales. Learn more.', 'http://www.magentocommerce.com/add-paypal?utm_source=CEModule&utm_medium=copy&utm_content=18&utm_campaign=choosepaypal', 0, 0),
(71, 4, '2013-01-15 21:02:07', 'Imagine 2013 Registration is Now Open!', 'Join 1500 merchants, partners, developers and enthusiasts from 35+ countries around the world for Magento’s premier global conference! Collaborate, learn, network and get inspired by the future of eCommerce. Tickets will sell out fast! April 8th – 10th in Las Vegas.', 'https://registration.imagineecommerce.com/', 0, 0),
(72, 4, '2013-02-12 16:53:42', 'Get More eCommerce Power with Magento Enterprise', 'Limited time offer: Get a free, customized evaluation of your Community Edition site from a Magento Solution Partner. This evaluation gives you a clear look at the numerous benefits you can achieve by upgrading to Enterprise Edition. ', 'http://www.magentocommerce.com/community-to-enterprise?utm_source=CEMM&utm_medium=copy&utm_campaign=CE2EE', 0, 0),
(73, 2, '2013-09-27 15:28:13', 'Magento Community Edition 1.8.0.0 - now available for download!', 'Get tax, security, performance, and many other improvements. \n\nLearn more at http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/ ', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/', 0, 0),
(74, 4, '2013-12-11 14:35:06', 'Magento Community Edition 1.8.1.0 is here!', 'This new version offers significant tax calculation, product quality, and security enhancements. Be sure to carefully review the upgrade instructions before starting. More information is available at http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 0, 0),
(75, 4, '2013-12-12 22:24:39', 'Important Magento Community Edition Patch', 'A security patch is available for Magento Community Edition 1.4.0.0 through 1.7.0.2; the issue has been fixed in Magento Community Edition 1.8.0.0 and later. It resolves a vulnerability discovered through our quarterly penetration testing process and has not been reported by merchants. We encourage all merchants to apply the patch in their next regularly scheduled maintenance cycle. The patch is available at http://www.magentocommerce.com/download in the Magento Community Edition Patches section.', 'http://www.magentocommerce.com/download', 0, 0),
(76, 4, '2014-01-21 17:34:48', 'PHP 5.4 Patch Now Available', 'Magento is advancing its platform and making development more efficient by adding support for PHP 5.4. Patches are available for download at www.magentocommerce.com/download and you can learn more about this update in our blog post at http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54 .', 'http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54', 0, 0),
(77, 4, '2014-02-20 16:51:46', 'Discover Card Validation Patch Available', 'A patch that resolves an issue with validating Discover credit cards is now available for download at http://www.magentocommerce.com/download. More information on the patch is available in the Magento Knowledge Base at http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation', 'http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation ', 0, 0),
(78, 4, '2014-03-04 14:12:26', 'Learn How to Quickly Increase Sales on Your Site', 'Adding the PayPal Express Checkout button to your checkout page can help increase sales 18% on average. It’s fast and easy and you can do it right now to boost sales. Express Checkout is already seamlessly integrated into Community Edition.', 'http://magento.com/paypal/CE_Express_Checkout_NA?utm_source=messagemodule&utm_medium=message&utm_campaign=Ceexpresscheckout', 0, 0),
(79, 4, '2014-05-13 14:46:11', 'Magento Community Edition 1.9 is now available!', 'It accelerates your entry into the mobile commerce space by slashing the time and cost of getting a mobile device-friendly responsive site.  And a new Bill Me Later payment option helps boost your sales. Visit http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time to learn more.', 'http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time', 0, 0),
(80, 4, '2014-10-08 02:55:06', 'It’s still not too late: Boost your 2014 Holiday sales today.', 'See results in as little as one week with eBay Enterprise Display and 2 business days with eBay Enterprise Affiliate. DID YOU KNOW: Get access to over 128 million highly qualified shoppers on eBay.com with eBay Enterprise Display. And the average retail client using product retargeting sees a $10 to $1 ROI on retargeting spend during Q4. With the eBay Enterprise Affiliate Network, get access to over 200,000 active network publishers across 30+ verticals, and only pay when a customer makes a purchase (Affiliate Network is only available in the U.S. & Canada).  GET STARTED TODAY by visiting www.ebayenterprise.com/turbochargesales', 'http://www.ebayenterprise.com/turbochargesales', 0, 0),
(81, 4, '2014-11-12 18:03:26', 'Important: PayPal Users Must Discontinue Using SSL 3.0 By December 3, 2014', 'To address a vulnerability with the SSL 3.0 security protocol, PayPal and other payment gateways will be disabling SSL 3.0 support. Merchants must upgrade to Transport Layer Service (TLS) by December 3, 2014 to avoid PayPal payment operation failures. Learn more about what you need to do at https://devblog.paypal.com/poodle-ssl-3-0-vulnerability/', 'https://devblog.paypal.com/poodle-ssl-3-0-vulnerability/', 0, 0),
(82, 4, '2014-11-24 22:25:21', 'Magento Community Edition 1.9.1 is available!', 'Magento Community Edition 1.9.1 empowers merchants to deliver compelling shopping experiences by offering enhanced responsive design capabilities, new swatches to display product variations, and improved performance through support for MySQL 5.6 and PHP 5.5. It also includes support for Google Universal Analytics and over 70 product improvements. Find out more at http://magento.com/blog/magento-news/magento-community-edition-191-now-available-download', 'http://magento.com/blog/magento-news/magento-community-edition-191-now-available-download', 0, 0),
(83, 4, '2015-01-22 16:47:08', 'Join Us at Imagine Commerce 2015 - April 20-22 at the Wynn Las Vegas', 'Join Magento, eBay Enterprise, and over 2,000 merchants, developers, and eCommerce experts at the premier Commerce event of the year. With three days of cutting-edge keynote presentations, special technical programs, dynamic breakout sessions, and incredible networking opportunities, Imagine Commerce 2015 will educate, enrich, and inspire you to take your business to new heights. Register now at http://imagine2015.magento.com/.', 'http://imagine2015.magento.com/', 0, 0),
(84, 1, '2015-04-16 14:17:07', 'Critical Reminder: Download and install Magento security patches.  Download now.', 'Download and implement 2 important security patches (SUPEE-5344 and SUPEE-1533) from the Magento Community Edition download page (https://www.magentocommerce.com/products/downloads/magento/).  If you have not done so already, download and install 2 previously-released patches that prevent an attacker from remotely executing code on Magento software.  These issues affect all versions of Magento Community Edition.  A press release from Check Point Software Technologies in the coming days will make one of these issues widely known, possibly alerting hackers who may try to exploit it.  Ensure the patches are in place as a preventative measure before the issue is publicized.', 'https://www.magentocommerce.com/products/downloads/magento/ ', 0, 0),
(85, 1, '2015-04-19 20:37:00', 'Second Reminder: Download and install Magento critical security patches now.', 'If you have not done so already, download and install 2 previously-released security patches (SUPEE-5344 and SUPEE-1533) from the Magento Community Edition download page (https://www.magentocommerce.com/products/downloads/magento/).  These security issues affect all versions of Magento Community Edition and enable an attacker to remotely execute code on Magento software. A press release from Check Point Software Technologies tomorrow  will make one of these issues widely known, possibly alerting hackers who may try to exploit it.  Ensure the patches are in place as a preventative measure before the issue is publicized.', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(86, 1, '2015-04-23 17:43:31', 'Urgent: Immediately install Magento critical security patches', 'It is critical for you to download and install 2 previously-released security patches (SUPEE-5344 and SUPEE-1533) from the Magento Community Edition download page (https://www.magentocommerce.com/products/downloads/magento/).  Please do this immediately, as Check Point Software Technologies has published a technical description of how they discovered the issue, which we feel might serve as a tutorial for implementing an attack against your website. ', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(87, 1, '2015-05-14 22:34:01', 'Important: New Magento Security Patch - Install it Now', 'It is important for you to download and install a new security patch (SUPEE-5994) from the Magento Community Edition download page (https://www.magentocommerce.com/products/downloads/magento/).  Please apply this critical update immediately to help protect your site from exposure to multiple security vulnerabilities impacting all versions of the Magento Community Edition software. Please note that this patch should be installed in addition to the recent Shoplift patch (SUPEE-5344).', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(88, 4, '2015-07-07 14:28:25', 'Now available:  Enhanced site quality and security with Community Edition 1.9.2', 'Magento Community Edition 1.9.2 is now available for download and features over 105 product improvements, nearly 170 automated functional tests to help internal development teams improve implementation quality and time to market, and several security enhancements. Read our blog announcement for more information (http://magento.com/blog/magento-news/magento-community-edition-192-now-available), or go to the Community Edition download page to get the software today (https://www.magentocommerce.com/products/downloads/magento/).', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(89, 1, '2015-07-07 15:08:05', 'July 7, 2015: New Magento Security Patch (SUPEE-6285) – Install Immediately', 'Today we are providing a new security patch (SUPEE-6285) that addresses critical security vulnerabilities. The patch is available for Community Edition 1.4.1 to 1.9.1.1 and is part of the core code of our latest release, Community Edition 1.9.2, available for download today.  PLEASE NOTE:  You must first implement SUPEE-5994 to ensure SUPEE-6285 works properly. Download Community Edition 1.9.2 or the patch from the Community Edition download page: https://www.magentocommerce.com/products/downloads/magento/  ', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(90, 1, '2015-08-04 15:28:26', 'August 4, 2015: New Magento Security Patch (SUPEE-6482) – Install Immediately', 'Today we are providing a new security patch (SUPEE-6482) that addresses 4 security issues; two issues related to APIs and two cross-site scripting risks. The patch is available for Community Edition 1.4 and later releases and is part of the core code of Community Edition 1.9.2.1, which is available for download today. Before implementing this new security patch, you must first implement all previous security patches. Download Community Edition 1.9.2.1 or the patch from the Community Edition download page at https://www.magentocommerce.com/products/downloads/magento/  ', 'https://www.magentocommerce.com/products/downloads/magento/  ', 0, 0),
(91, 2, '2015-08-05 18:12:55', 'August 5, 2015:  Security Patch (SUPEE-6482) Release Note CORRECTION', 'When we announced a new security patch (SUPEE-6482) for Community Edition yesterday we incorrectly said that it addresses 4 issues. It actually addresses 2 security issues: Autoloaded File Inclusion in Magento SOAP API and a SSRF Vulnerability in WSDL File. The patch and Community Edition 1.9.2.1 are complete, fully-tested, and ready to deploy. We strongly encourage you to deploy the patch or upgrade to the latest version of Community Edition if you haven’t done so already. You can find the patch at https://www.magentocommerce.com/products/downloads/magento/. ', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(92, 4, '2015-10-01 15:32:53', 'Episode VI: Return of Imagine Commerce | 2016 Registration is Open!', 'The force is strong with this one. Join the Magento rebellion at Imagine Commerce 2016. Enlist Now at http://imagine.magento.com.', 'http://imagine.magento.com', 0, 0),
(93, 1, '2015-10-20 22:28:05', 'New Malware Issue. Make Sure You Have Implemented All Security Patches', 'We have received reports that some Magento sites are being targeted by Guruincsite malware (Neutrino exploit kit). We have NOT identified a new attack vector at this time. Nearly all the impacted sites checked so far were vulnerable to a previously identified and patched issue; sites not vulnerable to that issue show other unpatched issues. Visit the Magento Security Center at http://magento.com/security/news/important-security-update for more information on how to address this issue and make sure that you have implemented all recent security patches.\n', 'http://magento.com/security/news/important-security-update', 0, 0),
(94, 1, '2015-10-27 20:48:23', 'October 27, 2015: New Magento Security Patch (SUPEE-6788) – Install Immediately', 'Today, we are releasing a new patch (SUPEE-6788) and Community Edition 1.9.2.2 to address 10+ security issues, including remote code execution and information leak vulnerabilities. This patch is unrelated to the Guruincsite malware issue. Be sure to test the patch in a development environment first, as it can affect extensions and customizations. Download the patch from the Community Edition Download page and learn more at http://magento.com/security/patches/supee-6788  ', 'http://magento.com/security/patches/supee-6788  ', 0, 0),
(95, 1, '2015-11-17 23:25:00', 'New JavaScript Malware Issue. Make sure your site is secure.', 'Magento Commerce has received reports of a JavaScript malware exploit that forwards credit card information from checkout pages to an external site. No new attack vector has been identified. It appears most impacted sites have not implemented the February 2015 Shoplift patch, or the patch was implemented after the site was already compromised. Information on how to identify and remove the malicious code is available on the Magento Security Center at http://magento.com/security/news/new-javascript-malware-issue', 'http://magento.com/security/news/new-javascript-malware-issue ', 0, 0),
(96, 4, '2015-11-18 20:40:40', 'Magento 2.0 Is Available!', 'Magento 2.0, our next generation open source digital commerce platform is here!  Magento 2.0 offers enhanced performance and scalability, new features to deliver better shopping experiences and conversion rates, and business agility and productivity improvements.  Learn more http://magento.com/blog/magento-news/new-era-commerce-innovation.\n\n', 'http://magento.com/blog/magento-news/new-era-commerce-innovation', 0, 0),
(97, 4, '2016-01-13 21:51:52', 'Have questions? Magento has big answers at Imagine Commerce.', 'Big news, bigger experts, and an even bigger ecosystem. Will you be at Imagine Commerce? Join us. ', 'http://imagine.magento.com', 0, 0),
(98, 1, '2016-01-20 21:17:19', 'Important: New Security Patch (SUPEE-7405) and Release – 1/20/2016', 'Today, we are releasing a new patch (SUPEE-7405) and Community Edition 1.9.2.3 to improve the security of Magento sites. There are no confirmed attacks related to the security issues, but certain vulnerabilities can potentially be exploited to access customer information or take over administrator sessions. You can download the patch and release from the Community Edition Download Page and learn more at https://magento.com/security/patches/supee-7405. ', 'https://magento.com/security/patches/supee-7405', 0, 0),
(99, 1, '2016-02-24 07:06:43', 'Important: Updates to SUPEE-7405 Security Patch and Release – 2/23/2016', 'Updated versions of the recent SUPEE-7405 patch and Community Edition 1.9.2.3 release are now available. The updates add support for PHP 5.3 and address issues with upload file permissions, merging carts, and SOAP APIs experienced with the original release. They DO NOT address any new security issues, but all merchants should upgrade to the new versions to maintain compatibility with future releases. You can learn more about the updates at https://magento.com/security/patches/supee-7405', 'https://magento.com/security/patches/supee-7405', 0, 0),
(100, 1, '2016-03-30 22:25:07', 'Protect Your Business from Brute-Force Password Guessing Attacks', 'We just posted an article on the Magento Security Center that shares best practices for protecting stores from brute-force password guessing attacks. We’ve recently been made aware of a rise in these attacks, so we strongly recommend that you review the approaches outlined in this article with your developer and hosting provider immediately and implement the ones that are best suited to your unique situation. Learn more at https://magento.com/security/best-practices/protect-your-magento-installation-password-guessing ', 'https://magento.com/security/best-practices/protect-your-magento-installation-password-guessing ', 0, 0),
(101, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(102, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(103, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(104, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(105, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(106, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(107, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(108, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(109, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(110, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(111, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(112, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(113, 4, '2013-03-12 10:36:04', 'MageMonkey new version v1.1.1', 'A new version has been released, change log is.\n- Adding start date for abandoned cart', 'http://www.magentocommerce.com/magento-connect/mage-monkey-mailchimp-integration-4865.html', 0, 0),
(114, 4, '2013-03-20 09:18:26', 'New MageMonkey version with bug fixes for Abandoned Carts', 'Release notes are:\n- Fix for abandoned cart multi store management\n- Fix for abandoned cart not send email for a quote who has an order posterior from the same customer', 'http://www.magentocommerce.com/magento-connect/mage-monkey-mailchimp-integration-4865.html', 0, 0),
(115, 4, '2013-07-04 08:49:46', 'New MageMonkey version, featuring autoresponders', 'On July 2nd we uploaded version 1.1.12 it includes autoresponders, we hope you enjoy it.', 'http://www.magentocommerce.com/magento-connect/mage-monkey-mailchimp-integration-4865.html', 0, 0),
(116, 4, '2013-03-18 14:07:19', 'Increase your sales with MageMonkeys free <<RECOVER ABANDONED CARTS>>', 'Abandoned Cart - is part of the latest version of the MageMonkey Module. It sends an automated email to shoppers who have added your products to their shopping cart, but didn''t complete the checkout process. This reminder may then encourage the shopper to return and place their order.', 'http://ebizmarts.com/blog/2013/03/increase-your-sales-with-magemonkeys-free-recover-abandoned-carts', 0, 0),
(117, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(118, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(119, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(120, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(121, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0);
INSERT INTO `mgeg_adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(122, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(123, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(124, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(125, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(126, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(127, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(128, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(129, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(130, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(131, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(132, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(133, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(134, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(135, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(136, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(137, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(138, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(139, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(140, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(141, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(142, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(143, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(144, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(145, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(146, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(147, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(148, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(149, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(150, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(151, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(152, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(153, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(154, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(155, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_admin_assert`
--

CREATE TABLE IF NOT EXISTS `mgeg_admin_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert ID',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert Type',
  `assert_data` text COMMENT 'Assert Data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Assert Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_admin_role`
--

CREATE TABLE IF NOT EXISTS `mgeg_admin_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_MGEG_ADMIN_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_MGEG_ADMIN_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Role Table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_admin_role`
--

INSERT INTO `mgeg_admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, 'Administrators'),
(2, 1, 2, 0, 'U', 1, 'System');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_admin_rule`
--

CREATE TABLE IF NOT EXISTS `mgeg_admin_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert ID',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role Type',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_MGEG_ADMIN_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_MGEG_ADMIN_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_admin_rule`
--

INSERT INTO `mgeg_admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
(1, 1, 'all', NULL, 0, 'G', 'allow');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_admin_user`
--

CREATE TABLE IF NOT EXISTS `mgeg_admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(100) DEFAULT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User Created Time',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNQ_MGEG_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin User Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_admin_user`
--

INSERT INTO `mgeg_admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`) VALUES
(1, 'System', 'Administrator', 'admin@bisonmedia.net', 'admin', '0d6d788b7ab0cf97c096690aa78f9a98:54', '2016-04-27 16:50:44', '2016-04-27 16:50:44', '2016-05-07 11:03:07', 41, 0, 1, 'a:1:{s:11:"configState";a:117:{s:13:"ultimo_header";s:1:"1";s:15:"ultimo_category";s:1:"1";s:20:"ultimo_category_grid";s:1:"1";s:20:"ultimo_category_list";s:1:"1";s:19:"ultimo_product_page";s:1:"1";s:21:"ultimo_product_labels";s:1:"1";s:13:"ultimo_footer";s:1:"1";s:21:"ultimo_product_slider";s:1:"1";s:16:"ultimo_rsnippets";s:1:"1";s:21:"ultimo_magento_blocks";s:1:"1";s:26:"ultimo_sidebar_blocks_home";s:1:"1";s:20:"ultimo_customization";s:1:"1";s:14:"ultimo_install";s:1:"1";s:15:"general_country";s:1:"0";s:14:"general_region";s:1:"0";s:14:"general_locale";s:1:"1";s:25:"general_store_information";s:1:"1";s:14:"design_package";s:1:"1";s:12:"design_theme";s:1:"1";s:11:"design_head";s:1:"1";s:13:"design_header";s:1:"1";s:13:"design_footer";s:1:"1";s:16:"design_watermark";s:1:"1";s:17:"design_pagination";s:1:"0";s:12:"design_email";s:1:"1";s:25:"trans_email_ident_general";s:1:"1";s:23:"trans_email_ident_sales";s:1:"1";s:25:"trans_email_ident_support";s:1:"1";s:25:"trans_email_ident_custom1";s:1:"0";s:25:"trans_email_ident_custom2";s:1:"0";s:17:"contacts_contacts";s:1:"1";s:14:"contacts_email";s:1:"1";s:20:"ultimo_design_colors";s:1:"1";s:18:"ultimo_design_font";s:1:"1";s:21:"ultimo_design_effects";s:1:"1";s:18:"ultimo_design_page";s:1:"1";s:20:"ultimo_design_header";s:1:"1";s:24:"ultimo_design_header_top";s:1:"1";s:28:"ultimo_design_header_primary";s:1:"1";s:17:"ultimo_design_nav";s:1:"1";s:18:"ultimo_design_main";s:1:"1";s:22:"ultimo_design_category";s:1:"1";s:26:"ultimo_design_product_page";s:1:"1";s:23:"ultimo_design_slideshow";s:1:"1";s:20:"ultimo_design_footer";s:1:"1";s:24:"ultimo_design_footer_top";s:1:"1";s:28:"ultimo_design_footer_primary";s:1:"1";s:30:"ultimo_design_footer_secondary";s:1:"1";s:27:"ultimo_design_footer_bottom";s:1:"1";s:13:"zendesk_setup";s:1:"1";s:15:"zendesk_general";s:1:"1";s:11:"zendesk_sso";s:1:"1";s:20:"zendesk_sso_frontend";s:1:"1";s:25:"zendesk_frontend_features";s:1:"1";s:24:"zendesk_backend_features";s:1:"1";s:11:"zendesk_api";s:1:"1";s:24:"zendesk_support_channels";s:1:"0";s:24:"ultimo_layout_responsive";s:1:"1";s:21:"ultramegamenu_general";s:1:"1";s:22:"ultramegamenu_mainmenu";s:1:"1";s:24:"ultramegamenu_mobilemenu";s:1:"1";s:22:"ultramegamenu_sidemenu";s:1:"1";s:29:"ultramegamenu_category_labels";s:1:"1";s:14:"brands_general";s:1:"1";s:19:"brands_product_view";s:1:"1";s:11:"brands_list";s:1:"1";s:13:"brands_slider";s:1:"1";s:11:"tax_classes";s:1:"1";s:15:"tax_calculation";s:1:"1";s:12:"tax_defaults";s:1:"1";s:11:"tax_display";s:1:"1";s:16:"tax_cart_display";s:1:"1";s:17:"tax_sales_display";s:1:"1";s:8:"tax_weee";s:1:"1";s:16:"google_analytics";s:1:"1";s:22:"ultraslideshow_general";s:1:"1";s:22:"ultraslideshow_banners";s:1:"1";s:25:"ultraslideshow_navigation";s:1:"1";s:7:"web_url";s:1:"1";s:7:"web_seo";s:1:"1";s:12:"web_unsecure";s:1:"1";s:10:"web_secure";s:1:"1";s:11:"web_default";s:1:"1";s:9:"web_polls";s:1:"1";s:10:"web_cookie";s:1:"1";s:11:"web_session";s:1:"1";s:24:"web_browser_capabilities";s:1:"1";s:16:"agegate_settings";s:1:"1";s:16:"catalog_frontend";s:1:"1";s:15:"catalog_sitemap";s:1:"0";s:14:"catalog_review";s:1:"0";s:21:"catalog_product_image";s:1:"0";s:20:"catalog_productalert";s:1:"0";s:25:"catalog_productalert_cron";s:1:"0";s:19:"catalog_placeholder";s:1:"0";s:25:"catalog_recently_products";s:1:"0";s:13:"catalog_price";s:1:"0";s:26:"catalog_layered_navigation";s:1:"0";s:18:"catalog_navigation";s:1:"0";s:11:"catalog_seo";s:1:"0";s:14:"catalog_search";s:1:"0";s:20:"catalog_downloadable";s:1:"0";s:22:"catalog_custom_options";s:1:"0";s:24:"cataloginventory_options";s:1:"1";s:29:"cataloginventory_item_options";s:1:"1";s:22:"customer_account_share";s:1:"1";s:25:"customer_online_customers";s:1:"1";s:23:"customer_create_account";s:1:"1";s:17:"customer_password";s:1:"1";s:16:"customer_address";s:1:"1";s:16:"customer_startup";s:1:"1";s:26:"customer_address_templates";s:1:"1";s:16:"customer_captcha";s:1:"1";s:15:"shipping_origin";s:1:"1";s:15:"shipping_option";s:1:"1";s:14:"monkey_general";s:1:"1";s:19:"monkey_ecommerce360";s:1:"0";}}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_api2_acl_attribute`
--

CREATE TABLE IF NOT EXISTS `mgeg_api2_acl_attribute` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `user_type` varchar(20) NOT NULL COMMENT 'Type of user',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `operation` varchar(20) NOT NULL COMMENT 'Operation',
  `allowed_attributes` text COMMENT 'Allowed attributes',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_MGEG_API2_ACL_ATTR_USR_TYPE_RES_ID_OPERATION` (`user_type`,`resource_id`,`operation`),
  KEY `IDX_MGEG_API2_ACL_ATTRIBUTE_USER_TYPE` (`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Filter ACL Attributes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_api2_acl_role`
--

CREATE TABLE IF NOT EXISTS `mgeg_api2_acl_role` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `role_name` varchar(255) NOT NULL COMMENT 'Name of role',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_API2_ACL_ROLE_CREATED_AT` (`created_at`),
  KEY `IDX_MGEG_API2_ACL_ROLE_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Roles' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_api2_acl_role`
--

INSERT INTO `mgeg_api2_acl_role` (`entity_id`, `created_at`, `updated_at`, `role_name`) VALUES
(1, '2016-04-27 16:50:44', NULL, 'Guest'),
(2, '2016-04-27 16:50:44', NULL, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_api2_acl_rule`
--

CREATE TABLE IF NOT EXISTS `mgeg_api2_acl_rule` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `privilege` varchar(20) DEFAULT NULL COMMENT 'ACL Privilege',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_MGEG_API2_ACL_RULE_ROLE_ID_RESOURCE_ID_PRIVILEGE` (`role_id`,`resource_id`,`privilege`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Rules' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_api2_acl_user`
--

CREATE TABLE IF NOT EXISTS `mgeg_api2_acl_user` (
  `admin_id` int(10) unsigned NOT NULL COMMENT 'Admin ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  UNIQUE KEY `UNQ_MGEG_MGEG_API2_ACL_USER_ADMIN_ID` (`admin_id`),
  KEY `FK_MGEG_API2_ACL_USER_ROLE_ID_MGEG_API2_ACL_ROLE_ENTITY_ID` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Users';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_api_assert`
--

CREATE TABLE IF NOT EXISTS `mgeg_api_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert id',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert type',
  `assert_data` text COMMENT 'Assert additional data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Asserts' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_api_role`
--

CREATE TABLE IF NOT EXISTS `mgeg_api_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent role id',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role level in tree',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order to display on admin area',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User id',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_MGEG_API_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_MGEG_API_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Roles' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_api_rule`
--

CREATE TABLE IF NOT EXISTS `mgeg_api_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Api rule Id',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Api role Id',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Module code',
  `api_privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert id',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role type',
  `api_permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_MGEG_API_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_MGEG_API_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Rules' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_api_session`
--

CREATE TABLE IF NOT EXISTS `mgeg_api_session` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'User id',
  `logdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login date',
  `sessid` varchar(40) DEFAULT NULL COMMENT 'Sessioin id',
  KEY `IDX_MGEG_API_SESSION_USER_ID` (`user_id`),
  KEY `IDX_MGEG_API_SESSION_SESSID` (`sessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Sessions';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_api_user`
--

CREATE TABLE IF NOT EXISTS `mgeg_api_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User id',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'First name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'Last name',
  `email` varchar(128) DEFAULT NULL COMMENT 'Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'Nickname',
  `api_key` varchar(100) DEFAULT NULL COMMENT 'Api key',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User record create date',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User record modify date',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Quantity of log ins',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Refresh ACL flag',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Account status',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Users' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_captcha_log`
--

CREATE TABLE IF NOT EXISTS `mgeg_captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_cataloginventory_stock`
--

CREATE TABLE IF NOT EXISTS `mgeg_cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_cataloginventory_stock`
--

INSERT INTO `mgeg_cataloginventory_stock` (`stock_id`, `stock_name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_cataloginventory_stock_item`
--

CREATE TABLE IF NOT EXISTS `mgeg_cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `UNQ_MGEG_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  KEY `IDX_MGEG_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGEG_CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mgeg_cataloginventory_stock_item`
--

INSERT INTO `mgeg_cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_auto`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_inc`, `enable_qty_increments`, `is_decimal_divided`) VALUES
(1, 1, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 0, '2016-05-03 03:32:48', NULL, 1, 0, 0, 1, 1, '0.0000', 1, 0, 0),
(2, 2, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 0, '2016-05-03 05:44:49', NULL, 1, 0, 0, 1, 1, '0.0000', 1, 0, 0),
(3, 3, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 0, '2016-05-03 09:07:14', NULL, 1, 0, 0, 1, 1, '0.0000', 1, 0, 0),
(4, 4, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 0, '2016-05-03 09:10:56', NULL, 1, 0, 0, 1, 1, '0.0000', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_cataloginventory_stock_status`
--

CREATE TABLE IF NOT EXISTS `mgeg_cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_MGEG_CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `IDX_MGEG_CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dumping data for table `mgeg_cataloginventory_stock_status`
--

INSERT INTO `mgeg_cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 1, 1, '0.0000', 1),
(2, 1, 1, '0.0000', 1),
(3, 1, 1, '0.0000', 1),
(4, 1, 1, '0.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_cataloginventory_stock_status_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_MGEG_CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `IDX_MGEG_CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

--
-- Dumping data for table `mgeg_cataloginventory_stock_status_idx`
--

INSERT INTO `mgeg_cataloginventory_stock_status_idx` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 1, 1, '0.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_cataloginventory_stock_status_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_MGEG_CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `IDX_MGEG_CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalogrule`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From Date',
  `to_date` date DEFAULT NULL COMMENT 'To Date',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `sub_is_enable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Rule Enable For Subitems',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_MGEG_CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalogrule_affected_product`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalogrule_affected_product` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Affected Product';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalogrule_customer_group`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalogrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_MGEG_CATALOGRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_MGEG_CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalogrule_group_website`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MGEG_CATALOGRULE_GROUP_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_MGEG_CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGEG_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalogrule_product`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `D99F142F8027834901F4B3CC7B18BA89` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `IDX_MGEG_CATALOGRULE_PRODUCT_RULE_ID` (`rule_id`),
  KEY `IDX_MGEG_CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGEG_CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGEG_CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `IDX_MGEG_CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `IDX_MGEG_CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalogrule_product_price`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `UNQ_MGEG_CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `IDX_MGEG_CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGEG_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGEG_CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalogrule_website`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalogrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_MGEG_CATALOGRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_MGEG_CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalogsearch_fulltext`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalogsearch_fulltext` (
  `fulltext_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`fulltext_id`),
  UNIQUE KEY `UNQ_MGEG_CATALOGSEARCH_FULLTEXT_PRODUCT_ID_STORE_ID` (`product_id`,`store_id`),
  FULLTEXT KEY `FTI_MGEG_CATALOGSEARCH_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Catalog search result table' AUTO_INCREMENT=13 ;

--
-- Dumping data for table `mgeg_catalogsearch_fulltext`
--

INSERT INTO `mgeg_catalogsearch_fulltext` (`fulltext_id`, `product_id`, `store_id`, `data_index`) VALUES
(6, 1, 1, '007|None|Test sativa flower 1|The most awesome cross ever|tst|21|1'),
(9, 2, 1, '008|Taxable Goods|Test indica flower 1|The most awesome cross ever|The most awesome cross ever|21|1'),
(11, 3, 1, '009|Taxable Goods|Test concentrate 1|Awesome concentrate|Awesome concentrate|21|1'),
(12, 4, 1, '010|Taxable Goods|Test edible 1|Test edible 1|Test edible 1|21|1');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalogsearch_query`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalogsearch_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `synonym_for` varchar(255) DEFAULT NULL COMMENT 'Synonym for',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  KEY `IDX_MGEG_CATALOGSEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `IDX_MGEG_CATALOGSEARCH_QUERY_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_MGEG_CATALOGSEARCH_QUERY_SYNONYM_FOR` (`synonym_for`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog search query table' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mgeg_catalogsearch_query`
--

INSERT INTO `mgeg_catalogsearch_query` (`query_id`, `query_text`, `num_results`, `popularity`, `redirect`, `synonym_for`, `store_id`, `display_in_terms`, `is_active`, `is_processed`, `updated_at`) VALUES
(1, 'flower', 0, 8, NULL, NULL, 1, 1, 1, 0, '2016-05-03 02:41:19'),
(2, 'indica', 1, 6, NULL, NULL, 1, 1, 1, 1, '2016-05-03 10:29:17'),
(3, 'sada', 0, 1, NULL, NULL, 1, 1, 1, 1, '2016-05-04 20:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalogsearch_result`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalogsearch_result` (
  `query_id` int(10) unsigned NOT NULL COMMENT 'Query ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `relevance` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Relevance',
  PRIMARY KEY (`query_id`,`product_id`),
  KEY `IDX_MGEG_CATALOGSEARCH_RESULT_QUERY_ID` (`query_id`),
  KEY `IDX_MGEG_CATALOGSEARCH_RESULT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

--
-- Dumping data for table `mgeg_catalogsearch_result`
--

INSERT INTO `mgeg_catalogsearch_result` (`query_id`, `product_id`, `relevance`) VALUES
(2, 2, '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_anc_categs_index_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_anc_categs_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_MGEG_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_CATEGORY_ID` (`category_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_anc_categs_index_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_anc_categs_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_MGEG_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_CATEGORY_ID` (`category_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_anc_products_index_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_anc_products_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_MGEG_CAT_CTGR_ANC_PRDS_IDX_IDX_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_anc_products_index_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_anc_products_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_MGEG_CAT_CTGR_ANC_PRDS_IDX_TMP_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_entity`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_PATH_ENTITY_ID` (`path`,`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table' AUTO_INCREMENT=21 ;

--
-- Dumping data for table `mgeg_catalog_category_entity`
--

INSERT INTO `mgeg_catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 3, 0, 0, '2016-04-27 16:50:44', '2016-04-27 16:50:44', '1', 0, 0, 16),
(2, 3, 3, 1, '2016-04-27 16:50:44', '2016-04-27 16:50:44', '1/2', 1, 1, 15),
(4, 3, 3, 2, '2016-04-28 18:36:45', '2016-04-28 18:49:18', '1/2/4', 3, 2, 3),
(5, 3, 3, 4, '2016-04-28 18:37:23', '2016-04-28 18:39:10', '1/2/4/5', 1, 3, 0),
(6, 3, 3, 4, '2016-04-28 18:37:36', '2016-04-28 18:38:52', '1/2/4/6', 2, 3, 0),
(7, 3, 3, 4, '2016-04-28 18:37:47', '2016-04-28 18:39:00', '1/2/4/7', 3, 3, 0),
(8, 3, 3, 2, '2016-04-28 18:39:25', '2016-05-05 04:25:38', '1/2/8', 5, 2, 3),
(9, 3, 3, 2, '2016-04-28 18:39:45', '2016-04-28 18:39:45', '1/2/9', 4, 2, 0),
(10, 3, 3, 8, '2016-04-28 18:41:12', '2016-04-28 18:41:12', '1/2/8/10', 1, 3, 0),
(11, 3, 3, 8, '2016-04-28 18:41:28', '2016-04-28 18:41:28', '1/2/8/11', 3, 3, 0),
(12, 3, 3, 8, '2016-04-28 18:41:45', '2016-04-28 18:41:45', '1/2/8/12', 2, 3, 0),
(13, 3, 3, 2, '2016-04-28 18:42:58', '2016-05-03 01:09:05', '1/2/13', 6, 2, 5),
(14, 3, 3, 13, '2016-04-28 18:43:19', '2016-04-28 18:43:19', '1/2/13/14', 1, 3, 0),
(15, 3, 3, 13, '2016-04-28 18:43:40', '2016-04-28 18:43:40', '1/2/13/15', 2, 3, 0),
(16, 3, 3, 13, '2016-04-28 18:44:09', '2016-04-28 18:44:09', '1/2/13/16', 3, 3, 0),
(17, 3, 3, 13, '2016-04-28 18:44:32', '2016-04-28 18:44:32', '1/2/13/17', 4, 3, 0),
(18, 3, 3, 13, '2016-04-28 18:44:46', '2016-04-28 18:44:46', '1/2/13/18', 5, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CF5EE11ECFFF55FD9915E6894BE0C292` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table' AUTO_INCREMENT=37 ;

--
-- Dumping data for table `mgeg_catalog_category_entity_datetime`
--

INSERT INTO `mgeg_catalog_category_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(3, 3, 59, 0, 4, NULL),
(4, 3, 60, 0, 4, NULL),
(5, 3, 59, 0, 5, NULL),
(6, 3, 60, 0, 5, NULL),
(7, 3, 59, 0, 6, NULL),
(8, 3, 60, 0, 6, NULL),
(9, 3, 59, 0, 7, NULL),
(10, 3, 60, 0, 7, NULL),
(11, 3, 59, 0, 8, NULL),
(12, 3, 60, 0, 8, NULL),
(13, 3, 59, 0, 9, NULL),
(14, 3, 60, 0, 9, NULL),
(15, 3, 59, 0, 10, NULL),
(16, 3, 60, 0, 10, NULL),
(17, 3, 59, 0, 11, NULL),
(18, 3, 60, 0, 11, NULL),
(19, 3, 59, 0, 12, NULL),
(20, 3, 60, 0, 12, NULL),
(21, 3, 59, 0, 13, NULL),
(22, 3, 60, 0, 13, NULL),
(23, 3, 59, 0, 14, NULL),
(24, 3, 60, 0, 14, NULL),
(25, 3, 59, 0, 15, NULL),
(26, 3, 60, 0, 15, NULL),
(27, 3, 59, 0, 16, NULL),
(28, 3, 60, 0, 16, NULL),
(29, 3, 59, 0, 17, NULL),
(30, 3, 60, 0, 17, NULL),
(31, 3, 59, 0, 18, NULL),
(32, 3, 60, 0, 18, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `479DA1DD8CED295B97C96AEF816CA4EE` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table' AUTO_INCREMENT=19 ;

--
-- Dumping data for table `mgeg_catalog_category_entity_decimal`
--

INSERT INTO `mgeg_catalog_category_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(2, 3, 70, 0, 4, NULL),
(3, 3, 70, 0, 5, NULL),
(4, 3, 70, 0, 6, NULL),
(5, 3, 70, 0, 7, NULL),
(6, 3, 70, 0, 8, NULL),
(7, 3, 70, 0, 9, NULL),
(8, 3, 70, 0, 10, NULL),
(9, 3, 70, 0, 11, NULL),
(10, 3, 70, 0, 12, NULL),
(11, 3, 70, 0, 13, NULL),
(12, 3, 70, 0, 14, NULL),
(13, 3, 70, 0, 15, NULL),
(14, 3, 70, 0, 16, NULL),
(15, 3, 70, 0, 17, NULL),
(16, 3, 70, 0, 18, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_entity_int`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `D4DCEA4794FAD89AFB015D1A9A876652` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table' AUTO_INCREMENT=133 ;

--
-- Dumping data for table `mgeg_catalog_category_entity_int`
--

INSERT INTO `mgeg_catalog_category_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 67, 0, 1, 1),
(2, 3, 67, 1, 1, 1),
(3, 3, 42, 0, 2, 1),
(4, 3, 67, 0, 2, 1),
(5, 3, 42, 1, 2, 1),
(6, 3, 67, 1, 2, 1),
(14, 3, 42, 0, 4, 1),
(15, 3, 67, 0, 4, 1),
(16, 3, 50, 0, 4, NULL),
(17, 3, 51, 0, 4, 0),
(18, 3, 68, 0, 4, 0),
(19, 3, 69, 0, 4, 0),
(20, 3, 135, 0, 4, NULL),
(21, 3, 42, 0, 5, 1),
(22, 3, 67, 0, 5, 1),
(23, 3, 50, 0, 5, NULL),
(24, 3, 51, 0, 5, 0),
(25, 3, 68, 0, 5, 0),
(26, 3, 69, 0, 5, 0),
(27, 3, 135, 0, 5, NULL),
(28, 3, 42, 0, 6, 1),
(29, 3, 67, 0, 6, 1),
(30, 3, 50, 0, 6, NULL),
(31, 3, 51, 0, 6, 0),
(32, 3, 68, 0, 6, 0),
(33, 3, 69, 0, 6, 0),
(34, 3, 135, 0, 6, NULL),
(35, 3, 42, 0, 7, 1),
(36, 3, 67, 0, 7, 1),
(37, 3, 50, 0, 7, NULL),
(38, 3, 51, 0, 7, 0),
(39, 3, 68, 0, 7, 0),
(40, 3, 69, 0, 7, 0),
(41, 3, 135, 0, 7, NULL),
(42, 3, 42, 0, 8, 1),
(43, 3, 67, 0, 8, 1),
(44, 3, 50, 0, 8, NULL),
(45, 3, 51, 0, 8, 0),
(46, 3, 68, 0, 8, 0),
(47, 3, 69, 0, 8, 0),
(48, 3, 135, 0, 8, NULL),
(49, 3, 42, 0, 9, 1),
(50, 3, 67, 0, 9, 1),
(51, 3, 50, 0, 9, NULL),
(52, 3, 51, 0, 9, 0),
(53, 3, 68, 0, 9, 0),
(54, 3, 69, 0, 9, 0),
(55, 3, 135, 0, 9, NULL),
(56, 3, 42, 0, 10, 1),
(57, 3, 67, 0, 10, 1),
(58, 3, 50, 0, 10, NULL),
(59, 3, 51, 0, 10, 0),
(60, 3, 68, 0, 10, 0),
(61, 3, 69, 0, 10, 0),
(62, 3, 135, 0, 10, NULL),
(63, 3, 42, 0, 11, 1),
(64, 3, 67, 0, 11, 1),
(65, 3, 50, 0, 11, NULL),
(66, 3, 51, 0, 11, 0),
(67, 3, 68, 0, 11, 0),
(68, 3, 69, 0, 11, 0),
(69, 3, 135, 0, 11, NULL),
(70, 3, 42, 0, 12, 1),
(71, 3, 67, 0, 12, 1),
(72, 3, 50, 0, 12, NULL),
(73, 3, 51, 0, 12, 0),
(74, 3, 68, 0, 12, 0),
(75, 3, 69, 0, 12, 0),
(76, 3, 135, 0, 12, NULL),
(77, 3, 42, 0, 13, 1),
(78, 3, 67, 0, 13, 1),
(79, 3, 50, 0, 13, NULL),
(80, 3, 51, 0, 13, 0),
(81, 3, 68, 0, 13, 0),
(82, 3, 69, 0, 13, 0),
(83, 3, 135, 0, 13, NULL),
(84, 3, 42, 0, 14, 1),
(85, 3, 67, 0, 14, 1),
(86, 3, 50, 0, 14, NULL),
(87, 3, 51, 0, 14, 0),
(88, 3, 68, 0, 14, 0),
(89, 3, 69, 0, 14, 0),
(90, 3, 135, 0, 14, NULL),
(91, 3, 42, 0, 15, 1),
(92, 3, 67, 0, 15, 1),
(93, 3, 50, 0, 15, NULL),
(94, 3, 51, 0, 15, 0),
(95, 3, 68, 0, 15, 0),
(96, 3, 69, 0, 15, 0),
(97, 3, 135, 0, 15, NULL),
(98, 3, 42, 0, 16, 1),
(99, 3, 67, 0, 16, 1),
(100, 3, 50, 0, 16, NULL),
(101, 3, 51, 0, 16, 0),
(102, 3, 68, 0, 16, 0),
(103, 3, 69, 0, 16, 0),
(104, 3, 135, 0, 16, NULL),
(105, 3, 42, 0, 17, 1),
(106, 3, 67, 0, 17, 1),
(107, 3, 50, 0, 17, NULL),
(108, 3, 51, 0, 17, 0),
(109, 3, 68, 0, 17, 0),
(110, 3, 69, 0, 17, 0),
(111, 3, 135, 0, 17, NULL),
(112, 3, 42, 0, 18, 1),
(113, 3, 67, 0, 18, 1),
(114, 3, 50, 0, 18, NULL),
(115, 3, 51, 0, 18, 0),
(116, 3, 68, 0, 18, 0),
(117, 3, 69, 0, 18, 0),
(118, 3, 135, 0, 18, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_entity_text`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `C5C12717DDBD72AD93A554EB628FD964` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table' AUTO_INCREMENT=113 ;

--
-- Dumping data for table `mgeg_catalog_category_entity_text`
--

INSERT INTO `mgeg_catalog_category_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 65, 0, 1, NULL),
(2, 3, 65, 1, 1, NULL),
(3, 3, 65, 0, 2, NULL),
(4, 3, 65, 1, 2, NULL),
(11, 3, 44, 0, 4, NULL),
(12, 3, 47, 0, 4, NULL),
(13, 3, 48, 0, 4, NULL),
(14, 3, 62, 0, 4, NULL),
(15, 3, 136, 0, 4, NULL),
(16, 3, 65, 0, 4, NULL),
(17, 3, 44, 0, 5, NULL),
(18, 3, 47, 0, 5, NULL),
(19, 3, 48, 0, 5, NULL),
(20, 3, 62, 0, 5, NULL),
(21, 3, 136, 0, 5, NULL),
(22, 3, 65, 0, 5, NULL),
(23, 3, 44, 0, 6, NULL),
(24, 3, 47, 0, 6, NULL),
(25, 3, 48, 0, 6, NULL),
(26, 3, 62, 0, 6, NULL),
(27, 3, 136, 0, 6, NULL),
(28, 3, 65, 0, 6, NULL),
(29, 3, 44, 0, 7, NULL),
(30, 3, 47, 0, 7, NULL),
(31, 3, 48, 0, 7, NULL),
(32, 3, 62, 0, 7, NULL),
(33, 3, 136, 0, 7, NULL),
(34, 3, 65, 0, 7, NULL),
(35, 3, 44, 0, 8, NULL),
(36, 3, 47, 0, 8, NULL),
(37, 3, 48, 0, 8, NULL),
(38, 3, 62, 0, 8, NULL),
(39, 3, 136, 0, 8, NULL),
(40, 3, 65, 0, 8, NULL),
(41, 3, 44, 0, 9, NULL),
(42, 3, 47, 0, 9, NULL),
(43, 3, 48, 0, 9, NULL),
(44, 3, 62, 0, 9, NULL),
(45, 3, 136, 0, 9, NULL),
(46, 3, 65, 0, 9, NULL),
(47, 3, 44, 0, 10, NULL),
(48, 3, 47, 0, 10, NULL),
(49, 3, 48, 0, 10, NULL),
(50, 3, 62, 0, 10, NULL),
(51, 3, 136, 0, 10, NULL),
(52, 3, 65, 0, 10, NULL),
(53, 3, 44, 0, 11, NULL),
(54, 3, 47, 0, 11, NULL),
(55, 3, 48, 0, 11, NULL),
(56, 3, 62, 0, 11, NULL),
(57, 3, 136, 0, 11, NULL),
(58, 3, 65, 0, 11, NULL),
(59, 3, 44, 0, 12, NULL),
(60, 3, 47, 0, 12, NULL),
(61, 3, 48, 0, 12, NULL),
(62, 3, 62, 0, 12, NULL),
(63, 3, 136, 0, 12, NULL),
(64, 3, 65, 0, 12, NULL),
(65, 3, 44, 0, 13, NULL),
(66, 3, 47, 0, 13, NULL),
(67, 3, 48, 0, 13, NULL),
(68, 3, 62, 0, 13, NULL),
(69, 3, 136, 0, 13, NULL),
(70, 3, 65, 0, 13, NULL),
(71, 3, 44, 0, 14, NULL),
(72, 3, 47, 0, 14, NULL),
(73, 3, 48, 0, 14, NULL),
(74, 3, 62, 0, 14, NULL),
(75, 3, 136, 0, 14, NULL),
(76, 3, 65, 0, 14, NULL),
(77, 3, 44, 0, 15, NULL),
(78, 3, 47, 0, 15, NULL),
(79, 3, 48, 0, 15, NULL),
(80, 3, 62, 0, 15, NULL),
(81, 3, 136, 0, 15, NULL),
(82, 3, 65, 0, 15, NULL),
(83, 3, 44, 0, 16, NULL),
(84, 3, 47, 0, 16, NULL),
(85, 3, 48, 0, 16, NULL),
(86, 3, 62, 0, 16, NULL),
(87, 3, 136, 0, 16, NULL),
(88, 3, 65, 0, 16, NULL),
(89, 3, 44, 0, 17, NULL),
(90, 3, 47, 0, 17, NULL),
(91, 3, 48, 0, 17, NULL),
(92, 3, 62, 0, 17, NULL),
(93, 3, 136, 0, 17, NULL),
(94, 3, 65, 0, 17, NULL),
(95, 3, 44, 0, 18, NULL),
(96, 3, 47, 0, 18, NULL),
(97, 3, 48, 0, 18, NULL),
(98, 3, 62, 0, 18, NULL),
(99, 3, 136, 0, 18, NULL),
(100, 3, 65, 0, 18, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `3EE50EFF4AF2CC06526F54A7B55B7C4B` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table' AUTO_INCREMENT=240 ;

--
-- Dumping data for table `mgeg_catalog_category_entity_varchar`
--

INSERT INTO `mgeg_catalog_category_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 41, 0, 1, 'Root Catalog'),
(2, 3, 41, 1, 1, 'Root Catalog'),
(3, 3, 43, 1, 1, 'root-catalog'),
(4, 3, 41, 0, 2, 'Default Category'),
(5, 3, 41, 1, 2, 'Default Category'),
(6, 3, 49, 1, 2, 'PRODUCTS'),
(7, 3, 43, 1, 2, 'default-category'),
(21, 3, 41, 0, 4, 'Flowers'),
(22, 3, 43, 0, 4, 'mmj-flower'),
(23, 3, 46, 0, 4, NULL),
(24, 3, 49, 0, 4, 'PRODUCTS'),
(25, 3, 58, 0, 4, NULL),
(26, 3, 61, 0, 4, NULL),
(27, 3, 132, 0, 4, '0'),
(28, 3, 133, 0, 4, NULL),
(29, 3, 134, 0, 4, NULL),
(30, 3, 137, 0, 4, NULL),
(31, 3, 138, 0, 4, NULL),
(32, 3, 57, 1, 4, 'mmj-flower.html'),
(33, 3, 57, 0, 4, 'mmj-flower.html'),
(34, 3, 41, 0, 5, 'Sativa'),
(35, 3, 43, 0, 5, 'mmj-sativa'),
(36, 3, 46, 0, 5, NULL),
(37, 3, 49, 0, 5, 'PRODUCTS'),
(38, 3, 58, 0, 5, NULL),
(39, 3, 61, 0, 5, NULL),
(40, 3, 132, 0, 5, '0'),
(41, 3, 133, 0, 5, NULL),
(42, 3, 134, 0, 5, NULL),
(43, 3, 137, 0, 5, NULL),
(44, 3, 138, 0, 5, NULL),
(45, 3, 57, 1, 5, 'mmj-flower/mmj-sativa.html'),
(46, 3, 57, 0, 5, 'mmj-flower/mmj-sativa.html'),
(47, 3, 41, 0, 6, 'Hybrid'),
(48, 3, 43, 0, 6, 'mmj-hybrid'),
(49, 3, 46, 0, 6, NULL),
(50, 3, 49, 0, 6, 'PRODUCTS'),
(51, 3, 58, 0, 6, NULL),
(52, 3, 61, 0, 6, NULL),
(53, 3, 132, 0, 6, '0'),
(54, 3, 133, 0, 6, NULL),
(55, 3, 134, 0, 6, NULL),
(56, 3, 137, 0, 6, NULL),
(57, 3, 138, 0, 6, NULL),
(58, 3, 57, 1, 6, 'mmj-flower/mmj-hybrid.html'),
(59, 3, 57, 0, 6, 'mmj-flower/mmj-hybrid.html'),
(60, 3, 41, 0, 7, 'Indica'),
(61, 3, 43, 0, 7, 'mmj-indica'),
(62, 3, 46, 0, 7, NULL),
(63, 3, 49, 0, 7, 'PRODUCTS'),
(64, 3, 58, 0, 7, NULL),
(65, 3, 61, 0, 7, NULL),
(66, 3, 132, 0, 7, '0'),
(67, 3, 133, 0, 7, NULL),
(68, 3, 134, 0, 7, NULL),
(69, 3, 137, 0, 7, NULL),
(70, 3, 138, 0, 7, NULL),
(71, 3, 57, 1, 7, 'mmj-flower/mmj-indica.html'),
(72, 3, 57, 0, 7, 'mmj-flower/mmj-indica.html'),
(73, 3, 41, 0, 8, 'Infused Products'),
(74, 3, 43, 0, 8, 'infused-products'),
(75, 3, 46, 0, 8, NULL),
(76, 3, 49, 0, 8, 'PRODUCTS'),
(77, 3, 58, 0, 8, NULL),
(78, 3, 61, 0, 8, NULL),
(79, 3, 132, 0, 8, '0'),
(80, 3, 133, 0, 8, NULL),
(81, 3, 134, 0, 8, NULL),
(82, 3, 137, 0, 8, NULL),
(83, 3, 138, 0, 8, NULL),
(84, 3, 57, 1, 8, 'infused-products.html'),
(85, 3, 57, 0, 8, 'infused-products.html'),
(86, 3, 41, 0, 9, 'Concentrates'),
(87, 3, 43, 0, 9, 'concentrates'),
(88, 3, 46, 0, 9, NULL),
(89, 3, 49, 0, 9, 'PRODUCTS'),
(90, 3, 58, 0, 9, NULL),
(91, 3, 61, 0, 9, NULL),
(92, 3, 132, 0, 9, '0'),
(93, 3, 133, 0, 9, NULL),
(94, 3, 134, 0, 9, NULL),
(95, 3, 137, 0, 9, NULL),
(96, 3, 138, 0, 9, NULL),
(97, 3, 57, 1, 9, 'concentrates.html'),
(98, 3, 57, 0, 9, 'concentrates.html'),
(99, 3, 41, 0, 10, 'Edibles'),
(100, 3, 43, 0, 10, 'edibles'),
(101, 3, 46, 0, 10, NULL),
(102, 3, 49, 0, 10, 'PRODUCTS'),
(103, 3, 58, 0, 10, NULL),
(104, 3, 61, 0, 10, NULL),
(105, 3, 132, 0, 10, '0'),
(106, 3, 133, 0, 10, NULL),
(107, 3, 134, 0, 10, NULL),
(108, 3, 137, 0, 10, NULL),
(109, 3, 138, 0, 10, NULL),
(110, 3, 57, 1, 10, 'infused-products/edibles.html'),
(111, 3, 57, 0, 10, 'infused-products/edibles.html'),
(112, 3, 41, 0, 11, 'Tinctures'),
(113, 3, 43, 0, 11, 'tinctures'),
(114, 3, 46, 0, 11, NULL),
(115, 3, 49, 0, 11, 'PRODUCTS'),
(116, 3, 58, 0, 11, NULL),
(117, 3, 61, 0, 11, NULL),
(118, 3, 132, 0, 11, '0'),
(119, 3, 133, 0, 11, NULL),
(120, 3, 134, 0, 11, NULL),
(121, 3, 137, 0, 11, NULL),
(122, 3, 138, 0, 11, NULL),
(123, 3, 57, 1, 11, 'infused-products/tinctures.html'),
(124, 3, 57, 0, 11, 'infused-products/tinctures.html'),
(125, 3, 41, 0, 12, 'Topicals'),
(126, 3, 43, 0, 12, 'topicals'),
(127, 3, 46, 0, 12, NULL),
(128, 3, 49, 0, 12, 'PRODUCTS'),
(129, 3, 58, 0, 12, NULL),
(130, 3, 61, 0, 12, NULL),
(131, 3, 132, 0, 12, '0'),
(132, 3, 133, 0, 12, NULL),
(133, 3, 134, 0, 12, NULL),
(134, 3, 137, 0, 12, NULL),
(135, 3, 138, 0, 12, NULL),
(136, 3, 57, 1, 12, 'infused-products/topicals.html'),
(137, 3, 57, 0, 12, 'infused-products/topicals.html'),
(138, 3, 41, 0, 13, 'More'),
(139, 3, 43, 0, 13, 'other'),
(140, 3, 46, 0, 13, NULL),
(141, 3, 49, 0, 13, 'PRODUCTS'),
(142, 3, 58, 0, 13, NULL),
(143, 3, 61, 0, 13, NULL),
(144, 3, 132, 0, 13, '0'),
(145, 3, 133, 0, 13, NULL),
(146, 3, 134, 0, 13, NULL),
(147, 3, 137, 0, 13, NULL),
(148, 3, 138, 0, 13, NULL),
(149, 3, 57, 1, 13, 'other.html'),
(150, 3, 57, 0, 13, 'other.html'),
(151, 3, 41, 0, 14, 'Pre-rolls'),
(152, 3, 43, 0, 14, 'pre-rolls'),
(153, 3, 46, 0, 14, NULL),
(154, 3, 49, 0, 14, 'PRODUCTS'),
(155, 3, 58, 0, 14, NULL),
(156, 3, 61, 0, 14, NULL),
(157, 3, 132, 0, 14, '0'),
(158, 3, 133, 0, 14, NULL),
(159, 3, 134, 0, 14, NULL),
(160, 3, 137, 0, 14, NULL),
(161, 3, 138, 0, 14, NULL),
(162, 3, 57, 1, 14, 'other/pre-rolls.html'),
(163, 3, 57, 0, 14, 'other/pre-rolls.html'),
(164, 3, 41, 0, 15, 'Seeds'),
(165, 3, 43, 0, 15, 'seeds'),
(166, 3, 46, 0, 15, NULL),
(167, 3, 49, 0, 15, 'PRODUCTS'),
(168, 3, 58, 0, 15, NULL),
(169, 3, 61, 0, 15, NULL),
(170, 3, 132, 0, 15, '0'),
(171, 3, 133, 0, 15, NULL),
(172, 3, 134, 0, 15, NULL),
(173, 3, 137, 0, 15, NULL),
(174, 3, 138, 0, 15, NULL),
(175, 3, 57, 1, 15, 'other/seeds.html'),
(176, 3, 57, 0, 15, 'other/seeds.html'),
(177, 3, 41, 0, 16, 'Clones'),
(178, 3, 43, 0, 16, 'clones'),
(179, 3, 46, 0, 16, NULL),
(180, 3, 49, 0, 16, 'PRODUCTS'),
(181, 3, 58, 0, 16, NULL),
(182, 3, 61, 0, 16, NULL),
(183, 3, 132, 0, 16, '0'),
(184, 3, 133, 0, 16, NULL),
(185, 3, 134, 0, 16, NULL),
(186, 3, 137, 0, 16, NULL),
(187, 3, 138, 0, 16, NULL),
(188, 3, 57, 1, 16, 'other/clones.html'),
(189, 3, 57, 0, 16, 'other/clones.html'),
(190, 3, 41, 0, 17, 'Clothing'),
(191, 3, 43, 0, 17, 'clothing'),
(192, 3, 46, 0, 17, NULL),
(193, 3, 49, 0, 17, 'PRODUCTS'),
(194, 3, 58, 0, 17, NULL),
(195, 3, 61, 0, 17, NULL),
(196, 3, 132, 0, 17, '0'),
(197, 3, 133, 0, 17, NULL),
(198, 3, 134, 0, 17, NULL),
(199, 3, 137, 0, 17, NULL),
(200, 3, 138, 0, 17, NULL),
(201, 3, 57, 1, 17, 'other/clothing.html'),
(202, 3, 57, 0, 17, 'other/clothing.html'),
(203, 3, 41, 0, 18, 'Accesories'),
(204, 3, 43, 0, 18, 'accesories'),
(205, 3, 46, 0, 18, NULL),
(206, 3, 49, 0, 18, 'PRODUCTS'),
(207, 3, 58, 0, 18, NULL),
(208, 3, 61, 0, 18, NULL),
(209, 3, 132, 0, 18, '0'),
(210, 3, 133, 0, 18, NULL),
(211, 3, 134, 0, 18, NULL),
(212, 3, 137, 0, 18, NULL),
(213, 3, 138, 0, 18, NULL),
(214, 3, 57, 1, 18, 'other/accesories.html'),
(215, 3, 57, 0, 18, 'other/accesories.html');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_flat_store_1`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_flat_store_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'parent_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'path',
  `position` int(11) NOT NULL COMMENT 'position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'level',
  `children_count` int(11) NOT NULL COMMENT 'children_count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `all_children` text COMMENT 'All Children',
  `available_sort_by` text COMMENT 'Available Product Listing Sort By',
  `children` text COMMENT 'Children',
  `custom_apply_to_products` int(11) DEFAULT NULL COMMENT 'Apply To Products',
  `custom_design` varchar(255) DEFAULT NULL COMMENT 'Custom Design',
  `custom_design_from` datetime DEFAULT NULL COMMENT 'Active From',
  `custom_design_to` datetime DEFAULT NULL COMMENT 'Active To',
  `custom_layout_update` text COMMENT 'Custom Layout Update',
  `custom_use_parent_settings` int(11) DEFAULT NULL COMMENT 'Use Parent Category Settings',
  `default_sort_by` varchar(255) DEFAULT NULL COMMENT 'Default Product Listing Sort By',
  `description` text COMMENT 'Description',
  `display_mode` varchar(255) DEFAULT NULL COMMENT 'Display Mode',
  `filter_price_range` decimal(12,4) DEFAULT NULL COMMENT 'Layered Navigation Price Step',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `include_in_menu` int(11) DEFAULT NULL COMMENT 'Include in Navigation Menu',
  `is_active` int(11) DEFAULT NULL COMMENT 'Is Active',
  `is_anchor` int(11) DEFAULT NULL COMMENT 'Is Anchor',
  `landing_page` int(11) DEFAULT NULL COMMENT 'CMS Block',
  `meta_description` text COMMENT 'Meta Description',
  `meta_keywords` text COMMENT 'Meta Keywords',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `path_in_store` text COMMENT 'Path In Store',
  `umm_cat_label` varchar(255) DEFAULT NULL COMMENT 'Category Label',
  `umm_cat_target` varchar(255) DEFAULT NULL COMMENT 'Custom URL',
  `umm_dd_blocks` text COMMENT 'Category Blocks',
  `umm_dd_columns` int(11) DEFAULT NULL COMMENT 'Number of Columns With Subcategories',
  `umm_dd_proportions` varchar(255) DEFAULT NULL COMMENT 'Drop-down Content Proportions',
  `umm_dd_type` varchar(255) DEFAULT NULL COMMENT 'Submenu Type',
  `umm_dd_width` varchar(255) DEFAULT NULL COMMENT 'Drop-down Width',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'URL Key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'Url Path',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_FLAT_STORE_1_PATH` (`path`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_FLAT_STORE_1_LEVEL` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Flat (Store 1)';

--
-- Dumping data for table `mgeg_catalog_category_flat_store_1`
--

INSERT INTO `mgeg_catalog_category_flat_store_1` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `all_children`, `available_sort_by`, `children`, `custom_apply_to_products`, `custom_design`, `custom_design_from`, `custom_design_to`, `custom_layout_update`, `custom_use_parent_settings`, `default_sort_by`, `description`, `display_mode`, `filter_price_range`, `image`, `include_in_menu`, `is_active`, `is_anchor`, `landing_page`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `page_layout`, `path_in_store`, `umm_cat_label`, `umm_cat_target`, `umm_dd_blocks`, `umm_dd_columns`, `umm_dd_proportions`, `umm_dd_type`, `umm_dd_width`, `url_key`, `url_path`) VALUES
(1, 0, '2016-04-27 16:50:44', '2016-04-27 16:50:44', '1', 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Root Catalog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'root-catalog', NULL),
(2, 1, '2016-04-27 16:50:44', '2016-04-27 16:50:44', '1/2', 1, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'Default Category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default-category', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_product`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_product` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`category_id`,`product_id`),
  KEY `IDX_MGEG_CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Dumping data for table `mgeg_catalog_category_product`
--

INSERT INTO `mgeg_catalog_category_product` (`category_id`, `product_id`, `position`) VALUES
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(2, 4, 1),
(4, 1, 1),
(4, 2, 1),
(5, 1, 1),
(7, 2, 1),
(8, 4, 1),
(9, 3, 1),
(10, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_product_index`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `IDX_MGEG_CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `8B9D250D67BF23DCEE85A6638139EE60` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Dumping data for table `mgeg_catalog_category_product_index`
--

INSERT INTO `mgeg_catalog_category_product_index` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(2, 1, 1, 1, 1, 4),
(2, 2, 1, 1, 1, 4),
(2, 3, 1, 1, 1, 4),
(2, 4, 1, 1, 1, 4),
(4, 1, 1, 1, 1, 4),
(4, 2, 1, 1, 1, 4),
(5, 1, 1, 1, 1, 4),
(7, 2, 1, 1, 1, 4),
(8, 4, 1, 1, 1, 4),
(9, 3, 1, 1, 1, 4),
(10, 4, 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_product_index_enbl_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_product_index_enbl_idx` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_MGEG_CATALOG_CATEGORY_PRODUCT_INDEX_ENBL_IDX_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGEG_CAT_CTGR_PRD_IDX_ENBL_IDX_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_product_index_enbl_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_product_index_enbl_tmp` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_MGEG_CATALOG_CATEGORY_PRODUCT_INDEX_ENBL_TMP_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGEG_CAT_CTGR_PRD_IDX_ENBL_TMP_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_product_index_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_product_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_MGEG_CAT_CTGR_PRD_IDX_IDX_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_category_product_index_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_MGEG_CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_compare_item`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `IDX_MGEG_CATALOG_COMPARE_ITEM_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGEG_CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGEG_CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `IDX_MGEG_CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_MGEG_CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mgeg_catalog_compare_item`
--

INSERT INTO `mgeg_catalog_compare_item` (`catalog_compare_item_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`) VALUES
(4, 63, NULL, 2, 1),
(5, 63, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `is_configurable` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Configurable',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  PRIMARY KEY (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `IDX_MGEG_CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Dumping data for table `mgeg_catalog_eav_attribute`
--

INSERT INTO `mgeg_catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `is_configurable`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`) VALUES
(41, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(42, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(43, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(44, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 0, 0, 1, 0),
(45, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(46, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(47, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(48, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(49, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(50, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(51, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(52, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(53, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(54, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(55, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(56, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(57, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(58, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(59, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(60, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(62, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(63, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(64, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(65, 'adminhtml/catalog_category_helper_sortby_available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(66, 'adminhtml/catalog_category_helper_sortby_default', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(67, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(68, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(69, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(70, 'adminhtml/catalog_category_helper_pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(71, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 0, 0, 0),
(72, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, NULL, 1, 0, 1, 0),
(73, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, NULL, 1, 0, 1, 0),
(74, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 0, 0, 0),
(75, NULL, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 'simple,configurable,virtual,bundle,downloadable', 1, 0, 0, 0),
(76, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(77, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(78, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(79, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'virtual,downloadable', 0, 0, 0, 0),
(80, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,bundle', 0, 0, 0, 0),
(81, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(82, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(83, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(84, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(85, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(86, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(87, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(88, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(89, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(90, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(91, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(92, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(93, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(94, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(95, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(96, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(97, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(98, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(99, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(100, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(101, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(102, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(103, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(104, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(105, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(106, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(107, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(108, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(109, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(110, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(111, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(112, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(113, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(114, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(115, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(116, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(117, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,configurable,bundle,grouped', 0, 0, 0, 0),
(118, 'adminhtml/catalog_product_helper_form_msrp_enabled', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(119, 'adminhtml/catalog_product_helper_form_msrp_price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(120, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(121, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,downloadable,bundle', 1, 0, 0, 0),
(122, 'giftmessage/adminhtml_product_helper_form_config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(123, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(124, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0),
(125, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(126, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(127, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(128, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(129, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(130, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(131, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(132, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(133, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(134, 'ultramegamenu/category_attribute_helper_grid_columns', 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(135, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(136, 'ultramegamenu/category_attribute_helper_dropdown_blocks', 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, NULL, 0, 0, 1, 0),
(137, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(138, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(139, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_bundle_option`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_bundle_option_value`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_bundle_price_index`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_bundle_selection`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_bundle_selection_price`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  PRIMARY KEY (`selection_id`,`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_bundle_stock_index`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_enabled_index`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_enabled_index` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  PRIMARY KEY (`product_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Visibility Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_entity`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_SKU` (`sku`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mgeg_catalog_product_entity`
--

INSERT INTO `mgeg_catalog_product_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'simple', '007', 0, 0, '2016-04-27 19:09:07', '2016-05-03 03:32:48'),
(2, 4, 4, 'simple', '008', 0, 0, '2016-05-03 05:39:46', '2016-05-03 05:44:49'),
(3, 4, 4, 'simple', '009', 0, 0, '2016-05-03 09:04:43', '2016-05-03 09:07:14'),
(4, 4, 4, 'simple', '010', 0, 0, '2016-05-03 09:10:56', '2016-05-03 09:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_ENTT_DTIME_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table' AUTO_INCREMENT=25 ;

--
-- Dumping data for table `mgeg_catalog_product_entity_datetime`
--

INSERT INTO `mgeg_catalog_product_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 93, 0, 1, NULL),
(2, 4, 94, 0, 1, NULL),
(3, 4, 77, 0, 1, NULL),
(4, 4, 78, 0, 1, NULL),
(5, 4, 104, 0, 1, NULL),
(6, 4, 105, 0, 1, NULL),
(7, 4, 93, 0, 2, NULL),
(8, 4, 94, 0, 2, NULL),
(9, 4, 77, 0, 2, NULL),
(10, 4, 78, 0, 2, NULL),
(11, 4, 104, 0, 2, NULL),
(12, 4, 105, 0, 2, NULL),
(13, 4, 93, 0, 3, NULL),
(14, 4, 94, 0, 3, NULL),
(15, 4, 77, 0, 3, NULL),
(16, 4, 78, 0, 3, NULL),
(17, 4, 104, 0, 3, NULL),
(18, 4, 105, 0, 3, NULL),
(19, 4, 93, 0, 4, NULL),
(20, 4, 94, 0, 4, NULL),
(21, 4, 77, 0, 4, NULL),
(22, 4, 78, 0, 4, NULL),
(23, 4, 104, 0, 4, NULL),
(24, 4, 105, 0, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_ENTT_DEC_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table' AUTO_INCREMENT=17 ;

--
-- Dumping data for table `mgeg_catalog_product_entity_decimal`
--

INSERT INTO `mgeg_catalog_product_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 80, 0, 1, '1.0000'),
(2, 4, 75, 0, 1, '21.0000'),
(3, 4, 76, 0, 1, NULL),
(4, 4, 120, 0, 1, NULL),
(5, 4, 80, 0, 2, '1.0000'),
(6, 4, 75, 0, 2, '21.0000'),
(7, 4, 76, 0, 2, NULL),
(8, 4, 120, 0, 2, NULL),
(9, 4, 80, 0, 3, '1.0000'),
(10, 4, 75, 0, 3, '21.0000'),
(11, 4, 76, 0, 3, NULL),
(12, 4, 120, 0, 3, NULL),
(13, 4, 80, 0, 4, '1.0000'),
(14, 4, 75, 0, 4, '21.0000'),
(15, 4, 76, 0, 4, NULL),
(16, 4, 120, 0, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_entity_gallery`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_ENTT_GLR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_entity_group_price`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_entity_group_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `FD32F57567C1E50E88B9753A7E7D8C8A` (`entity_id`,`all_groups`,`customer_group_id`,`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_entity_int`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_ENTT_INT_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table' AUTO_INCREMENT=21 ;

--
-- Dumping data for table `mgeg_catalog_product_entity_int`
--

INSERT INTO `mgeg_catalog_product_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 96, 0, 1, 1),
(2, 4, 102, 0, 1, 4),
(3, 4, 121, 0, 1, 0),
(4, 4, 100, 0, 1, 0),
(5, 4, 139, 0, 1, 0),
(6, 4, 96, 0, 2, 1),
(7, 4, 102, 0, 2, 4),
(8, 4, 139, 0, 2, 0),
(9, 4, 121, 0, 2, 2),
(10, 4, 100, 0, 2, 0),
(11, 4, 96, 0, 3, 1),
(12, 4, 102, 0, 3, 4),
(13, 4, 139, 0, 3, 0),
(14, 4, 121, 0, 3, 2),
(15, 4, 100, 0, 3, 0),
(16, 4, 96, 0, 4, 1),
(17, 4, 102, 0, 4, 4),
(18, 4, 139, 0, 4, 0),
(19, 4, 121, 0, 4, 2),
(20, 4, 100, 0, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_entity_media_gallery`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mgeg_catalog_product_entity_media_gallery`
--

INSERT INTO `mgeg_catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 88, 1, '/p/u/purple-kush-marijuana.jpg'),
(2, 88, 2, '/g/s/gsc-girl-scout-cookies-weed-gscweed-gw-thcfinder-0019s9s1as.jpg'),
(3, 88, 3, '/c/l/clear_concentrate.png'),
(4, 88, 4, '/g/r/greenly-los-angeles-cannabis-marijuana-delivery-orange-county-edibles-edipure-sour-gummi-bears-100mg-candy-main-960x960.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_entity_media_gallery_value`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  PRIMARY KEY (`value_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- Dumping data for table `mgeg_catalog_product_entity_media_gallery_value`
--

INSERT INTO `mgeg_catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `label`, `position`, `disabled`) VALUES
(1, 0, NULL, 1, 0),
(2, 0, NULL, 1, 0),
(3, 0, NULL, 1, 0),
(4, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_entity_text`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_ENTT_TEXT_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table' AUTO_INCREMENT=17 ;

--
-- Dumping data for table `mgeg_catalog_product_entity_text`
--

INSERT INTO `mgeg_catalog_product_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 72, 0, 1, 'The most awesome cross ever'),
(2, 4, 73, 0, 1, 'tst'),
(3, 4, 83, 0, 1, NULL),
(4, 4, 106, 0, 1, NULL),
(5, 4, 72, 0, 2, 'The most awesome cross ever'),
(6, 4, 73, 0, 2, 'The most awesome cross ever'),
(7, 4, 83, 0, 2, NULL),
(8, 4, 106, 0, 2, NULL),
(9, 4, 72, 0, 3, 'Awesome concentrate'),
(10, 4, 73, 0, 3, 'Awesome concentrate'),
(11, 4, 83, 0, 3, NULL),
(12, 4, 106, 0, 3, NULL),
(13, 4, 72, 0, 4, 'Test edible 1'),
(14, 4, 73, 0, 4, 'Test edible 1'),
(15, 4, 83, 0, 4, NULL),
(16, 4, 106, 0, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_entity_tier_price`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `3FF4BEC8AB3B414352A250AFA8B5BDBC` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_TIER_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_ENTT_VCHR_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table' AUTO_INCREMENT=77 ;

--
-- Dumping data for table `mgeg_catalog_product_entity_varchar`
--

INSERT INTO `mgeg_catalog_product_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 71, 0, 1, 'Test sativa flower 1'),
(2, 4, 97, 0, 1, 'test'),
(3, 4, 117, 0, 1, NULL),
(4, 4, 118, 0, 1, '2'),
(5, 4, 119, 0, 1, '4'),
(6, 4, 82, 0, 1, NULL),
(7, 4, 84, 0, 1, NULL),
(8, 4, 85, 0, 1, '/p/u/purple-kush-marijuana.jpg'),
(9, 4, 86, 0, 1, '/p/u/purple-kush-marijuana.jpg'),
(10, 4, 87, 0, 1, '/p/u/purple-kush-marijuana.jpg'),
(11, 4, 103, 0, 1, NULL),
(12, 4, 107, 0, 1, NULL),
(13, 4, 109, 0, 1, 'container1'),
(14, 4, 122, 0, 1, NULL),
(15, 4, 98, 1, 1, 'test.html'),
(16, 4, 98, 0, 1, 'test.html'),
(17, 4, 112, 0, 1, NULL),
(18, 4, 113, 0, 1, NULL),
(19, 4, 114, 0, 1, NULL),
(20, 4, 71, 0, 2, 'Test indica flower 1'),
(21, 4, 97, 0, 2, 'test-indica-flower-1'),
(22, 4, 117, 0, 2, NULL),
(23, 4, 118, 0, 2, '2'),
(24, 4, 119, 0, 2, '4'),
(25, 4, 82, 0, 2, NULL),
(26, 4, 84, 0, 2, NULL),
(27, 4, 85, 0, 2, '/g/s/gsc-girl-scout-cookies-weed-gscweed-gw-thcfinder-0019s9s1as.jpg'),
(28, 4, 86, 0, 2, '/g/s/gsc-girl-scout-cookies-weed-gscweed-gw-thcfinder-0019s9s1as.jpg'),
(29, 4, 87, 0, 2, '/g/s/gsc-girl-scout-cookies-weed-gscweed-gw-thcfinder-0019s9s1as.jpg'),
(30, 4, 103, 0, 2, NULL),
(31, 4, 107, 0, 2, NULL),
(32, 4, 109, 0, 2, 'container1'),
(33, 4, 122, 0, 2, NULL),
(34, 4, 98, 1, 2, 'test-indica-flower-1.html'),
(35, 4, 98, 0, 2, 'test-indica-flower-1.html'),
(36, 4, 112, 0, 2, NULL),
(37, 4, 113, 0, 2, NULL),
(38, 4, 114, 0, 2, NULL),
(39, 4, 71, 0, 3, 'Test concentrate 1'),
(40, 4, 97, 0, 3, 'test-concentrate-1'),
(41, 4, 117, 0, 3, NULL),
(42, 4, 118, 0, 3, '2'),
(43, 4, 119, 0, 3, '4'),
(44, 4, 82, 0, 3, NULL),
(45, 4, 84, 0, 3, NULL),
(46, 4, 85, 0, 3, '/c/l/clear_concentrate.png'),
(47, 4, 86, 0, 3, '/c/l/clear_concentrate.png'),
(48, 4, 87, 0, 3, '/c/l/clear_concentrate.png'),
(49, 4, 103, 0, 3, NULL),
(50, 4, 107, 0, 3, NULL),
(51, 4, 109, 0, 3, 'container1'),
(52, 4, 122, 0, 3, NULL),
(53, 4, 98, 1, 3, 'test-concentrate-1.html'),
(54, 4, 98, 0, 3, 'test-concentrate-1.html'),
(55, 4, 112, 0, 3, NULL),
(56, 4, 113, 0, 3, NULL),
(57, 4, 114, 0, 3, NULL),
(58, 4, 71, 0, 4, 'Test edible 1'),
(59, 4, 97, 0, 4, 'test-edible-1'),
(60, 4, 117, 0, 4, NULL),
(61, 4, 118, 0, 4, '2'),
(62, 4, 119, 0, 4, '4'),
(63, 4, 82, 0, 4, NULL),
(64, 4, 84, 0, 4, NULL),
(65, 4, 85, 0, 4, '/g/r/greenly-los-angeles-cannabis-marijuana-delivery-orange-county-edibles-edipure-sour-gummi-bears-100mg-candy-main-960x960.jpg'),
(66, 4, 86, 0, 4, '/g/r/greenly-los-angeles-cannabis-marijuana-delivery-orange-county-edibles-edipure-sour-gummi-bears-100mg-candy-main-960x960.jpg'),
(67, 4, 87, 0, 4, '/g/r/greenly-los-angeles-cannabis-marijuana-delivery-orange-county-edibles-edipure-sour-gummi-bears-100mg-candy-main-960x960.jpg'),
(68, 4, 103, 0, 4, NULL),
(69, 4, 107, 0, 4, NULL),
(70, 4, 109, 0, 4, 'container1'),
(71, 4, 122, 0, 4, NULL),
(72, 4, 112, 0, 4, NULL),
(73, 4, 113, 0, 4, NULL),
(74, 4, 114, 0, 4, NULL),
(75, 4, 98, 1, 4, 'test-edible-1.html'),
(76, 4, 98, 0, 4, 'test-edible-1.html');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_flat_1`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_flat_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'attribute_set_id',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'type_id',
  `cost` decimal(12,4) DEFAULT NULL COMMENT 'cost',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `gift_message_available` smallint(6) DEFAULT NULL COMMENT 'gift_message_available',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'has_options',
  `image_label` varchar(255) DEFAULT NULL COMMENT 'image_label',
  `is_recurring` smallint(6) DEFAULT NULL COMMENT 'is_recurring',
  `links_exist` int(11) DEFAULT NULL COMMENT 'links_exist',
  `links_purchased_separately` int(11) DEFAULT NULL COMMENT 'links_purchased_separately',
  `links_title` varchar(255) DEFAULT NULL COMMENT 'links_title',
  `msrp` decimal(12,4) DEFAULT NULL COMMENT 'msrp',
  `msrp_display_actual_price_type` varchar(255) DEFAULT NULL COMMENT 'msrp_display_actual_price_type',
  `msrp_enabled` smallint(6) DEFAULT NULL COMMENT 'msrp_enabled',
  `name` varchar(255) DEFAULT NULL COMMENT 'name',
  `news_from_date` datetime DEFAULT NULL COMMENT 'news_from_date',
  `news_to_date` datetime DEFAULT NULL COMMENT 'news_to_date',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'price',
  `price_type` int(11) DEFAULT NULL COMMENT 'price_type',
  `price_view` int(11) DEFAULT NULL COMMENT 'price_view',
  `recurring_profile` text COMMENT 'recurring_profile',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'required_options',
  `shipment_type` int(11) DEFAULT NULL COMMENT 'shipment_type',
  `short_description` text COMMENT 'short_description',
  `sku` varchar(64) DEFAULT NULL COMMENT 'sku',
  `sku_type` int(11) DEFAULT NULL COMMENT 'sku_type',
  `small_image` varchar(255) DEFAULT NULL COMMENT 'small_image',
  `small_image_label` varchar(255) DEFAULT NULL COMMENT 'small_image_label',
  `special_from_date` datetime DEFAULT NULL COMMENT 'special_from_date',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'special_price',
  `special_to_date` datetime DEFAULT NULL COMMENT 'special_to_date',
  `status` smallint(5) unsigned DEFAULT NULL COMMENT 'status',
  `tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'tax_class_id',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'thumbnail',
  `thumbnail_label` varchar(255) DEFAULT NULL COMMENT 'thumbnail_label',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'url_key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'url_path',
  `visibility` smallint(5) unsigned DEFAULT NULL COMMENT 'visibility',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'weight',
  `weight_type` int(11) DEFAULT NULL COMMENT 'weight_type',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_FLAT_1_TYPE_ID` (`type_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_FLAT_1_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_FLAT_1_NAME` (`name`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_FLAT_1_PRICE` (`price`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_FLAT_1_STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Flat (Store 1)';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_eav`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Dumping data for table `mgeg_catalog_product_index_eav`
--

INSERT INTO `mgeg_catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(1, 121, 1, 0),
(2, 121, 1, 2),
(3, 121, 1, 2),
(4, 121, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_eav_decimal`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_eav_decimal_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_eav_decimal_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_eav_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

--
-- Dumping data for table `mgeg_catalog_product_index_eav_idx`
--

INSERT INTO `mgeg_catalog_product_index_eav_idx` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(1, 121, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_eav_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

--
-- Dumping data for table `mgeg_catalog_product_index_eav_tmp`
--

INSERT INTO `mgeg_catalog_product_index_eav_tmp` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(4, 121, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_group_price`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_group_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_GROUP_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `IDX_MGEG_CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dumping data for table `mgeg_catalog_product_index_price`
--

INSERT INTO `mgeg_catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
(1, 0, 1, 0, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(1, 1, 1, 0, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(1, 2, 1, 0, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(1, 3, 1, 0, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(2, 0, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(2, 1, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(2, 2, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(2, 3, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(3, 0, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(3, 1, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(3, 2, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(3, 3, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(4, 0, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(4, 1, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(4, 2, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(4, 3, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_bundle_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_bundle_opt_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_bundle_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_bundle_sel_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_bundle_sel_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_bundle_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_cfg_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_cfg_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_cfg_opt_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_cfg_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_downlod_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_downlod_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_final_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_final_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

--
-- Dumping data for table `mgeg_catalog_product_index_price_idx`
--

INSERT INTO `mgeg_catalog_product_index_price_idx` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
(1, 0, 1, 0, '11.0000', '11.0000', '11.0000', '11.0000', NULL, NULL),
(1, 1, 1, 0, '11.0000', '11.0000', '11.0000', '11.0000', NULL, NULL),
(1, 2, 1, 0, '11.0000', '11.0000', '11.0000', '11.0000', NULL, NULL),
(1, 3, 1, 0, '11.0000', '11.0000', '11.0000', '11.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_opt_idx`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_price_tmp`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

--
-- Dumping data for table `mgeg_catalog_product_index_price_tmp`
--

INSERT INTO `mgeg_catalog_product_index_price_tmp` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
(4, 0, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(4, 1, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(4, 2, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL),
(4, 3, 1, 2, '21.0000', '21.0000', '21.0000', '21.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_tier_price`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_index_website`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Dumping data for table `mgeg_catalog_product_index_website`
--

INSERT INTO `mgeg_catalog_product_index_website` (`website_id`, `website_date`, `rate`) VALUES
(1, '2016-05-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_link`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_LNK_LNK_TYPE_ID_PRD_ID_LNKED_PRD_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_LINK_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_link_attribute`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mgeg_catalog_product_link_attribute`
--

INSERT INTO `mgeg_catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 1, 'position', 'int'),
(2, 3, 'position', 'int'),
(3, 3, 'qty', 'decimal'),
(4, 4, 'position', 'int'),
(5, 5, 'position', 'int');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_link_attribute_decimal`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_MGEG_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_link_attribute_int`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_MGEG_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_link_attribute_varchar`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_MGEG_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_link_type`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mgeg_catalog_product_link_type`
--

INSERT INTO `mgeg_catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_option`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_option_price`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `UNQ_MGEG_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID` (`option_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_option_title`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `UNQ_MGEG_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID` (`option_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_option_type_price`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_OPT_TYPE_PRICE_OPT_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_option_type_title`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_OPT_TYPE_TTL_OPT_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_option_type_value`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_relation`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_super_attribute`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_SPR_ATTR_PRD_ID_ATTR_ID` (`product_id`,`attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_super_attribute_label`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `IDX_MGEG_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_super_attribute_pricing`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_super_attribute_pricing` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `value_index` varchar(255) DEFAULT NULL COMMENT 'Value Index',
  `is_percent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Percent',
  `pricing_value` decimal(12,4) DEFAULT NULL COMMENT 'Pricing Value',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID_VAL_IDX_WS_ID` (`product_super_attribute_id`,`value_index`,`website_id`),
  KEY `IDX_MGEG_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRICING_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Pricing Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_super_link`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_MGEG_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_catalog_product_website`
--

CREATE TABLE IF NOT EXISTS `mgeg_catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `IDX_MGEG_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Dumping data for table `mgeg_catalog_product_website`
--

INSERT INTO `mgeg_catalog_product_website` (`product_id`, `website_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_checkout_agreement`
--

CREATE TABLE IF NOT EXISTS `mgeg_checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_checkout_agreement_store`
--

CREATE TABLE IF NOT EXISTS `mgeg_checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `FK_MGEG_CHKT_AGRT_STORE_STORE_ID_MGEG_CORE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_cms_block`
--

CREATE TABLE IF NOT EXISTS `mgeg_cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Block Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Block Table' AUTO_INCREMENT=54 ;

--
-- Dumping data for table `mgeg_cms_block`
--

INSERT INTO `mgeg_cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(1, 'Footer Links', 'footer_links', '<ul>\r\n    <li><a href="{{store direct_url="about-magento-demo-store"}}">About Us</a></li>\r\n    <li><a href="{{store direct_url="customer-service"}}">Customer Service</a></li>\r\n<li class="last privacy"><a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy</a></li>\r\n</ul>', '2016-04-27 16:50:44', '2016-05-03 08:45:45', 0),
(2, 'Footer Links Company', 'footer_links_company', '<div class="links">\r\n    <div class="block-title">\r\n        <strong><span>Company</span></strong>\r\n    </div>\r\n    <ul>\r\n        <li><a href="{{store url=""}}about-magento-demo-store/">About Us</a></li>\r\n        <li><a href="{{store url=""}}contacts/">Contact Us</a></li>\r\n        <li><a href="{{store url=""}}customer-service/">Customer Service</a></li>\r\n        <li><a href="{{store url=""}}privacy-policy-cookie-restriction-mode/">Privacy Policy</a></li>\r\n    </ul>\r\n</div>', '2016-04-27 16:50:44', '2016-05-03 04:04:44', 0),
(3, 'Cookie restriction notice', 'cookie_restriction_notice_block', '<p>This website requires cookies to provide all of its features. For more information on what data is contained in the cookies, please see our <a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy page</a>. To accept cookies from this site, please click the Allow button below.</p>', '2016-04-27 16:50:44', '2016-04-27 16:50:44', 1),
(4, 'Landing page 1', 'landing_page1', '<div class="horizontal-section">\n\n	<a href="#">\n		<img src="{{media url="wysiwyg/infortis/ultimo/custom/landing/category01.jpg"}}" title="You can edit this block or replace it with custom content" alt="Sample banner" />\n    \n		<div class="caption dark2 full-width">\n			<h2 class="heading permanent">Category Banner</h2>\n			<p>Upload image and description for every category in the store</p>\n			<p>Create landing pages for categories</p>\n		</div>\n	</a>\n    \n</div>', '2016-04-27 19:03:43', '2016-04-27 19:03:43', 1),
(5, 'Custom footer links 2', 'block_footer_links2', '<ul class="links hide-below-768">\r\n\r\n	<li class="first">\r\n		<a href="{{store direct_url=''about-magento-demo-store/''}}" title="You can add more custom links here">About Us</a>\r\n	</li>\r\n	<li class="last">\r\n		<a href="{{store direct_url=''customer-service/''}}"  title="You can even replace these links with any other content">Customer Service</a>\r\n	</li>\r\n\r\n</ul>', '2016-04-27 19:03:43', '2016-05-03 08:59:11', 0),
(6, 'Custom footer links', 'block_footer_links', 'This block can replace Magento''s default footer links.\r\n\r\n<ul class="links">\r\n\r\n    <li class="first">\r\n    	<a href="{{store url=''about-magento-demo-store''}}" title="My custom link">Custom Link</a>\r\n    </li>\r\n    <li class=" last">\r\n    	<a href="{{store url=''about-magento-demo-store''}}" title="My sample link">Sample Link</a>\r\n    </li>\r\n    \r\n</ul>', '2016-04-27 19:03:43', '2016-05-03 04:08:13', 0),
(7, 'Footer primary bottom left - social links', 'block_footer_primary_bottom_left', '<div class="social-links ib-wrapper--circle">\r\n	<a class="first" href="http://twitter.com/infortis" title="Follow Infortis on Twitter">\r\n		<span class="ib ib-hover ic ic-lg ic-twitter"></span>\r\n	</a>\r\n	<a href="#" title="Join us on Facebook">\r\n		<span class="ib ib-hover ic ic-lg ic-facebook"></span>\r\n	</a>\r\n	<a href="#" title="Join us on Google Plus">\r\n		<span class="ib ib-hover ic ic-lg ic-googleplus"></span>\r\n	</a>\r\n	<a href="#" title="Instagram">\r\n		<span class="ib ib-hover ic ic-lg ic-instagram"></span>\r\n	</a>\r\n	<a href="#" title="Linked in">\r\n		<span class="ib ib-hover ic ic-lg ic-linkedin"></span>\r\n	</a>\r\n</div>', '2016-04-27 19:03:44', '2016-05-04 20:42:50', 0),
(8, 'Footer payment', 'block_footer_payment', '<img src="{{media url="wysiwyg/infortis/ultimo/custom/payment.gif}}" alt="Payment methods" title="Sample image with payment methods" />', '2016-04-27 19:03:44', '2016-05-02 23:10:05', 0),
(9, 'Category below collection', 'block_category_below_collection', '<div class="nested-container hide-below-768">\n\n    <div class="page-banners clearer">\n        <div class="grid12-6 banner">\n            <a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/01.png"}}" alt="Sample banner" />\n            </a>\n        </div>\n        <div class="grid12-6 banner">\n            <a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/03.png"}}" alt="Sample banner" />\n            </a>\n        </div>\n    </div>\n\n</div>', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 0),
(10, 'Category above empty collection', 'block_category_above_empty_collection', '<div class="note-msg empty-catalog">\n\n	<h3>There are no products matching the selection</h3>\n	This is a custom CMS block displayed if category is empty.<br>\n	You can replace it with any custom content.\n\n</div>', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 1),
(11, 'Product - secondary column bottom', 'block_product_secondary_bottom', '<div class="feature feature-icon-hover indent first">\n	<span class="ib ic ic-lg ic-plane"></span>\n	<p class="no-margin ">We will send this product in 2 days. <a href="#">Read more...</a></p>\n</div>\n<div class="feature feature-icon-hover indent">\n	<span class="ib ic ic-lg ic-phone"></span>\n	<p class="no-margin ">Call us now for more info about our products.</p>\n</div>\n<div class="feature feature-icon-hover indent">\n	<span class="ib ic ic-lg ic-reload"></span>\n	<p class="no-margin ">Return purchased items and get all your money back.</p>\n</div>\n<div class="feature feature-icon-hover indent last">\n	<span class="ib ic ic-lg ic-star"></span>\n	<p class="no-margin ">Buy this product and earn 10 special loyalty points!</p>\n</div>\n\n\n\n<!-- Social bookmarks from http://www.addthis.com/get/sharing  -->\n<!-- AddThis Button BEGIN -->\n<div class="feature-wrapper top-border">\n	<div class="addthis_toolbox addthis_default_style ">\n	<a class="addthis_button_preferred_1"></a>\n	<a class="addthis_button_preferred_2"></a>\n	<a class="addthis_button_preferred_3"></a>\n	<a class="addthis_button_preferred_4"></a>\n	<a class="addthis_button_compact"></a>\n	<a class="addthis_counter addthis_bubble_style"></a>\n	</div>\n	<script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=xa-5054e6c6502d114f"></script>\n</div>\n<!-- AddThis Button END -->\n\n', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 1),
(12, 'Product - primary column bottom', 'block_product_primary_bottom', 'Sample content of the static block - primary column bottom.', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 0),
(13, 'Cart - below totals', 'block_cart_below_totals', '<div class="hide-below-320" style="display: table; float: right; padding-right: 10px; text-align: right;"><span style="display: table-cell; vertical-align: middle;">Sample info about SSL Certificate</span> <img src="{{media url="wysiwyg/infortis/ultimo/custom/block_cart_below_totals.png"}}" alt="Example Image" title="Static CMS block displayed below totals. Put your own content here." /></div>', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 1),
(14, 'Mini cart above products', 'block_mini_cart_above_products', '<div style="padding:15px; background-color:#f5f5f5; color:#d90000;" title="Customizable CMS block for promo info">\n<a class="go" href="{{store url=""}}">Check our latest super promotions!</a>\n</div>', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 0),
(15, 'Custom Tab 1', 'block_product_tab1', '<p>Custom CMS block displayed as a tab. You can use it to display info about returns and refunds, latest promotions etc. You can put your own content here: text, HTML, images - whatever you like. There are <strong>many similar blocks</strong> accross the store. All CMS blocks are editable from the admin panel.</p>\r\n\r\n<div class="feature indent first">\r\n	<span class="icon i-right no-bg-color"></span>\r\n	<p class="no-margin"><strong>Magento Community Edition is the most powerful</strong> open source e-commerce software and can be downloaded 100% for free. Developers can modify the core code, add custom features and functionality by installing extensions from Magento Connect marketplace.</p>\r\n</div>\r\n<div class="feature indent">\r\n	<span class="icon i-right no-bg-color"></span>\r\n	<p class="no-margin"><strong>Manage the fully dynamic catalog</strong> with the intutive admistrative interface. The flexible catalog system includes various options for the display of items. Magento is also integrated with a variety of major payment gateways out of the box.</p>\r\n</div>\r\n<div class="feature indent last">\r\n	<span class="icon i-right no-bg-color"></span>\r\n	<p class="no-margin"><strong>Magento is a fully global platform</strong>, allowing for the expansion of business or simply offering multiple versions of your site to meet the needs of your customers.\r\nTranslated into over 60 languages, supporting multiple currencies, payment methods and taxes, Magento allows for internationalization of your online stores.</p>\r\n</div>', '2016-04-27 19:03:44', '2016-05-03 04:07:43', 0),
(16, 'Custom Tab 2', 'block_product_tab2', '<p>Another custom CMS block displayed as a tab. You can use it to display info about returns and refunds, latest promotions etc. You can put your own content here: text, HTML, images - whatever you like. There are <strong>many similar blocks</strong> accross the store. All CMS blocks are editable from the admin panel.</p>\r\n\r\n<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque quis. Nullam ornare enim nec justo bibendum lobortis. In eget metus.</p>', '2016-04-27 19:03:44', '2016-05-02 23:10:56', 0),
(17, 'Cart - below table', 'block_cart_below_table', '<img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/cart-discount.png"}}" alt="Magento discount code" title="Use discount code/coupon" />', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 1),
(18, 'Footer column 1', 'block_footer_column1', '<div class="collapsible mobile-collapsible">\r\n	<h6 class="block-title heading">Telegraph Health Center</h6>\r\n\r\n	<div class="block-content">\r\n\r\n<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.753543126455!2d-122.26954118457567!3d37.81924137975133!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80857e00251eed97%3A0x98ea8b1732f09f7a!2sTelegraph+Health+Center!5e0!3m2!1sen!2sus!4v1462293866017" width="550" height="185" frameborder="0" style="border:0" allowfullscreen></iframe>\r\n\r\n	</div>\r\n</div>', '2016-04-27 19:03:44', '2016-05-05 03:25:45', 1),
(19, 'Footer column 2', 'block_footer_column2', '<div class="collapsible mobile-collapsible">\r\n\r\n		<h6 class="block-title heading"></h6>\r\n		<div class="block-content">\r\n		</div>\r\n\r\n</div>\r\n', '2016-04-27 19:03:44', '2016-05-05 05:39:44', 1),
(20, 'Footer column 3', 'block_footer_column3', '<div class="collapsible mobile-collapsible">\r\n\r\n		<h6 class="block-title heading">Contact Details</h6>\r\n		<div class="block-content">\r\n                        <div class="feature feature-icon-hover indent">\r\n				<span class="ib ic ic-mobile ic-pin"></span>\r\n				<p class="no-margin ">3003 Telegraph Ave.<br/>Oakland, California 94606</p>\r\n			</div>\r\n                        <div class="feature feature-icon-hover indent">\r\n				<span class="ib ic ic-lastminute ic-lg"></span>\r\n				<p class="no-margin " style=" line-height: 34px;">10:00AM - 8:00PM every day</p>\r\n			</div>\r\n                        <div class="feature feature-icon-hover indent first">\r\n				<span class="ib ic ic-phone ic-lg"></span>\r\n				<p class="no-margin " style=" line-height: 34px;">(510) 842-5999</p>\r\n			</div>\r\n                        <div class="feature feature-icon-hover indent">\r\n				<span class="ib ic ic-letter ic-lg"></span>\r\n				<p class="no-margin">info@telegraphhealth.com<br/>vendors@telegraphhealth.com</p>\r\n			</div>\r\n		</div>\r\n\r\n</div>', '2016-04-27 19:03:44', '2016-05-05 04:51:54', 1),
(21, 'Footer column 4', 'block_footer_column4', '<div class="collapsible mobile-collapsible">\r\n\r\n		<h6 class="block-title heading">Follow @telegraphhealth</h6>\r\n		<div class="block-content">\r\n                        <div class="feature feature-icon-hover indent first">\r\n				<span class="ib ic ic-phone ic-facebook"></span>\r\n				<p class="no-margin " style=" line-height: 34px;">Facebook</p>\r\n			</div>\r\n                        <div class="feature feature-icon-hover indent first">\r\n				<span class="ib ic ic-phone ic-twitter"></span>\r\n				<p class="no-margin " style=" line-height: 34px;">Twitter</p>\r\n			</div>\r\n                        <div class="feature feature-icon-hover indent first">\r\n				<span class="ib ic ic-phone ic-instagram"></span>\r\n				<p class="no-margin " style=" line-height: 34px;">Instagram</p>\r\n			</div>\r\n		</div>\r\n\r\n</div>\r\n', '2016-04-27 19:03:44', '2016-05-05 02:48:05', 1),
(22, 'Footer column 5', 'block_footer_column5', '<div class="grid12-3">\r\n	<div class="collapsible mobile-collapsible">\r\n\r\n		<h6 class="block-title heading">About Ultimo</h6>\r\n		<div class="block-content">\r\n			<img src="{{media url="wysiwyg/infortis/ultimo/custom/logo-small.png"}}" alt="Ultimo Theme" style="padding-bottom:10px;" />\r\n			<div class="feature first last">\r\n				<p>Ultimo is a premium Magento theme with advanced admin module. It’s extremely customizable, easy to use and fully responsive.</p>\r\n				<h5><a class="go" href="http://themeforest.net/item/ultimo-fluid-responsive-magento-theme/3231798?ref=infortis">Buy this theme</a></h5>\r\n			</div>\r\n		</div>\r\n\r\n	</div>\r\n</div>\r\n\r\n<div class="grid12-3">\r\n	<div class="collapsible mobile-collapsible">\r\n\r\n		<h6 class="block-title heading">Theme Features</h6>\r\n		<div class="block-content">\r\n			<ul class="bullet">\r\n				<li><a href="{{store url=''ultimo-responsive-magento-theme''}}">Theme Features</a></li>\r\n				<li><a href="{{store url=''typography''}}">Typography</a></li>\r\n				<li><a href="#">Some Sample Link</a></li>\r\n				<li><a href="#">Meat Our Best Partners</a></li>\r\n				<li><a href="#">Latest Work Samples</a></li>\r\n				<li><a href="#">Our Other Projects</a></li>\r\n				<li><a href="#">One Click To Join Us</a></li>\r\n				<li><a href="#">Follow Us On Twitter</a></li>\r\n				<li><a href="http://infortis-themes.com/">Magento Themes</a></li>\r\n				<li><a href="#">Ecommerce</a></li>\r\n			</ul>\r\n		</div>\r\n\r\n	</div>\r\n</div>\r\n\r\n<div class="grid12-3">\r\n	<div class="collapsible mobile-collapsible">\r\n\r\n		<h6 class="block-title heading">Key Features</h6>\r\n		<div class="block-content">\r\n			<div class="feature feature-icon-hover indent first">\r\n				<span class="ib ic ic-char">1</span>\r\n				<p class="no-margin">Unlimited colors, hundreds of customizable elements</p>\r\n			</div>\r\n			<div class="feature feature-icon-hover indent">\r\n				<span class="ib ic ic-char">2</span>\r\n				<p class="no-margin ">Customizable responsive layout based on fluid grid</p>\r\n			</div>\r\n			<div class="feature feature-icon-hover indent">\r\n				<span class="ib ic ic-char">3</span>\r\n				<p class="no-margin ">50+ placeholders to display custom content</p>\r\n			</div>\r\n			<div class="feature feature-icon-hover indent">\r\n				<span class="ib ic ic-char">4</span>\r\n				<p class="no-margin ">Create your custom sub-themes (variants)</p>\r\n			</div>\r\n		</div>\r\n\r\n	</div>\r\n</div>\r\n\r\n<div class="grid12-3">\r\n	<div class="collapsible mobile-collapsible">\r\n\r\n		<h6 class="block-title heading">Company Info</h6>\r\n		<div class="block-content">\r\n			<div class="feature feature-icon-hover indent first">\r\n				<span class="ib ic ic-phone ic-lg"></span>\r\n				<p class="no-margin ">Call Us +001 555 801<br/>Fax +001 555 802</p>\r\n			</div>\r\n			<div class="feature feature-icon-hover indent">\r\n				<span class="ib ic ic-mobile ic-lg"></span>\r\n				<p class="no-margin ">+77 123 1234<br/>+42 98 9876</p>\r\n			</div>\r\n			<div class="feature feature-icon-hover indent">\r\n				<span class="ib ic ic-letter ic-lg"></span>\r\n				<p class="no-margin ">boss@example.com<br/>me@example.com</p>\r\n			</div>\r\n			<div class="feature feature-icon-hover indent last">\r\n				<span class="ib ic ic-skype ic-lg"></span>\r\n				<p class="no-margin ">Skype: samplelogin<br/>skype-support</p>\r\n			</div>\r\n		</div>\r\n\r\n	</div>\r\n</div>', '2016-04-27 19:03:44', '2016-04-28 07:12:32', 0),
(23, 'Footer column 6', 'block_footer_column6', '<h6 class="heading">Sample Column</h6>\n<ul>\n	<li><a href="#">Responsive Magento Theme</a></li>\n	<li><a href="#">Magento Extensions</a></li>\n	<li><a href="#">Store Overview</a></li>\n	<li><a href="#">Buy This</a></li>\n	<li><a href="#">Sample Link</a></li>\n	<li><a href="#">Some Other Link</a></li>\n	<li><a href="#">Link Example</a></li>\n</ul>', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 0),
(24, 'About', 'block_header_nav_dropdown', '<div class="grid-container-spaced">\r\n	<div class="grid12-3">\r\n\r\n		<h2>About</h2>\r\n		<p>Telegraph Health Center is Oakland California''s preferred medical cannabis dispensary for medicinal marijuana flowers, concentrates, and infused products.</br>We provide patient members safe access to medical cannabis and services that supplement physician treatment plans.\r\n</p>\r\n		<h5><a class="go" href="http://themeforest.net/item/ultimo-fluid-responsive-magento-theme/3231798?ref=infortis" style="color:red;">Learn more</a></h5>\r\n\r\n	</div>\r\n	<div class="grid12-3">\r\n\r\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}">\r\n			<img src="{{media url=''wysiwyg/infortis/ultimo/menu/custom/02.png''}}" class="fade-on-hover" alt="Virtual Tour" />\r\n		</a>\r\n		<h4 class="heading">Virtual Tour</h4>\r\n		<p>Step inside Telegraph Health Center on a virtual tour to see our medical cannabis counter, patient lobby, and private parking facilities.</p>\r\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">Learn more</a>\r\n\r\n	</div>\r\n	<div class="grid12-3">\r\n\r\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}">\r\n			<img src="{{media url=''wysiwyg/infortis/ultimo/menu/custom/02.png''}}" class="fade-on-hover" alt="FAQ" />\r\n		</a>\r\n		<h4 class="heading">FAQ</h4>\r\n		<p>Get answers to frequently asked questions including business hours, medical cannabis compliance, and Telegraph Health Center patient signup.</p>\r\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">Learn more</a>\r\n\r\n	</div>\r\n	<div class="grid12-3">\r\n\r\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}">\r\n			<img src="{{media url=''wysiwyg/infortis/ultimo/menu/custom/03.png''}}" class="fade-on-hover" alt="Vendors" />\r\n		</a>\r\n		<h4 class="heading">Vendors</h4>\r\n		<p>Telegraph Health Center works closely with medical cannabis cultivators, processors, and patients to provide the best in California Prop. 215 and S.B. 420 compliant medicinal marijuana products:</p>\r\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">Learn more</a>\r\n\r\n	</div>\r\n</div>', '2016-04-27 19:03:44', '2016-05-05 05:59:40', 1),
(25, 'Product - replace related', 'block_product_replace_related', '<div class="block">\n	<div class="block-title">\n		<strong><span>Replace related</span></strong>\n	</div>\n\n	<p style="background-color: #eee; padding:10px; margin-bottom:10px; margin-top:10px;">\n		Custom CMS block replacing related products. Put your own content here: text, HTML, images - whatever you want.\n	</p>\n	<p style="background-color: #eee; padding:10px;">\n		There are many similar blocks accross the store. All editable from admin panel.\n	</p>\n</div>', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 1),
(26, 'Product - replace up-sell', 'block_product_replace_upsell', '<div style="background-color: #eee; padding: 20px;">Custom CMS block displayed when you want to replace up-sell products with custom content. You can display here some text, images or any other content.</div>', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 1),
(27, 'Header top left 2', 'block_header_top_left2', '<div class="links-wrapper-separators">\r\n\r\n   <ul class="links">\r\n      <li class="first">\r\n         <a href="http://ultimo.infortis-themes.com/demo/select-demo/" title="See more demos">All demos</a>\r\n      </li>\r\n      <li class="hide-below-768">\r\n         <a href="{{store url=''ultimo-responsive-magento-theme''}}" title="See the list of all features">Features</a>\r\n      </li>\r\n      <li class="last hide-below-480">\r\n         <a href="http://themeforest.net/item/ultimo-fluid-responsive-magento-theme/3231798?ref=infortis" title="Click to buy this theme">Buy me!</a>\r\n      </li>\r\n   </ul>\r\n\r\n</div>', '2016-04-27 19:03:44', '2016-05-03 04:10:50', 0),
(28, 'Header top left', 'block_header_top_left', '<div class="hide-below-768" title="Call Telegraph Health Center at (510) 842-5999"><span class="ic ic-lg ic-phone"></span> (510) 842-5999</div>', '2016-04-27 19:03:44', '2016-05-05 04:24:47', 1),
(29, 'Custom Top Links (to replace Magento''s default Top Links)', 'block_header_top_links', '<ul class="links">\n\n	<li class="first">\n		<a href="#" title="Sample">Sample</a>\n	</li>\n	<li class="">\n		<a href="#" title="Custom">Custom</a>\n	</li>\n	<li class="last">\n		<a href="#" title="Links">Links</a>\n	</li>\n\n</ul>', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 0),
(30, 'Custom Top Links 2', 'block_header_top_links2', '<ul class="links">\n\n	<li class="first">\n		<a href="{{store url=''about-magento-demo-store''}}" title="Custom link">Sample</a>\n	</li>\n	<li class="last">\n		<a href="{{store url=''any/custom/page''}}" title="Link Hidden on Mobile">Links</a>\n	</li>\n\n</ul>', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 0),
(31, 'Footer primary bottom right - newsletter', 'block_footer_primary_bottom_right', 'This block can replace default newsletter form.', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 0),
(32, 'Footer - row 2 column 1', 'block_footer_row2_column1', '<div class="collapsible mobile-collapsible">\r\n	<h6 class="block-title heading">First Heading</h6>\r\n\r\n	<div class="block-content">\r\n\r\n		<ul class="bullet">\r\n			<li><a href="{{store url="ultimo-responsive-magento-theme"}}">This is just a sample link</a></li>\r\n			<li><a href="#">And this is some other link</a></li>\r\n			<li><a href="#">Another dummy text</a></li>\r\n		</ul>\r\n\r\n	</div>\r\n</div>', '2016-04-27 19:03:44', '2016-05-03 07:31:41', 0),
(33, 'Footer - row 2 column 2', 'block_footer_row2_column2', '<div class="collapsible mobile-collapsible">\r\n	<h6 class="block-title heading">Second Heading</h6>\r\n\r\n	<div class="block-content">\r\n\r\n		<ul class="bullet">\r\n			<li><a href="{{store url="ultimo-responsive-magento-theme"}}">This is just a sample link</a></li>\r\n			<li><a href="#">And this is some other link</a></li>\r\n			<li><a href="#">Another dummy text</a></li>\r\n		</ul>\r\n\r\n	</div>\r\n</div>', '2016-04-27 19:03:44', '2016-05-03 07:32:00', 0),
(34, 'Footer - row 2 column 3', 'block_footer_row2_column3', '<div class="collapsible mobile-collapsible">\r\n	<h6 class="block-title heading">Third Heading</h6>\r\n\r\n	<div class="block-content">\r\n\r\n		<ul class="bullet">\r\n			<li><a href="{{store url="ultimo-responsive-magento-theme"}}">This is just a sample link</a></li>\r\n			<li><a href="#">And this is some other link</a></li>\r\n			<li><a href="#">Another dummy text</a></li>\r\n		</ul>\r\n\r\n	</div>\r\n</div>', '2016-04-27 19:03:44', '2016-05-04 20:42:02', 0),
(35, 'Footer - row 2 column 5', 'block_footer_row2_column5', '<div class="grid12-9 no-gutter">\n\n	<div class="grid12-3">\n		<div class="collapsible mobile-collapsible">\n			<h6 class="block-title heading">Questions?</h6>\n			<div class="block-content">\n\n				<ul class="bullet">\n					<li><a href="#">Terms</a></li>\n					<li><a href="#">Conditions</a></li>\n					<li><a href="#">About us</a></li>\n					<li><a href="#">Example</a></li>\n				</ul>\n\n			</div>\n		</div>\n	</div>\n\n	<div class="grid12-3">\n		<div class="collapsible mobile-collapsible">\n			<h6 class="block-title heading">Shipping</h6>\n			<div class="block-content">\n\n				<ul class="bullet">\n					<li><a href="#">Delivery</a></li>\n					<li><a href="#">Track your order</a></li>\n					<li><a href="#">Buy gift cards</a></li>\n					<li><a href="#">Returns</a></li>\n				</ul>\n\n			</div>\n		</div>\n	</div>\n\n	<div class="grid12-3">\n		<div class="collapsible mobile-collapsible">\n			<h6 class="block-title heading">About Us</h6>\n			<div class="block-content">\n\n				<ul class="bullet">\n					<li><a href="#">Responsive</a></li>\n					<li><a href="#">Magento themes</a></li>\n					<li><a href="#">E-commerce</a></li>\n					<li><a href="#">The company</a></li>\n				</ul>\n\n			</div>\n		</div>\n	</div>\n\n	<div class="grid12-3">\n		<div class="collapsible mobile-collapsible">\n			<h6 class="block-title heading">News</h6>\n			<div class="block-content">\n\n				<ul class="bullet">\n					<li><a href="#">What''s new</a></li>\n					<li><a href="#">Products</a></li>\n					<li><a href="#">Magento template</a></li>\n					<li><a href="#">Our sites</a></li>\n				</ul>\n\n			</div>\n		</div>\n	</div>\n\n</div>\n<div class="grid12-3 no-right-gutter">\n	<div class="collapsible mobile-collapsible">\n		<h6 class="block-title heading">Additional Info</h6>\n		<div class="block-content">\n\n			<div class="feature indent first feature-icon-hover">\n				<span class="ic ic-lg ic-pin ib" style="background-color: lightskyblue;"></span>\n				<p class="no-margin">Friends Inc., 90 Bedford St<br />New York, NY 041, USA</p>\n			</div>\n			<div class="feature indent feature-icon-hover">\n				<span class="ic ic-lg ic-twitter ib" style="background-color: lightskyblue;"></span>\n				<p class="no-margin">Follow us on our<br /><a href="http://twitter.com/infortis">Twitter</a> account</p>\n			</div>\n			<br />\n\n		</div>\n	</div>\n</div>', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 0),
(36, 'Footer - row 2 column 6', 'block_footer_row2_column6', 'Sample content of block_footer_row2_column6', '2016-04-27 19:03:44', '2016-04-27 19:03:44', 0),
(37, 'Footer - row 2 column 4', 'block_footer_row2_column4', '<div class="collapsible mobile-collapsible">\r\n	<h6 class="block-title heading">Fourth Heading</h6>\r\n\r\n	<div class="block-content">\r\n\r\n		<ul class="bullet">\r\n			<li><a href="{{store url="ultimo-responsive-magento-theme"}}">Link example</a></li>\r\n			<li><a href="#">And this is some other link</a></li>\r\n			<li><a href="#">Last Sample Link</a></li>\r\n		</ul>\r\n\r\n	</div>\r\n</div>', '2016-04-27 19:03:44', '2016-05-03 07:32:25', 0),
(38, 'Landing page 2', 'landing_page2', '<div class="horizontal-section">\n\n{{block type="ultraslideshow/slideshow" template="infortis/ultraslideshow/slideshow.phtml" slides="block_category_slide1,block_category_slide2" timeout="10000"}}\n\n</div>', '2016-04-27 19:03:45', '2016-04-27 19:03:45', 1),
(39, 'Home slide 1', 'block_slide1', '<a href="{{store url=''about-magento-demo-store''}}">\r\n\r\n	<img src="{{media url=''wysiwyg/infortis/ultimo/slideshow/01.jpg''}}" alt="Telegraph Health Center" />\r\n\r\n		<div class="caption light1">\r\n			<h2 class="heading permanent">Telegraph Health Center</h2>\r\n			<p>Oakland California''s preferred medical cannabis dispensary</p>\r\n		</div>\r\n\r\n</a>', '2016-04-27 19:03:45', '2016-05-03 03:42:24', 1),
(40, 'Home slide 2', 'block_slide2', '<a href="{{store url=''about-magento-demo-store''}}">\r\n\r\n	<img src="{{media url=''wysiwyg/infortis/ultimo/slideshow/02.jpg''}}" alt="Medical Cannabis" />\r\n\r\n		<div class="caption light1">\r\n			<h2 class="heading permanent">Medical Cannabis</h2>\r\n			<p class="permanent">Bay Area medicinal marijuana patient collective for cannabis flowers, concentrates, and infused products</p>\r\n		</div>\r\n\r\n</a>', '2016-04-27 19:03:45', '2016-04-28 19:34:40', 1),
(41, 'Home slide 3', 'block_slide3', '<a href="{{store url=''about-magento-demo-store''}}">\r\n\r\n	<img src="{{media url=''wysiwyg/infortis/ultimo/slideshow/03.jpg''}}" alt="Sample slide" />\r\n\r\n	<a class="caption dark feature-icon-hover" href="{{store direct_url=''dress7.html''}}" title="Click to see the product">\r\n		<h2 class="hide-below-960" style="color: #000000; font-size: 35px; line-height: 60px; padding-right: 8px;">1/8th Flower Specials!</h2>\r\n		<span class="ic ic-lg ic-char ib ib-size-xl">$30</span>\r\n	</a>\r\n\r\n</a>', '2016-04-27 19:03:45', '2016-04-28 19:38:13', 1),
(42, 'Home slide - wide 1', 'block_slide_wide1', '<div style="text-align:center;">\r\n<a href="{{store url=''about-magento-demo-store''}}">\r\n\r\n   <img src="{{media url=''wysiwyg/infortis/ultimo/slideshow/wide01.jpg''}}" alt="Telegraph Health Center" />\r\n\r\n      <div class="caption light1">\r\n         <h2 class="heading permanent">Telegraph Health Center</h2>\r\n         <p>Oakland California''s preferred medical cannabis dispensary</p>\r\n      </div>\r\n\r\n</a>\r\n</div>', '2016-04-27 19:03:45', '2016-05-03 05:31:58', 1),
(43, 'Home slide - wide 2', 'block_slide_wide2', '<div style="text-align:center;">\r\n<a href="{{store url=''about-magento-demo-store''}}">\r\n\r\n   <img src="{{media url=''wysiwyg/infortis/ultimo/slideshow/wide01.jpg''}}" alt="Medical Cannabis" />\r\n\r\n      <div class="caption light1">\r\n         <h2 class="heading permanent">Medical Cannabis</h2>\r\n         <p>Bay Area medicinal marijuana patient collective for cannabis flowers, concentrates, and infused products</p>\r\n      </div>\r\n\r\n</a>\r\n</div>', '2016-04-27 19:03:45', '2016-05-03 05:33:48', 1),
(44, 'Landing page 3', 'landing_page3', '<div class="landing-page nested-container clearer">\n	<br />\n    \n	<div class="vertical-section grid12-4 mobile-grid-half">\n        <a href="{{store direct_url="downloadable/ebooks.html"}}">\n        	<img class="center-block" src="{{media url="wysiwyg/infortis/ultimo/custom/landing/vert1.jpg"}}" alt="Sample banner" />\n            <div class="caption dark3 full-width">\n                <h2 class="heading permanent">e-Books</h2>\n                <p class="permanent">Sell e-Books with Magento</p>\n                <p>Lorem ipsum dolor </p>\n            </div>\n        </a>\n	</div>\n	<div class="vertical-section grid12-4 mobile-grid-half">\n        <a href="{{store direct_url="downloadable/music.html"}}">\n        	<img class="center-block" src="{{media url="wysiwyg/infortis/ultimo/custom/landing/vert2.jpg"}}" alt="Sample banner" />\n            <div class="caption dark3 full-width">\n	            <h2 class="heading permanent">Music</h2>\n    	        <p class="permanent">Sell music with Magento</p>\n        	    <p>Lorem ipsum dolor </p>\n            </div>\n        </a>\n	</div>\n	<div class="vertical-section grid12-4 mobile-grid-half">\n        <a href="{{store direct_url="downloadable/software.html"}}">\n        	<img class="center-block" src="{{media url="wysiwyg/infortis/ultimo/custom/landing/vert3.jpg"}}" alt="Sample banner" />\n            <div class="caption dark3 full-width">\n	            <h2 class="heading permanent">Software</h2>\n    	        <p class="permanent">Sell digital products</p>\n        	    <p>Lorem ipsum dolor </p>\n            </div>\n        </a>\n	</div>\n\n	<div class="vertical-section grid-full mobile-grid-half">\n		<p class="horizontal-section" style="background-color: #f5f5f5; padding: 15px;">This is a custom landing page: a CMS block which can replace category products. You can put your own content here: text, HTML, images - whatever you want. You can create landing page for every category.</p>\n	</div>\n	<br />\n\n</div>', '2016-04-27 19:03:45', '2016-04-27 19:03:45', 1),
(45, 'Slideshow banners', 'block_slideshow_banners', '<a class="banner fade-on-hover" href="{{store url=''about-magento-demo-store''}}">\r\n	<img src="{{media url=''wysiwyg/infortis/ultimo/slideshow/banner/01.png''}}" alt="Sample banner" />\r\n\r\n	<div class="caption light1 full-width right">\r\n		<p class="right">Sample caption</p>\r\n	</div>\r\n\r\n</a>\r\n\r\n<a class="banner fade-on-hover" href="{{store url=''about-magento-demo-store''}}">\r\n	<img src="{{media url=''wysiwyg/infortis/ultimo/slideshow/banner/02.png''}}" alt="Sample banner" />\r\n\r\n	<div class="caption dark1 full-width right">\r\n		<p class="right">Add custom text</p>\r\n	</div>\r\n\r\n</a>\r\n\r\n<a class="banner fade-on-hover" href="{{store url=''about-magento-demo-store''}}">\r\n	<img src="{{media url=''wysiwyg/infortis/ultimo/slideshow/banner/03.png''}}" alt="Sample banner" />\r\n\r\n	<div class="caption dark3 full-width right">\r\n		<p class="right">Caption sample</p>\r\n	</div>\r\n</a>', '2016-04-27 19:03:45', '2016-05-02 23:19:17', 0),
(46, 'Header top right 2', 'block_header_top_right2', '<div id="subscribe-form" class="clearer">\r\n    <form action="http://bisonmedia.net/dd/index.php/newsletter/subscriber/new/" method="post" id="newsletter-validate-detail">\r\n        <div>\r\n            <div class="input-box">\r\n                <input type="text" name="email" id="newsletter" title="Sign up for our newsletter" class="input-text required-entry validate-email">\r\n            </div>\r\n            <button type="submit" title="Subscribe" class="button btn-inline"><span><span>Subscribe</span></span></button>\r\n        </div>\r\n    </form>\r\n</div>', '2016-04-27 19:03:45', '2016-05-05 04:54:19', 1),
(47, 'Header top right', 'block_header_top_right', 'Sample content of the top right static block', '2016-04-27 19:03:45', '2016-05-04 20:41:46', 0),
(48, 'Main menu - custom links', 'block_nav_links', '	<li class="nav-item level0 level-top right">\r\n		<a class="level-top" href="{{store direct_url=''contacts''}}" title="Contact">\r\n			<span>Contact</span>\r\n	</a>\r\n	</li>', '2016-04-27 19:03:45', '2016-05-05 03:36:02', 1),
(49, 'Category slide 1', 'block_category_slide1', '<a href="{{store url=''about-magento-demo-store''}}">\n\n	<img src="{{media url=''wysiwyg/infortis/ultimo/custom/landing/slide1.jpg''}}" alt="Sample image" />\n\n		<div class="caption light1 full-width top">\n			<h2 class="heading permanent">Category Slideshow</h2>\n			<h2 class="heading permanent" style="clear:left;">Sample Banner</h2>\n		</div>\n\n</a>', '2016-04-27 19:03:45', '2016-04-27 19:03:45', 1),
(50, 'Category slide 2', 'block_category_slide2', '	<img src="{{media url=''wysiwyg/infortis/ultimo/custom/landing/slide2.jpg''}}" alt="Sample image" />\n\n		<div class="caption light3 full-width centered">\n			<h2 class="heading permanent">Sample Category Slideshow</h2>\n		</div>\n', '2016-04-27 19:03:45', '2016-04-27 19:03:45', 1),
(51, 'Product - image column bottom', 'block_product_img_bottom', 'Sample content of the static block - image column bottom.', '2016-04-27 19:03:45', '2016-04-27 19:03:45', 0),
(52, 'Age Gate', 'vsourz-age-gate', '<div class="sitelogo">LOGO</div>\r\n<h2>This Website requires you to be 18 years or older to enter.</h2>', '2016-05-04 19:33:01', '2016-05-04 19:33:01', 1),
(53, 'Age Gate Disagree', 'vsourz-age-gate-disagree', '<div class="sitelogo">LOGO</div>\r\n<h2>Sorry Adults Only</h2>', '2016-05-04 19:33:01', '2016-05-04 19:33:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_cms_block_store`
--

CREATE TABLE IF NOT EXISTS `mgeg_cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `IDX_MGEG_CMS_BLOCK_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Dumping data for table `mgeg_cms_block_store`
--

INSERT INTO `mgeg_cms_block_store` (`block_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(17, 0),
(23, 0),
(25, 0),
(26, 0),
(29, 0),
(30, 0),
(31, 0),
(35, 0),
(36, 0),
(38, 0),
(44, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(1, 1),
(2, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(15, 1),
(16, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(24, 1),
(27, 1),
(28, 1),
(32, 1),
(33, 1),
(34, 1),
(37, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_cms_page`
--

CREATE TABLE IF NOT EXISTS `mgeg_cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `root_template` varchar(255) DEFAULT NULL COMMENT 'Page Template',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Page Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  PRIMARY KEY (`page_id`),
  KEY `IDX_MGEG_CMS_PAGE_IDENTIFIER` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Page Table' AUTO_INCREMENT=20 ;

--
-- Dumping data for table `mgeg_cms_page`
--

INSERT INTO `mgeg_cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(1, '404 Not Found 1', 'one_column', 'Page keywords', 'Page description', 'no-route', NULL, '<div class="page-title"><h1>Whoops, our bad...</h1></div>\r\n<dl>\r\n    <dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n    <dd>\r\n        <ul class="disc">\r\n            <li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n            <li>If you clicked on a link to get here, the link is outdated.</li>\r\n        </ul>\r\n    </dd>\r\n</dl>\r\n<dl>\r\n    <dt>What can you do?</dt>\r\n    <dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n    <dd>\r\n        <ul class="disc">\r\n            <li><a href="#" onclick="history.go(-1); return false;">Go back</a> to the previous page.</li>\r\n            <li>Use the search bar at the top of the page to search for your products.</li>\r\n            <li>Follow these links to get you back on track!<br /><a href="{{store url=""}}">Store Home</a>\r\n            <span class="separator">|</span> <a href="{{store url="customer/account"}}">My Account</a></li>\r\n        </ul>\r\n    </dd>\r\n</dl>\r\n', '2016-04-27 16:50:44', '2016-05-03 08:28:26', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Home page', 'one_column_full_width', NULL, NULL, 'home', NULL, '<div style="background-color: #fbfbfb;">\r\n	<div class="container">\r\n		<div class="inner-container">\r\n\r\n			<div>\r\n\r\n				<br/>\r\n				<br/>\r\n				<br/>\r\n				<br/>\r\n				<h2  style="text-align: center;">Menu</h2>\r\n				<br/>\r\n				<p   style="text-align: center; font-size: 16px; color: #999; line-height: 23px;">Telegraph Health Center is pleased to provide our patients the very best in Bay Area medical cannabis flowers, concentrates, and infused products. Featuring locally sourced medical cannabis as well as complete lineups of California’s premier medical cannabis brands, our menu emphasizes quality products priced with our patients in mind. If you have any questions about our menu or medicating with THC or CBD, our bud-tenders will listen and consult with you to help you find the best medical cannabis products for you.</p>\r\n\r\n			</div>\r\n			<br/>\r\n			<br/>\r\n			<br/>\r\n			<div class="grid12-4">\r\n\r\n				<div class="feature feature-icon-hover indent indent-size-xxxl">\r\n					<span class="ic ic-2x ic-info ib ib-size-xxxl"></span>\r\n					<h6 class="above-heading">Medical cannabis</h6>\r\n					<h3>Flowers</h3>\r\n					<p>Cannabis indica, sativa, hybrid, and CBD flowers</p>\r\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all products</a>\r\n				</div>\r\n\r\n			</div>\r\n			<div class="grid12-4">\r\n\r\n				<div class="feature feature-icon-hover indent indent-size-xxxl">\r\n					<span class="ic ic-2x ic-info ib ib-size-xxxl"></span>\r\n					<h6 class="above-heading">Medical cannabis</h6>\r\n					<h3>Concentrates</h3>\r\n					<p>Cannabis live resins, shatters, waxes, vape cartridges, and hash</p>\r\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all products</a>\r\n				</div>\r\n\r\n			</div>\r\n			<div class="grid12-4">\r\n\r\n				<div class="feature feature-icon-hover indent indent-size-xxxl">\r\n					<span class="ic ic-2x ic-info ib ib-size-xxxl"></span>\r\n					<h6 class="above-heading">Medical cannabis</h6>\r\n					<h3>Infused Products</h3>\r\n					<p>Cannabis infused edibles, tinctures, and topicals</p>\r\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all products</a>\r\n				</div>\r\n\r\n			</div>\r\n			<div class="clearer"></div>\r\n			<br/>\r\n			<br/>\r\n			<br/>\r\n			<br/>\r\n			<br/>\r\n\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n<div class="container">\r\n	<div class="inner-container">\r\n\r\n		<br/>\r\n		<br/>\r\n		<br/>\r\n		<br/>\r\n\r\n		<h2  style="text-align: center;">Featured Products</h2>\r\n		{{block type="ultimo/product_list_featured" template="catalog/product/list_featured_slider.phtml" category_id="3" product_count="12"  breakpoints="[0, 1], [480, 2], [640, 3], [960, 4]" img_width="274" timeout="0" pagination="1" centered="1" hide_button="1" sort_by="name" sort_direction="DESC" block_name=""}}\r\n\r\n		<br/>\r\n		<br/>\r\n		<br/>\r\n		<br/>\r\n\r\n	</div>\r\n</div>\r\n\r\n<!--\r\n\r\n<div style="background-color: #f5f5f5;">\r\n	<div class="container">\r\n		<div class="inner-container">\r\n\r\n			<br/>\r\n			<br/>\r\n			<br/>\r\n			<br/>\r\n			<h2  style="text-align: center;">More features than you could wish for</h2>\r\n			<br/>\r\n			<p   style="text-align: center; font-size: 16px; color: #999; line-height: 23px;">Ultimo is a premium Magento theme with advanced admin module. It’s extremely customizable, easy to use and fully responsive. Suitable for every type of store, optimized for SEO. Great as a starting point for your custom projects. You can change visual appearance of almost every element. No coding needed, all can be edited directly in admin panel. </p>\r\n\r\n			<br/>\r\n			<br/>\r\n			<div class="grid12-4">\r\n\r\n				<div class="feature feature-icon-hover indent indent-size-xl">\r\n					<span class="ic ic-4x ic-paint" style="color:#30a5ff;"></span>\r\n					<h3>Unlimited Colors</h3>\r\n					<p>You have never seen so many options! Change colors of dozens of elements, apply textures, upload background images...</p>\r\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\r\n				</div>\r\n\r\n			</div>\r\n			<div class="grid12-4">\r\n\r\n				<div class="feature feature-icon-hover indent indent-size-xl">\r\n					<span class="ic ic-4x ic-smartphones" style="color:#30a5ff;"></span>\r\n					<h3>Responsive Layout</h3>\r\n					<p>Ultimo can be displayed on any screen. It is based on fluid grid system. If screen is resized, layout will be automatically adjusted...</p>\r\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\r\n				</div>\r\n\r\n			</div>\r\n			<div class="grid12-4">\r\n\r\n				<div class="feature feature-icon-hover indent indent-size-xl">\r\n					<span class="ic ic-4x ic-menu" style="color:#30a5ff;"></span>\r\n					<h3>Mega Menu</h3>\r\n					<p>Two styles: wide mega menu or classic drop-down menu. You can add any custom content (images, text, HTML) to any category in the catalog...</p>\r\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\r\n				</div>\r\n\r\n			</div>\r\n\r\n			<div class="clearer"></div>\r\n			<br/>\r\n			<br/>\r\n\r\n			<div class="grid12-4">\r\n\r\n				<div class="feature feature-icon-hover indent indent-size-xl">\r\n					<span class="ic ic-4x ic-microscope" style="color:#30a5ff;"></span>\r\n					<h3>Font Icons</h3>\r\n					<p>Font icons give you more control over the visual appearance of the icons. Add anywhere you want and customize to your needs...</p>\r\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\r\n				</div>\r\n\r\n			</div>\r\n			<div class="grid12-4">\r\n\r\n				<div class="feature feature-icon-hover indent indent-size-xl">\r\n					<span class="ic ic-4x ic-lightbulb" style="color:#30a5ff;"></span>\r\n					<h3>Easy to Customize</h3>\r\n					<p>Use as a starting point for your custom projects. Create multiple child themes (theme variants) with ease...</p>\r\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\r\n				</div>\r\n\r\n			</div>\r\n			<div class="grid12-4">\r\n\r\n				<div class="feature feature-icon-hover indent indent-size-xl">\r\n					<span class="ic ic-4x ic-anchor" style="color:#30a5ff;"></span>\r\n					<h3>50+ CMS Blocks</h3>\r\n					<p>You can use content placeholders to display custom content in almost every part of the store. Import sample CMS blocks from the demo...</p>\r\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\r\n				</div>\r\n\r\n			</div>\r\n			<div class="clearer"></div>\r\n			<br/>\r\n			<br/>\r\n			<br/>\r\n			<br/>\r\n\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n-->\r\n<!--\r\n\r\n<div style="background-color: #30A5FF; background: radial-gradient(ellipse at center, rgba(48,165,255,1) 0%, rgba(48,165,255,1) 41%, rgba(25,141,230,1) 100%);">\r\n	<div class="container">\r\n		<div class="inner-container"  style="text-align: center;">\r\n\r\n			<div style="display: inline-block; padding:100px 0; color: #DEF0FF;">\r\n\r\n					<span class="ic ic-3x ic-smartphones ib ib-hover ib-size-xxxl" style="background-color: rgba(31, 92, 137, 1); margin-bottom: 20px;"></span>\r\n					<h1 style="font-size: 40px;">Responsive Magento Theme</h1>\r\n					<h2 style="font-size: 20px;">Extremely Customizable</h2>\r\n\r\n			</div>\r\n\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n-->\r\n\r\n<div style="background-color: #fafafa;">\r\n	<div class="container">\r\n		<div class="inner-container">\r\n\r\n			<br/>\r\n			<br/>\r\n			<br/>\r\n			<br/>\r\n			<h2  style="text-align: center;">Our Brands</h2>\r\n			{{block type="brands/brands" template="infortis/brands/brand_slider.phtml" breakpoints="[0, 1], [320, 2], [480, 2], [768, 3], [960, 4], [1280, 5]" timeout="6000" move="1" pagination="0"}}\r\n			<br/>\r\n			<br/>\r\n			<br/>\r\n			<br/>\r\n\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n\r\n\r\n<div style="background-color: #fff;">\r\n	<div class="container">\r\n		<div class="inner-container">\r\n\r\n			<div>\r\n\r\n				<br/>\r\n				<br/>\r\n				<br/>\r\n				<br/>\r\n				<h2  style="text-align: center;">Follow us on Instagram <a href="https://www.instagram.com/thc_oakland/">@telegraphhealth</a></h2>\r\n				<br/>\r\n				<p   style="text-align: center; font-size: 16px; color: #999; line-height: 23px;">Learn more about medical cannabis, stay up-to-date on patient events, and be the first to learn about new product releases.</p>\r\n\r\n			</div>\r\n\r\n			<br/>\r\n			<br/>\r\n			<div class="nested-container">\r\n\r\n<!-- LightWidget WIDGET --><script src="//lightwidget.com/widgets/lightwidget.js"></script><iframe src="//lightwidget.com/widgets/1b276d4ffd3b508d8c557bbe68d21fd0.html" id="lightwidget_1b276d4ffd" name="lightwidget_1b276d4ffd"  scrolling="no" allowtransparency="true" class="lightwidget-widget" style="width: 100%; border: 0; overflow: hidden;"></iframe>\r\n\r\n				\r\n\r\n			</div>\r\n			<br/>\r\n			<br/>\r\n\r\n<div align="center"><style>.ig-b- { display: inline-block; }\r\n.ig-b- img { visibility: hidden; }\r\n.ig-b-:hover { background-position: 0 -60px; } .ig-b-:active { background-position: 0 -120px; }\r\n.ig-b-v-24 { width: 137px; height: 24px; background: url(//badges.instagram.com/static/images/ig-badge-view-sprite-24.png) no-repeat 0 0; }\r\n@media only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min--moz-device-pixel-ratio: 2), only screen and (-o-min-device-pixel-ratio: 2 / 1), only screen and (min-device-pixel-ratio: 2), only screen and (min-resolution: 192dpi), only screen and (min-resolution: 2dppx) {\r\n.ig-b-v-24 { background-image: url(//badges.instagram.com/static/images/ig-badge-view-sprite-24@2x.png); background-size: 160px 178px; } }</style>\r\n<a href="https://www.instagram.com/thc_oakland/?ref=badge" class="ig-b- ig-b-v-24"><img src="//badges.instagram.com/static/images/ig-badge-view-24.png" alt="Instagram" /></a></div>\r\n			<br/>\r\n			<br/>\r\n\r\n		</div>\r\n	</div>\r\n</div>\r\n', '2016-04-27 16:50:44', '2016-05-06 01:13:43', 1, 0, '<!--<reference name="content">\r\n        <block type="catalog/product_new" name="home.catalog.product.new" alias="product_new" template="catalog/product/new.phtml" after="cms_page">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type="reports/product_viewed" name="home.reports.product.viewed" alias="product_viewed" template="reports/home_product_viewed.phtml" after="product_new">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type="reports/product_compared" name="home.reports.product.compared" template="reports/home_product_compared.phtml" after="product_viewed">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n    </reference>\r\n    <reference name="right">\r\n        <action method="unsetChild"><alias>right.reports.product.viewed</alias></action>\r\n        <action method="unsetChild"><alias>right.reports.product.compared</alias></action>\r\n    </reference>-->', NULL, NULL, NULL, NULL, NULL),
(3, 'About', 'one_column', NULL, NULL, 'about-magento-demo-store', NULL, '<div class="page-title">\r\n<h1>About Telegraph Health Center</h1>\r\n</div>\r\n<div class="col3-set">\r\n<div class="col-1">\r\n<p style="line-height: 1.2em;"><small>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.</small></p>\r\n<p style="color: #888; font: 1.2em/1.4em georgia, serif;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta.</p>\r\n</div>\r\n<div class="col-2">\r\n<p><strong style="color: #de036f;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.</strong></p>\r\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</p>\r\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi. Vestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est. Nulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat. Pellentesque eget velit. Nunc tincidunt.</p>\r\n</div>\r\n<div class="col-3">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper</p>\r\n<p><strong style="color: #de036f;">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\r\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\r\n<div class="divider">&nbsp;</div>\r\n<p>To all of you, from all of us at Magento Store - Thank you and Happy eCommerce!</p>\r\n<p style="line-height: 1.2em;"><strong style="font: italic 2em Georgia, serif;">John Doe</strong><br /> <small>Some important guy</small></p>\r\n</div>\r\n</div>', '2016-04-27 16:50:44', '2016-05-03 08:27:45', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Customer Service', 'one_column', NULL, NULL, 'customer-service', NULL, '<div class="page-title">\r\n<h1>Customer Service</h1>\r\n</div>\r\n<ul class="disc">\r\n<li><a href="#answer1">Shipping &amp; Delivery</a></li>\r\n<li><a href="#answer2">Privacy &amp; Security</a></li>\r\n<li><a href="#answer3">Returns &amp; Replacements</a></li>\r\n<li><a href="#answer4">Ordering</a></li>\r\n<li><a href="#answer5">Payment, Pricing &amp; Promotions</a></li>\r\n<li><a href="#answer6">Viewing Orders</a></li>\r\n<li><a href="#answer7">Updating Account Information</a></li>\r\n</ul>\r\n<dl>\r\n<dt id="answer1">Shipping &amp; Delivery</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\r\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\r\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\r\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\r\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\r\njusto.</dd>\r\n<dt id="answer2">Privacy &amp; Security</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\r\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\r\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\r\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\r\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\r\njusto.</dd>\r\n<dt id="answer3">Returns &amp; Replacements</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\r\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\r\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\r\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\r\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\r\njusto.</dd>\r\n<dt id="answer4">Ordering</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\r\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\r\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\r\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\r\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\r\njusto.</dd>\r\n<dt id="answer5">Payment, Pricing &amp; Promotions</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\r\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\r\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\r\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\r\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\r\njusto.</dd>\r\n<dt id="answer6">Viewing Orders</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\r\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\r\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\r\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\r\n Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\n Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\r\n justo.</dd>\r\n<dt id="answer7">Updating Account Information</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\r\n Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\r\n Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\r\n faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\r\n Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\n Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\r\n justo.</dd>\r\n</dl>', '2016-04-27 16:50:44', '2016-05-03 08:27:55', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Enable Cookies', 'one_column', NULL, NULL, 'enable-cookies', NULL, '<div class="std">\r\n    <ul class="messages">\r\n        <li class="notice-msg">\r\n            <ul>\r\n                <li>Please enable cookies in your web browser to continue.</li>\r\n            </ul>\r\n        </li>\r\n    </ul>\r\n    <div class="page-title">\r\n        <h1><a name="top"></a>What are Cookies?</h1>\r\n    </div>\r\n    <p>Cookies are short pieces of data that are sent to your computer when you visit a website.\r\n    On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically\r\n    whenever you visit our site so that we can personalize your experience and provide you with better service.\r\n    We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes.\r\n     If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase\r\n     or take advantage of certain features of our website, such as storing items in your Shopping Cart or\r\n     receiving personalized recommendations. As a result, we strongly encourage you to configure your web\r\n     browser to accept cookies from our website.</p>\r\n    <h2 class="subtitle">Enabling Cookies</h2>\r\n    <ul class="disc">\r\n        <li><a href="#ie7">Internet Explorer 7.x</a></li>\r\n        <li><a href="#ie6">Internet Explorer 6.x</a></li>\r\n        <li><a href="#firefox">Mozilla/Firefox</a></li>\r\n        <li><a href="#opera">Opera 7.x</a></li>\r\n    </ul>\r\n    <h3><a name="ie7"></a>Internet Explorer 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Start Internet Explorer</p>\r\n        </li>\r\n        <li>\r\n            <p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Privacy</strong> tab</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-2.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Advanced</strong> button</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-3.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>,\r\n            put another check mark in the <strong>Always accept session cookies </strong>box</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-4.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-5.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-6.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Restart Internet Explore</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="ie6"></a>Internet Explorer 6.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Select <strong>Internet Options</strong> from the Tools menu</p>\r\n            <p><img src="{{skin url="images/cookies/ie6-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> tab</p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>)\r\n            under <strong>Settings</strong>. Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie6-2.gif"}}" alt="" /></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="firefox"></a>Mozilla/Firefox</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/firefox.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Expand the <strong>Cookies</strong> section</p>\r\n        </li>\r\n        <li>\r\n            <p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong>.</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="opera"></a>Opera 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong> menu in Opera</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/opera.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong>\r\n            should be selected in the &quot;<strong>Normal cookies</strong>&quot; drop-down</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n</div>\r\n', '2016-04-27 16:50:44', '2016-05-03 08:28:05', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Privacy Policy', 'one_column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy Policy', '<p style="color: #ff0000; font-weight: bold; font-size: 13px">\r\n    Please replace this text with you Privacy Policy.\r\n    Please add any additional cookies your website uses below (e.g., Google Analytics)\r\n</p>\r\n<p>\r\n    This privacy policy sets out how {{config path="general/store_information/name"}} uses and protects any information\r\n    that you give {{config path="general/store_information/name"}} when you use this website.\r\n    {{config path="general/store_information/name"}} is committed to ensuring that your privacy is protected.\r\n    Should we ask you to provide certain information by which you can be identified when using this website,\r\n    then you can be assured that it will only be used in accordance with this privacy statement.\r\n    {{config path="general/store_information/name"}} may change this policy from time to time by updating this page.\r\n    You should check this page from time to time to ensure that you are happy with any changes.\r\n</p>\r\n<h2>What we collect</h2>\r\n<p>We may collect the following information:</p>\r\n<ul>\r\n    <li>name</li>\r\n    <li>contact information including email address</li>\r\n    <li>demographic information such as postcode, preferences and interests</li>\r\n    <li>other information relevant to customer surveys and/or offers</li>\r\n</ul>\r\n<p>\r\n    For the exhaustive list of cookies we collect see the <a href="#list">List of cookies we collect</a> section.\r\n</p>\r\n<h2>What we do with the information we gather</h2>\r\n<p>\r\n    We require this information to understand your needs and provide you with a better service,\r\n    and in particular for the following reasons:\r\n</p>\r\n<ul>\r\n    <li>Internal record keeping.</li>\r\n    <li>We may use the information to improve our products and services.</li>\r\n    <li>\r\n        We may periodically send promotional emails about new products, special offers or other information which we\r\n        think you may find interesting using the email address which you have provided.\r\n    </li>\r\n    <li>\r\n        From time to time, we may also use your information to contact you for market research purposes.\r\n        We may contact you by email, phone, fax or mail. We may use the information to customise the website\r\n        according to your interests.\r\n    </li>\r\n</ul>\r\n<h2>Security</h2>\r\n<p>\r\n    We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure,\r\n    we have put in place suitable physical, electronic and managerial procedures to safeguard and secure\r\n    the information we collect online.\r\n</p>\r\n<h2>How we use cookies</h2>\r\n<p>\r\n    A cookie is a small file which asks permission to be placed on your computer''s hard drive.\r\n    Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\r\n    a particular site. Cookies allow web applications to respond to you as an individual. The web application\r\n    can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\r\n    your preferences.\r\n</p>\r\n<p>\r\n    We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page traffic\r\n    and improve our website in order to tailor it to customer needs. We only use this information for statistical\r\n    analysis purposes and then the data is removed from the system.\r\n</p>\r\n<p>\r\n    Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful\r\n    and which you do not. A cookie in no way gives us access to your computer or any information about you,\r\n    other than the data you choose to share with us. You can choose to accept or decline cookies.\r\n    Most web browsers automatically accept cookies, but you can usually modify your browser setting\r\n    to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\r\n</p>\r\n<h2>Links to other websites</h2>\r\n<p>\r\n    Our website may contain links to other websites of interest. However, once you have used these links\r\n    to leave our site, you should note that we do not have any control over that other website.\r\n    Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\r\n    visiting such sites and such sites are not governed by this privacy statement.\r\n    You should exercise caution and look at the privacy statement applicable to the website in question.\r\n</p>\r\n<h2>Controlling your personal information</h2>\r\n<p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\r\n<ul>\r\n    <li>\r\n        whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\r\n        that you do not want the information to be used by anybody for direct marketing purposes\r\n    </li>\r\n    <li>\r\n        if you have previously agreed to us using your personal information for direct marketing purposes,\r\n        you may change your mind at any time by writing to or emailing us at\r\n        {{config path="trans_email/ident_general/email"}}\r\n    </li>\r\n</ul>\r\n<p>\r\n    We will not sell, distribute or lease your personal information to third parties unless we have your permission\r\n    or are required by law to do so. We may use your personal information to send you promotional information\r\n    about third parties which we think you may find interesting if you tell us that you wish this to happen.\r\n</p>\r\n<p>\r\n    You may request details of personal information which we hold about you under the Data Protection Act 1998.\r\n    A small fee will be payable. If you would like a copy of the information held on you please write to\r\n    {{config path="general/store_information/address"}}.\r\n</p>\r\n<p>\r\n    If you believe that any information we are holding on you is incorrect or incomplete,\r\n    please write to or email us as soon as possible, at the above address.\r\n    We will promptly correct any information found to be incorrect.\r\n</p>\r\n<h2><a name="list"></a>List of cookies we collect</h2>\r\n<p>The table below lists the cookies we collect and what information they store.</p>\r\n<table class="data-table">\r\n    <thead>\r\n        <tr>\r\n            <th>COOKIE name</th>\r\n            <th>COOKIE Description</th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n        <tr>\r\n            <th>CART</th>\r\n            <td>The association with your shopping cart.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>CATEGORY_INFO</th>\r\n            <td>Stores the category info on the page, that allows to display pages more quickly.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>COMPARE</th>\r\n            <td>The items that you have in the Compare Products list.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>CURRENCY</th>\r\n            <td>Your preferred currency</td>\r\n        </tr>\r\n        <tr>\r\n            <th>CUSTOMER</th>\r\n            <td>An encrypted version of your customer id with the store.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>CUSTOMER_AUTH</th>\r\n            <td>An indicator if you are currently logged into the store.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>CUSTOMER_INFO</th>\r\n            <td>An encrypted version of the customer group you belong to.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>CUSTOMER_SEGMENT_IDS</th>\r\n            <td>Stores the Customer Segment ID</td>\r\n        </tr>\r\n        <tr>\r\n            <th>EXTERNAL_NO_CACHE</th>\r\n            <td>A flag, which indicates whether caching is disabled or not.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>FRONTEND</th>\r\n            <td>You sesssion ID on the server.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>GUEST-VIEW</th>\r\n            <td>Allows guests to edit their orders.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>LAST_CATEGORY</th>\r\n            <td>The last category you visited.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>LAST_PRODUCT</th>\r\n            <td>The most recent product you have viewed.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>NEWMESSAGE</th>\r\n            <td>Indicates whether a new message has been received.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>NO_CACHE</th>\r\n            <td>Indicates whether it is allowed to use cache.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>PERSISTENT_SHOPPING_CART</th>\r\n            <td>A link to information about your cart and viewing history if you have asked the site.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>POLL</th>\r\n            <td>The ID of any polls you have recently voted in.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>POLLN</th>\r\n            <td>Information on what polls you have voted on.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>RECENTLYCOMPARED</th>\r\n            <td>The items that you have recently compared.            </td>\r\n        </tr>\r\n        <tr>\r\n            <th>STF</th>\r\n            <td>Information on products you have emailed to friends.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>STORE</th>\r\n            <td>The store view or language you have selected.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>USER_ALLOWED_SAVE_COOKIE</th>\r\n            <td>Indicates whether a customer allowed to use cookies.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>VIEWED_PRODUCT_IDS</th>\r\n            <td>The products that you have recently viewed.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>WISHLIST</th>\r\n            <td>An encrypted list of products added to your Wishlist.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>WISHLIST_CNT</th>\r\n            <td>The number of items in your Wishlist.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', '2016-04-27 16:50:44', '2016-05-03 08:28:36', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'ULTIMO Home Page', NULL, NULL, NULL, 'ultimo-home-page', NULL, '<br/>\n<br/>\n<br/>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover indent indent-size-xl">\n		<span class="ic ic-2x ic-paint ib ib-size-xl"></span>\n		<h6 class="above-heading">Customizable design</h6>\n		<h3>Unlimited Colors</h3>\n		<p>You have never seen so many options! Change colors of dozens of elements, apply textures, upload background images...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover indent indent-size-xl">\n		<span class="ic ic-2x ic-smartphones ib ib-size-xl"></span>\n		<h6 class="above-heading">12-column grid</h6>\n		<h3>Responsive Layout</h3>\n		<p>Ultimo can be displayed on any screen. It is based on fluid grid system. If screen is resized, layout will be automatically adjusted...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover indent indent-size-xl">\n		<span class="ic ic-2x ic-menu ib ib-size-xl"></span>\n		<h6 class="above-heading">Customizable drop-down menu</h6>\n		<h3>Mega Menu</h3>\n		<p>Two styles: wide mega menu or classic drop-down menu. You can add any custom content (images, text, HTML) to any category in the catalog...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="clearer"></div>\n<br/>\n<br/>\n<br/>\n\n\n\n\n{{block type="ultimo/product_list_featured" template="catalog/product/list_featured_slider.phtml" category_id="15" product_count="12" breakpoints="[0, 1], [320, 2], [480, 3], [768, 4], [960, 5], [1280, 6]" pagination="1" centered="1" hide_button="1" block_name="Our Featured Products"}}\n<br/>\n<br/>\n\n\n<div class="grid12-6 no-left-gutter">\n{{block type="ultimo/product_list_featured" template="catalog/product/list_featured_slider.phtml" category_id="23" product_count="8" breakpoints="[0, 1], [320, 2], [480, 3], [768, 2], [960, 2], [1280, 3]"  timeout="4000" centered="1" size="size-s" hide_button="0" block_name="Recommended Shoes"}}\n</div>\n<div class="grid12-6 no-right-gutter">\n{{block type="ultimo/product_list_featured" template="catalog/product/list_featured_slider.phtml" category_id="37" product_count="8" breakpoints="[0, 1], [320, 2], [480, 3], [768, 2], [960, 2], [1280, 3]" timeout="4000" centered="1" size="size-s" hide_button="0" block_name="Recommended Bags"}}\n</div>\n\n<div class="clearer"></div>\n<br/>\n<br/>\n<br/>\n\n\n\n\n\n	<div class="grid-container page-banners">\n		<div class="grid12-4 no-left-gutter banner">\n\n			<img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/2a.png"}}" alt="Sample banner" />\n			<br/><br/>\n\n		</div>\n		<div class="grid12-4">\n\n			<div class="feature feature-icon-hover indent first">\n				<span class="ic ic-char ib" style="background-color: #ddd;">1</span>\n				<h4>Responsive Layout</h4>\n				<p>Ultimo can be displayed on any screen. <span class="hide-below-1280">It is based on fluid grid system lorem ipsum dolor sit.</span> <span class="hide-below-960">If screen is resized, layout will be automat...</span></p>\n			</div>\n			<div class="feature feature-icon-hover indent">\n				<span class="ic ic-char ib" style="background-color: #ddd;">2</span>\n				<h4>Responsive Layout</h4>\n				<p>Ultimo can be displayed on any screen. <span class="hide-below-1280">It is based on fluid grid system lorem ipsum dolor sit.</span> <span class="hide-below-960">If screen is resized, layout will be automat...</span></p>\n			</div>\n			<div class="feature feature-icon-hover indent last">\n				<span class="ic ic-char ib" style="background-color: #ddd;">3</span>\n				<h4>Responsive Layout</h4>\n				<p>Ultimo can be displayed on any screen. <span class="hide-below-1280">It is based on fluid grid system lorem ipsum dolor sit.</span> <span class="hide-below-960">If screen is resized, layout will be automat...</span></p>\n			</div>\n\n		</div>\n		<div class="grid12-4 no-right-gutter hide-below-768">\n\n			<div class="page-banners grid-container-spaced">\n				<div class="grid12-12 no-gutter banner fade-on-hover">\n					<a href="#">\n						<img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/3a.jpg"}}" alt="Sample banner" />\n					</a>\n				</div>\n				<div class="grid12-6 no-left-gutter banner fade-on-hover">\n					<a href="#">\n						<img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/3b.jpg"}}" alt="Sample banner" />\n					</a>\n				</div>\n				<div class="grid12-6 no-right-gutter banner fade-on-hover">\n					<a href="#">\n						<img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/3c.jpg"}}" alt="Sample banner" />\n					</a>\n				</div>\n			</div>\n\n		</div>\n	</div>\n\n<br/>\n<br/>\n\n\n\n\n\n{{block type="catalog/product_new" template="catalog/product/new.phtml" products_count="10" breakpoints="[0, 1], [320, 2], [480, 3], [768, 4], [960, 5], [1280, 6]" move="1" pagination="1" centered="1" hide_button="1" block_name="New in Store"}}\n<br/>\n<br/>\n\n\n\n\n<span class="section-title">Sample Custom Banners</span>\n<br />\n<div class="nested-container">\n\n	<!-- First banner has a link which adds a product to the cart (link was copied from product''s button "Add to cart") -->\n	<div class="page-banners grid-container">\n		<div class="grid12-3 banner fade-on-hover hide-below-768">\n			<a href="{{store direct_url=''checkout/cart/add/uenc/aHR0cDovL2xvY2FsaG9zdC5jb20vbTE3MDItMDF1bHRpbW8vZGVmYXVsdC8,/product/30/''}}" title="Click to add sample product to your cart">\n				<img class="fade-on-hover" src="{{media url="wysiwyg/infortis/ultimo/custom/banners/1a.png"}}" alt="Add product to cart" />\n			</a>\n		</div>\n		<div class="grid12-3 banner fade-on-hover hide-below-768">\n			<a href="{{store direct_url=''checkout/cart/''}}" title="Click to go to cart page">\n				<img class="fade-on-hover" src="{{media url="wysiwyg/infortis/ultimo/custom/banners/1b.png"}}" alt="Go to Magento cart page" />\n			</a>\n		</div>\n		<div class="grid12-6 banner">\n				<img class="fade-on-hover" src="{{media url="wysiwyg/infortis/ultimo/custom/banners/1c.png"}}" alt="Magento discount code" title="Use discount code/coupon on cart page" />\n		</div>\n	</div>\n\n</div>\n<br/>\n<br/>\n<br/>\n\n\n\n\n{{block type="brands/brands" template="infortis/brands/brand_slider.phtml" breakpoints="[0, 1], [320, 2], [480, 2], [768, 3], [960, 4], [1280, 5]" timeout="6000" move="1" pagination="1" block_name="Our Brands"}}\n<br/>\n<br/>', '2016-04-27 19:04:05', '2016-04-27 19:04:05', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'ULTIMO Ultimo - Responsive Magento Theme | Download', NULL, NULL, NULL, 'ultimo-responsive-magento-theme', NULL, 'Add custom content in: CMS > Pages', '2016-04-27 19:04:05', '2016-04-27 19:04:05', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mgeg_cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(9, 'ULTIMO Home Page 3', NULL, NULL, NULL, 'ultimo-home-page3', NULL, '<span class="section-line"></span>\n<br/>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover indent indent-size-xl">\n		<span class="ic ic-2x ic-paint ib ib-size-xl"></span>\n		<h6 class="above-heading">Customizable design</h6>\n		<h3>Unlimited Colors</h3>\n		<p>You have never seen so many options! Change colors of dozens of elements, apply textures, upload background images...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover indent indent-size-xl">\n		<span class="ic ic-2x ic-smartphones ib ib-size-xl"></span>\n		<h6 class="above-heading">12-column grid</h6>\n		<h3>Responsive Layout</h3>\n		<p>Ultimo can be displayed on any screen. It is based on fluid grid system. If screen is resized, layout will be automatically adjusted...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover  indent indent-size-xl">\n		<span class="ic ic-2x ic-star ib ib-size-xl"></span>\n		<h6 class="above-heading">Content placeholders</h6>\n		<h3>50+ CMS blocks</h3>\n		<p>You can use content placeholders to display custom content in almost every part of the store. Import sample CMS blocks from the demo...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="clearer"></div>\n\n\n\n\n\n<br/>\n<br/>\n{{block type="ultimo/product_list_featured" template="catalog/product/list_featured_slider.phtml" category_id="6" product_count="12" breakpoints="[0, 1], [320, 2], [480, 3], [768, 4], [960, 5], [1280, 6]" centered="0" hide_button="1" block_name="Our Featured Products"}}\n\n{{block type="catalog/product_new" template="catalog/product/new.phtml" products_count="15" breakpoints="[0, 1], [320, 2], [480, 3], [768, 4], [960, 5], [1280, 6]" move="1" pagination="1" centered="0" hide_button="1" block_name="New in Store"}}\n\n\n\n<span class="section-title">Sample Custom Banners</span>\n<br />\n\n	<!-- First banner has a link which adds a product to the cart (link was copied from product''s button "Add to cart") -->\n	<div class="page-banners grid-container">\n		<div class="grid12-3 banner fade-on-hover hide-below-768">\n			<a href="{{store direct_url=''checkout/cart/add/uenc/aHR0cDovL2xvY2FsaG9zdC5jb20vbTE3MDItMDF1bHRpbW8vZGVmYXVsdC8,/product/30/''}}" title="Click to add sample product to your cart">\n				<img class="fade-on-hover" src="{{media url="wysiwyg/infortis/ultimo/custom/banners/1a.png"}}" alt="Add product to cart" />\n			</a>\n		</div>\n		<div class="grid12-3 banner fade-on-hover hide-below-768">\n			<a href="{{store direct_url=''checkout/cart/''}}" title="Click to go to cart page">\n				<img class="fade-on-hover" src="{{media url="wysiwyg/infortis/ultimo/custom/banners/1b.png"}}" alt="Go to Magento cart page" />\n			</a>\n		</div>\n		<div class="grid12-6 banner">\n				<img class="fade-on-hover" src="{{media url="wysiwyg/infortis/ultimo/custom/banners/1c.png"}}" alt="Magento discount code" title="Use discount code/coupon on cart page" />\n		</div>\n	</div>\n\n\n\n\n\n<br/>\n<div class="grid12-3">\n\n	<div class="feature feature-icon-hover">\n		<span class="left ic ic-lg ic-anchor ib"></span>\n		<h6 class="above-heading">Secondary Heading</h6>\n		<h3>Sample Heading</h3>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit rory solare de equis.</p>\n		<a href="#" class="go">Read more</a>\n	</div>\n\n</div>\n<div class="grid12-3">\n\n	<div class="feature feature-icon-hover">\n		<span class="left ic ic-lg ic-gift ib"></span>\n		<h6 class="above-heading">Secondary Heading</h6>\n		<h3>Feature Title</h3>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque quis.</p>\n		<a href="#" class="go">Read more</a>\n	</div>\n\n</div>\n<div class="grid12-3 hide-below-768">\n\n	<div class="feature feature-icon-hover">\n		<span class="left ic ic-lg ic-edit2 ib"></span>\n		<h6 class="above-heading">Secondary Heading</h6>\n		<h3>Sample Title</h3>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque quis.</p>\n		<a href="#" class="go">Read more</a>\n	</div>\n\n</div>\n<div class="grid12-3 hide-below-768">\n\n	<div class="feature feature-icon-hover">\n		<span class="left ic ic-lg ic-alarm ib"></span>\n		<h6 class="above-heading">Secondary Heading</h6>\n		<h3>Feature Title</h3>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque quis.</p>\n		<a href="http://themeforest.net/item/fortis-flexible-magento-theme/1744309?ref=infortis" class="go">Read more</a>\n	</div>\n\n</div>\n<div class="clearer"></div>\n\n\n\n\n\n<br/>\n<br/>\n{{block type="brands/brands" template="infortis/brands/brand_slider.phtml" breakpoints="[0, 1], [320, 2], [480, 2], [768, 3], [960, 4], [1280, 5]" move="1" pagination="1" block_name="Product Brands"}}\n ', '2016-04-27 19:04:05', '2016-04-27 19:04:05', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ULTIMO Typography | Ultimo - Responsive Magento Theme', NULL, NULL, NULL, 'typography', NULL, '<div class="grid12-6">\n\n<span class="section-title">Sample of basic typography</span>\n<br/>\n\n<h1>H1 Heading</h1>\n<p>Lid est laborum et dolorum fuga. Et harum quidem rerum facilis est et expeditasi distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihilse impedit quo minus id quod amets untra dolor amet sad. Sed ut perspser iciatis unde omnis iste natus error sit voluptatem accusantium doloremque laste. Dolores sadips ipsums sits.</p>\n<div style="margin-top: 40px;"></div>\n<h2>H2 Heading</h2>\n<p>Lid est laborum et dolorum fuga. Et harum quidem rerum facilis est et expeditasi distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihilse impedit quo minus id quod amets untra dolor amet sad. Sed ut perspser iciatis unde omnis iste natus error sit voluptatem accusantium doloremque laste. Dolores sadips ipsums sits.</p>\n<div style="margin-top: 40px;"></div>\n<h3>H3 Heading</h3>\n<p>Lid est laborum et dolorum fuga. Et harum quidem rerum facilis est et expeditasi distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihilse impedit quo minus id quod amets untra dolor amet sad. Sed ut perspser iciatis unde omnis iste natus error sit voluptatem accusantium doloremque laste. Dolores sadips ipsums sits.</p>\n<div style="margin-top: 40px;"></div>\n<h4>H4 Heading</h4>\n<p>Lid est laborum et dolorum fuga. Et harum quidem rerum facilis est et expeditasi distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihilse impedit quo minus id quod amets untra dolor amet sad. Sed ut perspser iciatis unde omnis iste natus error sit voluptatem accusantium doloremque laste. Dolores sadips ipsums sits.</p>\n<div style="margin-top: 40px;"></div>\n<h5>H5 Heading</h5>\n<p>Lid est laborum et dolorum fuga. Et harum quidem rerum facilis est et expeditasi distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihilse impedit quo minus id quod amets untra dolor amet sad. Sed ut perspser iciatis unde omnis iste natus error sit voluptatem accusantium doloremque laste. Dolores sadips ipsums sits.</p>\n<div style="margin-top: 40px;"></div>\n<h6>H6 Heading</h6>\n<p>Lid est laborum et dolorum fuga. Et harum quidem rerum facilis est et expeditasi distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihilse impedit quo minus id quod amets untra dolor amet sad. Sed ut perspser iciatis unde omnis iste natus error sit voluptatem accusantium doloremque laste. Dolores sadips ipsums sits.</p>\n\n</div>\n<div class="grid12-6">\n\n	<span class="section-title">Paragraphs with icons</span>\n	<br/>\n\n	<div class="feature feature-icon-hover indent indent-size-l">\n		<span class="ic ic-lg ic-anchor ib ib-size-l"></span>\n		<h6 class="above-heading">The Secondary Heading</h6>\n		<h3>Sample Heading</h3>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque solare de equis. Nullam ornare enim nec justo biben lobortis. In eget metus. Lorem ipsum dolor sit consectetur...</p>\n		<a href="#" class="go">Read more</a>\n	</div>\n	<br/>\n	<div class="feature feature-icon-hover indent indent-size-l">\n		<span class="ic ic-lg ic-star ib ib-size-l"></span>\n		<h6 class="above-heading">The Secondary Heading</h6>\n		<h3>Feature Title</h3>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque quis. Nullam ornare enim nec justo bibendum lobortis. In eget metus. Lorem ipsum dolor sit consectetur, adipiscing elit</p>\n		<a href="#" class="go">Read more</a>\n	</div>\n	<br/>\n	<div class="feature feature-icon-hover indent indent-size-l">\n		<span class="ic ic-lg ic-lastminute ib ib-size-l"></span>\n		<h6 class="above-heading">The Secondary Heading</h6>\n		<h3>Sample Title</h3>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque quis. Nullam ornare enim nec justo bibendum lobortis. In eget metus. Lorem ipsum dolor sit consectetur, adipiscing elit</p>\n		<a href="#" class="go">Read more</a>\n	</div>\n	<br/>\n	<div class="feature feature-icon-hover indent indent-size-l">\n		<span class="ic ic-lg ic-heart-o ib ib-size-l"></span>\n		<h6 class="above-heading">The Secondary Heading</h6>\n		<h3>Feature Title</h3>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque quis. Nullam ornare enim nec justo bibendum lobortis. In eget metus. Lorem ipsum dolor sit consectetur, adipiscing elit</p>\n		<a href="#" class="go">Read more</a>\n	</div>\n\n</div>\n<div class="clearer"></div>\n\n\n\n<br/>\n<br/>\n<span class="section-title">Ordered  and unordered lists</span>\n<br/>\n\n<div class="grid12-3">\n\n	<ul class="bullet">\n		<li><a href="#">Sample Link</a></li>\n		<li><a href="#">Lectus vitae ligula tempus</a></li>\n		<li><a href="#">Vitae lorem ipsum dolor sit amet</a></li>\n		<li><a href="#">Sample lectus vitae ligula tempus</a></li>\n		<li><a href="#">Meat Our Best Partners</a></li>\n		<li><a href="#">Our Other Projects</a></li>\n		<li><a href="#">One Click To Join Us</a></li>\n		<li><a href="#">Follow Us On Twitter</a></li>\n		<li><a href="http://infortis-themes.com/">Magento Themes</a></li>\n	</ul>\n\n</div>\n<div class="grid12-3">\n\n	<ul class="disc">\n		<li><a href="#">Sample Link</a></li>\n		<li><a href="#">Lectus vitae ligula tempus</a></li>\n		<li><a href="#">Vitae lorem ipsum dolor sit amet</a></li>\n		<li><a href="#">Sample lectus vitae ligula tempus</a></li>\n		<li><a href="#">Meat Our Best Partners</a></li>\n		<li><a href="#">Our Other Projects</a></li>\n		<li><a href="#">One Click To Join Us</a></li>\n		<li><a href="#">Follow Us On Twitter</a></li>\n		<li><a href="http://infortis-themes.com/">Magento Themes</a></li>\n	</ul>\n\n</div>\n<div class="grid12-3">\n\n	<ul class="ic-ul">\n		<li><span class="ic ic-star ic-li"></span>Some text example</li>\n		<li><span class="ic ic-tag ic-li"></span>Lectus vitae ligula tempus</li>\n		<li><span class="ic ic-arrow-right ic-li"></span>Vitae lorem ipsum dolor sit amet</li>\n		<li><span class="ic ic-letter ic-li"></span>Sample lectus vitae ligula tempus</li>\n		<li><span class="ic ic-star ic-li"></span>Some text example</li>\n		<li><span class="ic ic-tag ic-li"></span>Lectus vitae ligula tempus</li>\n		<li><span class="ic ic-arrow-right ic-li"></span>Vitae lorem ipsum dolor sit amet</li>\n		<li><span class="ic ic-letter ic-li"></span>Sample lectus vitae ligula tempus</li>\n		<li><span class="ic ic-bell ic-li"></span>Our Other Projects</li>\n	</ul>\n\n</div>\n<div class="grid12-3">\n\n		<div class="feature indent first">\n			<span class="ic ic-char ib">A</span>\n			<p class="no-margin">Unlimited colors, dozens of customizable elements</p>\n		</div>\n		<div class="feature indent">\n			<span class="ic ic-char ib">B</span>\n			<p class="no-margin ">Customizable responsive layout based on fluid grid</p>\n		</div>\n		<div class="feature indent">\n			<span class="ic ic-char ib">C</span>\n			<p class="no-margin ">50+ placeholders to display custom content</p>\n		</div>\n		<div class="feature indent">\n			<span class="ic ic-char ib">D</span>\n			<p class="no-margin ">Create your custom sub-themes (variants)</p>\n		</div>\n\n</div>\n<div class="clearer"></div>\n\n\n\n<br/>\n<br/>\n<span class="section-title">System messages</span>\n<br/>\n\n<ul class="messages">\n\n	<li class="success-msg">\n		<ul><li><span>These are sample system messages displayed by Magento.</span></li></ul>\n	</li>\n	<li class="error-msg">\n		<ul><li><span>The maximum quantity allowed for purchase is 10.</span></li></ul>\n	</li>\n	<li class="notice-msg">\n		<ul><li><span>Please specify the product''s option(s).</span></li></ul>\n	</li>\n	\n</ul>\n\n\n\n<br/>\n<br/>\n<span class="section-title">Paragraphs with icons</span>\n<br/>\n\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover">\n		<span class="left ic ic-3x ic-lightbulb ib ib-size-xxxl"></span>\n		<h6 class="above-heading">The Secondary Heading</h6>\n		<h3>Block Heading Example</h3>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque solare de equis. Nullam ornare enim nec justo biben lobortis. In eget metus. Lorem ipsum dolor sit consectetur...</p>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque solare de equis. Nullam ornare enim nec justo biben lobortis. In eget metus. Lorem ipsum dolor sit consectetur...</p>\n	</div>\n\n</div>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover">\n		<span class="left ic ic-3x ic-microscope ib ib-size-xxxl"></span>\n		<h6 class="above-heading">The Secondary Heading</h6>\n		<h3>Block Heading Example</h3>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque solare de equis. Nullam ornare enim nec justo biben lobortis. In eget metus. Lorem ipsum dolor sit consectetur...</p>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque solare de equis. Nullam ornare enim nec justo biben lobortis. In eget metus. Lorem ipsum dolor sit consectetur...</p>\n	</div>\n\n</div>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover">\n		<span class="left ic ic-3x ic-globe ib ib-size-xxxl"></span>\n		<h6 class="above-heading">The Secondary Heading</h6>\n		<h3>Block Heading Example</h3>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque solare de equis. Nullam ornare enim nec justo biben lobortis. In eget metus. Lorem ipsum dolor sit consectetur...</p>\n		<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Etiam neque velit, blandit sed scelerisque solare de equis. Nullam ornare enim nec justo biben lobortis. In eget metus. Lorem ipsum dolor sit consectetur...</p>\n	</div>\n\n</div>\n<div class="clearer"></div>\n\n\n\n<br />\n<br />\n<h3 class="section-title" id="banners">Sample Custom Banners</h3>\n<br />\n\n<p>Here you can see some examples of banners.<br />\nBanners can be placed on any CMS page, and in any CMS block. Each banner is a simple image inside a link.</p>\n<br />\n\n<div class="nested-container hide-below-1280">\n\n    <div class="page-banners grid-container">\n        <div class="grid12-6 banner">\n            <a href="{{store direct_url="#"}}" title="Replace this image with your own" class="fade-on-hover" >\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/01.png"}}" alt="Sample banner" />\n            </a>\n        </div>\n        <div class="grid12-6 banner">\n            <a href="{{store direct_url="#"}}" title="Replace this image with your own">\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/01.png"}}" alt="Sample banner" />\n            </a>\n        </div>\n    </div>\n\n</div>\n\n\n<div class="nested-container hide-below-960">\n\n    <div class="page-banners grid-container">\n        <div class="grid12-4 banner">\n            <a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/01.png"}}" alt="Sample banner" />\n            </a>\n        </div>\n        <div class="grid12-4 banner">\n            <a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/01.png"}}" alt="Sample banner" />\n            </a>\n        </div>\n        <div class="grid12-4 banner">\n            <a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/01.png"}}" alt="Sample banner" />\n            </a>\n        </div>\n    </div>\n\n</div>\n\n\n<div class="nested-container hide-below-768">\n\n    <div class="page-banners grid-container">\n        <div class="grid12-3 banner">\n            <a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/11.png"}}" alt="Sample banner" />\n            </a>\n        </div>\n        <div class="grid12-3 banner">\n            <a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/11.png"}}" alt="Sample banner" />\n            </a>\n        </div>\n        <div class="grid12-6 banner">\n            <a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/03.png"}}" alt="Sample banner" />\n            </a>\n        </div>\n    </div>\n\n</div>\n\n\n<div class="nested-container">\n\n    <div class="page-banners grid-container">\n        <div class="grid12-3 banner hide-below-768">\n            <a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/01.png"}}" alt="Sample banner" />\n            </a>\n        </div>\n        <div class="grid12-3 banner hide-below-480">\n            <a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/01.png"}}" alt="Sample banner" />\n            </a>\n       	</div>\n        <div class="grid12-3 banner">\n            <a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/01.png"}}" alt="Sample banner" />\n            </a>\n        </div>\n        <div class="grid12-3 banner">\n            <a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n                <img src="{{media url="wysiwyg/infortis/ultimo/custom/banners/01.png"}}" alt="Sample banner" />\n            </a>\n        </div>\n    </div>\n\n</div>', '2016-04-27 19:04:05', '2016-04-27 19:04:05', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'ULTIMO Home Page 7', NULL, NULL, NULL, 'ultimo-home-page7', NULL, '<span class="section-title">Featured Products</span>\n<br />\n{{block type=''catalog/product_list'' category_id=''6'' grid_column_count=''3'' hide_toolbar=''1'' template=''catalog/product/list.phtml''}}\n<br/>\n<br/>', '2016-04-27 19:04:05', '2016-04-27 19:04:05', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'ULTIMO Home Page 4', NULL, NULL, NULL, 'ultimo-home-page4', NULL, '<div class="nested-container" style="margin-top: 2%;">\n\n	<!-- First banner has a link which adds a product to the cart (link was copied from product''s button "Add to cart") -->\n	<div class="page-banners grid-container">\n		<div class="grid12-3 banner fade-on-hover hide-below-768">\n			<a href="{{store direct_url=''checkout/cart/add/uenc/aHR0cDovL2xvY2FsaG9zdC5jb20vbTE3MDItMDF1bHRpbW8vZGVmYXVsdC8,/product/30/''}}" title="Click to add sample product to your cart">\n				<img class="fade-on-hover" src="{{media url="wysiwyg/infortis/ultimo/custom/banners/1a.png"}}" alt="Add product to cart" />\n			</a>\n		</div>\n		<div class="grid12-3 banner fade-on-hover hide-below-768">\n			<a href="{{store direct_url=''checkout/cart/''}}" title="Click to go to cart page">\n				<img class="fade-on-hover" src="{{media url="wysiwyg/infortis/ultimo/custom/banners/1b.png"}}" alt="Go to Magento cart page" />\n			</a>\n		</div>\n		<div class="grid12-6 banner">\n				<img class="fade-on-hover" src="{{media url="wysiwyg/infortis/ultimo/custom/banners/1c.png"}}" alt="Magento discount code" title="Use discount code/coupon on cart page" />\n		</div>\n	</div>\n\n</div>\n<span class="clearer"></span>\n\n\n\n\n\n<br/>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover centered">\n		<span class="ic ic-3x ic-paint ib ib-size-xxxl"></span>\n		<h6 class="above-heading">Customizable design</h6>\n		<h3>Unlimited Colors</h3>\n		<p>You have never seen so many options! Change colors of dozens of elements, apply textures, upload background images...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover centered">\n		<span class="ic ic-3x ic-smartphones ib ib-size-xxxl"></span>\n		<h6 class="above-heading">12-column grid</h6>\n		<h3>Responsive Layout</h3>\n		<p>Ultimo can be displayed on any screen. It is based on fluid grid system. If screen is resized, layout will be automatically adjusted...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover centered">\n		<span class="ic ic-3x ic-menu ib ib-size-xxxl"></span>\n		<h6 class="above-heading">Customizable drop-down menu</h6>\n		<h3>Mega Menu</h3>\n		<p>Two styles: wide mega menu or classic drop-down menu. You can add any custom content (images, text, HTML) to any category in the catalog...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="clearer"></div>\n<br/>\n<br/>\n<br/>\n\n\n\n\n\n{{block type="catalog/product_new" template="catalog/product/new.phtml" products_count="10" breakpoints="[0, 1], [320, 2], [480, 3], [768, 4], [960, 5]" size="size-s" move="1" pagination="1" centered="1" hide_button="1" block_name="New in Store"}}\n<br/>\n\n{{block type="brands/brands" template="infortis/brands/brand_slider.phtml" pagination="1" block_name="Product Brands"}}\n<br/>\n\n{{block type="ultimo/product_list_featured" template="catalog/product/list_featured_slider.phtml" category_id="58" product_count="12" breakpoints="[0, 1], [320, 2], [480, 3], [768, 4], [960, 5]" size="size-s" pagination="1" centered="1" hide_button="1" block_name="Our Featured Products"}}\n<br/>\n', '2016-04-27 19:04:05', '2016-04-27 19:04:05', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ULTIMO Home Page 5', NULL, NULL, NULL, 'ultimo-home-page5', NULL, '<br/>\n<br/>\n<br/>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover centered">\n		<span class="ic ic-3x ic-paint ib ib-size-xxxl"></span>\n		<h3>Unlimited Colors</h3>\n		<p>You have never seen so many options! Change colors of dozens of elements, apply textures, upload background images...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover centered">\n		<span class="ic ic-3x ic-smartphones ib ib-size-xxxl"></span>\n		<h3>Responsive Layout</h3>\n		<p>Ultimo can be displayed on any screen. It is based on fluid grid system. If screen is resized, layout will be automatically adjusted...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover centered">\n		<span class="ic ic-3x ic-menu ib ib-size-xxxl"></span>\n		<h3>Mega Menu</h3>\n		<p>Two styles: wide mega menu or classic drop-down menu. You can add any custom content (images, text, HTML) to any category in the catalog...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="clearer"></div>\n<br/>\n<br/>\n<br/>\n\n\n\n\n<span class="section-title">Featured Products</span>\n<br />\n{{block type=''catalog/product_list'' category_id=''6'' grid_column_count=''4'' hide_toolbar=''1'' template=''catalog/product/list.phtml''}}\n<br/>\n<br/>\n\n\n\n\n\n{{block type="brands/brands" template="infortis/brands/brand_slider.phtml" timeout="5000" move="1" pagination="1" block_name="Product Brands"}}\n<br/>\n<br/>\n\n\n\n\n<span class="section-title">Sample Custom Banners</span>\n<br />\n<div class="nested-container">\n\n	<!-- First banner has a link which adds a product to the cart (link was copied from product''s button "Add to cart") -->\n	<div class="page-banners grid-container">\n		<div class="grid12-3 banner fade-on-hover hide-below-768">\n			<a href="{{store direct_url=''checkout/cart/add/uenc/aHR0cDovL2xvY2FsaG9zdC5jb20vbTE3MDItMDF1bHRpbW8vZGVmYXVsdC8,/product/30/''}}" title="Click to add sample product to your cart">\n				<img class="fade-on-hover" src="{{media url="wysiwyg/infortis/ultimo/custom/banners/1a.png"}}" alt="Add product to cart" />\n			</a>\n		</div>\n		<div class="grid12-3 banner fade-on-hover hide-below-768">\n			<a href="{{store direct_url=''checkout/cart/''}}" title="Click to go to cart page">\n				<img class="fade-on-hover" src="{{media url="wysiwyg/infortis/ultimo/custom/banners/1b.png"}}" alt="Go to Magento cart page" />\n			</a>\n		</div>\n		<div class="grid12-6 banner">\n				<img class="fade-on-hover" src="{{media url="wysiwyg/infortis/ultimo/custom/banners/1c.png"}}" alt="Magento discount code" title="Use discount code/coupon on cart page" />\n		</div>\n	</div>\n\n</div>\n<br/>\n<br/>\n<br/>\n', '2016-04-27 19:04:05', '2016-04-27 19:04:05', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'ULTIMO Home Page 6', NULL, NULL, NULL, 'ultimo-home-page6', NULL, '<br/>\n<br/>\n<br/>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover indent indent-size-xxxl">\n		<span class="ic ic-3x ic-paint ib ib-size-xxxl ib-square"></span>\n		<h6 class="above-heading">Customizable design</h6>\n		<h3>Unlimited Colors</h3>\n		<p>You have never seen so many options! Change colors of dozens of elements, apply textures, upload background images...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover indent indent-size-xxxl">\n		<span class="ic ic-3x ic-smartphones ib ib-size-xxxl ib-square"></span>\n		<h6 class="above-heading">12-column grid</h6>\n		<h3>Responsive Layout</h3>\n		<p>Ultimo can be displayed on any screen. It is based on fluid grid system. If screen is resized, layout will be automatically adjusted...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="grid12-4">\n\n	<div class="feature feature-icon-hover indent indent-size-xxxl">\n		<span class="ic ic-3x ic-menu ib ib-size-xxxl ib-square"></span>\n		<h6 class="above-heading">Customizable drop-down menu</h6>\n		<h3>Mega Menu</h3>\n		<p>Two styles: wide mega menu or classic drop-down menu. You can add any custom content (images, text, HTML) to any category in the catalog...</p>\n		<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n	</div>\n\n</div>\n<div class="clearer"></div>\n<br/>\n<br/>\n<br/>\n\n\n\n\n{{block type="ultimo/product_list_featured" template="catalog/product/list_featured_slider.phtml" category_id="6" product_count="20" breakpoints="[0, 1], [320, 2], [480, 3], [768, 4], [960, 5], [1280, 6]" pagination="1" centered="1" hide_button="1" block_name="Recommended Products"}}\n<br/>\n<br/>\n\n\n{{block type="brands/brands" template="infortis/brands/brand_slider.phtml" timeout="5000" move="1" pagination="1" block_name="Product Brands"}}\n<br/>\n<br/>\n', '2016-04-27 19:04:05', '2016-04-27 19:04:05', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'ULTIMO Home Page 2', NULL, NULL, NULL, 'ultimo-home-page2', NULL, '<div style="background-color: #fbfbfb; margin-top: -20px;">\n	<div class="container">\n		<div class="inner-container">\n\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xxxl">\n					<span class="ic ic-2x ic-paint ib ib-size-xxxl"></span>\n					<h6 class="above-heading">Customizable design</h6>\n					<h3>Unlimited Colors</h3>\n					<p>You have never seen so many options! Change colors of dozens of elements, apply textures, upload background images...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xxxl">\n					<span class="ic ic-2x ic-smartphones ib ib-size-xxxl"></span>\n					<h6 class="above-heading">12-column grid</h6>\n					<h3>Responsive Layout</h3>\n					<p>Ultimo can be displayed on any screen. It is based on fluid grid system. If screen is resized, layout will be automatically adjusted...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xxxl">\n					<span class="ic ic-2x ic-menu ib ib-size-xxxl"></span>\n					<h6 class="above-heading">Customizable drop-down menu</h6>\n					<h3>Mega Menu</h3>\n					<p>Two styles: wide mega menu or classic drop-down menu. You can add any custom content to any category in the catalog...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="clearer"></div>\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n\n		</div>\n	</div>\n</div>\n\n\n\n<div class="container">\n	<div class="inner-container">\n\n		<br/>\n		<br/>\n		<br/>\n		<br/>\n\n		{{block type="ultimo/product_list_featured" template="catalog/product/list_featured_slider.phtml" category_id="3" product_count="12"  breakpoints="[0, 1], [480, 2], [640, 3], [960, 4]" img_width="274" timeout="0" pagination="1" centered="1" hide_button="1" sort_by="name" sort_direction="ASC" block_name="Our Featured Products"}}\n\n		<br/>\n		<br/>\n		<br/>\n		<br/>\n\n	</div>\n</div>\n\n\n\n<div style="background-color: #f5f5f5;">\n	<div class="container">\n		<div class="inner-container">\n\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n			<h2>More features than you could wish for</h2>\n			<br/>\n			<p style="font-size: 16px; color: #999; line-height: 23px;">Ultimo is a premium Magento theme with advanced admin module. It’s extremely customizable, easy to use and fully responsive. Suitable for every type of store, optimized for SEO. Great as a starting point for your custom projects. You can change visual appearance of almost every element. No coding needed, all can be edited directly in admin panel. </p>\n\n			<br/>\n			<br/>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xl">\n					<span class="ic ic-4x ic-paint" style="color:#fd517f;"></span>\n					<h3>Unlimited Colors</h3>\n					<p>You have never seen so many options! Change colors of dozens of elements, apply textures, upload background images...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xl">\n					<span class="ic ic-4x ic-smartphones" style="color:#fd517f;"></span>\n					<h3>Responsive Layout</h3>\n					<p>Ultimo can be displayed on any screen. It is based on fluid grid system. If screen is resized, layout will be automatically adjusted...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xl">\n					<span class="ic ic-4x ic-menu" style="color:#fd517f;"></span>\n					<h3>Mega Menu</h3>\n					<p>Two styles: wide mega menu or classic drop-down menu. You can add any custom content (images, text, HTML) to any category in the catalog...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n\n			<div class="clearer"></div>\n			<br/>\n			<br/>\n\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xl">\n					<span class="ic ic-4x ic-microscope" style="color:#fd517f;"></span>\n					<h3>Font Icons</h3>\n					<p>Font icons give you more control over the visual appearance of the icons. Add anywhere you want and customize to your needs...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xl">\n					<span class="ic ic-4x ic-lightbulb" style="color:#fd517f;"></span>\n					<h3>Easy to Customize</h3>\n					<p>Use as a starting point for your custom projects. Create multiple child themes (theme variants) with ease...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xl">\n					<span class="ic ic-4x ic-anchor" style="color:#fd517f;"></span>\n					<h3>50+ CMS Blocks</h3>\n					<p>You can use content placeholders to display custom content in almost every part of the store. Import sample CMS blocks from the demo...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="clearer"></div>\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n\n		</div>\n	</div>\n</div>\n\n\n\n\n<div style="background: center center; background-image: url({{media url=''wysiwyg/demo/infortis/ultimo/custom/pattern.jpg''}});">\n	<div class="container">\n		<div class="inner-container"  style="text-align: center;">\n\n			<div style="display: inline-block; padding:91px 0; color: #26525F;">\n\n					<h1 style="font-size: 40px;">Responsive Magento Theme</h1>\n					<h2 style="font-size: 20px;">Extremely Customizable</h2>\n\n			</div>\n\n		</div>\n	</div>\n</div>\n\n\n\n<div style="background-color: #fafafa;">\n	<div class="container">\n		<div class="inner-container">\n\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n			<h2>Our Product Brands</h2>\n			{{block type="brands/brands" template="infortis/brands/brand_slider.phtml" breakpoints="[0, 1], [320, 2], [480, 2], [768, 3], [960, 4], [1280, 5]" timeout="6000" move="1" pagination="0"}}\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n\n		</div>\n	</div>\n</div>\n\n\n\n<div style="background-color: #fff;">\n	<div class="container">\n		<div class="inner-container">\n\n			<div>\n\n				<br/>\n				<br/>\n				<br/>\n				<br/>\n				<h2>Beautiful & Fully Customizable Design</h2>\n				<br/>\n				<p style="font-size: 16px; color: #999; line-height: 23px;">You can create any imaginable design or layout with Ultimo, and you don’t need to know absolutely anything about coding. All the options you could ever want are right there in our admin panel.</p>\n\n			</div>\n\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n			<div class="nested-container">\n\n				<div class="page-banners grid-container">\n					<div class="grid12-3 mobile-grid banner">\n						<a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n							<img src="{{media url="wysiwyg/infortis/ultimo/banners/square-01.png}}" alt="Sample banner" />\n						</a>\n					</div>\n					<div class="grid12-3 mobile-grid banner">\n						<a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n							<img src="{{media url="wysiwyg/infortis/ultimo/banners/square-02.png}}" alt="Sample banner" />\n						</a>\n					</div>\n					<div class="grid12-3 mobile-grid banner">\n						<a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n							<img src="{{media url="wysiwyg/infortis/ultimo/banners/square-03.png}}" alt="Sample banner" />\n						</a>\n					</div>\n					<div class="grid12-3 mobile-grid banner">\n						<a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n							<img src="{{media url="wysiwyg/infortis/ultimo/banners/square-04.png}}" alt="Sample banner" />\n						</a>\n					</div>\n				</div>\n\n			</div>\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n\n		</div>\n	</div>\n</div>\n', '2016-04-27 19:04:05', '2016-04-27 19:04:05', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'ULTIMO Home Page 8', NULL, NULL, NULL, 'ultimo-home-page8', NULL, '<div class="container">\n	<div class="inner-container">\n\n		<br/>\n		<br/>\n\n		{{block type="ultraslideshow/slideshow" template="infortis/ultraslideshow/slideshow.phtml" slides="demo_slide_s8_1,demo_slide_s8_2,demo_slide_s8_3"}}\n\n		<br/>\n		<br/>\n		<br/>\n\n	</div>\n</div>\n\n\n\n<div style="background-color: #fbfbfb;">\n	<div class="container">\n		<div class="inner-container">\n\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xxxl">\n					<span class="ic ic-2x ic-paint square ib ib-size-xxxl"></span>\n					<h6 class="above-heading">Customizable design</h6>\n					<h3>Unlimited Colors</h3>\n					<p>You have never seen so many options! Change colors of dozens of elements, apply textures, upload background images...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xxxl">\n					<span class="ic ic-2x ic-smartphones square ib ib-size-xxxl"></span>\n					<h6 class="above-heading">12-column grid</h6>\n					<h3>Responsive Layout</h3>\n					<p>Ultimo can be displayed on any screen. It is based on fluid grid system. If screen is resized, layout will be automatically adjusted...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xxxl">\n					<span class="ic ic-2x ic-menu square ib ib-size-xxxl"></span>\n					<h6 class="above-heading">Customizable drop-down menu</h6>\n					<h3>Mega Menu</h3>\n					<p>Two styles: wide mega menu or classic drop-down menu. You can add any custom content to any category in the catalog...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="clearer"></div>\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n\n		</div>\n	</div>\n</div>\n\n\n\n<div class="container">\n	<div class="inner-container">\n\n		<br/>\n		<br/>\n		<br/>\n		<br/>\n\n		<h2  style="text-align: center;">Our Products</h2>\n		{{block type="ultimo/product_list_featured" template="catalog/product/list_featured_slider.phtml" category_id="3" product_count="12"  breakpoints="[0, 1], [480, 2], [640, 3], [960, 4]" img_width="274" timeout="0" pagination="1" centered="1" hide_button="1" sort_by="name" sort_direction="DESC" block_name=""}}\n\n		<br/>\n		<br/>\n		<br/>\n		<br/>\n\n	</div>\n</div>\n\n\n\n<div style="background-color: #f5f5f5;">\n	<div class="container">\n		<div class="inner-container">\n\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n			<h2  style="text-align: center;">More features than you could wish for</h2>\n			<br/>\n			<p   style="text-align: center; font-size: 16px; color: #999; line-height: 23px;">Ultimo is a premium Magento theme with advanced admin module. It’s extremely customizable, easy to use and fully responsive. Suitable for every type of store, optimized for SEO. Great as a starting point for your custom projects. You can change visual appearance of almost every element. No coding needed, all can be edited directly in admin panel. </p>\n\n			<br/>\n			<br/>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xl">\n					<span class="ic ic-4x ic-paint" style="color:#30a5ff;"></span>\n					<h3>Unlimited Colors</h3>\n					<p>You have never seen so many options! Change colors of dozens of elements, apply textures, upload background images...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xl">\n					<span class="ic ic-4x ic-smartphones" style="color:#30a5ff;"></span>\n					<h3>Responsive Layout</h3>\n					<p>Ultimo can be displayed on any screen. It is based on fluid grid system. If screen is resized, layout will be automatically adjusted...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xl">\n					<span class="ic ic-4x ic-menu" style="color:#30a5ff;"></span>\n					<h3>Mega Menu</h3>\n					<p>Two styles: wide mega menu or classic drop-down menu. You can add any custom content (images, text, HTML) to any category in the catalog...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n\n			<div class="clearer"></div>\n			<br/>\n			<br/>\n\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xl">\n					<span class="ic ic-4x ic-microscope" style="color:#30a5ff;"></span>\n					<h3>Font Icons</h3>\n					<p>Font icons give you more control over the visual appearance of the icons. Add anywhere you want and customize to your needs...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xl">\n					<span class="ic ic-4x ic-lightbulb" style="color:#30a5ff;"></span>\n					<h3>Easy to Customize</h3>\n					<p>Use as a starting point for your custom projects. Create multiple child themes (theme variants) with ease...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="grid12-4">\n\n				<div class="feature feature-icon-hover indent indent-size-xl">\n					<span class="ic ic-4x ic-anchor" style="color:#30a5ff;"></span>\n					<h3>50+ CMS Blocks</h3>\n					<p>You can use content placeholders to display custom content in almost every part of the store. Import sample CMS blocks from the demo...</p>\n					<a href="{{store url=''ultimo-responsive-magento-theme''}}" class="go">See all features</a>\n				</div>\n\n			</div>\n			<div class="clearer"></div>\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n\n		</div>\n	</div>\n</div>\n\n\n\n\n<div style="background-color: #30A5FF; background: radial-gradient(ellipse at center, rgba(48,165,255,1) 0%, rgba(48,165,255,1) 41%, rgba(25,141,230,1) 100%);">\n	<div class="container">\n		<div class="inner-container"  style="text-align: center;">\n\n			<div style="display: inline-block; padding:100px 0; color: #DEF0FF;">\n\n					<span class="ic ic-3x ic-smartphones ib ib-hover ib-size-xxxl" style="background-color: rgba(31, 92, 137, 1); margin-bottom: 20px;"></span>\n					<h1 style="font-size: 40px;">Responsive Magento Theme</h1>\n					<h2 style="font-size: 20px;">Extremely Customizable</h2>\n\n			</div>\n\n		</div>\n	</div>\n</div>\n\n\n\n<div style="background-color: #fafafa;">\n	<div class="container">\n		<div class="inner-container">\n\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n			<h2  style="text-align: center;">Our Brands</h2>\n			{{block type="brands/brands" template="infortis/brands/brand_slider.phtml" breakpoints="[0, 1], [320, 2], [480, 2], [768, 3], [960, 4], [1280, 5]" timeout="6000" move="1" pagination="0"}}\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n\n		</div>\n	</div>\n</div>\n\n\n\n<div style="background-color: #fff;">\n	<div class="container">\n		<div class="inner-container">\n\n			<div>\n\n				<br/>\n				<br/>\n				<br/>\n				<br/>\n				<h2  style="text-align: center;">Beautiful & Fully Customizable Design</h2>\n				<br/>\n				<p   style="text-align: center; font-size: 16px; color: #999; line-height: 23px;">You can create any imaginable design or layout with Ultimo, and you don’t need to know absolutely anything about coding. All the options you could ever want are right there in our admin panel.</p>\n\n			</div>\n\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n			<div class="nested-container">\n\n				<div class="page-banners grid-container">\n					<div class="grid12-3 mobile-grid banner">\n						<a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n							<img src="{{media url="wysiwyg/infortis/ultimo/banners/square-01.png}}" alt="Sample banner" />\n						</a>\n					</div>\n					<div class="grid12-3 mobile-grid banner">\n						<a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n							<img src="{{media url="wysiwyg/infortis/ultimo/banners/square-02.png}}" alt="Sample banner" />\n						</a>\n					</div>\n					<div class="grid12-3 mobile-grid banner">\n						<a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n							<img src="{{media url="wysiwyg/infortis/ultimo/banners/square-03.png}}" alt="Sample banner" />\n						</a>\n					</div>\n					<div class="grid12-3 mobile-grid banner">\n						<a href="{{store direct_url="about-magento-demo-store"}}" title="Replace this image with your own">\n							<img src="{{media url="wysiwyg/infortis/ultimo/banners/square-04.png}}" alt="Sample banner" />\n						</a>\n					</div>\n				</div>\n\n			</div>\n			<br/>\n			<br/>\n			<br/>\n			<br/>\n\n		</div>\n	</div>\n</div>\n', '2016-04-27 19:04:05', '2016-04-27 19:04:05', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Virtual Tour', 'one_column', NULL, NULL, 'tour', 'Virtual Tour', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m0!3m2!1sen!2sus!4v1460095347112!6m8!1m7!1s4nbJ0B492HcAAAQvObPbIw!2m2!1d37.81935565051553!2d-122.2674825997544!3f97.10658615066598!4f-15.486301064600639!5f0.7820865974627469" height="742" width=100%></iframe></p>', '2016-05-03 01:58:18', '2016-05-05 04:47:03', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'FAQ', 'one_column', NULL, NULL, 'faq', 'FAQ', 'Frequently asked questions:', '2016-05-05 04:09:50', '2016-05-05 04:09:50', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mgeg_cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(19, 'Vendors', 'one_column', NULL, NULL, 'vendors', 'Vendors', '<div class="page-title">\r\n<h1>About Telegraph Health Center</h1>\r\n</div>\r\n<div class="col3-set">\r\n<div class="col-1">\r\n<p style="line-height: 1.2em;"><small>Telegraph Health Center works closely with cultivators, patients, and companies that are in compliance with California law, to bring you the best medication for your needs. All “Vendors” who dispense flower, edibles, salves, tinctures, concentrates, etc. must be patients and a member of our collective.\r\n\r\nWe operate with the highest standards when procuring Medical Marijuana products. Depending on our needs, we may not purchase your product during your first visit. You can email our buying team ahead of your visit at Buyer@thcoakland.com, to see if we are in need of your goods. If we decline purchase, please keep in touch. Many of our current vendors have come back a number of times before we started carrying their products.\r\n\r\n</small></p>\r\n<p style="color: #888; font: 1.2em/1.4em georgia, serif;">The Medical Marijuana industry is growing and changing at a rapid pace. We look forward to meeting with independent vendors, as well as established vendors.\r\n</p>\r\n</div>\r\n<div class="col-2">\r\n<p><strong style="color: #de036f;">The Medical Marijuana industry is growing and changing at a rapid pace. We look forward to meeting with independent and established vendors.</strong></p>\r\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</p>\r\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi. Vestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est. Nulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat. Pellentesque eget velit. Nunc tincidunt.</p>\r\n</div>\r\n<div class="col-3">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper</p>\r\n<p><strong style="color: #de036f;">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\r\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\r\n<div class="divider">&nbsp;</div>\r\n<p>To all of you, from all of us at Magento Store - Thank you and Happy eCommerce!</p>\r\n<p style="line-height: 1.2em;"><strong style="font: italic 2em Georgia, serif;">John Doe</strong><br /> <small>Some important guy</small></p>\r\n</div>\r\n</div>', '2016-05-05 04:16:40', '2016-05-05 04:19:07', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_cms_page_store`
--

CREATE TABLE IF NOT EXISTS `mgeg_cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `IDX_MGEG_CMS_PAGE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dumping data for table `mgeg_cms_page_store`
--

INSERT INTO `mgeg_cms_page_store` (`page_id`, `store_id`) VALUES
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(17, 1),
(18, 1),
(19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_cache`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `IDX_MGEG_CORE_CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_cache_option`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_cache_option` (
  `code` varchar(32) NOT NULL COMMENT 'Code',
  `value` smallint(6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cache Options';

--
-- Dumping data for table `mgeg_core_cache_option`
--

INSERT INTO `mgeg_core_cache_option` (`code`, `value`) VALUES
('block_html', 0),
('collections', 0),
('config', 0),
('config_api', 0),
('config_api2', 0),
('eav', 0),
('layout', 0),
('translate', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_cache_tag`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `IDX_MGEG_CORE_CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_config_data`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `UNQ_MGEG_CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Config Data' AUTO_INCREMENT=762 ;

--
-- Dumping data for table `mgeg_core_config_data`
--

INSERT INTO `mgeg_core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'general/region/display_all', '1'),
(2, 'default', 0, 'general/region/state_required', 'AT,CA,EE,FI,FR,DE,LV,LT,RO,ES,CH,US'),
(3, 'default', 0, 'catalog/category/root_id', '2'),
(4, 'default', 0, 'payment/paypal_express/skip_order_review_step', '1'),
(5, 'default', 0, 'payment/payflow_link/mobile_optimized', '1'),
(6, 'default', 0, 'payment/payflow_advanced/mobile_optimized', '1'),
(7, 'default', 0, 'payment/hosted_pro/mobile_optimized', '1'),
(8, 'default', 0, 'admin/dashboard/enable_charts', '1'),
(9, 'default', 0, 'web/unsecure/base_url', 'http://bisonmedia.net/dd/'),
(10, 'default', 0, 'web/secure/base_url', 'http://bisonmedia.net/dd/'),
(11, 'default', 0, 'general/locale/code', 'en_US'),
(12, 'default', 0, 'general/locale/timezone', 'America/Los_Angeles'),
(13, 'default', 0, 'currency/options/base', 'USD'),
(14, 'default', 0, 'currency/options/default', 'USD'),
(15, 'default', 0, 'currency/options/allow', 'USD'),
(16, 'default', 0, 'advanced/modules_disable_output/Mage_Log', '1'),
(17, 'default', 0, 'system/cron/schedule_generate_every', '15'),
(18, 'default', 0, 'system/cron/schedule_ahead_for', '20'),
(19, 'default', 0, 'system/cron/schedule_lifetime', '15'),
(20, 'default', 0, 'system/cron/history_cleanup_every', '10'),
(21, 'default', 0, 'system/cron/history_success_lifetime', '60'),
(22, 'default', 0, 'system/cron/history_failure_lifetime', '600'),
(23, 'default', 0, 'system/log/clean_after_day', '7'),
(24, 'default', 0, 'system/log/enabled', '1'),
(25, 'default', 0, 'system/log/time', '00,00,00'),
(26, 'default', 0, 'system/log/frequency', 'D'),
(27, 'default', 0, 'crontab/jobs/log_clean/schedule/cron_expr', '0 0 * * *'),
(28, 'default', 0, 'crontab/jobs/log_clean/run/model', 'log/cron::logClean'),
(29, 'default', 0, 'cms/wysiwyg/enabled', 'hidden'),
(30, 'default', 0, 'ultimo_design/nav/border', '0'),
(31, 'default', 0, 'brands/general/img_url_key_separator', '_'),
(32, 'default', 0, 'brands/general/show_image', '1'),
(33, 'default', 0, 'brands/list/all_brands', '1'),
(34, 'default', 0, 'brands/list/brands', ''),
(35, 'default', 0, 'brands/list/assigned', '1'),
(36, 'default', 0, 'ultimo_design/page/content_padding_side', '0'),
(37, 'default', 0, 'catalog/product_image/small_width', '295'),
(38, 'default', 0, 'catalog/product_image/base_width', '650'),
(39, 'default', 0, 'ultimo_design/colors/color', '#333333'),
(40, 'default', 0, 'ultimo_design/colors/link_color', '#00551f'),
(41, 'default', 0, 'ultimo_design/colors/link_hover_color', '#bb8632'),
(42, 'default', 0, 'ultimo_design/colors/button_bg_color', '#00551f'),
(43, 'default', 0, 'ultimo_design/colors/button_color', '#ffffff'),
(44, 'default', 0, 'ultimo_design/colors/button_hover_bg_color', '#bb8632'),
(45, 'default', 0, 'ultimo_design/colors/button_hover_color', '#ffffff'),
(46, 'default', 0, 'ultimo_design/colors/button_active_bg_color', '#00551f'),
(47, 'default', 0, 'ultimo_design/colors/button_active_color', '#ffffff'),
(48, 'default', 0, 'ultimo_design/colors/tool_icon_bg_color', '#009042'),
(49, 'default', 0, 'ultimo_design/colors/tool_icon_color', '#ffffff'),
(50, 'default', 0, 'ultimo_design/colors/tool_icon_hover_bg_color', '#bb8632'),
(51, 'default', 0, 'ultimo_design/colors/tool_icon_hover_color', '#ffffff'),
(52, 'default', 0, 'ultimo_design/colors/tool_icon_active_bg_color', '#009042'),
(53, 'default', 0, 'ultimo_design/colors/tool_icon_active_color', '#ffffff'),
(54, 'default', 0, 'ultimo_design/colors/icon_bg_color', '#00551f'),
(55, 'default', 0, 'ultimo_design/colors/icon_color', '#ffffff'),
(56, 'default', 0, 'ultimo_design/colors/icon_hover_bg_color', '#bb8632'),
(57, 'default', 0, 'ultimo_design/colors/icon_hover_color', '#ffffff'),
(58, 'default', 0, 'ultimo_design/colors/social_icon_bg_color', '#00551f'),
(59, 'default', 0, 'ultimo_design/colors/social_icon_color', '#ffffff'),
(60, 'default', 0, 'ultimo_design/colors/social_icon_hover_bg_color', '#bb8632'),
(61, 'default', 0, 'ultimo_design/colors/social_icon_hover_color', '#ffffff'),
(62, 'default', 0, 'ultimo_design/colors/important_link_hover_color', '#ffffff'),
(63, 'default', 0, 'ultimo_design/colors/important_link_hover_bg_color', '#00551f'),
(64, 'default', 0, 'ultimo_design/colors/label_new_bg_color', '#bb8632'),
(65, 'default', 0, 'ultimo_design/colors/label_new_color', '#ffffff'),
(66, 'default', 0, 'ultimo_design/colors/label_sale_bg_color', '#00551f'),
(67, 'default', 0, 'ultimo_design/colors/label_sale_color', '#ffffff'),
(68, 'default', 0, 'ultimo_design/colors/price_color', '#999999'),
(69, 'default', 0, 'ultimo_design/colors/additional_bg_color', '#f5f5f5'),
(70, 'default', 0, 'ultimo_design/font/font_size', '12'),
(71, 'default', 0, 'ultimo_design/font/primary_font_family_group', 'google'),
(72, 'default', 0, 'ultimo_design/font/primary_font_family_custom', 'Arial, "Helvetica Neue", Helvetica, sans-serif'),
(73, 'default', 0, 'ultimo_design/font/primary_font_family', 'Titillium Web'),
(74, 'default', 0, 'ultimo_design/font/primary_char_subset', 'latin'),
(75, 'default', 0, 'ultimo_design/font/primary_font_weight', ' '),
(76, 'default', 0, 'ultimo_design/effects/shadow', '0'),
(77, 'default', 0, 'ultimo_design/effects/shadow_nav', 'inner-container'),
(78, 'default', 0, 'ultimo_design/effects/structural_elements_transition', '0'),
(79, 'default', 0, 'ultimo_design/page/viewport_bg_color', '#ffffff'),
(80, 'default', 0, 'ultimo_design/page/bg_color', '#ffffff'),
(81, 'default', 0, 'ultimo_design/page/bg_image', NULL),
(82, 'default', 0, 'ultimo_design/page/bg_repeat', 'repeat'),
(83, 'default', 0, 'ultimo_design/page/bg_attachment', 'scroll'),
(84, 'default', 0, 'ultimo_design/page/bg_positionx', 'center'),
(85, 'default', 0, 'ultimo_design/page/bg_positiony', 'top'),
(86, 'default', 0, 'ultimo_design/page/tex', '0'),
(87, 'default', 0, 'ultimo_design/header/top_border_color', '#333333'),
(88, 'default', 0, 'ultimo_design/header/color', '#ffffff'),
(89, 'default', 0, 'ultimo_design/header/link_color', '#333333'),
(90, 'default', 0, 'ultimo_design/header/link_hover_color', '#00551f'),
(91, 'default', 0, 'ultimo_design/header/bg_color', '#ffffff'),
(92, 'default', 0, 'ultimo_design/header/bg_image', NULL),
(93, 'default', 0, 'ultimo_design/header/bg_repeat', 'no-repeat'),
(94, 'default', 0, 'ultimo_design/header/bg_attachment', 'scroll'),
(95, 'default', 0, 'ultimo_design/header/bg_positionx', 'center'),
(96, 'default', 0, 'ultimo_design/header/bg_positiony', 'top'),
(97, 'default', 0, 'ultimo_design/header/tex', '0'),
(98, 'default', 0, 'ultimo_design/header/tex2', '0'),
(99, 'default', 0, 'ultimo_design/header/padding_top', '0'),
(100, 'default', 0, 'ultimo_design/header/padding_bottom', '0'),
(101, 'default', 0, 'ultimo_design/header/inner_bg_color', '#ffffff'),
(102, 'default', 0, 'ultimo_design/header/search_bg_color', '#ffffff'),
(103, 'default', 0, 'ultimo_design/header/search_hover_bg_color', '#fbfbfb'),
(104, 'default', 0, 'ultimo_design/header/search_color', '#bbbbbb'),
(105, 'default', 0, 'ultimo_design/header/search_hover_color', '#333333'),
(106, 'default', 0, 'ultimo_design/header/search_border_color', '#ffffff'),
(107, 'default', 0, 'ultimo_design/header/search_border_hover_color', '#ffffff'),
(108, 'default', 0, 'ultimo_design/header/search_max_width', '250px'),
(109, 'default', 0, 'ultimo_design/header/cart_counter_color', '#009042'),
(110, 'default', 0, 'ultimo_design/header/dropdown_bg_color', '#ffffff'),
(111, 'default', 0, 'ultimo_design/header/dropdown_color', '#333333'),
(112, 'default', 0, 'ultimo_design/header/dropdown_link_color', '#333333'),
(113, 'default', 0, 'ultimo_design/header/dropdown_link_hover_color', '#00551f'),
(114, 'default', 0, 'ultimo_design/header/mh_item_bg_color', '#ffffff'),
(115, 'default', 0, 'ultimo_design/header/mh_item_color', '#333333'),
(116, 'default', 0, 'ultimo_design/header/mh_item_active_bg_color', '#00551f'),
(117, 'default', 0, 'ultimo_design/header/mh_item_active_color', '#ffffff'),
(118, 'default', 0, 'ultimo_design/header/mh_content_color', '#333333'),
(119, 'default', 0, 'ultimo_design/header/mh_content_link_color', '#00551f'),
(120, 'default', 0, 'ultimo_design/header/mh_content_link_hover_color', '#bb8632'),
(121, 'default', 0, 'ultimo_design/header_top/color', '#333333'),
(122, 'default', 0, 'ultimo_design/header_top/link_color', '#333333'),
(123, 'default', 0, 'ultimo_design/header_top/link_hover_color', '#00551f'),
(124, 'default', 0, 'ultimo_design/header_top/line_height', '36'),
(125, 'default', 0, 'ultimo_design/header_top/bg_color', '#f4f4f4'),
(126, 'default', 0, 'ultimo_design/header_top/padding_top', '2'),
(127, 'default', 0, 'ultimo_design/header_top/padding_bottom', '2'),
(128, 'default', 0, 'ultimo_design/header_top/inner_bg_color', '#f4f4f4'),
(129, 'default', 0, 'ultimo_design/header_top/content_padding_top', '2'),
(130, 'default', 0, 'ultimo_design/header_top/content_padding_bottom', '2'),
(131, 'default', 0, 'ultimo_design/header_top/content_padding_side', 'expanded'),
(132, 'default', 0, 'ultimo_design/header_primary/font_size', '14'),
(133, 'default', 0, 'ultimo_design/header_primary/line_height', '36'),
(134, 'default', 0, 'ultimo_design/header_primary/bg_color', '#ffffff'),
(135, 'default', 0, 'ultimo_design/header_primary/padding_top', '0'),
(136, 'default', 0, 'ultimo_design/header_primary/padding_bottom', '0'),
(137, 'default', 0, 'ultimo_design/header_primary/inner_bg_color', '#ffffff'),
(138, 'default', 0, 'ultimo_design/header_primary/content_padding_top', NULL),
(139, 'default', 0, 'ultimo_design/header_primary/content_padding_bottom', NULL),
(140, 'default', 0, 'ultimo_design/header_primary/content_padding_side', 'expanded'),
(141, 'default', 0, 'ultimo_design/nav/outer_bg_color', '#ffffff'),
(142, 'default', 0, 'ultimo_design/nav/padding_top', '0'),
(143, 'default', 0, 'ultimo_design/nav/padding_bottom', '0'),
(144, 'default', 0, 'ultimo_design/nav/inner_bg_color', '#ffffff'),
(145, 'default', 0, 'ultimo_design/nav/content_padding_top', '0'),
(146, 'default', 0, 'ultimo_design/nav/content_padding_bottom', '0'),
(147, 'default', 0, 'ultimo_design/nav/content_padding_side', 'override'),
(148, 'default', 0, 'ultimo_design/nav/content_padding_side_value', '0'),
(149, 'default', 0, 'ultimo_design/nav/line_height', '50'),
(150, 'default', 0, 'ultimo_design/nav/border_color', '#00551f'),
(151, 'default', 0, 'ultimo_design/nav/bg_color', '#ffffff'),
(152, 'default', 0, 'ultimo_design/nav/color', '#333333'),
(153, 'default', 0, 'ultimo_design/nav/hover_bg_color', '#00551f'),
(154, 'default', 0, 'ultimo_design/nav/hover_color', '#ffffff'),
(155, 'default', 0, 'ultimo_design/nav/active_bg_color', '#ffffff'),
(156, 'default', 0, 'ultimo_design/nav/active_color', '#333333'),
(157, 'default', 0, 'ultimo_design/nav/sticky_item_bg_color', '#ffffff'),
(158, 'default', 0, 'ultimo_design/nav/sticky_item_color', '#333333'),
(159, 'default', 0, 'ultimo_design/nav/sticky_border', '0'),
(160, 'default', 0, 'ultimo_design/nav/level1_font_size', '18'),
(161, 'default', 0, 'ultimo_design/nav/level1_font_uppercase', '0'),
(162, 'default', 0, 'ultimo_design/nav/mega_lev1_font_size', '16'),
(163, 'default', 0, 'ultimo_design/nav/mega_lev1_font_uppercase', '0'),
(164, 'default', 0, 'ultimo_design/nav/dropdown_border_top', NULL),
(165, 'default', 0, 'ultimo_design/nav/dropdown_border_top_color', '#00551f'),
(166, 'default', 0, 'ultimo_design/nav/dropdown_border_all_levels', '0'),
(167, 'default', 0, 'ultimo_design/nav/dropdown_bg_color', '#ffffff'),
(168, 'default', 0, 'ultimo_design/nav/dropdown_color', '#333333'),
(169, 'default', 0, 'ultimo_design/nav/dropdown_link_color', '#333333'),
(170, 'default', 0, 'ultimo_design/nav/dropdown_link_hover_color', '#00551f'),
(171, 'default', 0, 'ultimo_design/nav/dropdown_shadow', '1'),
(172, 'default', 0, 'ultimo_design/nav/mobile_link_separator_color', '#eeeeee'),
(173, 'default', 0, 'ultimo_design/nav/mobile_shadow', '1'),
(174, 'default', 0, 'ultimo_design/nav/mobile_level1_font_size', '16'),
(175, 'default', 0, 'ultimo_design/nav/mobile_level1_font_uppercase', '1'),
(176, 'default', 0, 'ultimo_design/nav/mobile_level2_font_size', '16'),
(177, 'default', 0, 'ultimo_design/nav/mobile_level2_font_uppercase', '0'),
(178, 'default', 0, 'ultimo_design/nav/label_bg_color', '#ffffff'),
(179, 'default', 0, 'ultimo_design/nav/label_color', '#333333'),
(180, 'default', 0, 'ultimo_design/nav/label_bg_color2', '#ffffff'),
(181, 'default', 0, 'ultimo_design/nav/label_color2', '#333333'),
(182, 'default', 0, 'ultimo_design/nav/label_hover_bg_color', '#00551f'),
(183, 'default', 0, 'ultimo_design/nav/label_hover_color', '#ffffff'),
(184, 'default', 0, 'ultimo_design/main/bg_color', '#ffffff'),
(185, 'default', 0, 'ultimo_design/main/tex', '0'),
(186, 'default', 0, 'ultimo_design/main/padding_top', '0'),
(187, 'default', 0, 'ultimo_design/main/padding_bottom', '0'),
(188, 'default', 0, 'ultimo_design/main/inner_bg_color', '#ffffff'),
(189, 'default', 0, 'ultimo_design/main/content_padding_top', '20'),
(190, 'default', 0, 'ultimo_design/main/content_padding_bottom', '0'),
(191, 'default', 0, 'ultimo_design/main/content_padding_side', NULL),
(192, 'default', 0, 'ultimo_design/category/grid_item_bg_color', NULL),
(193, 'default', 0, 'ultimo_design/category/grid_item_hover_bg_color', NULL),
(194, 'default', 0, 'ultimo_design/product_page/addto_icon_bg_color', '#00551f'),
(195, 'default', 0, 'ultimo_design/product_page/addto_icon_hover_bg_color', '#bb8632'),
(196, 'default', 0, 'ultimo_design/product_page/tab_inner_bg_color', '#ffffff'),
(197, 'default', 0, 'ultimo_design/product_page/tab_panel_bg_color', '#ffffff'),
(198, 'default', 0, 'ultimo_design/product_page/tab_border_color', '#e5e5e5'),
(199, 'default', 0, 'ultimo_design/product_page/tab_bg_color', '#f5f5f5'),
(200, 'default', 0, 'ultimo_design/product_page/tab_color', '#333333'),
(201, 'default', 0, 'ultimo_design/product_page/tab_hover_bg_color', '#bb8632'),
(202, 'default', 0, 'ultimo_design/product_page/tab_hover_color', '#ffffff'),
(203, 'default', 0, 'ultimo_design/product_page/tab_active_bg_color', '#00551f'),
(204, 'default', 0, 'ultimo_design/product_page/tab_active_color', '#ffffff'),
(205, 'default', 0, 'ultimo_design/product_page/acco_bg_color', '#ffffff'),
(206, 'default', 0, 'ultimo_design/product_page/acco_color', '#333333'),
(207, 'default', 0, 'ultimo_design/product_page/acco_active_bg_color', '#00551f'),
(208, 'default', 0, 'ultimo_design/product_page/acco_active_color', '#ffffff'),
(209, 'default', 0, 'ultimo_design/slideshow/tool_icon_bg_color', '#ffffff'),
(210, 'default', 0, 'ultimo_design/slideshow/tool_icon_color', '#bb8632'),
(211, 'default', 0, 'ultimo_design/slideshow/tool_icon_hover_bg_color', '#bb8632'),
(212, 'default', 0, 'ultimo_design/slideshow/tool_icon_hover_color', '#ffffff'),
(213, 'default', 0, 'ultimo_design/slideshow/tool_icon_active_bg_color', '#00551f'),
(214, 'default', 0, 'ultimo_design/footer/bg_color', '#333333'),
(215, 'default', 0, 'ultimo_design/footer/bg_image', NULL),
(216, 'default', 0, 'ultimo_design/footer/bg_repeat', 'no-repeat'),
(217, 'default', 0, 'ultimo_design/footer/bg_attachment', 'scroll'),
(218, 'default', 0, 'ultimo_design/footer/bg_positionx', 'left'),
(219, 'default', 0, 'ultimo_design/footer/bg_positiony', 'top'),
(220, 'default', 0, 'ultimo_design/footer/tex', '0'),
(221, 'default', 0, 'ultimo_design/footer/tex2', '0'),
(222, 'default', 0, 'ultimo_design/footer/inner_bg_color', '#ffffff'),
(223, 'default', 0, 'ultimo_design/footer/color', '#ffffff'),
(224, 'default', 0, 'ultimo_design/footer/link_color', '#00551f'),
(225, 'default', 0, 'ultimo_design/footer/link_hover_color', '#bb8632'),
(226, 'default', 0, 'ultimo_design/footer/button_bg_color', '#00551f'),
(227, 'default', 0, 'ultimo_design/footer/button_color', '#ffffff'),
(228, 'default', 0, 'ultimo_design/footer/button_hover_bg_color', '#bb8632'),
(229, 'default', 0, 'ultimo_design/footer/button_hover_color', '#ffffff'),
(230, 'default', 0, 'ultimo_design/footer/tool_icon_bg_color', '#00551f'),
(231, 'default', 0, 'ultimo_design/footer/tool_icon_color', '#ffffff'),
(232, 'default', 0, 'ultimo_design/footer/tool_icon_hover_bg_color', '#bb8632'),
(233, 'default', 0, 'ultimo_design/footer/tool_icon_hover_color', '#ffffff'),
(234, 'default', 0, 'ultimo_design/footer/icon_bg_color', '#00551f'),
(235, 'default', 0, 'ultimo_design/footer/icon_color', '#ffffff'),
(236, 'default', 0, 'ultimo_design/footer/icon_hover_bg_color', '#bb8632'),
(237, 'default', 0, 'ultimo_design/footer/icon_hover_color', '#ffffff'),
(238, 'default', 0, 'ultimo_design/footer_top/color', '#333333'),
(239, 'default', 0, 'ultimo_design/footer_top/link_color', '#333333'),
(240, 'default', 0, 'ultimo_design/footer_top/link_hover_color', '#00551f'),
(241, 'default', 0, 'ultimo_design/footer_top/bg_color', '#ffffff'),
(242, 'default', 0, 'ultimo_design/footer_top/padding_top', '0'),
(243, 'default', 0, 'ultimo_design/footer_top/padding_bottom', '0'),
(244, 'default', 0, 'ultimo_design/footer_top/inner_bg_color', '#ffffff'),
(245, 'default', 0, 'ultimo_design/footer_top/content_padding_top', '0'),
(246, 'default', 0, 'ultimo_design/footer_top/content_padding_bottom', '0'),
(247, 'default', 0, 'ultimo_design/footer_top/content_padding_side', NULL),
(248, 'default', 0, 'ultimo_design/footer_primary/color', '#333333'),
(249, 'default', 0, 'ultimo_design/footer_primary/link_color', '#333333'),
(250, 'default', 0, 'ultimo_design/footer_primary/link_hover_color', '#00551f'),
(251, 'default', 0, 'ultimo_design/footer_primary/bg_color', '#fbfbfb'),
(252, 'default', 0, 'ultimo_design/footer_primary/padding_top', '40'),
(253, 'default', 0, 'ultimo_design/footer_primary/padding_bottom', '40'),
(254, 'default', 0, 'ultimo_design/footer_primary/inner_bg_color', '#fbfbfb'),
(255, 'default', 0, 'ultimo_design/footer_primary/content_padding_top', '40'),
(256, 'default', 0, 'ultimo_design/footer_primary/content_padding_bottom', '40'),
(257, 'default', 0, 'ultimo_design/footer_primary/content_padding_side', NULL),
(258, 'default', 0, 'ultimo_design/footer_secondary/color', '#333333'),
(259, 'default', 0, 'ultimo_design/footer_secondary/link_color', '#333333'),
(260, 'default', 0, 'ultimo_design/footer_secondary/link_hover_color', '#00551f'),
(261, 'default', 0, 'ultimo_design/footer_secondary/bg_color', '#ffffff'),
(262, 'default', 0, 'ultimo_design/footer_secondary/padding_top', '0'),
(263, 'default', 0, 'ultimo_design/footer_secondary/padding_bottom', '20'),
(264, 'default', 0, 'ultimo_design/footer_secondary/inner_bg_color', '#ffffff'),
(265, 'default', 0, 'ultimo_design/footer_secondary/content_padding_top', '0'),
(266, 'default', 0, 'ultimo_design/footer_secondary/content_padding_bottom', '20'),
(267, 'default', 0, 'ultimo_design/footer_secondary/content_padding_side', NULL),
(268, 'default', 0, 'ultimo_design/footer_bottom/color', '#aaaaaa'),
(269, 'default', 0, 'ultimo_design/footer_bottom/link_color', '#333333'),
(270, 'default', 0, 'ultimo_design/footer_bottom/link_hover_color', '#00551f'),
(271, 'default', 0, 'ultimo_design/footer_bottom/bg_color', '#f8f8f8'),
(272, 'default', 0, 'ultimo_design/footer_bottom/inner_bg_color', '#f8f8f8'),
(273, 'default', 0, 'ultimo_design/footer_bottom/content_padding_top', '20'),
(274, 'default', 0, 'ultimo_design/footer_bottom/content_padding_bottom', '20'),
(275, 'default', 0, 'ultimo_design/footer_bottom/content_padding_side', NULL),
(276, 'default', 0, 'ultimo/header/left_column', '3'),
(277, 'default', 0, 'ultimo/header/central_column', NULL),
(278, 'default', 0, 'ultimo/header/right_column', '9'),
(279, 'default', 0, 'ultimo/header/logo_position', 'primLeftCol'),
(280, 'default', 0, 'ultimo/header/search_position', 'primRightCol'),
(281, 'default', 0, 'ultimo/header/user_menu_position', 'topRight_1'),
(282, 'default', 0, 'ultimo/header/toplinks_break_position', '0'),
(283, 'default', 0, 'ultimo/header/signup', '1'),
(284, 'default', 0, 'ultimo/header/main_menu_position', 'primRightCol'),
(285, 'default', 0, 'ultimo/header/cart_position', 'mainMenu'),
(286, 'default', 0, 'ultimo/header/cart_label', '0'),
(287, 'default', 0, 'ultimo/header/compare', '1'),
(288, 'default', 0, 'ultimo/header/compare_position', 'mainMenu'),
(289, 'default', 0, 'ultimo/header/compare_label', '0'),
(290, 'default', 0, 'ultimo/header/sticky', '1'),
(291, 'default', 0, 'ultimo/header/sticky_full_width', '1'),
(292, 'default', 0, 'ultimo/header/mode', '1'),
(293, 'default', 0, 'ultimo/header/mobile_move_switchers', '0'),
(294, 'default', 0, 'ultimo/category/aspect_ratio', '0'),
(295, 'default', 0, 'ultimo/category/image_width', '295'),
(296, 'default', 0, 'ultimo/category/alt_image', '0'),
(297, 'default', 0, 'ultimo/category_grid/column_count', '3'),
(298, 'default', 0, 'ultimo/category_grid/column_count_768', '3'),
(299, 'default', 0, 'ultimo/category_grid/column_count_640', '2'),
(300, 'default', 0, 'ultimo/category_grid/column_count_480', '2'),
(301, 'default', 0, 'ultimo/category_grid/equal_height', '1'),
(302, 'default', 0, 'ultimo/category_grid/hover_effect', '1'),
(303, 'default', 0, 'ultimo/category_grid/disable_hover_effect', '320'),
(304, 'default', 0, 'ultimo/category_grid/hide_addto_links', '480'),
(305, 'default', 0, 'ultimo/category_grid/centered', '1'),
(306, 'default', 0, 'ultimo/category_grid/elements_size', NULL),
(307, 'default', 0, 'ultimo/category_grid/display_name', '2'),
(308, 'default', 0, 'ultimo/category_grid/display_name_single_line', '0'),
(309, 'default', 0, 'ultimo/category_grid/display_price', '2'),
(310, 'default', 0, 'ultimo/category_grid/display_rating', '1'),
(311, 'default', 0, 'ultimo/category_grid/display_addtocart', '2'),
(312, 'default', 0, 'ultimo/category_grid/display_addtolinks', '1'),
(313, 'default', 0, 'ultimo/category_grid/addtolinks_simple', '1'),
(314, 'default', 0, 'ultimo/category_list/hover_effect', '1'),
(315, 'default', 0, 'ultimo/category_list/addtolinks_simple', '0'),
(316, 'default', 0, 'ultimo/product_page/image_column', '4'),
(317, 'default', 0, 'ultimo/product_page/primary_column', '5'),
(318, 'default', 0, 'ultimo/product_page/secondary_column', '3'),
(319, 'default', 0, 'ultimo/product_page/lower_primary_column', '9'),
(320, 'default', 0, 'ultimo/product_page/lower_secondary_column', '3'),
(321, 'default', 0, 'ultimo/product_page/container2_column', '9'),
(322, 'default', 0, 'ultimo/product_page/tabs', '1'),
(323, 'default', 0, 'ultimo/product_page/tabs_mode', '1'),
(324, 'default', 0, 'ultimo/product_page/tabs_threshold', '1024'),
(325, 'default', 0, 'ultimo/product_page/tabs_collapsed', '1'),
(326, 'default', 0, 'ultimo/product_page/tabs_style', '0'),
(327, 'default', 0, 'ultimo/product_page/collateral_position', 'lowerPrimCol_1'),
(328, 'default', 0, 'ultimo/product_page/collateral_reviews', '1'),
(329, 'default', 0, 'ultimo/product_page/collateral_tags', '1'),
(330, 'default', 0, 'ultimo/product_page/collateral_related', '0'),
(331, 'default', 0, 'ultimo/product_page/collateral_upsell', '0'),
(332, 'default', 0, 'ultimo/product_page/related_position', 'secCol_3'),
(333, 'default', 0, 'ultimo/product_page/related_template', 'catalog/product/list/related_multi.phtml'),
(334, 'default', 0, 'ultimo/product_page/related_count', '4'),
(335, 'default', 0, 'ultimo/product_page/related_timeout', '6000'),
(336, 'default', 0, 'ultimo/product_page/replace_related', '2'),
(337, 'default', 0, 'ultimo/product_page/upsell_position', 'lowerPrimCol_2'),
(338, 'default', 0, 'ultimo/product_page/upsell_breakpoints', '[0, 1], [320, 2], [480, 3], [960, 4], [1280, 5]'),
(339, 'default', 0, 'ultimo/product_page/upsell_timeout', NULL),
(340, 'default', 0, 'ultimo/product_page/replace_upsell', '1'),
(341, 'default', 0, 'ultimo/product_page/sku', '0'),
(342, 'default', 0, 'ultimo/product_labels/new', '1'),
(343, 'default', 0, 'ultimo/product_labels/sale', '1'),
(344, 'default', 0, 'ultimo/footer/links_column_auto_width', '1'),
(345, 'default', 0, 'ultimo/product_slider/timeout', NULL),
(346, 'default', 0, 'ultimo/product_slider/speed', '200'),
(347, 'default', 0, 'ultimo/product_slider/auto_speed', '500'),
(348, 'default', 0, 'ultimo/product_slider/pause', '1'),
(349, 'default', 0, 'ultimo/product_slider/loop', '1'),
(350, 'default', 0, 'ultimo/product_slider/lazy', '1'),
(351, 'default', 0, 'ultimo/rsnippets/enable_product', '1'),
(352, 'default', 0, 'ultimo/rsnippets/price_incl_tax', '1'),
(353, 'default', 0, 'ultimo/magento_blocks/top_links', '1'),
(354, 'default', 0, 'ultimo/magento_blocks/footer_links', '0'),
(355, 'default', 0, 'ultimo/magento_blocks/footer_newsletter', '0'),
(356, 'default', 0, 'ultimo/magento_blocks/store_switcher', '0'),
(357, 'default', 0, 'ultimo/magento_blocks/related_products_checkbox', '0'),
(358, 'default', 0, 'ultimo/sidebar_blocks_home/compare', '1'),
(359, 'default', 0, 'ultimo/sidebar_blocks_home/compared', '1'),
(360, 'default', 0, 'ultimo/sidebar_blocks_home/viewed', '1'),
(361, 'default', 0, 'ultimo/sidebar_blocks_home/wishlist', '1'),
(362, 'default', 0, 'ultimo/sidebar_blocks_home/poll', '1'),
(363, 'default', 0, 'ultimo/sidebar_blocks_home/tags', '1'),
(364, 'default', 0, 'ultimo/sidebar_blocks_home/paypal', '1'),
(365, 'default', 0, 'ultimo/sidebar_blocks_home/block_left_top', '1'),
(366, 'default', 0, 'ultimo/sidebar_blocks_home/block_left_bottom', '1'),
(367, 'default', 0, 'ultimo/sidebar_blocks_home/block_right_top', '1'),
(368, 'default', 0, 'ultimo/sidebar_blocks_home/block_right_bottom', '1'),
(369, 'default', 0, 'ultimo/customization/custom_css', '0'),
(370, 'default', 0, 'ultimo/install/overwrite_blocks', '0'),
(371, 'default', 0, 'ultimo/install/overwrite_pages', '0'),
(372, 'default', 0, 'general/country/default', 'US'),
(373, 'default', 0, 'general/country/allow', 'AF,AX,AL,DZ,AS,AD,AO,AI,AQ,AG,AR,AM,AW,AU,AT,AZ,BS,BH,BD,BB,BY,BE,BZ,BJ,BM,BT,BO,BA,BW,BV,BR,IO,VG,BN,BG,BF,BI,KH,CM,CA,CV,KY,CF,TD,CL,CN,CX,CC,CO,KM,CG,CD,CK,CR,CI,HR,CU,CY,CZ,DK,DJ,DM,DO,EC,EG,SV,GQ,ER,EE,ET,FK,FO,FJ,FI,FR,GF,PF,TF,GA,GM,GE,DE,GH,GI,GR,GL,GD,GP,GU,GT,GG,GN,GW,GY,HT,HM,HN,HK,HU,IS,IN,ID,IR,IQ,IE,IM,IL,IT,JM,JP,JE,JO,KZ,KE,KI,KW,KG,LA,LV,LB,LS,LR,LY,LI,LT,LU,MO,MK,MG,MW,MY,MV,ML,MT,MH,MQ,MR,MU,YT,MX,FM,MD,MC,MN,ME,MS,MA,MZ,MM,NA,NR,NP,NL,AN,NC,NZ,NI,NE,NG,NU,NF,MP,KP,NO,OM,PK,PW,PS,PA,PG,PY,PE,PH,PN,PL,PT,PR,QA,RE,RO,RU,RW,BL,SH,KN,LC,MF,PM,WS,SM,ST,SA,SN,RS,SC,SL,SG,SK,SI,SB,SO,ZA,GS,KR,ES,LK,VC,SD,SR,SJ,SZ,SE,CH,SY,TW,TJ,TZ,TH,TL,TG,TK,TO,TT,TN,TR,TM,TC,TV,UG,UA,AE,GB,US,UY,UM,VI,UZ,VU,VA,VE,VN,WF,EH,YE,ZM,ZW'),
(374, 'default', 0, 'general/country/optional_zip_countries', 'HK,IE,MO,PA'),
(375, 'default', 0, 'general/country/eu_countries', 'AT,BE,BG,CY,CZ,DK,EE,FI,FR,DE,GR,HU,IE,IT,LV,LT,LU,MT,NL,PL,PT,RO,SK,SI,ES,SE,GB'),
(376, 'default', 0, 'general/locale/firstday', '0'),
(377, 'default', 0, 'general/locale/weekend', '0,6'),
(378, 'default', 0, 'general/store_information/name', 'Telegraph Health Center'),
(379, 'default', 0, 'general/store_information/phone', '+1 (510) 842-5999'),
(380, 'default', 0, 'general/store_information/hours', '10:00 - 20:00'),
(381, 'default', 0, 'general/store_information/merchant_country', 'US'),
(382, 'default', 0, 'general/store_information/merchant_vat_number', NULL),
(383, 'default', 0, 'general/store_information/address', '3003 Telegraph Ave.\r\nOakland, CA 94606'),
(384, 'default', 0, 'design/package/name', 'rwd'),
(385, 'default', 0, 'design/package/ua_regexp', 'a:0:{}'),
(386, 'default', 0, 'design/theme/locale', NULL),
(387, 'default', 0, 'design/theme/template', NULL),
(388, 'default', 0, 'design/theme/template_ua_regexp', 'a:0:{}'),
(389, 'default', 0, 'design/theme/skin', NULL),
(390, 'default', 0, 'design/theme/skin_ua_regexp', 'a:0:{}'),
(391, 'default', 0, 'design/theme/layout', NULL),
(392, 'default', 0, 'design/theme/layout_ua_regexp', 'a:0:{}'),
(393, 'default', 0, 'design/theme/default', NULL),
(394, 'default', 0, 'design/theme/default_ua_regexp', 'a:0:{}'),
(395, 'default', 0, 'design/head/default_title', 'Telegraph Health Center'),
(396, 'default', 0, 'design/head/title_prefix', NULL),
(397, 'default', 0, 'design/head/title_suffix', NULL),
(398, 'default', 0, 'design/head/default_description', 'Oakland California''s preferred medical cannabis dispensary. Bay Area medicinal marijuana patient collective for cannabis flowers, concentrates, and infused products.'),
(399, 'default', 0, 'design/head/default_keywords', 'telegraph, oakland, cannabis, medical, marijuana, dispensary, california, san francisco, berkeley, san jose, medicine, health, wellness, collective, concentrates, edibles, strains, indica, sativa, clones, seeds, weed, dabs, wax, flowers, community, patient, clinic, bay, east, prop, 215, 420, 710, infused products'),
(400, 'default', 0, 'design/head/default_robots', 'INDEX,FOLLOW'),
(401, 'default', 0, 'design/head/includes', NULL),
(402, 'default', 0, 'design/head/demonotice', '0'),
(403, 'default', 0, 'design/head/shortcut_icon', 'default/telegraph_health_center_icon_oakland_california_medical_cannabis_dispensary.png'),
(404, 'default', 0, 'design/header/logo_src', 'images/logo.gif'),
(405, 'default', 0, 'design/header/logo_alt', 'Telegraph Health Center'),
(406, 'default', 0, 'design/header/logo_src_small', 'images/logo.gif'),
(407, 'default', 0, 'design/header/welcome', 'Oakland California''s preferred medical cannabis dispensary'),
(408, 'default', 0, 'design/footer/copyright', '&copy; 2016 Telegraph Health Center, Oakland California. All Rights Reserved.'),
(409, 'default', 0, 'design/footer/absolute_footer', '<script type="text/javascript" src="https://pro.ageverify.co/js/opaque.18.js"></script>'),
(410, 'default', 0, 'design/watermark/image_size', '300x232'),
(411, 'default', 0, 'design/watermark/image_imageOpacity', '6'),
(412, 'default', 0, 'design/watermark/image_position', 'center'),
(413, 'default', 0, 'design/watermark/small_image_size', '150x116'),
(414, 'default', 0, 'design/watermark/small_image_imageOpacity', '6'),
(415, 'default', 0, 'design/watermark/small_image_position', 'center'),
(416, 'default', 0, 'design/watermark/thumbnail_size', '50x39'),
(417, 'default', 0, 'design/watermark/thumbnail_imageOpacity', '6'),
(418, 'default', 0, 'design/watermark/thumbnail_position', 'center'),
(419, 'default', 0, 'design/pagination/pagination_frame', '5'),
(420, 'default', 0, 'design/pagination/pagination_frame_skip', NULL),
(421, 'default', 0, 'design/pagination/anchor_text_for_previous', NULL),
(422, 'default', 0, 'design/pagination/anchor_text_for_next', NULL),
(423, 'default', 0, 'design/email/logo_alt', 'Telegraph Health Center'),
(424, 'default', 0, 'design/email/logo_width', '210'),
(425, 'default', 0, 'design/email/logo_height', '162'),
(426, 'default', 0, 'design/email/header', 'design_email_header'),
(427, 'default', 0, 'design/email/footer', 'design_email_footer'),
(428, 'default', 0, 'design/email/css_non_inline', 'email-non-inline.css'),
(429, 'default', 0, 'design/email/logo', 'default/telegraph_health_center_logo_oakland_california_medical_cannabis_dispensary.png'),
(430, 'default', 0, 'trans_email/ident_general/name', 'Telegraph Health Center'),
(431, 'default', 0, 'trans_email/ident_general/email', 'info@telegraphhealth.com'),
(432, 'default', 0, 'trans_email/ident_sales/name', 'Telegraph Health Center vendor relations'),
(433, 'default', 0, 'trans_email/ident_sales/email', 'info@telegraphhealth.com'),
(434, 'default', 0, 'trans_email/ident_support/name', 'Telegraph Health Center patient support'),
(435, 'default', 0, 'trans_email/ident_support/email', 'info@telegraphhealth.com'),
(436, 'default', 0, 'trans_email/ident_custom1/name', 'Custom 1'),
(437, 'default', 0, 'trans_email/ident_custom1/email', 'custom1@example.com'),
(438, 'default', 0, 'trans_email/ident_custom2/name', 'Custom 2'),
(439, 'default', 0, 'trans_email/ident_custom2/email', 'custom2@example.com'),
(440, 'default', 0, 'contacts/contacts/enabled', '1'),
(441, 'default', 0, 'contacts/email/recipient_email', 'info@telegraphhealth.com'),
(442, 'default', 0, 'contacts/email/sender_email_identity', 'general'),
(443, 'default', 0, 'contacts/email/email_template', 'contacts_email_email_template'),
(444, 'default', 0, 'zendesk/backend_features/show_on_dashboard', '1'),
(445, 'default', 0, 'zendesk/backend_features/show_on_order', '1'),
(446, 'default', 0, 'zendesk/backend_features/show_views', NULL),
(447, 'default', 0, 'zendesk/backend_features/show_on_customer', '1'),
(448, 'default', 0, 'zendesk/frontend_features/show_on_dashboard', NULL),
(451, 'default', 0, 'zendesk/frontend_features/feedback_tab_customise', NULL),
(452, 'default', 0, 'zendesk/frontend_features/order_field_id', NULL),
(453, 'default', 0, 'zendesk/frontend_features/customer_tickets', '1'),
(454, 'default', 0, 'zendesk/frontend_features/footer_link_enabled', '1'),
(455, 'default', 0, 'zendesk/frontend_features/web_widget_code_active', '1'),
(456, 'default', 0, 'zendesk/frontend_features/web_widget_code_snippet', '<!-- Start of Zendesk Widget script -->\n<script>/*<![CDATA[*/window.zEmbed||function(e,t){var n,o,d,i,s,a=[],r=document.createElement("iframe");window.zEmbed=function(){a.push(arguments)},window.zE=window.zE||window.zEmbed,r.src="javascript:false",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="display: none",d=document.getElementsByTagName("script"),d=d[d.length-1],d.parentNode.insertBefore(r,d),i=r.contentWindow,s=i.document;try{o=s}catch(c){n=document.domain,r.src=''javascript:var d=document.open();d.domain="''+n+''";void(0);'',o=s}o.open()._l=function(){var o=this.createElement("script");n&&(this.domain=n),o.id="js-iframe-async",o.src=e,this.t=+new Date,this.zendeskHost=t,this.zEQueue=a,this.body.appendChild(o)},o.write(''<body onload="document._l();">''),o.close()}("https://assets.zendesk.com/embeddable_framework/main.js","telegraphhealth.zendesk.com");/*]]>*/</script>\n<!-- End of Zendesk Widget script -->'),
(457, 'default', 0, 'zendesk/hidden/provision_token', '9caf7fcb6b7acb3f2bae0c1ca05e7259'),
(458, 'default', 0, 'zendesk/general/domain', 'telegraphhealth.zendesk.com'),
(459, 'default', 0, 'zendesk/general/email', 'admin@telegraphhealth.com'),
(460, 'default', 0, 'zendesk/general/password', 'POWbBsdwNtluVLoy8BAqXUYttXtws3mMWzjpovWT'),
(461, 'default', 0, 'zendesk/general/use_external_id', '0'),
(462, 'default', 0, 'zendesk/general/customer_sync', '1'),
(463, 'default', 0, 'zendesk/sso/enabled', '0'),
(464, 'default', 0, 'zendesk/sso/token', NULL),
(465, 'default', 0, 'zendesk/sso_frontend/enabled', '0'),
(466, 'default', 0, 'zendesk/sso_frontend/token', NULL),
(467, 'default', 0, 'zendesk/sso_frontend/new', NULL),
(468, 'default', 0, 'zendesk/frontend_features/contact_us', '1'),
(469, 'default', 0, 'zendesk/backend_features/show_all', '1'),
(470, 'default', 0, 'zendesk/backend_features/default_sort', 'created_at'),
(471, 'default', 0, 'zendesk/backend_features/default_sort_dir', 'desc'),
(472, 'default', 0, 'zendesk/api/enabled', '1'),
(473, 'default', 0, 'zendesk/api/token', '4266c12e51f97ba0b0404c7d0311993d'),
(474, 'default', 0, 'zendesk/hidden/contact_email_old', 'support@telegraphhealth.zendesk.com'),
(475, 'default', 0, 'ultimo_layout/responsive/responsive', '1'),
(476, 'default', 0, 'ultimo_layout/responsive/max_width', '1280'),
(477, 'default', 0, 'ultimo_layout/responsive/fluid_width', '1'),
(478, 'default', 0, 'ultramegamenu/general/enable', '1'),
(479, 'default', 0, 'ultramegamenu/general/mode', '0'),
(480, 'default', 0, 'ultramegamenu/general/categories', '1'),
(481, 'default', 0, 'ultramegamenu/mainmenu/home', '1'),
(482, 'default', 0, 'ultramegamenu/mainmenu/home_img', '0'),
(483, 'default', 0, 'ultramegamenu/mainmenu/home_link_icon', '0'),
(484, 'default', 0, 'ultramegamenu/mainmenu/centered', '0'),
(485, 'default', 0, 'ultramegamenu/mainmenu/spill', '1'),
(486, 'default', 0, 'ultramegamenu/mainmenu/custom_block_floating', '1'),
(487, 'default', 0, 'ultramegamenu/mobilemenu/threshold', '960'),
(488, 'default', 0, 'ultramegamenu/mobilemenu/collapsed', '1'),
(489, 'default', 0, 'ultramegamenu/mobilemenu/show_blocks', '0'),
(490, 'default', 0, 'ultramegamenu/mobilemenu/hide_blocks_below', '1'),
(491, 'default', 0, 'ultramegamenu/sidemenu/enable_category_left', '1'),
(492, 'default', 0, 'ultramegamenu/sidemenu/enable_category_right', '0'),
(493, 'default', 0, 'ultramegamenu/sidemenu/enable_home_left', '0'),
(494, 'default', 0, 'ultramegamenu/sidemenu/enable_home_right', '0'),
(495, 'default', 0, 'ultramegamenu/sidemenu/enable_cms_left', '0'),
(496, 'default', 0, 'ultramegamenu/sidemenu/enable_cms_right', '0'),
(497, 'default', 0, 'ultramegamenu/sidemenu/enable_product_left', '0'),
(498, 'default', 0, 'ultramegamenu/sidemenu/enable_product_right', '0'),
(499, 'default', 0, 'ultramegamenu/sidemenu/block_name', 'Categories'),
(500, 'default', 0, 'ultramegamenu/sidemenu/parent', 'current'),
(501, 'default', 0, 'ultramegamenu/sidemenu/depth', '2'),
(502, 'default', 0, 'ultramegamenu/sidemenu/fallback', '1'),
(503, 'default', 0, 'ultramegamenu/sidemenu/block_name_fallback', NULL),
(504, 'default', 0, 'ultramegamenu/sidemenu/num_of_products', '0'),
(505, 'default', 0, 'ultramegamenu/sidemenu/hide_on_mobile', '1'),
(506, 'default', 0, 'ultramegamenu/sidemenu/hide_laynav_categories', '1'),
(507, 'default', 0, 'ultramegamenu/category_labels/label1', 'New'),
(508, 'default', 0, 'ultramegamenu/category_labels/label2', 'Hot!'),
(509, 'default', 0, 'brands/general/attr_id', 'manufacturer'),
(510, 'default', 0, 'brands/general/image_extension', 'png'),
(511, 'default', 0, 'brands/general/show_image_fallback_to_text', '1'),
(512, 'default', 0, 'brands/general/link_search_enabled', '2'),
(513, 'default', 0, 'brands/general/url_key_separator', '-'),
(514, 'default', 0, 'brands/product_view/enable', '1'),
(515, 'default', 0, 'brands/list/assigned_in_stock', '0'),
(516, 'default', 0, 'brands/slider/timeout', NULL),
(517, 'default', 0, 'brands/slider/speed', '200'),
(518, 'default', 0, 'brands/slider/auto_speed', '500'),
(519, 'default', 0, 'brands/slider/pause', '1'),
(520, 'default', 0, 'brands/slider/loop', '1'),
(521, 'default', 0, 'brands/slider/lazy', '1'),
(522, 'default', 0, 'tax/classes/shipping_tax_class', '0'),
(523, 'default', 0, 'tax/calculation/algorithm', 'TOTAL_BASE_CALCULATION'),
(524, 'default', 0, 'tax/calculation/based_on', 'billing'),
(525, 'default', 0, 'tax/calculation/price_includes_tax', '1'),
(526, 'default', 0, 'tax/calculation/shipping_includes_tax', '1'),
(527, 'default', 0, 'tax/calculation/apply_after_discount', '1'),
(528, 'default', 0, 'tax/calculation/discount_tax', '1'),
(529, 'default', 0, 'tax/ignore_notification/discount', '0'),
(530, 'default', 0, 'tax/ignore_notification/price_display', '0'),
(531, 'default', 0, 'tax/calculation/apply_tax_on', '1'),
(532, 'default', 0, 'tax/calculation/cross_border_trade_enabled', '0'),
(533, 'default', 0, 'tax/defaults/country', 'US'),
(534, 'default', 0, 'tax/defaults/region', '12'),
(535, 'default', 0, 'tax/defaults/postcode', '*94606'),
(536, 'default', 0, 'tax/display/type', '2'),
(537, 'default', 0, 'tax/display/shipping', '2'),
(538, 'default', 0, 'tax/cart_display/price', '2'),
(539, 'default', 0, 'tax/cart_display/subtotal', '2'),
(540, 'default', 0, 'tax/cart_display/shipping', '2'),
(541, 'default', 0, 'tax/cart_display/grandtotal', '1'),
(542, 'default', 0, 'tax/cart_display/full_summary', '0'),
(543, 'default', 0, 'tax/cart_display/zero_tax', '0'),
(544, 'default', 0, 'tax/sales_display/price', '2'),
(545, 'default', 0, 'tax/sales_display/subtotal', '2'),
(546, 'default', 0, 'tax/sales_display/shipping', '2'),
(547, 'default', 0, 'tax/sales_display/grandtotal', '1'),
(548, 'default', 0, 'tax/sales_display/full_summary', '0'),
(549, 'default', 0, 'tax/sales_display/zero_tax', '0'),
(550, 'default', 0, 'tax/weee/enable', '0'),
(551, 'default', 0, 'tax/weee/display_list', '0'),
(552, 'default', 0, 'tax/weee/display', '0'),
(553, 'default', 0, 'tax/weee/display_sales', '0'),
(554, 'default', 0, 'tax/weee/display_email', '0'),
(555, 'default', 0, 'tax/weee/discount', '0'),
(556, 'default', 0, 'tax/weee/apply_vat', '0'),
(557, 'default', 0, 'tax/weee/include_in_subtotal', '0'),
(558, 'default', 0, 'google/analytics/active', '1'),
(559, 'default', 0, 'google/analytics/type', 'analytics'),
(560, 'default', 0, 'google/analytics/account', 'UA-76625616-1'),
(561, 'default', 0, 'google/analytics/anonymization', '0'),
(562, 'default', 0, 'ultraslideshow/general/effect', NULL),
(563, 'default', 0, 'ultraslideshow/general/timeout', '10000'),
(564, 'default', 0, 'ultraslideshow/general/speed', '200'),
(565, 'default', 0, 'ultraslideshow/general/auto_speed', '500'),
(566, 'default', 0, 'ultraslideshow/general/smooth_height', '0'),
(567, 'default', 0, 'ultraslideshow/general/pause', '1'),
(568, 'default', 0, 'ultraslideshow/general/loop', '1'),
(569, 'default', 0, 'ultraslideshow/general/hide', '0'),
(570, 'default', 0, 'ultraslideshow/general/blocks', 'block_slide_wide1,block_slide_wide2'),
(571, 'default', 0, 'ultraslideshow/general/position2', '1'),
(572, 'default', 0, 'ultraslideshow/general/position1', '0'),
(573, 'default', 0, 'ultraslideshow/general/margin_top', NULL),
(574, 'default', 0, 'ultraslideshow/general/margin_bottom', NULL),
(575, 'default', 0, 'ultraslideshow/banners/position', 'right'),
(576, 'default', 0, 'ultraslideshow/banners/hide', '1'),
(577, 'default', 0, 'ultraslideshow/banners/banners', 'block_slideshow_banners'),
(578, 'default', 0, 'ultraslideshow/navigation/pagination', 'slider-pagination2'),
(579, 'default', 0, 'ultraslideshow/navigation/pagination_position', 'pagination-pos-over-bottom-centered'),
(580, 'default', 0, 'ultimo/header/search_in_user_menu_position', '4'),
(581, 'default', 0, 'web/url/use_store', '0'),
(582, 'default', 0, 'web/url/redirect_to_base', '1'),
(583, 'default', 0, 'web/seo/use_rewrites', '0'),
(584, 'default', 0, 'web/unsecure/base_link_url', '{{unsecure_base_url}}'),
(585, 'default', 0, 'web/unsecure/base_skin_url', '{{unsecure_base_url}}skin/'),
(586, 'default', 0, 'web/unsecure/base_media_url', '{{unsecure_base_url}}media/'),
(587, 'default', 0, 'web/unsecure/base_js_url', '{{unsecure_base_url}}js/'),
(588, 'default', 0, 'web/secure/base_link_url', '{{secure_base_url}}'),
(589, 'default', 0, 'web/secure/base_skin_url', '{{secure_base_url}}skin/'),
(590, 'default', 0, 'web/secure/base_media_url', '{{secure_base_url}}media/'),
(591, 'default', 0, 'web/secure/base_js_url', '{{secure_base_url}}js/'),
(592, 'default', 0, 'web/secure/use_in_frontend', '0'),
(593, 'default', 0, 'web/secure/use_in_adminhtml', '0'),
(594, 'default', 0, 'web/secure/offloader_header', 'SSL_OFFLOADED'),
(595, 'default', 0, 'web/default/front', 'cms'),
(596, 'default', 0, 'web/default/cms_home_page', 'home'),
(597, 'default', 0, 'web/default/no_route', 'cms/index/noRoute'),
(598, 'default', 0, 'web/default/cms_no_route', 'no-route'),
(599, 'default', 0, 'web/default/cms_no_cookies', 'enable-cookies'),
(600, 'default', 0, 'web/default/show_cms_breadcrumbs', '1'),
(601, 'default', 0, 'web/polls/poll_check_by_ip', '1'),
(602, 'default', 0, 'web/cookie/cookie_lifetime', '5000'),
(603, 'default', 0, 'web/cookie/cookie_path', NULL),
(604, 'default', 0, 'web/cookie/cookie_domain', NULL),
(605, 'default', 0, 'web/cookie/cookie_httponly', '1'),
(606, 'default', 0, 'web/cookie/cookie_restriction', '0'),
(607, 'default', 0, 'web/session/use_remote_addr', '0'),
(608, 'default', 0, 'web/session/use_http_via', '0'),
(609, 'default', 0, 'web/session/use_http_x_forwarded_for', '0'),
(610, 'default', 0, 'web/session/use_http_user_agent', '0'),
(611, 'default', 0, 'web/session/use_frontend_sid', '1'),
(612, 'default', 0, 'web/browser_capabilities/cookies', '1'),
(613, 'default', 0, 'web/browser_capabilities/javascript', '1'),
(614, 'default', 0, 'design/watermark/image_image', 'default/TelegraphHealthCenter_Logo_10-02.png'),
(615, 'default', 0, 'design/watermark/small_image_image', 'default/TelegraphHealthCenter_Logo_10-02_1.png'),
(616, 'default', 0, 'design/watermark/thumbnail_image', 'default/TelegraphHealthCenter_Logo_10-02_2.png'),
(617, 'default', 0, 'agegate/settings/enable_extension', '0'),
(618, 'default', 0, 'agegate/settings/loadjs', '0'),
(619, 'default', 0, 'agegate/settings/promotionblock', '52'),
(620, 'default', 0, 'agegate/settings/notverifyblock', '53'),
(621, 'default', 0, 'agegate/settings/agree', '18+ Enter'),
(622, 'default', 0, 'agegate/settings/disagree', 'Under 18'),
(623, 'default', 0, 'agegate/settings/cookie', '1'),
(624, 'default', 0, 'agegate/settings/width', '500'),
(625, 'default', 0, 'agegate/settings/height', 'auto'),
(626, 'default', 0, 'agegate/settings/pages', 'no-route,home,about-magento-demo-store,customer-service,enable-cookies,privacy-policy-cookie-restriction-mode,ultimo-home-page,ultimo-responsive-magento-theme,ultimo-home-page3,typography,ultimo-home-page7,ultimo-home-page4,ultimo-home-page5,ultimo-home-page6,ultimo-home-page2,ultimo-home-page8,tour,catalog,checkout,customer'),
(627, 'default', 0, 'catalog/frontend/list_mode', 'grid-list'),
(628, 'default', 0, 'catalog/frontend/grid_per_page_values', '12,24,36'),
(629, 'default', 0, 'catalog/frontend/grid_per_page', '12'),
(630, 'default', 0, 'catalog/frontend/list_per_page_values', '5,10,15,20,25'),
(631, 'default', 0, 'catalog/frontend/list_per_page', '10'),
(632, 'default', 0, 'catalog/frontend/list_allow_all', '1'),
(633, 'default', 0, 'catalog/frontend/default_sort_by', 'position'),
(634, 'default', 0, 'catalog/frontend/flat_catalog_category', '0'),
(635, 'default', 0, 'catalog/frontend/flat_catalog_product', '0'),
(636, 'default', 0, 'catalog/frontend/parse_url_directives', '1'),
(637, 'default', 0, 'catalog/sitemap/tree_mode', '0'),
(638, 'default', 0, 'catalog/sitemap/lines_perpage', '30'),
(639, 'default', 0, 'catalog/review/allow_guest', '1'),
(640, 'default', 0, 'catalog/productalert/allow_price', '0'),
(641, 'default', 0, 'catalog/productalert/email_price_template', 'catalog_productalert_email_price_template'),
(642, 'default', 0, 'catalog/productalert/allow_stock', '0'),
(643, 'default', 0, 'catalog/productalert/email_stock_template', 'catalog_productalert_email_stock_template'),
(644, 'default', 0, 'catalog/productalert/email_identity', 'general'),
(645, 'default', 0, 'catalog/productalert_cron/frequency', 'D'),
(646, 'default', 0, 'crontab/jobs/catalog_product_alert/schedule/cron_expr', '0 0 * * *'),
(647, 'default', 0, 'crontab/jobs/catalog_product_alert/run/model', 'productalert/observer::process'),
(648, 'default', 0, 'catalog/productalert_cron/time', '00,00,00'),
(649, 'default', 0, 'catalog/productalert_cron/error_email', NULL),
(650, 'default', 0, 'catalog/productalert_cron/error_email_identity', 'general'),
(651, 'default', 0, 'catalog/productalert_cron/error_email_template', 'catalog_productalert_cron_error_email_template'),
(652, 'default', 0, 'catalog/recently_products/scope', 'website'),
(653, 'default', 0, 'catalog/recently_products/viewed_count', '5'),
(654, 'default', 0, 'catalog/recently_products/compared_count', '5'),
(655, 'default', 0, 'catalog/price/scope', '0'),
(656, 'default', 0, 'catalog/layered_navigation/display_product_count', '1'),
(657, 'default', 0, 'catalog/layered_navigation/price_range_calculation', 'auto'),
(658, 'default', 0, 'catalog/navigation/max_depth', '0'),
(659, 'default', 0, 'catalog/seo/site_map', '1'),
(660, 'default', 0, 'catalog/seo/search_terms', '1'),
(661, 'default', 0, 'catalog/seo/product_url_suffix', '.html'),
(662, 'default', 0, 'catalog/seo/category_url_suffix', '.html'),
(663, 'default', 0, 'catalog/seo/product_use_categories', '1'),
(664, 'default', 0, 'catalog/seo/save_rewrites_history', '1'),
(665, 'default', 0, 'catalog/seo/title_separator', '-'),
(666, 'default', 0, 'catalog/seo/category_canonical_tag', '0'),
(667, 'default', 0, 'catalog/seo/product_canonical_tag', '0'),
(668, 'default', 0, 'catalog/search/min_query_length', '1'),
(669, 'default', 0, 'catalog/search/max_query_length', '128'),
(670, 'default', 0, 'catalog/search/max_query_words', '10'),
(671, 'default', 0, 'catalog/search/search_type', '1'),
(672, 'default', 0, 'catalog/search/use_layered_navigation_count', '2000'),
(673, 'default', 0, 'catalog/search/show_autocomplete_results_count', '1'),
(674, 'default', 0, 'catalog/downloadable/order_item_status', '9'),
(675, 'default', 0, 'catalog/downloadable/downloads_number', '0'),
(676, 'default', 0, 'catalog/downloadable/shareable', '0'),
(677, 'default', 0, 'catalog/downloadable/samples_title', 'Samples'),
(678, 'default', 0, 'catalog/downloadable/links_title', 'Links'),
(679, 'default', 0, 'catalog/downloadable/links_target_new_window', '1'),
(680, 'default', 0, 'catalog/downloadable/content_disposition', 'inline'),
(681, 'default', 0, 'catalog/downloadable/disable_guest_checkout', '1'),
(682, 'default', 0, 'catalog/custom_options/use_calendar', '0'),
(683, 'default', 0, 'catalog/custom_options/date_fields_order', 'm,d,y'),
(684, 'default', 0, 'catalog/custom_options/time_format', '12h'),
(685, 'default', 0, 'catalog/custom_options/year_range', ','),
(686, 'default', 0, 'cataloginventory/options/can_back_in_stock', '1'),
(687, 'default', 0, 'cataloginventory/options/can_subtract', '1'),
(688, 'default', 0, 'cataloginventory/options/show_out_of_stock', '1'),
(689, 'default', 0, 'cataloginventory/options/stock_threshold_qty', '0'),
(690, 'default', 0, 'cataloginventory/options/display_product_stock_status', '1'),
(691, 'default', 0, 'cataloginventory/item_options/manage_stock', '0'),
(692, 'default', 0, 'cataloginventory/item_options/backorders', '0'),
(693, 'default', 0, 'cataloginventory/item_options/max_sale_qty', '10000'),
(694, 'default', 0, 'cataloginventory/item_options/min_qty', '0'),
(695, 'default', 0, 'cataloginventory/item_options/min_sale_qty', 'a:0:{}'),
(696, 'default', 0, 'cataloginventory/item_options/notify_stock_qty', '1'),
(697, 'default', 0, 'cataloginventory/item_options/enable_qty_increments', '0'),
(698, 'default', 0, 'cataloginventory/item_options/auto_return', '0'),
(699, 'default', 0, 'customer/account_share/scope', '1'),
(700, 'default', 0, 'customer/online_customers/online_minutes_interval', NULL),
(701, 'default', 0, 'customer/create_account/auto_group_assign', '0'),
(702, 'default', 0, 'customer/create_account/default_group', '1'),
(703, 'default', 0, 'customer/create_account/viv_disable_auto_group_assign_default', '0'),
(704, 'default', 0, 'customer/create_account/vat_frontend_visibility', '0'),
(705, 'default', 0, 'customer/create_account/email_domain', 'example.com'),
(706, 'default', 0, 'customer/create_account/email_template', 'customer_create_account_email_template'),
(707, 'default', 0, 'customer/create_account/email_identity', 'general'),
(708, 'default', 0, 'customer/create_account/confirm', '0'),
(709, 'default', 0, 'customer/create_account/email_confirmation_template', 'customer_create_account_email_confirmation_template'),
(710, 'default', 0, 'customer/create_account/email_confirmed_template', 'customer_create_account_email_confirmed_template'),
(711, 'default', 0, 'customer/create_account/generate_human_friendly_id', '0'),
(712, 'default', 0, 'customer/password/forgot_email_template', 'customer_password_forgot_email_template');
INSERT INTO `mgeg_core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(713, 'default', 0, 'customer/password/remind_email_template', 'customer_password_remind_email_template'),
(714, 'default', 0, 'customer/password/forgot_email_identity', 'support'),
(715, 'default', 0, 'customer/password/reset_link_expiration_period', '1'),
(716, 'default', 0, 'customer/password/require_admin_user_to_change_user_password', '1'),
(717, 'default', 0, 'customer/address/street_lines', '2'),
(718, 'default', 0, 'customer/address/prefix_show', NULL),
(719, 'default', 0, 'customer/address/prefix_options', NULL),
(720, 'default', 0, 'customer/address/middlename_show', '0'),
(721, 'default', 0, 'customer/address/suffix_show', NULL),
(722, 'default', 0, 'customer/address/suffix_options', NULL),
(723, 'default', 0, 'customer/address/dob_show', NULL),
(724, 'default', 0, 'customer/address/taxvat_show', NULL),
(725, 'default', 0, 'customer/address/gender_show', NULL),
(726, 'default', 0, 'customer/startup/redirect_dashboard', '1'),
(727, 'default', 0, 'customer/address_templates/text', '{{depend prefix}}{{var prefix}} {{/depend}}{{var firstname}} {{depend middlename}}{{var middlename}} {{/depend}}{{var lastname}}{{depend suffix}} {{var suffix}}{{/depend}}\r\n{{depend company}}{{var company}}{{/depend}}\r\n{{if street1}}{{var street1}}\r\n{{/if}}\r\n{{depend street2}}{{var street2}}{{/depend}}\r\n{{depend street3}}{{var street3}}{{/depend}}\r\n{{depend street4}}{{var street4}}{{/depend}}\r\n{{if city}}{{var city}},  {{/if}}{{if region}}{{var region}}, {{/if}}{{if postcode}}{{var postcode}}{{/if}}\r\n{{var country}}\r\nT: {{var telephone}}\r\n{{depend fax}}F: {{var fax}}{{/depend}}\r\n{{depend vat_id}}VAT: {{var vat_id}}{{/depend}}'),
(728, 'default', 0, 'customer/address_templates/oneline', '{{depend prefix}}{{var prefix}} {{/depend}}{{var firstname}} {{depend middlename}}{{var middlename}} {{/depend}}{{var lastname}}{{depend suffix}} {{var suffix}}{{/depend}}, {{var street}}, {{var city}}, {{var region}} {{var postcode}}, {{var country}}'),
(729, 'default', 0, 'customer/address_templates/html', '{{depend prefix}}{{var prefix}} {{/depend}}{{var firstname}} {{depend middlename}}{{var middlename}} {{/depend}}{{var lastname}}{{depend suffix}} {{var suffix}}{{/depend}}<br/>\r\n{{depend company}}{{var company}}<br />{{/depend}}\r\n{{if street1}}{{var street1}}<br />{{/if}}\r\n{{depend street2}}{{var street2}}<br />{{/depend}}\r\n{{depend street3}}{{var street3}}<br />{{/depend}}\r\n{{depend street4}}{{var street4}}<br />{{/depend}}\r\n{{if city}}{{var city}},  {{/if}}{{if region}}{{var region}}, {{/if}}{{if postcode}}{{var postcode}}{{/if}}<br/>\r\n{{var country}}<br/>\r\n{{depend telephone}}T: {{var telephone}}{{/depend}}\r\n{{depend fax}}<br/>F: {{var fax}}{{/depend}}\r\n{{depend vat_id}}<br/>VAT: {{var vat_id}}{{/depend}}'),
(730, 'default', 0, 'customer/address_templates/pdf', '{{depend prefix}}{{var prefix}} {{/depend}}{{var firstname}} {{depend middlename}}{{var middlename}} {{/depend}}{{var lastname}}{{depend suffix}} {{var suffix}}{{/depend}}|\r\n{{depend company}}{{var company}}|{{/depend}}\r\n{{if street1}}{{var street1}}\r\n{{/if}}\r\n{{depend street2}}{{var street2}}|{{/depend}}\r\n{{depend street3}}{{var street3}}|{{/depend}}\r\n{{depend street4}}{{var street4}}|{{/depend}}\r\n{{if city}}{{var city}},|{{/if}}\r\n{{if region}}{{var region}}, {{/if}}{{if postcode}}{{var postcode}}{{/if}}|\r\n{{var country}}|\r\n{{depend telephone}}T: {{var telephone}}{{/depend}}|\r\n{{depend fax}}<br/>F: {{var fax}}{{/depend}}|\r\n{{depend vat_id}}<br/>VAT: {{var vat_id}}{{/depend}}|'),
(731, 'default', 0, 'customer/address_templates/js_template', '#{prefix} #{firstname} #{middlename} #{lastname} #{suffix}<br/>#{company}<br/>#{street0}<br/>#{street1}<br/>#{street2}<br/>#{street3}<br/>#{city}, #{region}, #{postcode}<br/>#{country_id}<br/>T: #{telephone}<br/>F: #{fax}<br/>VAT: #{vat_id}'),
(732, 'default', 0, 'customer/captcha/enable', '0'),
(733, 'default', 0, 'shipping/origin/country_id', 'US'),
(734, 'default', 0, 'shipping/origin/region_id', '12'),
(735, 'default', 0, 'shipping/origin/postcode', '90034'),
(736, 'default', 0, 'shipping/origin/city', NULL),
(737, 'default', 0, 'shipping/origin/street_line1', NULL),
(738, 'default', 0, 'shipping/origin/street_line2', NULL),
(739, 'default', 0, 'shipping/option/checkout_multiple', '0'),
(740, 'default', 0, 'shipping/option/checkout_multiple_maximum_qty', '100'),
(741, 'default', 0, 'monkey/general/active', '1'),
(742, 'default', 0, 'monkey/general/apikey', 'edfc123b7de878adbfdd89ae7255ec01-us11'),
(743, 'default', 0, 'monkey/general/maxlistsamount', '25'),
(744, 'default', 0, 'monkey/general/list', 'cda0795cce'),
(745, 'default', 0, 'monkey/general/cutomergroup', NULL),
(746, 'default', 0, 'monkey/general/changecustomergroup', '0'),
(747, 'default', 0, 'monkey/general/showreallistname', '0'),
(748, 'default', 0, 'monkey/general/additional_lists', 'cda0795cce'),
(749, 'default', 0, 'monkey/general/confirmation_email', '1'),
(750, 'default', 0, 'monkey/general/map_fields', 'a:15:{i:0;a:2:{s:7:"magento";s:9:"firstname";s:9:"mailchimp";s:5:"FNAME";}i:1;a:2:{s:7:"magento";s:8:"lastname";s:9:"mailchimp";s:5:"LNAME";}i:2;a:2:{s:7:"magento";s:3:"dob";s:9:"mailchimp";s:3:"DOB";}i:3;a:2:{s:7:"magento";s:6:"prefix";s:9:"mailchimp";s:7:"PRENAME";}i:4;a:2:{s:7:"magento";s:15:"billing_address";s:9:"mailchimp";s:7:"BILLING";}i:5;a:2:{s:7:"magento";s:16:"shipping_address";s:9:"mailchimp";s:8:"SHIPPING";}i:6;a:2:{s:7:"magento";s:6:"gender";s:9:"mailchimp";s:6:"GENDER";}i:7;a:2:{s:7:"magento";s:8:"store_id";s:9:"mailchimp";s:7:"STOREID";}i:8;a:2:{s:7:"magento";s:10:"website_id";s:9:"mailchimp";s:7:"WEBSITE";}i:9;a:2:{s:7:"magento";s:16:"date_of_purchase";s:9:"mailchimp";s:3:"DOP";}i:10;a:2:{s:7:"magento";s:19:"ee_customer_balance";s:9:"mailchimp";s:9:"STORECRED";}i:11;a:2:{s:7:"magento";s:8:"group_id";s:9:"mailchimp";s:6:"CGROUP";}i:12;a:2:{s:7:"magento";s:9:"telephone";s:9:"mailchimp";s:9:"TELEPHONE";}i:13;a:2:{s:7:"magento";s:7:"company";s:9:"mailchimp";s:7:"COMPANY";}i:14;a:2:{s:7:"magento";s:10:"store_code";s:9:"mailchimp";s:8:"STORECOD";}}'),
(751, 'default', 0, 'monkey/general/guest_name', NULL),
(752, 'default', 0, 'monkey/general/guest_lastname', NULL),
(753, 'default', 0, 'monkey/general/checkout_subscribe', '0'),
(754, 'default', 0, 'monkey/general/markfield', 'HASCLICKED'),
(755, 'default', 0, 'monkey/general/cron_import', '20000'),
(756, 'default', 0, 'monkey/general/cron_export', '20000'),
(757, 'default', 0, 'monkey/general/webhook_delete', '0'),
(758, 'default', 0, 'monkey/general/adminhtml_notification', '0'),
(759, 'default', 0, 'monkey/general/enable_log', '1'),
(760, 'default', 0, 'monkey/ecommerce360/active', '0'),
(761, 'default', 0, 'monkey/ecommerce360/attributes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_email_queue`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_email_queue` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Message Id',
  `entity_id` int(10) unsigned DEFAULT NULL COMMENT 'Entity ID',
  `entity_type` varchar(128) DEFAULT NULL COMMENT 'Entity Type',
  `event_type` varchar(128) DEFAULT NULL COMMENT 'Event Type',
  `message_body_hash` varchar(64) NOT NULL COMMENT 'Message Body Hash',
  `message_body` mediumtext NOT NULL COMMENT 'Message Body',
  `message_parameters` text NOT NULL COMMENT 'Message Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `processed_at` timestamp NULL DEFAULT NULL COMMENT 'Finish Time',
  PRIMARY KEY (`message_id`),
  KEY `5B27D11607888E967A3A45A9398A3C56` (`entity_id`,`entity_type`,`event_type`,`message_body_hash`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Email Queue' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_email_queue_recipients`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_email_queue_recipients` (
  `recipient_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Recipient Id',
  `message_id` int(10) unsigned NOT NULL COMMENT 'Message ID',
  `recipient_email` varchar(128) NOT NULL COMMENT 'Recipient Email',
  `recipient_name` varchar(255) NOT NULL COMMENT 'Recipient Name',
  `email_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Email Type',
  PRIMARY KEY (`recipient_id`),
  UNIQUE KEY `F4F5409895786690F32FB5734F9E4558` (`message_id`,`recipient_email`,`email_type`),
  KEY `IDX_MGEG_CORE_EMAIL_QUEUE_RECIPIENTS_RECIPIENT_EMAIL` (`recipient_email`),
  KEY `IDX_MGEG_CORE_EMAIL_QUEUE_RECIPIENTS_EMAIL_TYPE` (`email_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Email Queue' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_email_template`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Creation',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `UNQ_MGEG_CORE_EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `IDX_MGEG_CORE_EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_MGEG_CORE_EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_flag`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `IDX_MGEG_CORE_FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Flag' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `mgeg_core_flag`
--

INSERT INTO `mgeg_core_flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(1, 'admin_notification_survey', 0, 'a:1:{s:13:"survey_viewed";b:1;}', '2016-04-27 16:50:44'),
(2, 'catalog_product_flat', 0, 'a:2:{s:8:"is_built";b:1;s:16:"is_store_built_1";b:1;}', '2016-04-27 18:53:17'),
(3, 'report_order_aggregated', 0, NULL, '2016-04-28 02:04:02'),
(4, 'report_shipping_aggregated', 0, NULL, '2016-04-28 02:04:03'),
(5, 'report_invoiced_aggregated', 0, NULL, '2016-04-28 02:04:03'),
(6, 'report_refunded_aggregated', 0, NULL, '2016-04-28 02:04:03'),
(7, 'report_bestsellers_aggregated', 0, NULL, '2016-04-28 02:04:03'),
(8, 'report_coupons_aggregated', 0, NULL, '2016-04-28 02:04:03'),
(9, 'report_tax_aggregated', 0, NULL, '2016-04-28 02:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_layout_link`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `area` varchar(64) DEFAULT NULL COMMENT 'Area',
  `package` varchar(64) DEFAULT NULL COMMENT 'Package',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  PRIMARY KEY (`layout_link_id`),
  UNIQUE KEY `UNQ_MGEG_CORE_LYT_LNK_STORE_ID_PACKAGE_THEME_LYT_UPDATE_ID` (`store_id`,`package`,`theme`,`layout_update_id`),
  KEY `IDX_MGEG_CORE_LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_layout_update`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`layout_update_id`),
  KEY `IDX_MGEG_CORE_LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_resource`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_resource` (
  `code` varchar(50) NOT NULL COMMENT 'Resource Code',
  `version` varchar(50) DEFAULT NULL COMMENT 'Resource Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resources';

--
-- Dumping data for table `mgeg_core_resource`
--

INSERT INTO `mgeg_core_resource` (`code`, `version`, `data_version`) VALUES
('adminnotification_setup', '1.6.0.0', '1.6.0.0'),
('admin_setup', '1.6.1.2', '1.6.1.2'),
('agegate_setup', '0.1.0', '0.1.0'),
('api2_setup', '1.0.0.0', '1.0.0.0'),
('api_setup', '1.6.0.1', '1.6.0.1'),
('backup_setup', '1.6.0.0', '1.6.0.0'),
('bundle_setup', '1.6.0.0.1', '1.6.0.0.1'),
('captcha_setup', '1.7.0.0.0', '1.7.0.0.0'),
('catalogindex_setup', '1.6.0.0', '1.6.0.0'),
('cataloginventory_setup', '1.6.0.0.2', '1.6.0.0.2'),
('catalogrule_setup', '1.6.0.3', '1.6.0.3'),
('catalogsearch_setup', '1.8.2.0', '1.8.2.0'),
('catalog_setup', '1.6.0.0.19.1.2', '1.6.0.0.19.1.2'),
('checkout_setup', '1.6.0.0', '1.6.0.0'),
('cms_setup', '1.6.0.0.2', '1.6.0.0.2'),
('compiler_setup', '1.6.0.0', '1.6.0.0'),
('contacts_setup', '1.6.0.0', '1.6.0.0'),
('core_setup', '1.6.0.6', '1.6.0.6'),
('cron_setup', '1.6.0.0', '1.6.0.0'),
('customer_setup', '1.6.2.0.4', '1.6.2.0.4'),
('dataflow_setup', '1.6.0.0', '1.6.0.0'),
('directory_setup', '1.6.0.3', '1.6.0.3'),
('downloadable_setup', '1.6.0.0.2', '1.6.0.0.2'),
('eav_setup', '1.6.0.1', '1.6.0.1'),
('ebizmarts_abandonedcart_setup', '1.2.1', '1.2.1'),
('ebizmarts_autoresponder_setup', '1.2.1', '1.2.1'),
('fancypopup_setup', '0.0.1', '0.0.1'),
('giftmessage_setup', '1.6.0.0', '1.6.0.0'),
('googleanalytics_setup', '1.6.0.0', '1.6.0.0'),
('importexport_setup', '1.6.0.2', '1.6.0.2'),
('index_setup', '1.6.0.0', '1.6.0.0'),
('log_setup', '1.6.1.1', '1.6.1.1'),
('moneybookers_setup', '1.6.0.0', '1.6.0.0'),
('monkey_setup', '1.2.2', '1.2.2'),
('newsletter_setup', '1.6.0.2', '1.6.0.2'),
('oauth_setup', '1.0.0.0', '1.0.0.0'),
('paygate_setup', '1.6.0.0', '1.6.0.0'),
('payment_setup', '1.6.0.0', '1.6.0.0'),
('paypaluk_setup', '1.6.0.0', '1.6.0.0'),
('paypal_setup', '1.6.0.6', '1.6.0.6'),
('persistent_setup', '1.0.0.0', '1.0.0.0'),
('poll_setup', '1.6.0.1', '1.6.0.1'),
('productalert_setup', '1.6.0.0', '1.6.0.0'),
('rating_setup', '1.6.0.1', '1.6.0.1'),
('reports_setup', '1.6.0.0.1', '1.6.0.0.1'),
('review_setup', '1.6.0.0', '1.6.0.0'),
('salesrule_setup', '1.6.0.3', '1.6.0.3'),
('sales_setup', '1.6.0.9', '1.6.0.9'),
('sendfriend_setup', '1.6.0.1', '1.6.0.1'),
('shipping_setup', '1.6.0.0', '1.6.0.0'),
('sitemap_setup', '1.6.0.0', '1.6.0.0'),
('tag_setup', '1.6.0.0', '1.6.0.0'),
('tax_setup', '1.6.0.4', '1.6.0.4'),
('ultimo_setup', '1.15.4', '1.15.4'),
('ultramegamenu_setup', '1.2.0', '1.2.0'),
('usa_setup', '1.6.0.3', '1.6.0.3'),
('weee_setup', '1.6.0.0', '1.6.0.0'),
('widget_setup', '1.6.0.0', '1.6.0.0'),
('wishlist_setup', '1.6.0.0', '1.6.0.0'),
('zendesk_setup', '2.1.4', '2.1.4');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_session`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

--
-- Dumping data for table `mgeg_core_session`
--

INSERT INTO `mgeg_core_session` (`session_id`, `session_expires`, `session_data`) VALUES
('a7lcfvlutpar9v71fgcdqcjon7', 1462687849, 0x636f72657c613a363a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31323a223137322e35382e33322e3237223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36383a224d6f7a696c6c612f352e302028416e64726f696420362e302e313b204d6f62696c653b2072763a34362e3029204765636b6f2f34362e302046697265666f782f34362e30223b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a393a225f666f726d5f6b6579223b733a31363a2230324e4c6f515a463537623754677931223b733a31323a2276697369746f725f64617461223b613a31373a7b733a303a22223b4e3b733a31313a227365727665725f61646472223b733a343a22b5e08712223b733a31313a2272656d6f74655f61646472223b733a343a22ac3a201b223b733a31313a22687474705f736563757265223b623a303b733a393a22687474705f686f7374223b733a31343a226269736f6e6d656469612e6e6574223b733a31353a22687474705f757365725f6167656e74223b733a36383a224d6f7a696c6c612f352e302028416e64726f696420362e302e313b204d6f62696c653b2072763a34362e3029204765636b6f2f34362e302046697265666f782f34362e30223b733a32303a22687474705f6163636570745f6c616e6775616765223b733a31343a22656e2d55532c656e3b713d302e35223b733a31393a22687474705f6163636570745f63686172736574223b733a303a22223b733a31313a22726571756573745f757269223b733a343a222f64642f223b733a31303a2273657373696f6e5f6964223b733a32363a226771626a6d313762707066717467766b71763471346e6e353337223b733a31323a22687474705f72656665726572223b733a303a22223b733a31343a2266697273745f76697369745f6174223b733a31393a22323031362d30352d30382030343a34343a3435223b733a31343a2269735f6e65775f76697369746f72223b623a303b733a31333a226c6173745f76697369745f6174223b733a31393a22323031362d30352d30382030343a34373a3239223b733a31303a2276697369746f725f6964223b733a333a22313236223b733a31373a22646f5f637573746f6d65725f6c6f67696e223b623a313b733a31313a22637573746f6d65725f6964223b733a313a2231223b7d733a383a226c6173745f75726c223b733a35313a22687474703a2f2f6269736f6e6d656469612e6e65742f64642f696e6465782e7068702f636d732f696e6465782f696e6465782f223b733a31353a226a7573745f766f7465645f706f6c6c223b623a303b7d637573746f6d65725f626173657c613a383a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31323a223137322e35382e33322e3237223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36383a224d6f7a696c6c612f352e302028416e64726f696420362e302e313b204d6f62696c653b2072763a34362e3029204765636b6f2f34362e302046697265666f782f34362e30223b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a31393a22776973686c6973745f6974656d5f636f756e74223b693a313b733a31313a22637573746f6d65725f6964223b4e3b733a31373a22637573746f6d65725f67726f75705f6964223b4e3b733a323a226964223b733a313a2231223b733a32313a22776973686c6973745f646973706c61795f74797065223b4e3b733a32393a22646973706c61795f6f75745f6f665f73746f636b5f70726f6475637473223b733a313a2231223b7d636174616c6f677c613a353a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31323a223137322e35382e33322e3237223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36383a224d6f7a696c6c612f352e302028416e64726f696420362e302e313b204d6f62696c653b2072763a34362e3029204765636b6f2f34362e302046697265666f782f34362e30223b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a32373a22636174616c6f675f636f6d706172655f6974656d735f636f756e74223b693a303b733a32343a226c6173745f766973697465645f63617465676f72795f6964223b733a313a2235223b733a32333a226c6173745f7669657765645f63617465676f72795f6964223b733a313a2235223b7d636865636b6f75747c613a333a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31323a223137322e35382e33322e3237223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36383a224d6f7a696c6c612f352e302028416e64726f696420362e302e313b204d6f62696c653b2072763a34362e3029204765636b6f2f34362e302046697265666f782f34362e30223b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a31303a2271756f74655f69645f31223b733a313a2233223b7d73746f72655f64656661756c747c613a313a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31323a223137322e35382e33322e3237223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36383a224d6f7a696c6c612f352e302028416e64726f696420362e302e313b204d6f62696c653b2072763a34362e3029204765636b6f2f34362e302046697265666f782f34362e30223b7d7d7265706f7274737c613a333a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31323a223137322e35382e33322e3237223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36383a224d6f7a696c6c612f352e302028416e64726f696420362e302e313b204d6f62696c653b2072763a34362e3029204765636b6f2f34362e302046697265666f782f34362e30223b7d733a32383a2270726f647563745f696e6465785f636f6d70617265645f636f756e74223b693a323b733a32363a2270726f647563745f696e6465785f7669657765645f636f756e74223b693a343b7d),
('c4gghudob04vb8hk2pqup0ami2', 1462740063, 0x636f72657c613a353a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31333a2236362e3234392e38342e313338223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a3131393a224d6f7a696c6c612f352e3020285831313b204c696e7578207838365f363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34392e302e323632332e3735205361666172692f3533372e333620476f6f676c652046617669636f6e223b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a393a225f666f726d5f6b6579223b733a31363a22464e68596e6177674e4b4430516c575a223b733a31323a2276697369746f725f64617461223b613a31353a7b733a303a22223b4e3b733a31313a227365727665725f61646472223b733a343a22b5e08712223b733a31313a2272656d6f74655f61646472223b733a343a2242f9548a223b733a31313a22687474705f736563757265223b623a303b733a393a22687474705f686f7374223b733a31343a226269736f6e6d656469612e6e6574223b733a31353a22687474705f757365725f6167656e74223b733a3131393a224d6f7a696c6c612f352e3020285831313b204c696e7578207838365f363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34392e302e323632332e3735205361666172692f3533372e333620476f6f676c652046617669636f6e223b733a32303a22687474705f6163636570745f6c616e6775616765223b733a303a22223b733a31393a22687474705f6163636570745f63686172736574223b733a303a22223b733a31313a22726571756573745f757269223b733a31343a222f64642f696e6465782e7068702f223b733a31303a2273657373696f6e5f6964223b733a32363a22633467676875646f623034766238686b327071757030616d6932223b733a31323a22687474705f72656665726572223b733a303a22223b733a31343a2266697273745f76697369745f6174223b733a31393a22323031362d30352d30382031393a31373a3432223b733a31343a2269735f6e65775f76697369746f72223b623a303b733a31333a226c6173745f76697369745f6174223b733a31393a22323031362d30352d30382031393a31373a3433223b733a31303a2276697369746f725f6964223b733a333a22313238223b7d733a383a226c6173745f75726c223b733a35313a22687474703a2f2f6269736f6e6d656469612e6e65742f64642f696e6465782e7068702f636d732f696e6465782f696e6465782f223b7d637573746f6d65725f626173657c613a333a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31333a2236362e3234392e38342e313338223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a3131393a224d6f7a696c6c612f352e3020285831313b204c696e7578207838365f363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34392e302e323632332e3735205361666172692f3533372e333620476f6f676c652046617669636f6e223b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a31393a22776973686c6973745f6974656d5f636f756e74223b693a303b7d636174616c6f677c613a333a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31333a2236362e3234392e38342e313338223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a3131393a224d6f7a696c6c612f352e3020285831313b204c696e7578207838365f363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34392e302e323632332e3735205361666172692f3533372e333620476f6f676c652046617669636f6e223b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a32373a22636174616c6f675f636f6d706172655f6974656d735f636f756e74223b693a303b7d636865636b6f75747c613a323a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31333a2236362e3234392e38342e313338223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a3131393a224d6f7a696c6c612f352e3020285831313b204c696e7578207838365f363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34392e302e323632332e3735205361666172692f3533372e333620476f6f676c652046617669636f6e223b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d7d73746f72655f64656661756c747c613a313a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31333a2236362e3234392e38342e313338223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a3131393a224d6f7a696c6c612f352e3020285831313b204c696e7578207838365f363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34392e302e323632332e3735205361666172692f3533372e333620476f6f676c652046617669636f6e223b7d7d),
('eou3p2k4u9o3tkrv56356havo1', 1462740063, 0x636f72657c613a353a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31333a2236362e3234392e38342e313338223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a3131393a224d6f7a696c6c612f352e3020285831313b204c696e7578207838365f363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34392e302e323632332e3735205361666172692f3533372e333620476f6f676c652046617669636f6e223b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a393a225f666f726d5f6b6579223b733a31363a22465062687239726269396a3635485756223b733a31323a2276697369746f725f64617461223b613a31353a7b733a303a22223b4e3b733a31313a227365727665725f61646472223b733a343a22b5e08712223b733a31313a2272656d6f74655f61646472223b733a343a2242f9548a223b733a31313a22687474705f736563757265223b623a303b733a393a22687474705f686f7374223b733a31343a226269736f6e6d656469612e6e6574223b733a31353a22687474705f757365725f6167656e74223b733a3131393a224d6f7a696c6c612f352e3020285831313b204c696e7578207838365f363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34392e302e323632332e3735205361666172692f3533372e333620476f6f676c652046617669636f6e223b733a32303a22687474705f6163636570745f6c616e6775616765223b733a303a22223b733a31393a22687474705f6163636570745f63686172736574223b733a303a22223b733a31313a22726571756573745f757269223b733a343a222f64642f223b733a31303a2273657373696f6e5f6964223b733a32363a22656f753370326b3475396f33746b727635363335366861766f31223b733a31323a22687474705f72656665726572223b733a303a22223b733a31343a2266697273745f76697369745f6174223b733a31393a22323031362d30352d30382031393a31373a3432223b733a31343a2269735f6e65775f76697369746f72223b623a303b733a31333a226c6173745f76697369745f6174223b733a31393a22323031362d30352d30382031393a31373a3433223b733a31303a2276697369746f725f6964223b733a333a22313237223b7d733a383a226c6173745f75726c223b733a35313a22687474703a2f2f6269736f6e6d656469612e6e65742f64642f696e6465782e7068702f636d732f696e6465782f696e6465782f223b7d637573746f6d65725f626173657c613a333a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31333a2236362e3234392e38342e313338223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a3131393a224d6f7a696c6c612f352e3020285831313b204c696e7578207838365f363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34392e302e323632332e3735205361666172692f3533372e333620476f6f676c652046617669636f6e223b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a31393a22776973686c6973745f6974656d5f636f756e74223b693a303b7d636174616c6f677c613a333a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31333a2236362e3234392e38342e313338223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a3131393a224d6f7a696c6c612f352e3020285831313b204c696e7578207838365f363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34392e302e323632332e3735205361666172692f3533372e333620476f6f676c652046617669636f6e223b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a32373a22636174616c6f675f636f6d706172655f6974656d735f636f756e74223b693a303b7d636865636b6f75747c613a323a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31333a2236362e3234392e38342e313338223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a3131393a224d6f7a696c6c612f352e3020285831313b204c696e7578207838365f363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34392e302e323632332e3735205361666172692f3533372e333620476f6f676c652046617669636f6e223b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d7d73746f72655f64656661756c747c613a313a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a31333a2236362e3234392e38342e313338223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a3131393a224d6f7a696c6c612f352e3020285831313b204c696e7578207838365f363429204170706c655765624b69742f3533372e333620284b48544d4c2c206c696b65204765636b6f29204368726f6d652f34392e302e323632332e3735205361666172692f3533372e333620476f6f676c652046617669636f6e223b7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_store`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `UNQ_MGEG_CORE_STORE_CODE` (`code`),
  KEY `IDX_MGEG_CORE_STORE_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGEG_CORE_STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `IDX_MGEG_CORE_STORE_GROUP_ID` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Stores' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_core_store`
--

INSERT INTO `mgeg_core_store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'default', 1, 1, 'Default Store View', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_store_group`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id',
  PRIMARY KEY (`group_id`),
  KEY `IDX_MGEG_CORE_STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGEG_CORE_STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Store Groups' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_core_store_group`
--

INSERT INTO `mgeg_core_store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`) VALUES
(0, 0, 'Default', 0, 0),
(1, 1, 'Main Website Store', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_translate`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_translate` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `UNQ_MGEG_CORE_TRANSLATE_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`),
  KEY `IDX_MGEG_CORE_TRANSLATE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_url_rewrite`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `id_path` varchar(255) DEFAULT NULL COMMENT 'Id Path',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `is_system` smallint(5) unsigned DEFAULT '1' COMMENT 'Defines is Rewrite System',
  `options` varchar(255) DEFAULT NULL COMMENT 'Options',
  `description` varchar(255) DEFAULT NULL COMMENT 'Deascription',
  `category_id` int(10) unsigned DEFAULT NULL COMMENT 'Category Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `UNQ_MGEG_CORE_URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  UNIQUE KEY `UNQ_MGEG_CORE_URL_REWRITE_ID_PATH_IS_SYSTEM_STORE_ID` (`id_path`,`is_system`,`store_id`),
  KEY `IDX_MGEG_CORE_URL_REWRITE_TARGET_PATH_STORE_ID` (`target_path`,`store_id`),
  KEY `IDX_MGEG_CORE_URL_REWRITE_ID_PATH` (`id_path`),
  KEY `IDX_MGEG_CORE_URL_REWRITE_STORE_ID` (`store_id`),
  KEY `FK_MGEG_CORE_URL_REWRITE_CTGR_ID_MGEG_CAT_CTGR_ENTT_ENTT_ID` (`category_id`),
  KEY `FK_MGEG_CORE_URL_REWRITE_PRD_ID_MGEG_CAT_CTGR_ENTT_ENTT_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Url Rewrites' AUTO_INCREMENT=60 ;

--
-- Dumping data for table `mgeg_core_url_rewrite`
--

INSERT INTO `mgeg_core_url_rewrite` (`url_rewrite_id`, `store_id`, `id_path`, `request_path`, `target_path`, `is_system`, `options`, `description`, `category_id`, `product_id`) VALUES
(1, 1, 'product/1', 'test.html', 'catalog/product/view/id/1', 1, NULL, NULL, NULL, 1),
(4, 1, 'category/4', 'mmj-flower.html', 'catalog/category/view/id/4', 1, NULL, NULL, 4, NULL),
(5, 1, 'category/5', 'mmj-flower/mmj-sativa.html', 'catalog/category/view/id/5', 1, NULL, NULL, 5, NULL),
(6, 1, 'category/6', 'mmj-flower/mmj-hybrid.html', 'catalog/category/view/id/6', 1, NULL, NULL, 6, NULL),
(7, 1, 'category/7', 'mmj-flower/mmj-indica.html', 'catalog/category/view/id/7', 1, NULL, NULL, 7, NULL),
(8, 1, 'category/8', 'infused-products.html', 'catalog/category/view/id/8', 1, NULL, NULL, 8, NULL),
(9, 1, 'category/9', 'concentrates.html', 'catalog/category/view/id/9', 1, NULL, NULL, 9, NULL),
(10, 1, 'category/10', 'infused-products/edibles.html', 'catalog/category/view/id/10', 1, NULL, NULL, 10, NULL),
(11, 1, 'category/11', 'infused-products/tinctures.html', 'catalog/category/view/id/11', 1, NULL, NULL, 11, NULL),
(12, 1, 'category/12', 'infused-products/topicals.html', 'catalog/category/view/id/12', 1, NULL, NULL, 12, NULL),
(13, 1, 'category/13', 'other.html', 'catalog/category/view/id/13', 1, NULL, NULL, 13, NULL),
(14, 1, 'category/14', 'other/pre-rolls.html', 'catalog/category/view/id/14', 1, NULL, NULL, 14, NULL),
(15, 1, 'category/15', 'other/seeds.html', 'catalog/category/view/id/15', 1, NULL, NULL, 15, NULL),
(16, 1, 'category/16', 'other/clones.html', 'catalog/category/view/id/16', 1, NULL, NULL, 16, NULL),
(17, 1, 'category/17', 'other/clothing.html', 'catalog/category/view/id/17', 1, NULL, NULL, 17, NULL),
(18, 1, 'category/18', 'other/accesories.html', 'catalog/category/view/id/18', 1, NULL, NULL, 18, NULL),
(35, 1, '18583300_1462244872', 'menu/mmj-flower.html', 'mmj-flower.html', 0, 'RP', NULL, 4, NULL),
(36, 1, '19123600_1462244872', 'menu/mmj-flower/mmj-sativa.html', 'mmj-flower/mmj-sativa.html', 0, 'RP', NULL, 5, NULL),
(37, 1, '19555800_1462244872', 'menu/mmj-flower/mmj-hybrid.html', 'mmj-flower/mmj-hybrid.html', 0, 'RP', NULL, 6, NULL),
(38, 1, '19938800_1462244872', 'menu/mmj-flower/mmj-indica.html', 'mmj-flower/mmj-indica.html', 0, 'RP', NULL, 7, NULL),
(39, 1, '04830200_1462244875', 'menu/concentrates.html', 'concentrates.html', 0, 'RP', NULL, 9, NULL),
(40, 1, '70384800_1462244882', 'menu/infused-products.html', 'infused-products.html', 0, 'RP', NULL, 8, NULL),
(41, 1, '70831600_1462244882', 'menu/infused-products/edibles.html', 'infused-products/edibles.html', 0, 'RP', NULL, 10, NULL),
(42, 1, '71218200_1462244882', 'menu/infused-products/tinctures.html', 'infused-products/tinctures.html', 0, 'RP', NULL, 11, NULL),
(43, 1, '71598200_1462244882', 'menu/infused-products/topicals.html', 'infused-products/topicals.html', 0, 'RP', NULL, 12, NULL),
(44, 1, '06653600_1462244886', 'menu/other.html', 'other.html', 0, 'RP', NULL, 13, NULL),
(45, 1, '07144600_1462244886', 'menu/other/pre-rolls.html', 'other/pre-rolls.html', 0, 'RP', NULL, 14, NULL),
(46, 1, '07517000_1462244886', 'menu/other/seeds.html', 'other/seeds.html', 0, 'RP', NULL, 15, NULL),
(47, 1, '07882200_1462244886', 'menu/other/clones.html', 'other/clones.html', 0, 'RP', NULL, 16, NULL),
(48, 1, '08249700_1462244886', 'menu/other/clothing.html', 'other/clothing.html', 0, 'RP', NULL, 17, NULL),
(49, 1, '08606600_1462244886', 'menu/other/accesories.html', 'other/accesories.html', 0, 'RP', NULL, 18, NULL),
(50, 1, 'product/1/4', 'mmj-flower/test.html', 'catalog/product/view/id/1/category/4', 1, NULL, NULL, 4, 1),
(51, 1, 'product/1/5', 'mmj-flower/mmj-sativa/test.html', 'catalog/product/view/id/1/category/5', 1, NULL, NULL, 5, 1),
(52, 1, 'product/2', 'test-indica-flower-1.html', 'catalog/product/view/id/2', 1, NULL, NULL, NULL, 2),
(53, 1, 'product/2/4', 'mmj-flower/test-indica-flower-1.html', 'catalog/product/view/id/2/category/4', 1, NULL, NULL, 4, 2),
(54, 1, 'product/2/7', 'mmj-flower/mmj-indica/test-indica-flower-1.html', 'catalog/product/view/id/2/category/7', 1, NULL, NULL, 7, 2),
(55, 1, 'product/3', 'test-concentrate-1.html', 'catalog/product/view/id/3', 1, NULL, NULL, NULL, 3),
(56, 1, 'product/3/9', 'concentrates/test-concentrate-1.html', 'catalog/product/view/id/3/category/9', 1, NULL, NULL, 9, 3),
(57, 1, 'product/4', 'test-edible-1.html', 'catalog/product/view/id/4', 1, NULL, NULL, NULL, 4),
(58, 1, 'product/4/8', 'infused-products/test-edible-1.html', 'catalog/product/view/id/4/category/8', 1, NULL, NULL, 8, 4),
(59, 1, 'product/4/10', 'infused-products/edibles/test-edible-1.html', 'catalog/product/view/id/4/category/10', 1, NULL, NULL, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_variable`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `UNQ_MGEG_CORE_VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_variable_value`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CORE_VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `IDX_MGEG_CORE_VARIABLE_VALUE_VARIABLE_ID` (`variable_id`),
  KEY `IDX_MGEG_CORE_VARIABLE_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_core_website`
--

CREATE TABLE IF NOT EXISTS `mgeg_core_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `UNQ_MGEG_CORE_WEBSITE_CODE` (`code`),
  KEY `IDX_MGEG_CORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `IDX_MGEG_CORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Websites' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_core_website`
--

INSERT INTO `mgeg_core_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_coupon_aggregated`
--

CREATE TABLE IF NOT EXISTS `mgeg_coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGEG_COUPON_AGGRED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_MGEG_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_COUPON_AGGREGATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_coupon_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `mgeg_coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `C10123F00411B7EF5CF4CD64EA5D82CC` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_MGEG_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_coupon_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `mgeg_coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `F1529E86DDA9E1CC34286AAFE6197019` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_MGEG_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Premg Coupon Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_cron_schedule`
--

CREATE TABLE IF NOT EXISTS `mgeg_cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `IDX_MGEG_CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `IDX_MGEG_CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Cron Schedule' AUTO_INCREMENT=12065 ;

--
-- Dumping data for table `mgeg_cron_schedule`
--

INSERT INTO `mgeg_cron_schedule` (`schedule_id`, `job_code`, `status`, `messages`, `created_at`, `scheduled_at`, `executed_at`, `finished_at`) VALUES
(12028, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 17:55:00', NULL, NULL),
(12029, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 17:56:00', NULL, NULL),
(12030, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 17:57:00', NULL, NULL),
(12031, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 17:58:00', NULL, NULL),
(12032, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 17:59:00', NULL, NULL),
(12033, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:00:00', NULL, NULL),
(12034, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:01:00', NULL, NULL),
(12035, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:02:00', NULL, NULL),
(12036, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:03:00', NULL, NULL),
(12037, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:04:00', NULL, NULL),
(12038, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:05:00', NULL, NULL),
(12039, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:06:00', NULL, NULL),
(12040, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:07:00', NULL, NULL),
(12041, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:08:00', NULL, NULL),
(12042, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:09:00', NULL, NULL),
(12043, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:10:00', NULL, NULL),
(12044, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:11:00', NULL, NULL),
(12045, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:12:00', NULL, NULL),
(12046, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:13:00', NULL, NULL),
(12047, 'core_email_queue_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:14:00', NULL, NULL),
(12048, 'captcha_delete_old_attempts', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:00:00', NULL, NULL),
(12049, 'captcha_delete_expired_images', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:00:00', NULL, NULL),
(12050, 'captcha_delete_expired_images', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:10:00', NULL, NULL),
(12051, 'newsletter_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 17:55:00', NULL, NULL),
(12052, 'newsletter_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:00:00', NULL, NULL),
(12053, 'newsletter_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:05:00', NULL, NULL),
(12054, 'newsletter_send_all', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:10:00', NULL, NULL),
(12055, 'ebizmarts_abandoned_cart', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 17:55:00', NULL, NULL),
(12056, 'ebizmarts_abandoned_cart', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:00:00', NULL, NULL),
(12057, 'ebizmarts_abandoned_cart', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:05:00', NULL, NULL),
(12058, 'ebizmarts_abandoned_cart', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:10:00', NULL, NULL),
(12059, 'ebizmarts_autoresponder', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:00:00', NULL, NULL),
(12060, 'magemonkey_bulksync_export_subscribers', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:00:00', NULL, NULL),
(12061, 'magemonkey_bulksync_import_subscribers', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:00:00', NULL, NULL),
(12062, 'magemonkey_autoexport_subscribers', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:00:00', NULL, NULL),
(12063, 'magemonkey_sendorders_asynch', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:00:00', NULL, NULL),
(12064, 'magemonkey_sendsubscribers_asynch', 'pending', NULL, '2016-05-08 17:55:02', '2016-05-08 18:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_address_entity`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_address_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CSTR_ADDR_ENTT_DTIME_ENTT_ID_ATTR_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CSTR_ADDR_ENTT_DTIME_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_address_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CSTR_ADDR_ENTT_DEC_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_address_entity_int`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CSTR_ADDR_ENTT_INT_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_address_entity_text`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_address_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CSTR_ADDR_ENTT_VCHR_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Dumping data for table `mgeg_customer_eav_attribute`
--

INSERT INTO `mgeg_customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`) VALUES
(1, 1, NULL, 0, NULL, 1, 10, NULL),
(2, 0, NULL, 0, NULL, 1, 0, NULL),
(3, 1, NULL, 0, NULL, 1, 20, NULL),
(4, 0, NULL, 0, NULL, 0, 30, NULL),
(5, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(6, 0, NULL, 0, NULL, 0, 50, NULL),
(7, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(8, 0, NULL, 0, NULL, 0, 70, NULL),
(9, 1, NULL, 0, 'a:1:{s:16:"input_validation";s:5:"email";}', 1, 80, NULL),
(10, 1, NULL, 0, NULL, 1, 25, NULL),
(11, 0, 'date', 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 0, 90, NULL),
(12, 0, NULL, 0, NULL, 1, 0, NULL),
(13, 0, NULL, 0, NULL, 1, 0, NULL),
(14, 0, NULL, 0, NULL, 1, 0, NULL),
(15, 0, NULL, 0, 'a:1:{s:15:"max_text_length";i:255;}', 0, 100, NULL),
(16, 0, NULL, 0, NULL, 1, 0, NULL),
(17, 0, 'datetime', 0, NULL, 0, 0, NULL),
(18, 0, NULL, 0, 'a:0:{}', 0, 110, NULL),
(19, 0, NULL, 0, NULL, 0, 10, NULL),
(20, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 20, NULL),
(21, 0, NULL, 0, NULL, 0, 30, NULL),
(22, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(23, 0, NULL, 0, NULL, 0, 50, NULL),
(24, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(25, 1, NULL, 2, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 70, NULL),
(26, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 80, NULL),
(27, 1, NULL, 0, NULL, 1, 90, NULL),
(28, 1, NULL, 0, NULL, 1, 100, NULL),
(29, 1, NULL, 0, NULL, 1, 100, NULL),
(30, 1, NULL, 0, 'a:0:{}', 1, 110, 'customer/attribute_data_postcode'),
(31, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 120, NULL),
(32, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 130, NULL),
(33, 0, NULL, 0, NULL, 1, 0, NULL),
(34, 0, NULL, 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 1, 0, NULL),
(35, 1, NULL, 0, NULL, 1, 28, NULL),
(36, 1, NULL, 0, NULL, 1, 140, NULL),
(37, 0, NULL, 0, NULL, 1, 0, NULL),
(38, 0, NULL, 0, NULL, 1, 0, NULL),
(39, 0, NULL, 0, NULL, 1, 0, NULL),
(40, 0, NULL, 0, NULL, 1, 0, NULL),
(140, 1, NULL, 1, NULL, 0, 0, NULL),
(141, 1, NULL, 1, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_eav_attribute_website`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `IDX_MGEG_CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_entity`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_customer_entity`
--

INSERT INTO `mgeg_customer_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `website_id`, `email`, `group_id`, `increment_id`, `store_id`, `created_at`, `updated_at`, `is_active`, `disable_auto_group_change`) VALUES
(1, 1, 0, 1, 'benjamin.daniel@outlook.com', 1, NULL, 1, '2016-04-28 21:18:53', '2016-05-03 07:07:03', 1, 0),
(2, 1, 0, 1, 'john@demian.com', 1, NULL, 1, '2016-05-04 21:16:29', '2016-05-05 15:35:23', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_entity_int`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_entity_text`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `mgeg_customer_entity_varchar`
--

INSERT INTO `mgeg_customer_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 1, 5, 1, 'Benjamin '),
(3, 1, 7, 1, 'Daniel'),
(4, 1, 12, 1, 'ecfce7587e5fb4f5e1561f043a4838aa:WkMzjsyGEwGzYbg2JTzlCLwu3kCYRE7C'),
(5, 1, 3, 1, 'Default Store View'),
(7, 1, 5, 2, 'John'),
(8, 1, 6, 2, NULL),
(9, 1, 7, 2, 'Demian'),
(10, 1, 12, 2, '17e5e4545a8357a85d552369197cdfb3:2AYlm2aNy03icKyYVFSLbj9Iye2rATtM'),
(11, 1, 3, 2, 'Default Store View'),
(12, 1, 4, 2, NULL),
(13, 1, 8, 2, NULL),
(14, 1, 15, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_form_attribute`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `IDX_MGEG_CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Dumping data for table `mgeg_customer_form_attribute`
--

INSERT INTO `mgeg_customer_form_attribute` (`form_code`, `attribute_id`) VALUES
('adminhtml_customer', 1),
('adminhtml_customer', 3),
('adminhtml_customer', 4),
('checkout_register', 4),
('customer_account_create', 4),
('customer_account_edit', 4),
('adminhtml_customer', 5),
('checkout_register', 5),
('customer_account_create', 5),
('customer_account_edit', 5),
('adminhtml_customer', 6),
('checkout_register', 6),
('customer_account_create', 6),
('customer_account_edit', 6),
('adminhtml_customer', 7),
('checkout_register', 7),
('customer_account_create', 7),
('customer_account_edit', 7),
('adminhtml_customer', 8),
('checkout_register', 8),
('customer_account_create', 8),
('customer_account_edit', 8),
('adminhtml_checkout', 9),
('adminhtml_customer', 9),
('checkout_register', 9),
('customer_account_create', 9),
('customer_account_edit', 9),
('adminhtml_checkout', 10),
('adminhtml_customer', 10),
('adminhtml_checkout', 11),
('adminhtml_customer', 11),
('checkout_register', 11),
('customer_account_create', 11),
('customer_account_edit', 11),
('adminhtml_checkout', 15),
('adminhtml_customer', 15),
('checkout_register', 15),
('customer_account_create', 15),
('customer_account_edit', 15),
('adminhtml_customer', 17),
('checkout_register', 17),
('customer_account_create', 17),
('customer_account_edit', 17),
('adminhtml_checkout', 18),
('adminhtml_customer', 18),
('checkout_register', 18),
('customer_account_create', 18),
('customer_account_edit', 18),
('adminhtml_customer_address', 19),
('customer_address_edit', 19),
('customer_register_address', 19),
('adminhtml_customer_address', 20),
('customer_address_edit', 20),
('customer_register_address', 20),
('adminhtml_customer_address', 21),
('customer_address_edit', 21),
('customer_register_address', 21),
('adminhtml_customer_address', 22),
('customer_address_edit', 22),
('customer_register_address', 22),
('adminhtml_customer_address', 23),
('customer_address_edit', 23),
('customer_register_address', 23),
('adminhtml_customer_address', 24),
('customer_address_edit', 24),
('customer_register_address', 24),
('adminhtml_customer_address', 25),
('customer_address_edit', 25),
('customer_register_address', 25),
('adminhtml_customer_address', 26),
('customer_address_edit', 26),
('customer_register_address', 26),
('adminhtml_customer_address', 27),
('customer_address_edit', 27),
('customer_register_address', 27),
('adminhtml_customer_address', 28),
('customer_address_edit', 28),
('customer_register_address', 28),
('adminhtml_customer_address', 29),
('customer_address_edit', 29),
('customer_register_address', 29),
('adminhtml_customer_address', 30),
('customer_address_edit', 30),
('customer_register_address', 30),
('adminhtml_customer_address', 31),
('customer_address_edit', 31),
('customer_register_address', 31),
('adminhtml_customer_address', 32),
('customer_address_edit', 32),
('customer_register_address', 32),
('adminhtml_customer', 35),
('adminhtml_customer_address', 36),
('customer_address_edit', 36),
('customer_register_address', 36);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_customer_group`
--

CREATE TABLE IF NOT EXISTS `mgeg_customer_group` (
  `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Group' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mgeg_customer_group`
--

INSERT INTO `mgeg_customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_dataflow_batch`
--

CREATE TABLE IF NOT EXISTS `mgeg_dataflow_batch` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `adapter` varchar(128) DEFAULT NULL COMMENT 'Adapter',
  `params` text COMMENT 'Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`batch_id`),
  KEY `IDX_MGEG_DATAFLOW_BATCH_PROFILE_ID` (`profile_id`),
  KEY `IDX_MGEG_DATAFLOW_BATCH_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_DATAFLOW_BATCH_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_dataflow_batch_export`
--

CREATE TABLE IF NOT EXISTS `mgeg_dataflow_batch_export` (
  `batch_export_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Export Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_export_id`),
  KEY `IDX_MGEG_DATAFLOW_BATCH_EXPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Export' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_dataflow_batch_import`
--

CREATE TABLE IF NOT EXISTS `mgeg_dataflow_batch_import` (
  `batch_import_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Import Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_import_id`),
  KEY `IDX_MGEG_DATAFLOW_BATCH_IMPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Import' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_dataflow_import_data`
--

CREATE TABLE IF NOT EXISTS `mgeg_dataflow_import_data` (
  `import_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Import Id',
  `session_id` int(11) DEFAULT NULL COMMENT 'Session Id',
  `serial_number` int(11) NOT NULL DEFAULT '0' COMMENT 'Serial Number',
  `value` text COMMENT 'Value',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`import_id`),
  KEY `IDX_MGEG_DATAFLOW_IMPORT_DATA_SESSION_ID` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Import Data' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_dataflow_profile`
--

CREATE TABLE IF NOT EXISTS `mgeg_dataflow_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `actions_xml` text COMMENT 'Actions Xml',
  `gui_data` text COMMENT 'Gui Data',
  `direction` varchar(6) DEFAULT NULL COMMENT 'Direction',
  `entity_type` varchar(64) DEFAULT NULL COMMENT 'Entity Type',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `data_transfer` varchar(11) DEFAULT NULL COMMENT 'Data Transfer',
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `mgeg_dataflow_profile`
--

INSERT INTO `mgeg_dataflow_profile` (`profile_id`, `name`, `created_at`, `updated_at`, `actions_xml`, `gui_data`, `direction`, `entity_type`, `store_id`, `data_transfer`) VALUES
(1, 'Export All Products', '2016-04-27 16:50:44', '2016-04-27 16:50:44', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(2, 'Export Product Stocks', '2016-04-27 16:50:44', '2016-04-27 16:50:44', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:25:"export_product_stocks.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:4:"true";s:7:"product";a:2:{s:2:"db";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}s:4:"file";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(3, 'Import All Products', '2016-04-27 16:50:44', '2016-04-27 16:50:44', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(4, 'Import Product Stocks', '2016-04-27 16:50:44', '2016-04-27 16:50:44', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:18:"export_product.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(5, 'Export Customers', '2016-04-27 16:50:44', '2016-04-27 16:50:44', '<action type="customer/convert_adapter_customer" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="filter/adressType"><![CDATA[default_billing]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="customer/convert_parser_customer" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_customers.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:20:"export_customers.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'customer', 0, 'file'),
(6, 'Import Customers', '2016-04-27 16:50:44', '2016-04-27 16:50:44', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">customer/convert_adapter_customer</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:19:"export_customer.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'customer', 0, 'interactive');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_dataflow_profile_history`
--

CREATE TABLE IF NOT EXISTS `mgeg_dataflow_profile_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `action_code` varchar(64) DEFAULT NULL COMMENT 'Action Code',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `performed_at` timestamp NULL DEFAULT NULL COMMENT 'Performed At',
  PRIMARY KEY (`history_id`),
  KEY `IDX_MGEG_DATAFLOW_PROFILE_HISTORY_PROFILE_ID` (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile History' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `mgeg_dataflow_profile_history`
--

INSERT INTO `mgeg_dataflow_profile_history` (`history_id`, `profile_id`, `action_code`, `user_id`, `performed_at`) VALUES
(1, 1, 'create', 0, '2016-04-27 16:50:44'),
(2, 2, 'create', 0, '2016-04-27 16:50:44'),
(3, 3, 'create', 0, '2016-04-27 16:50:44'),
(4, 4, 'create', 0, '2016-04-27 16:50:44'),
(5, 5, 'create', 0, '2016-04-27 16:50:44'),
(6, 6, 'create', 0, '2016-04-27 16:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_dataflow_session`
--

CREATE TABLE IF NOT EXISTS `mgeg_dataflow_session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Session Id',
  `user_id` int(11) NOT NULL COMMENT 'User Id',
  `created_date` timestamp NULL DEFAULT NULL COMMENT 'Created Date',
  `file` varchar(255) DEFAULT NULL COMMENT 'File',
  `type` varchar(32) DEFAULT NULL COMMENT 'Type',
  `direction` varchar(32) DEFAULT NULL COMMENT 'Direction',
  `comment` varchar(255) DEFAULT NULL COMMENT 'Comment',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Session' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_design_change`
--

CREATE TABLE IF NOT EXISTS `mgeg_design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `IDX_MGEG_DESIGN_CHANGE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Design Changes' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_design_change`
--

INSERT INTO `mgeg_design_change` (`design_change_id`, `store_id`, `design`, `date_from`, `date_to`) VALUES
(2, 1, 'ultimo/default', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_directory_country`
--

CREATE TABLE IF NOT EXISTS `mgeg_directory_country` (
  `country_id` varchar(2) NOT NULL DEFAULT '' COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Dumping data for table `mgeg_directory_country`
--

INSERT INTO `mgeg_directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PR', 'PR', 'PRI'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_directory_country_format`
--

CREATE TABLE IF NOT EXISTS `mgeg_directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `UNQ_MGEG_DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_directory_country_region`
--

CREATE TABLE IF NOT EXISTS `mgeg_directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `IDX_MGEG_DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Directory Country Region' AUTO_INCREMENT=485 ;

--
-- Dumping data for table `mgeg_directory_country_region`
--

INSERT INTO `mgeg_directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AF', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AC', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AM', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Vorarlberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '1', 'Ain'),
(183, 'FR', '2', 'Aisne'),
(184, 'FR', '3', 'Allier'),
(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 'FR', '5', 'Hautes-Alpes'),
(187, 'FR', '6', 'Alpes-Maritimes'),
(188, 'FR', '7', 'Ardèche'),
(189, 'FR', '8', 'Ardennes'),
(190, 'FR', '9', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d''Or'),
(204, 'FR', '22', 'Côtes-d''Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d''Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea'),
(320, 'FI', 'Lappi', 'Lappi'),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 'FI', 'Kainuu', 'Kainuu'),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 'FI', 'Satakunta', 'Satakunta'),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 'EE', 'EE-37', 'Harjumaa'),
(341, 'EE', 'EE-39', 'Hiiumaa'),
(342, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 'EE', 'EE-51', 'Järvamaa'),
(345, 'EE', 'EE-57', 'Läänemaa'),
(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 'EE', 'EE-65', 'Põlvamaa'),
(348, 'EE', 'EE-67', 'Pärnumaa'),
(349, 'EE', 'EE-70', 'Raplamaa'),
(350, 'EE', 'EE-74', 'Saaremaa'),
(351, 'EE', 'EE-78', 'Tartumaa'),
(352, 'EE', 'EE-82', 'Valgamaa'),
(353, 'EE', 'EE-84', 'Viljandimaa'),
(354, 'EE', 'EE-86', 'Võrumaa'),
(355, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 'LV', 'LV-JEL', 'Jelgava'),
(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 'LV', 'LV-LPX', 'Liepāja'),
(360, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 'LV', 'LV-RIX', 'Rīga'),
(363, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 'LV', 'Valmiera', 'Valmiera'),
(365, 'LV', 'LV-VEN', 'Ventspils'),
(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 'LV', 'Apes novads', 'Apes novads'),
(375, 'LV', 'Auces novads', 'Auces novads'),
(376, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 'LV', 'LV-BL', 'Balvu novads'),
(380, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 'LV', 'Engures novads', 'Engures novads'),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 'LV', 'LV-MA', 'Madonas novads'),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 'LV', 'LV-OG', 'Ogres novads'),
(427, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 'LV', 'Salas novads', 'Salas novads'),
(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 'LV', 'LV-SA', 'Saldus novads'),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 'LV', 'LV-TA', 'Talsu novads'),
(457, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 'LV', 'LV-VK', 'Valkas novads'),
(461, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_directory_country_region_name`
--

CREATE TABLE IF NOT EXISTS `mgeg_directory_country_region_name` (
  `locale` varchar(8) NOT NULL DEFAULT '' COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `IDX_MGEG_DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Dumping data for table `mgeg_directory_country_region_name`
--

INSERT INTO `mgeg_directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Vorarlberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d''Or'),
('en_US', 204, 'Côtes-d''Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d''Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea'),
('en_US', 320, 'Lappi'),
('en_US', 321, 'Pohjois-Pohjanmaa'),
('en_US', 322, 'Kainuu'),
('en_US', 323, 'Pohjois-Karjala'),
('en_US', 324, 'Pohjois-Savo'),
('en_US', 325, 'Etelä-Savo'),
('en_US', 326, 'Etelä-Pohjanmaa'),
('en_US', 327, 'Pohjanmaa'),
('en_US', 328, 'Pirkanmaa'),
('en_US', 329, 'Satakunta'),
('en_US', 330, 'Keski-Pohjanmaa'),
('en_US', 331, 'Keski-Suomi'),
('en_US', 332, 'Varsinais-Suomi'),
('en_US', 333, 'Etelä-Karjala'),
('en_US', 334, 'Päijät-Häme'),
('en_US', 335, 'Kanta-Häme'),
('en_US', 336, 'Uusimaa'),
('en_US', 337, 'Itä-Uusimaa'),
('en_US', 338, 'Kymenlaakso'),
('en_US', 339, 'Ahvenanmaa'),
('en_US', 340, 'Harjumaa'),
('en_US', 341, 'Hiiumaa'),
('en_US', 342, 'Ida-Virumaa'),
('en_US', 343, 'Jõgevamaa'),
('en_US', 344, 'Järvamaa'),
('en_US', 345, 'Läänemaa'),
('en_US', 346, 'Lääne-Virumaa'),
('en_US', 347, 'Põlvamaa'),
('en_US', 348, 'Pärnumaa'),
('en_US', 349, 'Raplamaa'),
('en_US', 350, 'Saaremaa'),
('en_US', 351, 'Tartumaa'),
('en_US', 352, 'Valgamaa'),
('en_US', 353, 'Viljandimaa'),
('en_US', 354, 'Võrumaa'),
('en_US', 355, 'Daugavpils'),
('en_US', 356, 'Jelgava'),
('en_US', 357, 'Jēkabpils'),
('en_US', 358, 'Jūrmala'),
('en_US', 359, 'Liepāja'),
('en_US', 360, 'Liepājas novads'),
('en_US', 361, 'Rēzekne'),
('en_US', 362, 'Rīga'),
('en_US', 363, 'Rīgas novads'),
('en_US', 364, 'Valmiera'),
('en_US', 365, 'Ventspils'),
('en_US', 366, 'Aglonas novads'),
('en_US', 367, 'Aizkraukles novads'),
('en_US', 368, 'Aizputes novads'),
('en_US', 369, 'Aknīstes novads'),
('en_US', 370, 'Alojas novads'),
('en_US', 371, 'Alsungas novads'),
('en_US', 372, 'Alūksnes novads'),
('en_US', 373, 'Amatas novads'),
('en_US', 374, 'Apes novads'),
('en_US', 375, 'Auces novads'),
('en_US', 376, 'Babītes novads'),
('en_US', 377, 'Baldones novads'),
('en_US', 378, 'Baltinavas novads'),
('en_US', 379, 'Balvu novads'),
('en_US', 380, 'Bauskas novads'),
('en_US', 381, 'Beverīnas novads'),
('en_US', 382, 'Brocēnu novads'),
('en_US', 383, 'Burtnieku novads'),
('en_US', 384, 'Carnikavas novads'),
('en_US', 385, 'Cesvaines novads'),
('en_US', 386, 'Ciblas novads'),
('en_US', 387, 'Cēsu novads'),
('en_US', 388, 'Dagdas novads'),
('en_US', 389, 'Daugavpils novads'),
('en_US', 390, 'Dobeles novads'),
('en_US', 391, 'Dundagas novads'),
('en_US', 392, 'Durbes novads'),
('en_US', 393, 'Engures novads'),
('en_US', 394, 'Garkalnes novads'),
('en_US', 395, 'Grobiņas novads'),
('en_US', 396, 'Gulbenes novads'),
('en_US', 397, 'Iecavas novads'),
('en_US', 398, 'Ikšķiles novads'),
('en_US', 399, 'Ilūkstes novads'),
('en_US', 400, 'Inčukalna novads'),
('en_US', 401, 'Jaunjelgavas novads'),
('en_US', 402, 'Jaunpiebalgas novads'),
('en_US', 403, 'Jaunpils novads'),
('en_US', 404, 'Jelgavas novads'),
('en_US', 405, 'Jēkabpils novads'),
('en_US', 406, 'Kandavas novads'),
('en_US', 407, 'Kokneses novads'),
('en_US', 408, 'Krimuldas novads'),
('en_US', 409, 'Krustpils novads'),
('en_US', 410, 'Krāslavas novads'),
('en_US', 411, 'Kuldīgas novads'),
('en_US', 412, 'Kārsavas novads'),
('en_US', 413, 'Lielvārdes novads'),
('en_US', 414, 'Limbažu novads'),
('en_US', 415, 'Lubānas novads'),
('en_US', 416, 'Ludzas novads'),
('en_US', 417, 'Līgatnes novads'),
('en_US', 418, 'Līvānu novads'),
('en_US', 419, 'Madonas novads'),
('en_US', 420, 'Mazsalacas novads'),
('en_US', 421, 'Mālpils novads'),
('en_US', 422, 'Mārupes novads'),
('en_US', 423, 'Naukšēnu novads'),
('en_US', 424, 'Neretas novads'),
('en_US', 425, 'Nīcas novads'),
('en_US', 426, 'Ogres novads'),
('en_US', 427, 'Olaines novads'),
('en_US', 428, 'Ozolnieku novads'),
('en_US', 429, 'Preiļu novads'),
('en_US', 430, 'Priekules novads'),
('en_US', 431, 'Priekuļu novads'),
('en_US', 432, 'Pārgaujas novads'),
('en_US', 433, 'Pāvilostas novads'),
('en_US', 434, 'Pļaviņu novads'),
('en_US', 435, 'Raunas novads'),
('en_US', 436, 'Riebiņu novads'),
('en_US', 437, 'Rojas novads'),
('en_US', 438, 'Ropažu novads'),
('en_US', 439, 'Rucavas novads'),
('en_US', 440, 'Rugāju novads'),
('en_US', 441, 'Rundāles novads'),
('en_US', 442, 'Rēzeknes novads'),
('en_US', 443, 'Rūjienas novads'),
('en_US', 444, 'Salacgrīvas novads'),
('en_US', 445, 'Salas novads'),
('en_US', 446, 'Salaspils novads'),
('en_US', 447, 'Saldus novads'),
('en_US', 448, 'Saulkrastu novads'),
('en_US', 449, 'Siguldas novads'),
('en_US', 450, 'Skrundas novads'),
('en_US', 451, 'Skrīveru novads'),
('en_US', 452, 'Smiltenes novads'),
('en_US', 453, 'Stopiņu novads'),
('en_US', 454, 'Strenču novads'),
('en_US', 455, 'Sējas novads'),
('en_US', 456, 'Talsu novads'),
('en_US', 457, 'Tukuma novads'),
('en_US', 458, 'Tērvetes novads'),
('en_US', 459, 'Vaiņodes novads'),
('en_US', 460, 'Valkas novads'),
('en_US', 461, 'Valmieras novads'),
('en_US', 462, 'Varakļānu novads'),
('en_US', 463, 'Vecpiebalgas novads'),
('en_US', 464, 'Vecumnieku novads'),
('en_US', 465, 'Ventspils novads'),
('en_US', 466, 'Viesītes novads'),
('en_US', 467, 'Viļakas novads'),
('en_US', 468, 'Viļānu novads'),
('en_US', 469, 'Vārkavas novads'),
('en_US', 470, 'Zilupes novads'),
('en_US', 471, 'Ādažu novads'),
('en_US', 472, 'Ērgļu novads'),
('en_US', 473, 'Ķeguma novads'),
('en_US', 474, 'Ķekavas novads'),
('en_US', 475, 'Alytaus Apskritis'),
('en_US', 476, 'Kauno Apskritis'),
('en_US', 477, 'Klaipėdos Apskritis'),
('en_US', 478, 'Marijampolės Apskritis'),
('en_US', 479, 'Panevėžio Apskritis'),
('en_US', 480, 'Šiaulių Apskritis'),
('en_US', 481, 'Tauragės Apskritis'),
('en_US', 482, 'Telšių Apskritis'),
('en_US', 483, 'Utenos Apskritis'),
('en_US', 484, 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_directory_currency_rate`
--

CREATE TABLE IF NOT EXISTS `mgeg_directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `IDX_MGEG_DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Dumping data for table `mgeg_directory_currency_rate`
--

INSERT INTO `mgeg_directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
('EUR', 'EUR', '1.000000000000'),
('EUR', 'USD', '1.415000000000'),
('USD', 'EUR', '0.706700000000'),
('USD', 'USD', '1.000000000000');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_downloadable_link`
--

CREATE TABLE IF NOT EXISTS `mgeg_downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_downloadable_link_price`
--

CREATE TABLE IF NOT EXISTS `mgeg_downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_downloadable_link_purchased`
--

CREATE TABLE IF NOT EXISTS `mgeg_downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_downloadable_link_purchased_item`
--

CREATE TABLE IF NOT EXISTS `mgeg_downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `IDX_MGEG_DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_downloadable_link_title`
--

CREATE TABLE IF NOT EXISTS `mgeg_downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_MGEG_DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_LINK_TITLE_LINK_ID` (`link_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_downloadable_sample`
--

CREATE TABLE IF NOT EXISTS `mgeg_downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_downloadable_sample_title`
--

CREATE TABLE IF NOT EXISTS `mgeg_downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_MGEG_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID` (`sample_id`),
  KEY `IDX_MGEG_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `UNQ_MGEG_EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`),
  KEY `IDX_MGEG_EAV_ATTRIBUTE_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute' AUTO_INCREMENT=142 ;

--
-- Dumping data for table `mgeg_eav_attribute`
--

INSERT INTO `mgeg_eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'website_id', NULL, 'customer/customer_attribute_backend_website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'customer/customer_attribute_source_website', 1, 0, NULL, 0, NULL),
(2, 1, 'store_id', NULL, 'customer/customer_attribute_backend_store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'customer/customer_attribute_source_store', 1, 0, NULL, 0, NULL),
(3, 1, 'created_in', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
(4, 1, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(5, 1, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(6, 1, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(7, 1, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(8, 1, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'customer/customer_attribute_source_group', 1, 0, NULL, 0, NULL),
(11, 1, 'dob', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, 'eav/entity_attribute_frontend_datetime', 'date', 'Date Of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
(12, 1, 'password_hash', NULL, 'customer/customer_attribute_backend_password', 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(13, 1, 'default_billing', NULL, 'customer/customer_attribute_backend_billing', 'int', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(14, 1, 'default_shipping', NULL, 'customer/customer_attribute_backend_shipping', 'int', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(15, 1, 'taxvat', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(16, 1, 'confirmation', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
(17, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'datetime', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
(18, 1, 'gender', NULL, NULL, 'int', NULL, NULL, 'select', 'Gender', NULL, 'eav/entity_attribute_source_table', 0, 0, NULL, 0, NULL),
(19, 2, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(20, 2, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(21, 2, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(22, 2, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(23, 2, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(24, 2, 'company', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
(25, 2, 'street', NULL, 'customer/entity_address_attribute_backend_street', 'text', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
(26, 2, 'city', NULL, NULL, 'varchar', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
(27, 2, 'country_id', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country', NULL, 'customer/entity_address_attribute_source_country', 1, 0, NULL, 0, NULL),
(28, 2, 'region', NULL, 'customer/entity_address_attribute_backend_region', 'varchar', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
(29, 2, 'region_id', NULL, NULL, 'int', NULL, NULL, 'hidden', 'State/Province', NULL, 'customer/entity_address_attribute_source_region', 0, 0, NULL, 0, NULL),
(30, 2, 'postcode', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 1, 0, NULL, 0, NULL),
(31, 2, 'telephone', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Telephone', NULL, NULL, 1, 0, NULL, 0, NULL),
(32, 2, 'fax', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
(33, 1, 'rp_token', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(34, 1, 'rp_token_created_at', NULL, NULL, 'datetime', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(35, 1, 'disable_auto_group_change', NULL, 'customer/attribute_backend_data_boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(36, 2, 'vat_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number', NULL, NULL, 0, 0, NULL, 0, NULL),
(37, 2, 'vat_is_valid', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
(38, 2, 'vat_request_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(39, 2, 'vat_request_date', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
(40, 2, 'vat_request_success', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
(41, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(42, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'eav/entity_attribute_source_boolean', 1, 0, NULL, 0, NULL),
(43, 3, 'url_key', NULL, 'catalog/category_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(44, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(45, 3, 'image', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(46, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(47, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(48, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(49, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'catalog/category_attribute_source_mode', 0, 0, NULL, 0, NULL),
(50, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'catalog/category_attribute_source_page', 0, 0, NULL, 0, NULL),
(51, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(52, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
(53, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
(54, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(55, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(56, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(57, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(58, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(59, 3, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(60, 3, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(61, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/category_attribute_source_layout', 0, 0, NULL, 0, NULL),
(62, 3, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(63, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
(64, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
(65, 3, 'available_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(66, 3, 'default_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(67, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'eav/entity_attribute_source_boolean', 1, 0, '1', 0, NULL),
(68, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(69, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(70, 3, 'filter_price_range', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
(71, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(72, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(73, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(74, 4, 'sku', NULL, 'catalog/product_attribute_backend_sku', 'static', NULL, NULL, 'text', 'SKU', NULL, NULL, 1, 0, NULL, 1, NULL),
(75, 4, 'price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
(76, 4, 'special_price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Special Price', NULL, NULL, 0, 0, NULL, 0, 'The Special Price is active only when lower than the Actual Price'),
(77, 4, 'special_from_date', NULL, 'catalog/product_attribute_backend_startdate_specialprice', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(78, 4, 'special_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(79, 4, 'cost', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
(80, 4, 'weight', NULL, NULL, 'decimal', NULL, NULL, 'weight', 'Weight', NULL, NULL, 1, 0, NULL, 0, NULL),
(81, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
(82, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(83, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(84, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars'),
(85, 4, 'image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Base Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(86, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Small Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(87, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
(88, 4, 'media_gallery', NULL, 'catalog/product_attribute_backend_media', 'varchar', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(89, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(90, 4, 'group_price', NULL, 'catalog/product_attribute_backend_groupprice', 'decimal', NULL, NULL, 'text', 'Group Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(91, 4, 'tier_price', NULL, 'catalog/product_attribute_backend_tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(92, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, NULL, 0, NULL),
(93, 4, 'news_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(94, 4, 'news_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(95, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(96, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Status', NULL, 'catalog/product_status', 1, 0, NULL, 0, NULL),
(97, 4, 'url_key', NULL, 'catalog/product_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(98, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(99, 4, 'minimal_price', NULL, NULL, 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(100, 4, 'is_recurring', NULL, NULL, 'int', NULL, NULL, 'select', 'Enable Recurring Profile', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, 'Products with recurring profile participate in catalog as nominal items.'),
(101, 4, 'recurring_profile', NULL, 'catalog/product_attribute_backend_recurring', 'text', NULL, NULL, 'text', 'Recurring Payment Profile', NULL, NULL, 0, 0, NULL, 0, NULL),
(102, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'catalog/product_visibility', 1, 0, '4', 0, NULL),
(103, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(104, 4, 'custom_design_from', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(105, 4, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(106, 4, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(107, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/product_attribute_source_layout', 0, 0, NULL, 0, NULL),
(108, 4, 'category_ids', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(109, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'catalog/entity_product_attribute_design_options_container', 0, 0, 'container1', 0, NULL),
(110, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(111, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(112, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(113, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(114, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(115, 4, 'created_at', NULL, 'eav/entity_attribute_backend_time_created', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(116, 4, 'updated_at', NULL, 'eav/entity_attribute_backend_time_updated', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(117, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'catalog/product_attribute_source_countryofmanufacture', 0, 0, NULL, 0, NULL),
(118, 4, 'msrp_enabled', NULL, 'catalog/product_attribute_backend_msrp', 'varchar', NULL, NULL, 'select', 'Apply MAP', NULL, 'catalog/product_attribute_source_msrp_type_enabled', 0, 0, '2', 0, NULL),
(119, 4, 'msrp_display_actual_price_type', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'catalog/product_attribute_source_msrp_type_price', 0, 0, '4', 0, NULL),
(120, 4, 'msrp', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Manufacturer''s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(121, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'tax/class_source_product', 1, 0, NULL, 0, NULL),
(122, 4, 'gift_message_available', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(123, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(124, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(125, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(126, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'bundle/product_attribute_source_price_view', 1, 0, NULL, 0, NULL),
(127, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, NULL, 'Shipment', NULL, NULL, 1, 0, NULL, 0, NULL),
(128, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
(129, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
(130, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
(131, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 0, NULL),
(132, 3, 'umm_dd_type', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Submenu Type', NULL, 'ultramegamenu/category_attribute_source_dropdown_type', 0, 1, NULL, 0, 'If category has subcategories, choose how subcategories should be displayed. For details refer to the user guide, chapter: 13. Menu'),
(133, 3, 'umm_dd_width', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Drop-down Width', NULL, NULL, 0, 1, NULL, 0, 'Override default width of the drop-down box. Enter value in pixels, e.g. 150px, or as a percentage of the containing block''s width, e.g. 200%.'),
(134, 3, 'umm_dd_proportions', NULL, 'ultramegamenu/category_attribute_backend_grid_columns', 'varchar', NULL, NULL, 'text', 'Drop-down Content Proportions', NULL, NULL, 0, 1, NULL, 0, 'Proportions between sections of drop-down box: Left Block, subcategories, Right Block. For each section, enter value in grid units (number between 0 and 12). Sum of the grid units entered for all three sections has to be equal 12.'),
(135, 3, 'umm_dd_columns', NULL, NULL, 'int', NULL, NULL, 'select', 'Number of Columns With Subcategories', NULL, 'ultramegamenu/category_attribute_source_dropdown_columns', 0, 1, NULL, 0, 'Applicable only for categories with Submenu Type ''Mega drop-down''. E.g. select 3 to display subcategories in three columns. Default value is 4.'),
(136, 3, 'umm_dd_blocks', NULL, 'ultramegamenu/category_attribute_backend_dropdown_blocks', 'text', NULL, NULL, 'textarea', 'Category Blocks', NULL, NULL, 0, 1, NULL, 0, NULL),
(137, 3, 'umm_cat_label', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Category Label', NULL, 'ultramegamenu/category_attribute_source_categorylabel', 0, 1, NULL, 0, 'Labels have to be defined in menu settings'),
(138, 3, 'umm_cat_target', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Custom URL', NULL, NULL, 0, 1, NULL, 0, 'Enter hash (#) to make this category not clickable. To create a custom link (which will replace category link), enter custom URL path. Path will be appended to store''s base URL to create a new link. Leave this field empty if no changes are needed.'),
(139, 4, 'ebizmarts_mark_visited', NULL, '', 'int', NULL, NULL, 'select', 'Send Browsed Product Autoresponder', NULL, 'eav/entity_attribute_source_boolean', 0, 1, '0', 0, NULL),
(140, 1, 'ebizmarts_reviews_cntr_total', NULL, NULL, 'int', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 1, '0', 0, NULL),
(141, 1, 'ebizmarts_reviews_coupon_total', NULL, NULL, 'int', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 1, '0', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_attribute_group`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `UNQ_MGEG_EAV_ATTR_GROUP_ATTR_SET_ID_ATTR_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `IDX_MGEG_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group' AUTO_INCREMENT=19 ;

--
-- Dumping data for table `mgeg_eav_attribute_group`
--

INSERT INTO `mgeg_eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
(1, 1, 'General', 1, 1),
(2, 2, 'General', 1, 1),
(3, 3, 'General', 10, 1),
(4, 3, 'General Information', 2, 0),
(5, 3, 'Display Settings', 20, 0),
(6, 3, 'Custom Design', 30, 0),
(7, 4, 'General', 1, 1),
(8, 4, 'Prices', 2, 0),
(9, 4, 'Meta Information', 3, 0),
(10, 4, 'Images', 4, 0),
(11, 4, 'Recurring Profile', 5, 0),
(12, 4, 'Design', 6, 0),
(13, 5, 'General', 1, 1),
(14, 6, 'General', 1, 1),
(15, 7, 'General', 1, 1),
(16, 8, 'General', 1, 1),
(17, 4, 'Gift Options', 7, 0),
(18, 3, 'Menu', 31, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_attribute_label`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `IDX_MGEG_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_attribute_option`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MGEG_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_eav_attribute_option`
--

INSERT INTO `mgeg_eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 18, 0),
(2, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_attribute_option_value`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MGEG_EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `IDX_MGEG_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_eav_attribute_option_value`
--

INSERT INTO `mgeg_eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_attribute_set`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `UNQ_MGEG_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `IDX_MGEG_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `mgeg_eav_attribute_set`
--

INSERT INTO `mgeg_eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 1),
(2, 2, 'Default', 1),
(3, 3, 'Default', 1),
(4, 4, 'Default', 1),
(5, 5, 'Default', 1),
(6, 6, 'Default', 1),
(7, 7, 'Default', 1),
(8, 8, 'Default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_entity`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_EAV_ENTITY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_entity_attribute`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `UNQ_MGEG_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `UNQ_MGEG_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `IDX_MGEG_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `IDX_MGEG_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes' AUTO_INCREMENT=138 ;

--
-- Dumping data for table `mgeg_eav_entity_attribute`
--

INSERT INTO `mgeg_eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 0),
(3, 1, 1, 1, 3, 20),
(4, 1, 1, 1, 4, 30),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 50),
(7, 1, 1, 1, 7, 60),
(8, 1, 1, 1, 8, 70),
(9, 1, 1, 1, 9, 80),
(10, 1, 1, 1, 10, 25),
(11, 1, 1, 1, 11, 90),
(12, 1, 1, 1, 12, 0),
(13, 1, 1, 1, 13, 0),
(14, 1, 1, 1, 14, 0),
(15, 1, 1, 1, 15, 100),
(16, 1, 1, 1, 16, 0),
(17, 1, 1, 1, 17, 86),
(18, 1, 1, 1, 18, 110),
(19, 2, 2, 2, 19, 10),
(20, 2, 2, 2, 20, 20),
(21, 2, 2, 2, 21, 30),
(22, 2, 2, 2, 22, 40),
(23, 2, 2, 2, 23, 50),
(24, 2, 2, 2, 24, 60),
(25, 2, 2, 2, 25, 70),
(26, 2, 2, 2, 26, 80),
(27, 2, 2, 2, 27, 90),
(28, 2, 2, 2, 28, 100),
(29, 2, 2, 2, 29, 100),
(30, 2, 2, 2, 30, 110),
(31, 2, 2, 2, 31, 120),
(32, 2, 2, 2, 32, 130),
(33, 1, 1, 1, 33, 111),
(34, 1, 1, 1, 34, 112),
(35, 1, 1, 1, 35, 28),
(36, 2, 2, 2, 36, 140),
(37, 2, 2, 2, 37, 132),
(38, 2, 2, 2, 38, 133),
(39, 2, 2, 2, 39, 134),
(40, 2, 2, 2, 40, 135),
(41, 3, 3, 4, 41, 1),
(42, 3, 3, 4, 42, 2),
(43, 3, 3, 4, 43, 3),
(44, 3, 3, 4, 44, 4),
(45, 3, 3, 4, 45, 5),
(46, 3, 3, 4, 46, 6),
(47, 3, 3, 4, 47, 7),
(48, 3, 3, 4, 48, 8),
(49, 3, 3, 5, 49, 10),
(50, 3, 3, 5, 50, 20),
(51, 3, 3, 5, 51, 30),
(52, 3, 3, 4, 52, 12),
(53, 3, 3, 4, 53, 13),
(54, 3, 3, 4, 54, 14),
(55, 3, 3, 4, 55, 15),
(56, 3, 3, 4, 56, 16),
(57, 3, 3, 4, 57, 17),
(58, 3, 3, 6, 58, 10),
(59, 3, 3, 6, 59, 30),
(60, 3, 3, 6, 60, 40),
(61, 3, 3, 6, 61, 50),
(62, 3, 3, 6, 62, 60),
(63, 3, 3, 4, 63, 24),
(64, 3, 3, 4, 64, 25),
(65, 3, 3, 5, 65, 40),
(66, 3, 3, 5, 66, 50),
(67, 3, 3, 4, 67, 10),
(68, 3, 3, 6, 68, 5),
(69, 3, 3, 6, 69, 6),
(70, 3, 3, 5, 70, 51),
(71, 4, 4, 7, 71, 1),
(72, 4, 4, 7, 72, 2),
(73, 4, 4, 7, 73, 3),
(74, 4, 4, 7, 74, 4),
(75, 4, 4, 8, 75, 1),
(76, 4, 4, 8, 76, 3),
(77, 4, 4, 8, 77, 4),
(78, 4, 4, 8, 78, 5),
(79, 4, 4, 8, 79, 6),
(80, 4, 4, 7, 80, 5),
(81, 4, 4, 9, 82, 1),
(82, 4, 4, 9, 83, 2),
(83, 4, 4, 9, 84, 3),
(84, 4, 4, 10, 85, 1),
(85, 4, 4, 10, 86, 2),
(86, 4, 4, 10, 87, 3),
(87, 4, 4, 10, 88, 4),
(88, 4, 4, 7, 89, 6),
(89, 4, 4, 8, 90, 2),
(90, 4, 4, 8, 91, 7),
(91, 4, 4, 7, 93, 7),
(92, 4, 4, 7, 94, 8),
(93, 4, 4, 10, 95, 5),
(94, 4, 4, 7, 96, 9),
(95, 4, 4, 7, 97, 10),
(96, 4, 4, 7, 98, 11),
(97, 4, 4, 8, 99, 8),
(98, 4, 4, 11, 100, 1),
(99, 4, 4, 11, 101, 2),
(100, 4, 4, 7, 102, 12),
(101, 4, 4, 12, 103, 1),
(102, 4, 4, 12, 104, 2),
(103, 4, 4, 12, 105, 3),
(104, 4, 4, 12, 106, 4),
(105, 4, 4, 12, 107, 5),
(106, 4, 4, 7, 108, 13),
(107, 4, 4, 12, 109, 6),
(108, 4, 4, 7, 110, 14),
(109, 4, 4, 7, 111, 15),
(110, 4, 4, 7, 112, 16),
(111, 4, 4, 7, 113, 17),
(112, 4, 4, 7, 114, 18),
(113, 4, 4, 7, 115, 19),
(114, 4, 4, 7, 116, 20),
(115, 4, 4, 7, 117, 21),
(116, 4, 4, 8, 118, 9),
(117, 4, 4, 8, 119, 10),
(118, 4, 4, 8, 120, 11),
(119, 4, 4, 8, 121, 12),
(120, 4, 4, 17, 122, 1),
(121, 4, 4, 7, 123, 22),
(122, 4, 4, 7, 124, 23),
(123, 4, 4, 7, 125, 24),
(124, 4, 4, 8, 126, 13),
(125, 4, 4, 7, 127, 25),
(126, 4, 4, 7, 128, 26),
(127, 4, 4, 7, 129, 27),
(128, 4, 4, 7, 130, 28),
(129, 4, 4, 7, 131, 29),
(130, 3, 3, 18, 132, 110),
(131, 3, 3, 18, 133, 120),
(132, 3, 3, 18, 134, 130),
(133, 3, 3, 18, 135, 140),
(134, 3, 3, 18, 136, 300),
(135, 3, 3, 18, 137, 500),
(136, 3, 3, 18, 138, 600),
(137, 4, 4, 7, 139, 30);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_EAV_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_EAV_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MGEG_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_EAV_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MGEG_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_entity_int`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_EAV_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_EAV_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_EAV_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MGEG_EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_entity_store`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id',
  PRIMARY KEY (`entity_store_id`),
  KEY `IDX_MGEG_EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_EAV_ENTITY_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_eav_entity_store`
--

INSERT INTO `mgeg_eav_entity_store` (`entity_store_id`, `entity_type_id`, `store_id`, `increment_prefix`, `increment_last_id`) VALUES
(1, 5, 1, '1', '100000001'),
(2, 8, 1, '1', '100000001');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_entity_text`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_EAV_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_EAV_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_entity_type`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT '' COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT '' COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `IDX_MGEG_EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `mgeg_eav_entity_type`
--

INSERT INTO `mgeg_eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'customer/customer', 'customer/attribute', 'customer/entity', NULL, NULL, 1, 'default', 1, 'eav/entity_increment_numeric', 0, 8, '0', 'customer/eav_attribute', 'customer/attribute_collection'),
(2, 'customer_address', 'customer/address', 'customer/attribute', 'customer/address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer/eav_attribute', 'customer/address_attribute_collection'),
(3, 'catalog_category', 'catalog/category', 'catalog/resource_eav_attribute', 'catalog/category', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/category_attribute_collection'),
(4, 'catalog_product', 'catalog/product', 'catalog/resource_eav_attribute', 'catalog/product', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/product_attribute_collection'),
(5, 'order', 'sales/order', NULL, 'sales/order', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(6, 'invoice', 'sales/order_invoice', NULL, 'sales/invoice', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(7, 'creditmemo', 'sales/order_creditmemo', NULL, 'sales/creditmemo', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(8, 'shipment', 'sales/order_shipment', NULL, 'sales/shipment', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGEG_EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGEG_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGEG_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGEG_EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_EAV_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MGEG_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_form_element`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `UNQ_MGEG_EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `IDX_MGEG_EAV_FORM_ELEMENT_TYPE_ID` (`type_id`),
  KEY `IDX_MGEG_EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_MGEG_EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Element' AUTO_INCREMENT=58 ;

--
-- Dumping data for table `mgeg_eav_form_element`
--

INSERT INTO `mgeg_eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, NULL, 20, 0),
(2, 1, NULL, 21, 1),
(3, 1, NULL, 22, 2),
(4, 1, NULL, 24, 3),
(5, 1, NULL, 9, 4),
(6, 1, NULL, 25, 5),
(7, 1, NULL, 26, 6),
(8, 1, NULL, 28, 7),
(9, 1, NULL, 30, 8),
(10, 1, NULL, 27, 9),
(11, 1, NULL, 31, 10),
(12, 1, NULL, 32, 11),
(13, 2, NULL, 20, 0),
(14, 2, NULL, 21, 1),
(15, 2, NULL, 22, 2),
(16, 2, NULL, 24, 3),
(17, 2, NULL, 9, 4),
(18, 2, NULL, 25, 5),
(19, 2, NULL, 26, 6),
(20, 2, NULL, 28, 7),
(21, 2, NULL, 30, 8),
(22, 2, NULL, 27, 9),
(23, 2, NULL, 31, 10),
(24, 2, NULL, 32, 11),
(25, 3, NULL, 20, 0),
(26, 3, NULL, 21, 1),
(27, 3, NULL, 22, 2),
(28, 3, NULL, 24, 3),
(29, 3, NULL, 25, 4),
(30, 3, NULL, 26, 5),
(31, 3, NULL, 28, 6),
(32, 3, NULL, 30, 7),
(33, 3, NULL, 27, 8),
(34, 3, NULL, 31, 9),
(35, 3, NULL, 32, 10),
(36, 4, NULL, 20, 0),
(37, 4, NULL, 21, 1),
(38, 4, NULL, 22, 2),
(39, 4, NULL, 24, 3),
(40, 4, NULL, 25, 4),
(41, 4, NULL, 26, 5),
(42, 4, NULL, 28, 6),
(43, 4, NULL, 30, 7),
(44, 4, NULL, 27, 8),
(45, 4, NULL, 31, 9),
(46, 4, NULL, 32, 10),
(47, 5, 1, 5, 0),
(48, 5, 1, 6, 1),
(49, 5, 1, 7, 2),
(50, 5, 1, 9, 3),
(51, 5, 2, 24, 0),
(52, 5, 2, 31, 1),
(53, 5, 2, 25, 2),
(54, 5, 2, 26, 3),
(55, 5, 2, 28, 4),
(56, 5, 2, 30, 5),
(57, 5, 2, 27, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_form_fieldset`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `UNQ_MGEG_EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`),
  KEY `IDX_MGEG_EAV_FORM_FIELDSET_TYPE_ID` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_eav_form_fieldset`
--

INSERT INTO `mgeg_eav_form_fieldset` (`fieldset_id`, `type_id`, `code`, `sort_order`) VALUES
(1, 5, 'general', 1),
(2, 5, 'address', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_form_fieldset_label`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `IDX_MGEG_EAV_FORM_FIELDSET_LABEL_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_MGEG_EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- Dumping data for table `mgeg_eav_form_fieldset_label`
--

INSERT INTO `mgeg_eav_form_fieldset_label` (`fieldset_id`, `store_id`, `label`) VALUES
(1, 0, 'Personal Information'),
(2, 0, 'Address Information');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_form_type`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `UNQ_MGEG_EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `IDX_MGEG_EAV_FORM_TYPE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Type' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mgeg_eav_form_type`
--

INSERT INTO `mgeg_eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0),
(5, 'checkout_multishipping_register', 'checkout_multishipping_register', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_eav_form_type_entity`
--

CREATE TABLE IF NOT EXISTS `mgeg_eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `IDX_MGEG_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Dumping data for table `mgeg_eav_form_type_entity`
--

INSERT INTO `mgeg_eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
(1, 1),
(2, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_ebizmarts_abandonedcart_abtesting`
--

CREATE TABLE IF NOT EXISTS `mgeg_ebizmarts_abandonedcart_abtesting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `current_status` smallint(1) DEFAULT NULL,
  `store_id` smallint(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_ebizmarts_abandonedcart_popup`
--

CREATE TABLE IF NOT EXISTS `mgeg_ebizmarts_abandonedcart_popup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `counter` int(10) DEFAULT NULL,
  `processed` smallint(1) DEFAULT '0',
  `store_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_ebizmarts_autoresponder_backtostock`
--

CREATE TABLE IF NOT EXISTS `mgeg_ebizmarts_autoresponder_backtostock` (
  `backtostock_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alert_id` int(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1',
  `store_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`backtostock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_ebizmarts_autoresponder_backtostock_alert`
--

CREATE TABLE IF NOT EXISTS `mgeg_ebizmarts_autoresponder_backtostock_alert` (
  `alert_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) DEFAULT NULL,
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`alert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_ebizmarts_autoresponder_review`
--

CREATE TABLE IF NOT EXISTS `mgeg_ebizmarts_autoresponder_review` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) DEFAULT NULL,
  `store_id` smallint(5) DEFAULT NULL,
  `items` smallint(5) DEFAULT '0',
  `counter` smallint(5) DEFAULT '0',
  `token` varchar(255) DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_ebizmarts_autoresponder_unsubscribe`
--

CREATE TABLE IF NOT EXISTS `mgeg_ebizmarts_autoresponder_unsubscribe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `list` varchar(255) DEFAULT NULL,
  `store_id` smallint(5) DEFAULT NULL,
  `unsubscribed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_ebizmarts_autoresponder_visited`
--

CREATE TABLE IF NOT EXISTS `mgeg_ebizmarts_autoresponder_visited` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `store_id` smallint(5) DEFAULT NULL,
  `visited_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `customer_email` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_evopin_fancypopup`
--

CREATE TABLE IF NOT EXISTS `mgeg_evopin_fancypopup` (
  `fancypopup_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `popup_name` varchar(30) NOT NULL DEFAULT '',
  `image_link` varchar(255) NOT NULL DEFAULT '',
  `width_image` smallint(4) NOT NULL DEFAULT '0',
  `height_image` smallint(4) NOT NULL DEFAULT '0',
  `url_link` varchar(255) NOT NULL DEFAULT '',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `from_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `css_style` varchar(64) NOT NULL DEFAULT '',
  `js_style` varchar(64) NOT NULL DEFAULT '',
  `delay_start` tinyint(3) NOT NULL DEFAULT '0',
  `delay_close` tinyint(3) NOT NULL DEFAULT '0',
  `priority` tinyint(4) NOT NULL DEFAULT '0',
  `opacity` decimal(3,2) NOT NULL DEFAULT '0.40',
  PRIMARY KEY (`fancypopup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_evopin_fancypopup`
--

INSERT INTO `mgeg_evopin_fancypopup` (`fancypopup_id`, `popup_name`, `image_link`, `width_image`, `height_image`, `url_link`, `is_active`, `from_date`, `to_date`, `css_style`, `js_style`, `delay_start`, `delay_close`, `priority`, `opacity`) VALUES
(1, 'Are you old enough', 'evopin/fancypopup/Blog.jpg', 1280, 700, '', 1, '2016-04-27 16:22:00', '2017-04-28 16:22:51', '', '', 0, 0, 0, '0.40');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_evopin_fancypopup_store`
--

CREATE TABLE IF NOT EXISTS `mgeg_evopin_fancypopup_store` (
  `fancy_id` int(11) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`fancy_id`,`store_id`),
  KEY `FK_FANCYPOPUP_STORE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Store for fancy popup';

--
-- Dumping data for table `mgeg_evopin_fancypopup_store`
--

INSERT INTO `mgeg_evopin_fancypopup_store` (`fancy_id`, `store_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_gift_message`
--

CREATE TABLE IF NOT EXISTS `mgeg_gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Recipient',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_importexport_importdata`
--

CREATE TABLE IF NOT EXISTS `mgeg_importexport_importdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_index_event`
--

CREATE TABLE IF NOT EXISTS `mgeg_index_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `type` varchar(64) NOT NULL COMMENT 'Type',
  `entity` varchar(64) NOT NULL COMMENT 'Entity',
  `entity_pk` bigint(20) DEFAULT NULL COMMENT 'Entity Primary Key',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `old_data` mediumtext COMMENT 'Old Data',
  `new_data` mediumtext COMMENT 'New Data',
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `UNQ_MGEG_INDEX_EVENT_TYPE_ENTITY_ENTITY_PK` (`type`,`entity`,`entity_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Index Event' AUTO_INCREMENT=36 ;

--
-- Dumping data for table `mgeg_index_event`
--

INSERT INTO `mgeg_index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
(1, 'save', 'catalog_category', 1, '2016-04-27 16:50:44', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(2, 'save', 'catalog_category', 2, '2016-04-27 16:50:44', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(3, 'save', 'cataloginventory_stock_item', 1, '2016-04-27 19:09:07', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(4, 'catalog_reindex_price', 'catalog_product', 1, '2016-04-27 19:09:08', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(5, 'save', 'catalog_product', 1, '2016-04-27 19:09:08', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(6, 'save', 'catalog_category', 3, '2016-04-27 19:09:47', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(7, 'save', 'catalog_category', 4, '2016-04-28 18:36:45', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(8, 'save', 'catalog_category', 5, '2016-04-28 18:37:23', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(9, 'save', 'catalog_category', 6, '2016-04-28 18:37:36', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(10, 'save', 'catalog_category', 7, '2016-04-28 18:37:47', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(11, 'save', 'catalog_category', 8, '2016-04-28 18:39:25', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(12, 'save', 'catalog_category', 9, '2016-04-28 18:39:45', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(13, 'save', 'catalog_category', 10, '2016-04-28 18:41:12', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(14, 'save', 'catalog_category', 11, '2016-04-28 18:41:28', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(15, 'save', 'catalog_category', 12, '2016-04-28 18:41:45', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(16, 'save', 'catalog_category', 13, '2016-04-28 18:42:58', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(17, 'save', 'catalog_category', 14, '2016-04-28 18:43:19', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(18, 'save', 'catalog_category', 15, '2016-04-28 18:43:40', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(19, 'save', 'catalog_category', 16, '2016-04-28 18:44:09', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(20, 'save', 'catalog_category', 17, '2016-04-28 18:44:32', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(21, 'save', 'catalog_category', 18, '2016-04-28 18:44:47', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(22, 'save', 'catalog_category', 19, '2016-04-28 18:58:47', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(23, 'save', 'catalog_category', 20, '2016-04-28 18:59:15', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(24, 'save', 'cataloginventory_stock_item', 2, '2016-05-03 05:39:47', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(25, 'catalog_reindex_price', 'catalog_product', 2, '2016-05-03 05:39:47', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(26, 'save', 'catalog_product', 2, '2016-05-03 05:39:47', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(27, 'save', 'cataloginventory_stock_item', 3, '2016-05-03 09:04:43', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(28, 'catalog_reindex_price', 'catalog_product', 3, '2016-05-03 09:04:44', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(29, 'save', 'catalog_product', 3, '2016-05-03 09:04:44', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(30, 'save', 'cataloginventory_stock_item', 4, '2016-05-03 09:10:56', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(31, 'catalog_reindex_price', 'catalog_product', 4, '2016-05-03 09:10:56', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(32, 'save', 'catalog_product', 4, '2016-05-03 09:10:56', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(33, 'save', 'core_config_data', 655, '2016-05-04 21:34:03', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(34, 'save', 'core_config_data', 688, '2016-05-05 15:52:38', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(35, 'save', 'core_config_data', 691, '2016-05-05 15:52:38', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_index_process`
--

CREATE TABLE IF NOT EXISTS `mgeg_index_process` (
  `process_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Process Id',
  `indexer_code` varchar(32) NOT NULL COMMENT 'Indexer Code',
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Started At',
  `ended_at` timestamp NULL DEFAULT NULL COMMENT 'Ended At',
  `mode` varchar(9) NOT NULL DEFAULT 'real_time' COMMENT 'Mode',
  PRIMARY KEY (`process_id`),
  UNIQUE KEY `UNQ_MGEG_INDEX_PROCESS_INDEXER_CODE` (`indexer_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Index Process' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `mgeg_index_process`
--

INSERT INTO `mgeg_index_process` (`process_id`, `indexer_code`, `status`, `started_at`, `ended_at`, `mode`) VALUES
(1, 'catalog_product_attribute', 'require_reindex', '2016-05-03 09:10:56', '2016-05-03 09:10:56', 'real_time'),
(2, 'catalog_product_price', 'require_reindex', '2016-05-05 15:52:38', '2016-05-05 15:52:38', 'real_time'),
(3, 'catalog_url', 'pending', '2016-05-05 04:25:38', '2016-05-05 04:25:38', 'real_time'),
(4, 'catalog_product_flat', 'pending', '2016-04-27 18:53:17', '2016-04-27 18:53:18', 'real_time'),
(5, 'catalog_category_flat', 'require_reindex', '2016-04-27 18:53:18', '2016-04-27 18:53:18', 'real_time'),
(6, 'catalog_category_product', 'pending', '2016-05-05 04:25:38', '2016-05-05 04:25:38', 'real_time'),
(7, 'catalogsearch_fulltext', 'pending', '2016-05-05 04:25:38', '2016-05-05 04:25:38', 'real_time'),
(8, 'cataloginventory_stock', 'require_reindex', '2016-05-05 15:52:38', '2016-05-05 15:52:38', 'real_time'),
(9, 'tag_summary', 'pending', '2016-05-03 09:10:56', '2016-05-03 09:10:56', 'real_time');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_index_process_event`
--

CREATE TABLE IF NOT EXISTS `mgeg_index_process_event` (
  `process_id` int(10) unsigned NOT NULL COMMENT 'Process Id',
  `event_id` bigint(20) unsigned NOT NULL COMMENT 'Event Id',
  `status` varchar(7) NOT NULL DEFAULT 'new' COMMENT 'Status',
  PRIMARY KEY (`process_id`,`event_id`),
  KEY `IDX_MGEG_INDEX_PROCESS_EVENT_EVENT_ID` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Process Event';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_log_customer`
--

CREATE TABLE IF NOT EXISTS `mgeg_log_customer` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `login_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login Time',
  `logout_at` timestamp NULL DEFAULT NULL COMMENT 'Logout Time',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_MGEG_LOG_CUSTOMER_VISITOR_ID` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Customers Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_log_quote`
--

CREATE TABLE IF NOT EXISTS `mgeg_log_quote` (
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Deletion Time',
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Quotes Table';

--
-- Dumping data for table `mgeg_log_quote`
--

INSERT INTO `mgeg_log_quote` (`quote_id`, `visitor_id`, `created_at`, `deleted_at`) VALUES
(3, 16, '2016-04-28 21:18:53', NULL),
(4, 82, '2016-05-04 21:16:32', NULL),
(5, 83, '2016-05-05 00:41:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_log_summary`
--

CREATE TABLE IF NOT EXISTS `mgeg_log_summary` (
  `summary_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Summary ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Type ID',
  `visitor_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Visitor Count',
  `customer_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer Count',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date',
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Summary Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_log_summary_type`
--

CREATE TABLE IF NOT EXISTS `mgeg_log_summary_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type ID',
  `type_code` varchar(64) DEFAULT NULL COMMENT 'Type Code',
  `period` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Period',
  `period_type` varchar(6) NOT NULL DEFAULT 'MINUTE' COMMENT 'Period Type',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Summary Types Table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_log_summary_type`
--

INSERT INTO `mgeg_log_summary_type` (`type_id`, `type_code`, `period`, `period_type`) VALUES
(1, 'hour', 1, 'HOUR'),
(2, 'day', 1, 'DAY');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_log_url`
--

CREATE TABLE IF NOT EXISTS `mgeg_log_url` (
  `url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'URL ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `visit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Visit Time',
  KEY `IDX_MGEG_LOG_URL_VISITOR_ID` (`visitor_id`),
  KEY `url_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_log_url_info`
--

CREATE TABLE IF NOT EXISTS `mgeg_log_url_info` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'URL ID',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `referer` varchar(255) DEFAULT NULL COMMENT 'Referrer',
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Info Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_log_visitor`
--

CREATE TABLE IF NOT EXISTS `mgeg_log_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Visit Time',
  `last_url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Last URL ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Visitors Table' AUTO_INCREMENT=129 ;

--
-- Dumping data for table `mgeg_log_visitor`
--

INSERT INTO `mgeg_log_visitor` (`visitor_id`, `session_id`, `first_visit_at`, `last_visit_at`, `last_url_id`, `store_id`) VALUES
(1, 'hkjtacfks7bbeos1qsupbug1p3', '2016-04-27 18:54:01', '2016-04-27 19:13:22', 0, 1),
(2, 'ik3lrsfp1ktlp8p4mv6jnl0o01', '2016-04-27 19:08:19', '2016-04-27 19:08:19', 0, 1),
(3, '1ob8e3af72a6hmdcg21o9chn96', '2016-04-27 19:08:20', '2016-04-27 19:08:20', 0, 1),
(4, 'h6c9efihio4m9g4rd9bmf005a6', '2016-04-27 19:08:33', '2016-04-27 19:08:33', 0, 1),
(5, 'bfej4g58bfi4kss5akgh554md4', '2016-04-27 19:09:40', '2016-04-27 19:10:00', 0, 1),
(6, 'c427t8ou8063hfp5246ktk5ro2', '2016-04-27 19:10:10', '2016-04-27 19:10:11', 0, 1),
(7, 'mpu553np40fdgaj7i7ompmrcb4', '2016-04-27 20:13:23', '2016-04-27 20:13:23', 0, 1),
(8, 'phlv9he0k2d5viuctht20bh5p1', '2016-04-28 02:36:14', '2016-04-28 02:53:14', 0, 1),
(9, 'p331tuk0t0mkrtf1df78f7p4j6', '2016-04-28 02:47:56', '2016-04-28 02:47:56', 0, 1),
(10, 'qq5ng82gs0gevlj87h2p0tlvv0', '2016-04-28 02:47:56', '2016-04-28 02:47:56', 0, 1),
(11, 'fiebjdleqavmm8huiuo7b41no6', '2016-04-28 04:59:50', '2016-04-28 05:00:51', 0, 1),
(12, 'rle7lcmc8fi9c0b3qp9e157ej2', '2016-04-28 06:16:57', '2016-04-28 07:21:35', 0, 1),
(13, '0uvj96mvk51n7egkbdocsht862', '2016-04-28 18:19:12', '2016-04-28 21:29:33', 0, 1),
(14, 'bs48mggihgt2e75b7kciavmk84', '2016-04-28 18:24:44', '2016-04-28 18:25:45', 0, 1),
(15, 'k2htkre8deobsct812jmjps8t3', '2016-04-28 18:46:15', '2016-04-28 19:15:25', 0, 1),
(16, 'uka5d1rg0c3s7e9smsf78rrhe5', '2016-04-28 18:47:06', '2016-04-28 21:21:52', 0, 1),
(17, 'faavjcni951afgf8ip0jn6u6r2', '2016-04-28 21:08:37', '2016-04-28 21:09:34', 0, 1),
(18, 'scuvff12ifl7tviooa82tqp790', '2016-04-28 21:14:47', '2016-04-28 21:14:48', 0, 1),
(19, '6ijsoa9q5rj8kscnb163t48eb7', '2016-04-29 12:01:39', '2016-04-29 12:02:17', 0, 1),
(20, 'rcucql8kcl80rok4l3nlg5c810', '2016-04-29 13:04:41', '2016-04-29 13:45:40', 0, 1),
(21, 'ua833facbii3t1aa7hsvqidr77', '2016-04-29 13:37:32', '2016-04-29 13:39:44', 0, 1),
(22, 'be37gca71cqfvvimhefhipqbe0', '2016-04-29 13:46:08', '2016-04-29 13:51:21', 0, 1),
(23, 'n7inctbfg75n5jho9fair7l934', '2016-04-29 16:29:07', '2016-04-29 16:29:07', 0, 1),
(24, 'q91jbbuf5on2fo2k0j3437jb85', '2016-04-29 16:30:24', '2016-04-29 16:36:39', 0, 1),
(25, 's1kc765n1gld4354rpao6fkl73', '2016-04-30 05:36:28', '2016-04-30 05:36:29', 0, 1),
(26, '39qlcj9khb3oun5rjmtne7d6k5', '2016-04-30 05:48:46', '2016-04-30 05:48:47', 0, 1),
(27, 'o72fbp42q6r9o84c2situa4re3', '2016-05-02 22:11:57', '2016-05-03 11:13:17', 0, 1),
(28, 'v4o51bbmo27t08q87f31k1r703', '2016-05-02 23:09:09', '2016-05-02 23:09:09', 0, 1),
(29, 'aqjmf0q6mj0tp4iom5nggt2fh1', '2016-05-02 23:50:52', '2016-05-02 23:50:52', 0, 1),
(30, 'b0svj1eteudl0ur0sfagj63ts3', '2016-05-02 23:51:30', '2016-05-02 23:51:30', 0, 1),
(31, 'og5c96ub7psfe907jo80rvcsq3', '2016-05-02 23:56:29', '2016-05-02 23:56:29', 0, 1),
(32, 'f251q7ho2rrampehp4kr3thhp3', '2016-05-02 23:57:22', '2016-05-02 23:57:22', 0, 1),
(33, '45th719mqv2uc9jgvteos7b5o2', '2016-05-02 23:59:13', '2016-05-02 23:59:13', 0, 1),
(34, '6uctmuv3d7jj81de82qutm5p47', '2016-05-02 23:59:29', '2016-05-02 23:59:29', 0, 1),
(35, '8hec4jn1aompmf0o7fn69nk4q1', '2016-05-03 00:17:51', '2016-05-03 00:17:51', 0, 1),
(36, '00b0fme7onlu0v3g38i6bm0bp7', '2016-05-03 00:28:41', '2016-05-03 00:28:41', 0, 1),
(37, 'mrio16dpqbo6ds0lniff3q7ma5', '2016-05-03 01:06:04', '2016-05-03 01:06:04', 0, 1),
(38, 'ldqfgc51asnvf2l24m0hd82va3', '2016-05-03 02:59:16', '2016-05-03 02:59:16', 0, 1),
(39, 'nomqoshnt0nf57b8q3bp2rej86', '2016-05-03 03:23:05', '2016-05-03 03:23:05', 0, 1),
(40, 'v91hhl31b5dbl48613d0egsh32', '2016-05-03 05:47:52', '2016-05-03 05:47:52', 0, 1),
(41, 'us6e6ppo2ssi0vp603avv4ifb4', '2016-05-03 07:28:50', '2016-05-03 07:28:50', 0, 1),
(42, '2sa7g17tkovtggibapnoaapa87', '2016-05-03 08:51:17', '2016-05-03 08:51:18', 0, 1),
(43, 'abte5r4ja1c7bsbens9f48gps7', '2016-05-03 09:37:10', '2016-05-03 09:37:10', 0, 1),
(44, 'd370de7nbs5hn7qn50k1gg0hi0', '2016-05-03 09:37:11', '2016-05-03 09:37:11', 0, 1),
(45, 'alsnhubdvtiaet89ae8qbunjl4', '2016-05-03 09:49:08', '2016-05-03 09:49:08', 0, 1),
(46, '8e8g9u1sj11secv2d4o2gv97p4', '2016-05-03 10:27:43', '2016-05-03 10:29:17', 0, 1),
(47, 'nib9t6d59hti4rfblclt2rsqq0', '2016-05-03 12:12:13', '2016-05-03 12:12:13', 0, 1),
(48, '55bbcfpkbdmatqmce2l9t0sgp7', '2016-05-03 14:38:39', '2016-05-03 15:30:38', 0, 1),
(49, '58db9rkgf12g2fvhl6e0s95lb4', '2016-05-03 15:38:49', '2016-05-03 15:38:50', 0, 1),
(50, 'u90munac1gnne5lcf8ioeia2h3', '2016-05-04 01:21:45', '2016-05-04 01:30:43', 0, 1),
(51, '1i9vi6b1462u6df9sc8l4lmrl1', '2016-05-04 01:39:21', '2016-05-04 01:39:21', 0, 1),
(52, 'igkto8akc0sc2c5525i6ir6th3', '2016-05-04 02:18:09', '2016-05-04 02:18:14', 0, 1),
(53, 'bpm8giedfubee4481ocss9ji71', '2016-05-04 02:18:53', '2016-05-04 02:18:53', 0, 1),
(54, '4ablg9ue217rhe1na5688us6b2', '2016-05-04 02:18:54', '2016-05-04 02:18:54', 0, 1),
(55, 'k3g2shnghbk1crosekrimq5p07', '2016-05-04 02:22:56', '2016-05-04 02:22:56', 0, 1),
(56, 'afcofe8u7ffk2kg3oiom953qg2', '2016-05-04 03:47:36', '2016-05-04 03:47:37', 0, 1),
(57, '0u1of50m31c9mv30gb9evpn9b5', '2016-05-04 04:34:33', '2016-05-04 04:36:43', 0, 1),
(58, 'rc2qmh691jjc8e2q2tkqnqij76', '2016-05-04 06:36:09', '2016-05-04 06:36:10', 0, 1),
(59, '6cu0udqifb98hidkcuhfgk97v0', '2016-05-04 06:46:16', '2016-05-04 06:46:17', 0, 1),
(60, 'ecsukqbse2u3ppaojhc2hnh2h3', '2016-05-04 16:51:03', '2016-05-04 16:51:04', 0, 1),
(61, 'gs80uv65985jf6741v08fl2qd1', '2016-05-04 18:08:00', '2016-05-04 18:08:01', 0, 1),
(62, 'h9icfagkclvsa8sc08aasoulu7', '2016-05-04 18:28:01', '2016-05-04 18:28:01', 0, 1),
(63, 'o9p0v5phunlv4b05e6lbb3cai2', '2016-05-04 18:46:20', '2016-05-04 21:36:41', 0, 1),
(64, 'lejg7e0pj6ci95urlb6oackjn4', '2016-05-04 18:46:27', '2016-05-04 21:40:27', 0, 1),
(65, 'rk20rbmstaum02ge04a4vipos0', '2016-05-04 19:09:22', '2016-05-04 19:09:51', 0, 1),
(66, 'tj8fqued8h2mjsf83tgkn1ghp0', '2016-05-04 19:09:40', '2016-05-04 19:09:40', 0, 1),
(67, '0a40phkatffjbipdlh7effg1l7', '2016-05-04 19:09:40', '2016-05-04 21:30:24', 0, 1),
(68, '88n5d2l8moqql8hn31oo4vg151', '2016-05-04 19:10:26', '2016-05-04 19:52:38', 0, 1),
(69, 'rg5cekkjlrdpc1q12h57pm4gq2', '2016-05-04 19:10:32', '2016-05-04 19:10:40', 0, 1),
(70, '74u29b1aob4dd392f07id7muv6', '2016-05-04 19:30:53', '2016-05-04 19:30:54', 0, 1),
(71, 'magcb9irn9sdtovg4heqb4dou1', '2016-05-04 19:35:20', '2016-05-04 19:35:29', 0, 1),
(72, 'ad81ocosvp80e50041vnjq1mi1', '2016-05-04 19:35:58', '2016-05-04 19:37:23', 0, 1),
(73, 'uncgpcq4271ac6lir6lkibglq1', '2016-05-04 19:40:53', '2016-05-04 19:41:09', 0, 1),
(74, 'ffjuf21dkvg657b16daq4uqq45', '2016-05-04 19:41:22', '2016-05-04 19:41:23', 0, 1),
(75, 'v1olmmgqo4n2rvju6f41ao1rl6', '2016-05-04 19:47:55', '2016-05-04 19:47:56', 0, 1),
(76, '5uto8rtjo9ci3l9rv3u9bgj623', '2016-05-04 19:52:53', '2016-05-04 19:52:53', 0, 1),
(77, 'g41f6hbrm40k30qh6u4vdj3ro4', '2016-05-04 19:53:24', '2016-05-04 19:54:33', 0, 1),
(78, '420jq3d9kolmb8n0b62425ode2', '2016-05-04 19:55:03', '2016-05-04 19:58:32', 0, 1),
(79, 'livjdcb8ivbq4crk1u5bbt71s6', '2016-05-04 19:59:24', '2016-05-04 20:02:27', 0, 1),
(80, 'els7pih56nskab8e9utc3j1j16', '2016-05-04 20:06:53', '2016-05-04 20:06:54', 0, 1),
(81, 'o2iole8rtq9vg6195afq6titi6', '2016-05-04 21:00:24', '2016-05-04 22:09:13', 0, 1),
(82, 'uf54oadrnjmakg8u8e5mj4qq92', '2016-05-04 21:15:47', '2016-05-04 21:22:04', 0, 1),
(83, 'kp2csjkbtv6n1mmhl8cn50s656', '2016-05-05 00:39:34', '2016-05-05 00:41:53', 0, 1),
(84, '61ftsmlr9nbg2dm7os87o8u313', '2016-05-05 01:41:58', '2016-05-05 01:41:58', 0, 1),
(85, 'dh4av2530q7emg78vp3779nt02', '2016-05-05 01:50:12', '2016-05-05 02:06:31', 0, 1),
(86, 'av2cb0jn77pa343mv3ls9fhcr4', '2016-05-05 01:53:12', '2016-05-05 01:53:12', 0, 1),
(87, 'e46qhdvh8lm87jt5ms2tk69tj4', '2016-05-05 02:22:45', '2016-05-05 06:07:58', 0, 1),
(88, '8v4i6qgsg05vnnu44k10tghhv1', '2016-05-05 03:25:19', '2016-05-05 03:25:19', 0, 1),
(89, 'ka58sk4i5d3ta1gjpdnp35b583', '2016-05-05 03:26:51', '2016-05-05 03:26:52', 0, 1),
(90, 'j62t2k97l09bnthsnimgifkg91', '2016-05-05 04:48:03', '2016-05-05 04:48:04', 0, 1),
(91, '9v0c603f0k2e1dskvpeup30816', '2016-05-05 05:37:02', '2016-05-05 05:37:02', 0, 1),
(92, 'l6jb42k5fd1mld1hnjuu6skuu1', '2016-05-05 06:03:27', '2016-05-05 06:03:27', 0, 1),
(93, '1vuekb47d40cdogfo36q0ijhn4', '2016-05-05 15:29:05', '2016-05-05 15:51:10', 0, 1),
(94, 'jub4bsao7h65bcdvf5cgglt5i5', '2016-05-05 15:32:03', '2016-05-05 15:35:28', 0, 1),
(95, 'adsadn79gl713cdhirpe13mvd6', '2016-05-05 18:06:51', '2016-05-05 18:06:52', 0, 1),
(96, '2kgehh349014s1311at920ua51', '2016-05-05 18:11:45', '2016-05-05 18:11:45', 0, 1),
(97, 'buvrjvv06dl4f0ootcfvub4957', '2016-05-05 18:11:49', '2016-05-05 18:11:49', 0, 1),
(98, 'cvsbbhn0acqd5lohng9k4udli1', '2016-05-05 18:11:49', '2016-05-05 18:11:50', 0, 1),
(99, 'qsgtnt72vhbsdeg3v8k1ehk5d0', '2016-05-05 21:59:26', '2016-05-05 21:59:27', 0, 1),
(100, '3k92i3f5v64eq8820io29v46d7', '2016-05-05 21:59:33', '2016-05-05 21:59:33', 0, 1),
(101, '122ilmnc7vijd565sfjokvfrq2', '2016-05-05 23:30:17', '2016-05-05 23:30:17', 0, 1),
(102, 'ajht7m7mir2pmlifrgstbcfa47', '2016-05-05 23:30:17', '2016-05-06 01:28:10', 0, 1),
(103, 'sn2anddct52a8nmrdhihp0od46', '2016-05-05 23:31:06', '2016-05-05 23:33:55', 0, 1),
(104, 'eqdr6ue34t1a5ulv653m373fg0', '2016-05-06 00:36:37', '2016-05-06 00:36:38', 0, 1),
(105, 'dphs8njo1sk9soig0eu2d9raa4', '2016-05-06 01:15:52', '2016-05-06 01:15:53', 0, 1),
(106, '2i9svv521uadi8m0nhrsd5i580', '2016-05-06 01:26:46', '2016-05-06 01:26:46', 0, 1),
(107, '645ns8h1m7gpqo6rskns95j5g4', '2016-05-06 01:27:41', '2016-05-06 01:27:41', 0, 1),
(108, '9qhg385555vb4s0l6h2f78vr07', '2016-05-06 01:55:55', '2016-05-06 01:55:55', 0, 1),
(109, 'rgq8e7doubseiqc7nbasp8hfh2', '2016-05-06 02:22:02', '2016-05-06 02:22:02', 0, 1),
(110, '14tn69anhu47r344n0gnljnlc6', '2016-05-06 17:31:29', '2016-05-06 17:43:32', 0, 1),
(111, 'uevqgdhho7rsdtdlo6a9titcq4', '2016-05-06 17:38:13', '2016-05-06 17:38:14', 0, 1),
(112, 'vtf864j0tvob45tq0ouopj2qr2', '2016-05-06 17:46:24', '2016-05-06 17:46:24', 0, 1),
(113, '2oghhmp2kere39bv906urt9n64', '2016-05-06 17:46:52', '2016-05-06 17:46:52', 0, 1),
(114, 'e6vbmsk70g38tqsf09qnjgphc0', '2016-05-06 17:47:19', '2016-05-06 17:47:19', 0, 1),
(115, 'oj2sq5mp0e01m9nkeqf2aarfo1', '2016-05-06 19:48:40', '2016-05-06 19:48:41', 0, 1),
(116, 'kl1enua13to1v610hh6qrhvcf6', '2016-05-07 02:03:31', '2016-05-07 02:03:32', 0, 1),
(117, 'hf6ogl0hdom6ogfkvks0olobr4', '2016-05-07 02:03:31', '2016-05-07 02:03:32', 0, 1),
(118, 'e49buoirsrs48g0v7afknqvro4', '2016-05-07 02:25:48', '2016-05-07 02:28:33', 0, 1),
(119, 'j922vf0etrh3v7a0q8a8o3vjb0', '2016-05-07 02:26:41', '2016-05-07 02:26:42', 0, 1),
(120, '4s4r38adfu39emitn7er509cp5', '2016-05-07 02:26:54', '2016-05-07 02:26:55', 0, 1),
(121, '6r23rog4m1pqe7drsqihrt06l6', '2016-05-07 11:05:46', '2016-05-07 11:05:47', 0, 1),
(122, '4o3eh0baf2foo7of5itrl4gja6', '2016-05-07 11:08:28', '2016-05-07 11:08:28', 0, 1),
(123, 'qb72t0k09knm60cm5bc6883vj3', '2016-05-07 11:08:29', '2016-05-07 11:08:29', 0, 1),
(124, 'unjf7rqmm3vcm679a34m12gqd1', '2016-05-07 11:11:40', '2016-05-07 11:11:40', 0, 1),
(125, 'd6gkhsvs8t9hnrki2i5j7ve203', '2016-05-07 11:18:26', '2016-05-07 11:20:08', 0, 1),
(126, 'gqbjm17bppfqtgvkqv4q4nn537', '2016-05-08 02:44:45', '2016-05-08 02:47:29', 0, 1),
(127, 'eou3p2k4u9o3tkrv56356havo1', '2016-05-08 17:17:42', '2016-05-08 17:17:43', 0, 1),
(128, 'c4gghudob04vb8hk2pqup0ami2', '2016-05-08 17:17:42', '2016-05-08 17:17:43', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_log_visitor_info`
--

CREATE TABLE IF NOT EXISTS `mgeg_log_visitor_info` (
  `visitor_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `http_referer` varchar(255) DEFAULT NULL COMMENT 'HTTP Referrer',
  `http_user_agent` varchar(255) DEFAULT NULL COMMENT 'HTTP User-Agent',
  `http_accept_charset` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Charset',
  `http_accept_language` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Language',
  `server_addr` varbinary(16) DEFAULT NULL,
  `remote_addr` varbinary(16) DEFAULT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Info Table';

--
-- Dumping data for table `mgeg_log_visitor_info`
--

INSERT INTO `mgeg_log_visitor_info` (`visitor_id`, `http_referer`, `http_user_agent`, `http_accept_charset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
(1, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ow<�'),
(2, NULL, 'Slackbot-LinkExpanding 1.0 (+https://api.slack.com/robots)', NULL, NULL, '���', '6���'),
(3, NULL, 'Slackbot-LinkExpanding 1.0 (+https://api.slack.com/robots)', NULL, NULL, '���', '4Z&�'),
(4, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'Lf�{'),
(5, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36', NULL, 'en-US,en;q=0.8,ru;q=0.6,de;q=0.4,bg;q=0.2,nb;q=0.2,da;q=0.2', '���', 'NZ��'),
(6, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'DWL�'),
(7, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'DWL�'),
(8, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'Lf�{'),
(9, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�T�'),
(10, 'http://www.google.com/search', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview) Chrome/27.0.1453 Safari/537.36', NULL, 'en', '���', '@��'),
(11, 'http://bisonmedia.net/dd/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'Lf�{'),
(12, 'http://bisonmedia.net/dd/index.php/test-category.html', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'Lf�{'),
(13, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ow/�'),
(14, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ow/�'),
(15, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', 'Lf�{'),
(16, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'Lf�{'),
(17, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', '2�"�'),
(18, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ow/�'),
(19, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ow/�'),
(20, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ow/�'),
(21, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ow/�'),
(22, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', 'Ow/�'),
(23, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ow/�'),
(24, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', 'Ow/�'),
(25, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', 'Ow/�'),
(26, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�T�'),
(27, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'Lf�{'),
(28, NULL, 'Mozilla/5.0 (Android 6.0.1; Mobile; rv:46.0) Gecko/46.0 Firefox/46.0', NULL, 'en-US,en;q=0.5', '���', 'Lf�{'),
(29, NULL, NULL, NULL, NULL, '���', '����'),
(30, NULL, NULL, NULL, NULL, '���', '����'),
(31, NULL, NULL, NULL, NULL, '���', '����'),
(32, NULL, NULL, NULL, NULL, '���', '����'),
(33, NULL, NULL, NULL, NULL, '���', '����'),
(34, NULL, NULL, NULL, NULL, '���', '����'),
(35, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�T�'),
(36, NULL, 'Mozilla/5.0 (Android 6.0.1; Mobile; rv:46.0) Gecko/46.0 Firefox/46.0', NULL, 'en-US,en;q=0.5', '���', 'Lf�{'),
(37, 'https://telegraphhealth.zendesk.com/agent/tickets/11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', '����'),
(38, NULL, 'Mozilla/5.0 (Linux; Android 4.3; V1_ViperS Build/JSS15Q) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ou'),
(39, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�T�'),
(40, NULL, 'AddThis.com (http://support.addthis.com/)', NULL, NULL, '���', '%F+'),
(41, NULL, 'AddThis.com (http://support.addthis.com/)', NULL, NULL, '���', '%G	'),
(42, NULL, 'AddThis.com (http://support.addthis.com/)', NULL, NULL, '���', '%F�'),
(43, NULL, 'Slackbot-LinkExpanding 1.0 (+https://api.slack.com/robots)', NULL, NULL, '���', '4Z!�'),
(44, NULL, 'Slackbot-LinkExpanding 1.0 (+https://api.slack.com/robots)', NULL, NULL, '���', '6�r�'),
(45, NULL, 'Mozilla/5.0 (Linux; Android 5.1.1; A0001 Build/LMY48Y) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36', NULL, 'en-US,en;q=0.8,ru;q=0.6', '���', 'B�]�'),
(46, NULL, 'Mozilla/5.0 (Android 6.0.1; Mobile; rv:46.0) Gecko/46.0 Firefox/46.0', NULL, 'en-US,en;q=0.5', '���', 'Lf�{'),
(47, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13E238 Safari/601.1', NULL, 'en-us', '���', '�	�h'),
(48, 'http://bisonmedia.net/dd/index.php/infused-products.html', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'Lf�{'),
(49, NULL, 'AddThis.com (http://support.addthis.com/)', NULL, NULL, '���', '%GO'),
(50, 'http://bisonmedia.net/dd/index.php/infused-products/edibles/test-edible-1.html', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'K�('),
(51, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�T�'),
(52, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17', NULL, 'en-us', '���', 'K�('),
(53, NULL, 'Slackbot-LinkExpanding 1.0 (+https://api.slack.com/robots)', NULL, NULL, '���', '4Z�*'),
(54, NULL, 'Slackbot-LinkExpanding 1.0 (+https://api.slack.com/robots)', NULL, NULL, '���', '4Z!�'),
(55, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13E238 Safari/601.1', NULL, 'en-us', '���', 'I�F�'),
(56, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�T�'),
(57, 'http://bisonmedia.net/dd/index.php/infused-products/edibles/test-edible-1.html', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', '�8''E'),
(58, NULL, 'Java Browser', NULL, NULL, '���', '���'),
(59, NULL, 'Java Browser', NULL, NULL, '���', '���'),
(60, NULL, 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13E238 Safari/601.1', NULL, 'en-us', '���', '�K�'),
(61, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�T�'),
(62, 'https://telegraphhealth.zendesk.com/agent/tickets/27', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', '����'),
(63, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'Lf�{'),
(64, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ou'),
(65, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ou'),
(66, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17', NULL, 'en-us', '���', 'Lf�{'),
(67, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17', NULL, 'en-us', '���', 'Lf�{'),
(68, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'Lf�{'),
(69, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ou'),
(70, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ou'),
(71, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ou'),
(72, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ou'),
(73, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ou'),
(74, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17', NULL, 'en-us', '���', 'Lf�{'),
(75, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ou'),
(76, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17', NULL, 'en-us', '���', 'Lf�{'),
(77, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', 'Lf�{'),
(78, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', 'Lf�{'),
(79, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', 'Lf�{'),
(80, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', 'Lf�{'),
(81, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', 'Lf�{'),
(82, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ou'),
(83, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', '�	�h'),
(84, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17', NULL, 'en-us', '���', '2�#'),
(85, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17', NULL, 'en-us', '���', '2�#'),
(86, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�T�'),
(87, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', '2�#'),
(88, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17', NULL, 'en-us', '���', '�8&�'),
(89, NULL, NULL, NULL, NULL, '���', '@@\rj'),
(90, NULL, NULL, NULL, NULL, '���', '@@\rj'),
(91, NULL, NULL, NULL, NULL, '���', '@@\rj'),
(92, NULL, NULL, NULL, NULL, '���', '@@\rj'),
(93, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ou'),
(94, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8,ro;q=0.6', '���', 'Ou'),
(95, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'Lf�{'),
(96, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17', NULL, 'en-us', '���', 'Lf�{'),
(97, NULL, 'Slackbot-LinkExpanding 1.0 (+https://api.slack.com/robots)', NULL, NULL, '���', '6�!'),
(98, NULL, 'Slackbot-LinkExpanding 1.0 (+https://api.slack.com/robots)', NULL, NULL, '���', '6�!'),
(99, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�U�'),
(100, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', '�8''�'),
(101, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', '�8''�'),
(102, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', '�8''�'),
(103, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', '��to'),
(104, NULL, 'AddThis.com (http://support.addthis.com/)', NULL, NULL, '���', '%F�'),
(105, 'http://bisonmedia.net/dd/index.php/mmj-flower/mmj-sativa.html', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', '��to'),
(106, NULL, 'MailChimp.com WebHook Validator', NULL, NULL, '���', '�Ɍ'),
(107, NULL, 'MailChimp.com', NULL, NULL, '���', '�Ɍ'),
(108, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�T�'),
(109, NULL, 'AddThis.com (http://support.addthis.com/)', NULL, NULL, '���', '%G4'),
(110, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', '�K�'),
(111, NULL, NULL, NULL, NULL, '���', '@@\rj'),
(112, 'https://telegraphhealth.zendesk.com/agent/tickets/45', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', '����'),
(113, 'https://telegraphhealth.zendesk.com/agent/tickets/44', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', '����'),
(114, 'https://telegraphhealth.zendesk.com/agent/tickets/38', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', NULL, 'en-US,en;q=0.5', '���', '����'),
(115, NULL, 'AddThis.com (http://support.addthis.com/)', NULL, NULL, '���', '%G4'),
(116, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�T�'),
(117, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�T�'),
(118, 'http://bisonmedia.net/dd/index.php/customer/account/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'Lf�{'),
(119, NULL, NULL, NULL, NULL, '���', '@@\rj'),
(120, NULL, NULL, NULL, NULL, '���', '@@\rj'),
(121, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8', '���', 'Lf�{'),
(122, NULL, 'Slackbot-LinkExpanding 1.0 (+https://api.slack.com/robots)', NULL, NULL, '���', '4Z&�'),
(123, NULL, 'Slackbot-LinkExpanding 1.0 (+https://api.slack.com/robots)', NULL, NULL, '���', '6���'),
(124, NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8,bg;q=0.6', '���', 'NZ��'),
(125, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', NULL, 'en-US,en;q=0.8,ru;q=0.6,de;q=0.4,bg;q=0.2,nb;q=0.2,da;q=0.2', '���', 'S��w'),
(126, NULL, 'Mozilla/5.0 (Android 6.0.1; Mobile; rv:46.0) Gecko/46.0 Firefox/46.0', NULL, 'en-US,en;q=0.5', '���', '�: '),
(127, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�T�'),
(128, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', NULL, NULL, '���', 'B�T�');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_log_visitor_online`
--

CREATE TABLE IF NOT EXISTS `mgeg_log_visitor_online` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `visitor_type` varchar(1) NOT NULL COMMENT 'Visitor Type',
  `remote_addr` varbinary(16) DEFAULT NULL,
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NULL DEFAULT NULL COMMENT 'Last Visit Time',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `last_url` varchar(255) DEFAULT NULL COMMENT 'Last URL',
  PRIMARY KEY (`visitor_id`),
  KEY `IDX_MGEG_LOG_VISITOR_ONLINE_VISITOR_TYPE` (`visitor_type`),
  KEY `IDX_MGEG_LOG_VISITOR_ONLINE_FIRST_VISIT_AT_LAST_VISIT_AT` (`first_visit_at`,`last_visit_at`),
  KEY `IDX_MGEG_LOG_VISITOR_ONLINE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Online Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_magemonkey_api_debug`
--

CREATE TABLE IF NOT EXISTS `mgeg_magemonkey_api_debug` (
  `debug_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debug_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_body` text,
  `response_body` text,
  PRIMARY KEY (`debug_id`),
  KEY `debug_at` (`debug_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_magemonkey_async_orders`
--

CREATE TABLE IF NOT EXISTS `mgeg_magemonkey_async_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  `created_at` datetime NOT NULL,
  `processed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_magemonkey_async_subscribers`
--

CREATE TABLE IF NOT EXISTS `mgeg_magemonkey_async_subscribers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) DEFAULT NULL,
  `confirm` smallint(1) DEFAULT '0',
  `lists` text NOT NULL,
  `mapfields` text,
  `created_at` datetime NOT NULL,
  `processed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_magemonkey_bulksync_export`
--

CREATE TABLE IF NOT EXISTS `mgeg_magemonkey_bulksync_export` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lists` text NOT NULL,
  `processed_count` int(10) unsigned NOT NULL,
  `last_processed_id` int(10) unsigned NOT NULL,
  `status` enum('idle','running','chunk_running','finished') NOT NULL,
  `data_source_entity` enum('newsletter_subscriber','customer') NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `total_count` int(10) unsigned NOT NULL,
  `started_at` datetime DEFAULT NULL,
  `store_id` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_magemonkey_bulksync_import`
--

CREATE TABLE IF NOT EXISTS `mgeg_magemonkey_bulksync_import` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lists` text NOT NULL,
  `import_types` text NOT NULL,
  `status` enum('idle','running','chunk_running','finished') NOT NULL,
  `create_customer` tinyint(1) unsigned NOT NULL,
  `last_processed_id` int(10) unsigned NOT NULL,
  `processed_count` int(10) unsigned NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `since` datetime DEFAULT NULL,
  `total_count` int(10) unsigned NOT NULL,
  `started_at` datetime DEFAULT NULL,
  `store_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_magemonkey_ecommerce360`
--

CREATE TABLE IF NOT EXISTS `mgeg_magemonkey_ecommerce360` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `order_increment_id` varchar(50) NOT NULL DEFAULT '',
  `mc_campaign_id` varchar(255) NOT NULL DEFAULT '',
  `mc_email_id` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `store_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_increment_id` (`order_increment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_magemonkey_last_order`
--

CREATE TABLE IF NOT EXISTS `mgeg_magemonkey_last_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_magemonkey_mails_sent`
--

CREATE TABLE IF NOT EXISTS `mgeg_magemonkey_mails_sent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` smallint(5) DEFAULT NULL,
  `mail_type` enum('abandoned cart','happy birthday','new order','related products','product review','no activity','wishlist','review coupon','back to stock') NOT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `coupon_number` varchar(255) DEFAULT NULL,
  `coupon_type` smallint(2) DEFAULT NULL,
  `coupon_amount` decimal(10,2) DEFAULT NULL,
  `sent_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_newsletter_problem`
--

CREATE TABLE IF NOT EXISTS `mgeg_newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem Id',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `IDX_MGEG_NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_MGEG_NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_newsletter_queue`
--

CREATE TABLE IF NOT EXISTS `mgeg_newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template Id',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `IDX_MGEG_NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_newsletter_queue_link`
--

CREATE TABLE IF NOT EXISTS `mgeg_newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `IDX_MGEG_NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_MGEG_NEWSLETTER_QUEUE_LINK_QUEUE_ID` (`queue_id`),
  KEY `IDX_MGEG_NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_newsletter_queue_store_link`
--

CREATE TABLE IF NOT EXISTS `mgeg_newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `IDX_MGEG_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_newsletter_subscriber`
--

CREATE TABLE IF NOT EXISTS `mgeg_newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  `subscriber_firstname` varchar(50) DEFAULT NULL,
  `subscriber_lastname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`subscriber_id`),
  KEY `IDX_MGEG_NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGEG_NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mgeg_newsletter_subscriber`
--

INSERT INTO `mgeg_newsletter_subscriber` (`subscriber_id`, `store_id`, `change_status_at`, `customer_id`, `subscriber_email`, `subscriber_status`, `subscriber_confirm_code`, `subscriber_firstname`, `subscriber_lastname`) VALUES
(1, 1, NULL, 1, 'benjamin.daniel@outlook.com', 1, 'u73cgu0951xpxbjxv18p1pk4axu841h1', NULL, NULL),
(2, 1, NULL, 0, 'admin@telegraphhealth.com', 1, '19hond21htnq774lagz1iz8l8o4znjfj', NULL, NULL),
(3, 1, NULL, 2, 'john@demian.com', 1, '2aw1gco3gwm47m2znsxmozs8ws37pqww', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_newsletter_template`
--

CREATE TABLE IF NOT EXISTS `mgeg_newsletter_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_text_preprocessed` text COMMENT 'Template Text Preprocessed',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  PRIMARY KEY (`template_id`),
  KEY `IDX_MGEG_NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `IDX_MGEG_NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_MGEG_NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Newsletter Template' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_newsletter_template`
--

INSERT INTO `mgeg_newsletter_template` (`template_id`, `template_code`, `template_text`, `template_text_preprocessed`, `template_styles`, `template_type`, `template_subject`, `template_sender_name`, `template_sender_email`, `template_actual`, `added_at`, `modified_at`) VALUES
(1, 'Example Newsletter Template', '{{template config_path="design/email/header"}}\n{{inlinecss file="email-inline.css"}}\n\n<table cellpadding="0" cellspacing="0" border="0">\n<tr>\n    <td class="full">\n        <table class="columns">\n            <tr>\n                <td class="email-heading">\n                    <h1>Welcome</h1>\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n                    sed do eiusmod tempor incididunt ut labore et.</p>\n                </td>\n                <td class="store-info">\n                    <h4>Contact Us</h4>\n                    <p>\n                        {{depend store_phone}}\n                        <b>Call Us:</b>\n                        <a href="tel:{{var phone}}">{{var store_phone}}</a><br>\n                        {{/depend}}\n                        {{depend store_hours}}\n                        <span class="no-link">{{var store_hours}}</span><br>\n                        {{/depend}}\n                        {{depend store_email}}\n                        <b>Email:</b> <a href="mailto:{{var store_email}}">{{var store_email}}</a>\n                        {{/depend}}\n                    </p>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td class="full">\n        <table class="columns">\n            <tr>\n                <td>\n                    <img width="600" src="http://placehold.it/600x200" class="main-image">\n                </td>\n                <td class="expander"></td>\n            </tr>\n        </table>\n        <table class="columns">\n            <tr>\n                <td class="panel">\n                    <p>Phasellus dictum sapien a neque luctus cursus. Pellentesque sem dolor, fringilla et pharetra\n                    vitae. <a href="#">Click it! &raquo;</a></p>\n                </td>\n                <td class="expander"></td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class="row">\n            <tr>\n                <td class="half left wrapper">\n                    <table class="columns">\n                        <tr>\n                            <td>\n                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\n                                incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n                                sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet.</p>\n                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\n                                incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed\n                                do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet.</p>\n                                <table class="button">\n                                    <tr>\n                                        <td>\n                                            <a href="#">Click Me!</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                            </td>\n                            <td class="expander"></td>\n                        </tr>\n                    </table>\n                </td>\n                <td class="half right wrapper last">\n                    <table class="columns">\n                        <tr>\n                            <td class="panel sidebar-links">\n                                <h6>Header Thing</h6>\n                                <p>Sub-head or something</p>\n                                <table>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr><td>&nbsp;</td></tr>\n                                </table>\n                            </td>\n                            <td class="expander"></td>\n                        </tr>\n                    </table>\n                    <br>\n                    <table class="columns">\n                        <tr>\n                            <td class="panel">\n                                <h6>Connect With Us:</h6>\n                                <table class="social-button facebook">\n                                    <tr>\n                                        <td>\n                                            <a href="#">Facebook</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                                <hr>\n                                <table class="social-button twitter">\n                                    <tr>\n                                        <td>\n                                            <a href="#">Twitter</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                                <hr>\n                                <table class="social-button google-plus">\n                                    <tr>\n                                        <td>\n                                            <a href="#">Google +</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                                <br>\n                                <h6>Contact Info:</h6>\n                                {{depend store_phone}}\n                                <p>\n                                    <b>Call Us:</b>\n                                    <a href="tel:{{var phone}}">{{var store_phone}}</a>\n                                </p>\n                                {{/depend}}\n                                {{depend store_hours}}\n                                <p><span class="no-link">{{var store_hours}}</span><br></p>\n                                {{/depend}}\n                                {{depend store_email}}\n                                <p><b>Email:</b> <a href="mailto:{{var store_email}}">{{var store_email}}</a></p>\n                                {{/depend}}\n                            </td>\n                            <td class="expander"></td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n        </table>\n        <table class="row">\n            <tr>\n                <td class="full wrapper">\n                    {{block type="catalog/product_new" template="email/catalog/product/new.phtml" products_count="4"\n                    column_count="4" }}\n                </td>\n            </tr>\n        </table>\n        <table class="row">\n            <tr>\n                <td class="full wrapper last">\n                    <table class="columns">\n                        <tr>\n                            <td align="center">\n                                <center>\n                                    <p><a href="#">Terms</a> | <a href="#">Privacy</a> | <a href="#">Unsubscribe</a></p>\n                                </center>\n                            </td>\n                            <td class="expander"></td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n</table>\n\n{{template config_path="design/email/footer"}}', NULL, NULL, 2, 'Example Subject', 'Owner', 'owner@example.com', 1, '2016-04-27 16:50:44', '2016-04-27 16:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_oauth_consumer`
--

CREATE TABLE IF NOT EXISTS `mgeg_oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` varchar(255) DEFAULT NULL COMMENT 'Callback URL',
  `rejected_callback_url` varchar(255) NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_MGEG_OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `UNQ_MGEG_MGEG_OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `IDX_MGEG_OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `IDX_MGEG_OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_oauth_nonce`
--

CREATE TABLE IF NOT EXISTS `mgeg_oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp',
  UNIQUE KEY `UNQ_MGEG_MGEG_OAUTH_NONCE_NONCE` (`nonce`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='mgeg_oauth_nonce';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_oauth_token`
--

CREATE TABLE IF NOT EXISTS `mgeg_oauth_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` varchar(255) NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_MGEG_OAUTH_TOKEN_TOKEN` (`token`),
  KEY `IDX_MGEG_MGEG_OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  KEY `FK_MGEG_OAUTH_TOKEN_ADMIN_ID_MGEG_MGEG_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `FK_MGEG_OAUTH_TOKEN_CSTR_ID_MGEG_MGEG_CSTR_ENTT_ENTT_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_paypal_cert`
--

CREATE TABLE IF NOT EXISTS `mgeg_paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `IDX_MGEG_PAYPAL_CERT_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_paypal_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `mgeg_paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_MGEG_PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_paypal_settlement_report`
--

CREATE TABLE IF NOT EXISTS `mgeg_paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `UNQ_MGEG_PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_paypal_settlement_report_row`
--

CREATE TABLE IF NOT EXISTS `mgeg_paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row Id',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT '' COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`row_id`),
  KEY `IDX_MGEG_PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_permission_block`
--

CREATE TABLE IF NOT EXISTS `mgeg_permission_block` (
  `block_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `block_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Block Name',
  `is_allowed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Mark that block can be processed by filters',
  PRIMARY KEY (`block_id`),
  UNIQUE KEY `UNQ_MGEG_PERMISSION_BLOCK_BLOCK_NAME` (`block_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='System blocks that can be processed via content filter' AUTO_INCREMENT=14 ;

--
-- Dumping data for table `mgeg_permission_block`
--

INSERT INTO `mgeg_permission_block` (`block_id`, `block_name`, `is_allowed`) VALUES
(1, 'core/template', 1),
(2, 'catalog/product_new', 1),
(3, 'cms/block', 1),
(4, 'catalog/product_list', 1),
(5, 'ultimo/product_list_featured', 1),
(6, 'ultraslideshow/slideshow', 1),
(7, 'brands/brands', 1),
(8, 'ultramegamenu/navigation', 1),
(9, 'ebizmarts_abandonedcart/email_order_items', 1),
(10, 'ebizmarts_autoresponder/email_backtostock_item', 1),
(11, 'ebizmarts_autoresponder/email_related_items', 1),
(12, 'ebizmarts_autoresponder/email_review_items', 1),
(13, 'ebizmarts_autoresponder/email_wishlist_items', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_permission_variable`
--

CREATE TABLE IF NOT EXISTS `mgeg_permission_variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable ID',
  `variable_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Config Path',
  `is_allowed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Mark that config can be processed by filters',
  PRIMARY KEY (`variable_id`,`variable_name`),
  UNIQUE KEY `UNQ_MGEG_PERMISSION_VARIABLE_VARIABLE_NAME` (`variable_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='System variables that can be processed via content filter' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `mgeg_permission_variable`
--

INSERT INTO `mgeg_permission_variable` (`variable_id`, `variable_name`, `is_allowed`) VALUES
(1, 'trans_email/ident_support/name', 1),
(2, 'trans_email/ident_support/email', 1),
(3, 'web/unsecure/base_url', 1),
(4, 'web/secure/base_url', 1),
(5, 'trans_email/ident_general/name', 1),
(6, 'trans_email/ident_general/email', 1),
(7, 'trans_email/ident_sales/name', 1),
(8, 'trans_email/ident_sales/email', 1),
(9, 'trans_email/ident_custom1/name', 1),
(10, 'trans_email/ident_custom1/email', 1),
(11, 'trans_email/ident_custom2/name', 1),
(12, 'trans_email/ident_custom2/email', 1),
(13, 'general/store_information/name', 1),
(14, 'general/store_information/phone', 1),
(15, 'general/store_information/address', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_persistent_session`
--

CREATE TABLE IF NOT EXISTS `mgeg_persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `IDX_MGEG_PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `IDX_MGEG_PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGEG_PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  KEY `FK_MGEG_PERSISTENT_SESS_WS_ID_MGEG_CORE_WS_WS_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_poll`
--

CREATE TABLE IF NOT EXISTS `mgeg_poll` (
  `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Poll Id',
  `poll_title` varchar(255) DEFAULT NULL COMMENT 'Poll title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  `date_posted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date posted',
  `date_closed` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  `active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is active',
  `closed` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is closed',
  `answers_display` smallint(6) DEFAULT NULL COMMENT 'Answers display',
  PRIMARY KEY (`poll_id`),
  KEY `IDX_MGEG_POLL_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_poll_answer`
--

CREATE TABLE IF NOT EXISTS `mgeg_poll_answer` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Answer Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `answer_title` varchar(255) DEFAULT NULL COMMENT 'Answer title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `answer_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Answers display',
  PRIMARY KEY (`answer_id`),
  KEY `IDX_MGEG_POLL_ANSWER_POLL_ID` (`poll_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll Answers' AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_poll_store`
--

CREATE TABLE IF NOT EXISTS `mgeg_poll_store` (
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`poll_id`,`store_id`),
  KEY `IDX_MGEG_POLL_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Store';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_poll_vote`
--

CREATE TABLE IF NOT EXISTS `mgeg_poll_vote` (
  `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `poll_answer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll answer id',
  `ip_address` varbinary(16) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer id',
  `vote_time` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_MGEG_POLL_VOTE_POLL_ANSWER_ID` (`poll_answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Vote' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_product_alert_price`
--

CREATE TABLE IF NOT EXISTS `mgeg_product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `IDX_MGEG_PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGEG_PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGEG_PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_product_alert_stock`
--

CREATE TABLE IF NOT EXISTS `mgeg_product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `IDX_MGEG_PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGEG_PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGEG_PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_rating`
--

CREATE TABLE IF NOT EXISTS `mgeg_rating` (
  `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Id',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Frontend',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `UNQ_MGEG_RATING_RATING_CODE` (`rating_code`),
  KEY `IDX_MGEG_RATING_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Ratings' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mgeg_rating`
--

INSERT INTO `mgeg_rating` (`rating_id`, `entity_id`, `rating_code`, `position`) VALUES
(1, 1, 'Quality', 0),
(2, 1, 'Value', 0),
(3, 1, 'Price', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_rating_entity`
--

CREATE TABLE IF NOT EXISTS `mgeg_rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating entities' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mgeg_rating_entity`
--

INSERT INTO `mgeg_rating_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_rating_option`
--

CREATE TABLE IF NOT EXISTS `mgeg_rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on frontend',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MGEG_RATING_OPTION_RATING_ID` (`rating_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating options' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `mgeg_rating_option`
--

INSERT INTO `mgeg_rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_rating_option_vote`
--

CREATE TABLE IF NOT EXISTS `mgeg_rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(50) DEFAULT NULL,
  `remote_ip_long` varbinary(16) DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_MGEG_RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  KEY `FK_MGEG_RATING_OPTION_VOTE_REVIEW_ID_MGEG_REVIEW_REVIEW_ID` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_rating_option_vote_aggregated`
--

CREATE TABLE IF NOT EXISTS `mgeg_rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_MGEG_RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `IDX_MGEG_RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_rating_store`
--

CREATE TABLE IF NOT EXISTS `mgeg_rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_MGEG_RATING_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_rating_title`
--

CREATE TABLE IF NOT EXISTS `mgeg_rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_MGEG_RATING_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_report_compared_product_index`
--

CREATE TABLE IF NOT EXISTS `mgeg_report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_MGEG_REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_MGEG_REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_MGEG_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_MGEG_REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mgeg_report_compared_product_index`
--

INSERT INTO `mgeg_report_compared_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, NULL, 1, 2, 1, '2016-05-03 07:09:29'),
(2, NULL, 1, 1, 1, '2016-05-03 07:07:13'),
(3, 63, NULL, 2, 1, '2016-05-04 20:59:13'),
(4, 63, NULL, 1, 1, '2016-05-04 20:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_report_event`
--

CREATE TABLE IF NOT EXISTS `mgeg_report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`event_id`),
  KEY `IDX_MGEG_REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `IDX_MGEG_REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `IDX_MGEG_REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `IDX_MGEG_REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `IDX_MGEG_REPORT_EVENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Event Table' AUTO_INCREMENT=52 ;

--
-- Dumping data for table `mgeg_report_event`
--

INSERT INTO `mgeg_report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
(1, '2016-04-27 19:10:27', 1, 1, 1, 1, 1),
(2, '2016-04-27 19:11:20', 4, 1, 1, 1, 1),
(3, '2016-05-03 03:36:20', 1, 1, 27, 1, 1),
(4, '2016-05-03 04:49:35', 1, 1, 27, 1, 1),
(5, '2016-05-03 04:50:36', 1, 1, 27, 1, 1),
(6, '2016-05-03 04:53:56', 1, 1, 27, 1, 1),
(7, '2016-05-03 04:54:02', 1, 1, 27, 1, 1),
(8, '2016-05-03 05:38:38', 1, 1, 27, 1, 1),
(9, '2016-05-03 05:40:41', 1, 1, 27, 1, 1),
(10, '2016-05-03 05:43:09', 1, 2, 27, 1, 1),
(11, '2016-05-03 05:43:32', 1, 2, 27, 1, 1),
(12, '2016-05-03 05:45:03', 3, 2, 27, 1, 1),
(13, '2016-05-03 05:45:25', 3, 1, 27, 1, 1),
(14, '2016-05-03 05:47:52', 1, 1, 40, 1, 1),
(15, '2016-05-03 06:28:48', 1, 2, 27, 1, 1),
(16, '2016-05-03 06:29:26', 1, 1, 27, 1, 1),
(17, '2016-05-03 06:46:45', 1, 2, 27, 1, 1),
(18, '2016-05-03 06:48:09', 1, 2, 27, 1, 1),
(19, '2016-05-03 07:08:15', 4, 2, 1, 0, 1),
(20, '2016-05-03 07:09:29', 3, 2, 1, 0, 1),
(21, '2016-05-03 07:21:24', 5, 1, 1, 0, 1),
(22, '2016-05-03 07:21:33', 5, 2, 1, 0, 1),
(23, '2016-05-03 07:21:49', 1, 1, 1, 0, 1),
(24, '2016-05-03 07:28:50', 1, 2, 41, 1, 1),
(25, '2016-05-03 08:51:17', 1, 1, 42, 1, 1),
(26, '2016-05-03 09:12:14', 1, 1, 1, 0, 1),
(27, '2016-05-03 14:39:09', 1, 4, 48, 1, 1),
(28, '2016-05-03 15:38:50', 1, 4, 49, 1, 1),
(29, '2016-05-04 06:36:09', 1, 1, 58, 1, 1),
(30, '2016-05-04 06:46:16', 1, 2, 59, 1, 1),
(31, '2016-05-04 18:47:02', 1, 4, 64, 1, 1),
(32, '2016-05-04 20:59:13', 3, 2, 63, 1, 1),
(33, '2016-05-04 20:59:21', 3, 1, 63, 1, 1),
(34, '2016-05-04 21:01:07', 1, 1, 64, 1, 1),
(35, '2016-05-04 21:01:29', 1, 1, 64, 1, 1),
(36, '2016-05-04 21:02:28', 1, 1, 64, 1, 1),
(37, '2016-05-04 21:05:12', 1, 4, 81, 1, 1),
(38, '2016-05-04 21:19:02', 1, 1, 1, 0, 1),
(39, '2016-05-04 21:22:03', 1, 4, 2, 0, 1),
(40, '2016-05-04 21:30:44', 1, 2, 64, 1, 1),
(41, '2016-05-05 00:41:13', 1, 3, 83, 1, 1),
(42, '2016-05-05 00:41:15', 4, 3, 83, 1, 1),
(43, '2016-05-05 23:30:36', 1, 3, 102, 1, 1),
(44, '2016-05-06 00:36:37', 1, 3, 104, 1, 1),
(45, '2016-05-06 01:20:18', 1, 4, 1, 0, 1),
(46, '2016-05-06 01:20:43', 1, 4, 1, 0, 1),
(47, '2016-05-06 02:22:02', 1, 4, 109, 1, 1),
(48, '2016-05-06 17:39:57', 1, 2, 1, 0, 1),
(49, '2016-05-06 17:40:01', 5, 2, 1, 0, 1),
(50, '2016-05-06 17:40:07', 4, 1, 1, 0, 1),
(51, '2016-05-06 19:48:40', 1, 2, 115, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_report_event_types`
--

CREATE TABLE IF NOT EXISTS `mgeg_report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `mgeg_report_event_types`
--

INSERT INTO `mgeg_report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
(1, 'catalog_product_view', 0),
(2, 'sendfriend_product', 0),
(3, 'catalog_product_compare_add_product', 0),
(4, 'checkout_cart_add_product', 0),
(5, 'wishlist_add_product', 0),
(6, 'wishlist_share', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_report_viewed_product_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `mgeg_report_viewed_product_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGEG_REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MGEG_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_report_viewed_product_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `mgeg_report_viewed_product_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `55FDA6191F8A116E6A711638247BDF92` (`period`,`store_id`,`product_id`),
  KEY `IDX_MGEG_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_report_viewed_product_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `mgeg_report_viewed_product_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGEG_REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MGEG_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_report_viewed_product_index`
--

CREATE TABLE IF NOT EXISTS `mgeg_report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_MGEG_REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_MGEG_REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_MGEG_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_MGEG_REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table' AUTO_INCREMENT=21 ;

--
-- Dumping data for table `mgeg_report_viewed_product_index`
--

INSERT INTO `mgeg_report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, 1, NULL, 1, 1, '2016-04-27 19:10:27'),
(2, NULL, 1, 1, 1, '2016-05-04 21:19:02'),
(3, 110, 1, 2, 1, '2016-05-06 17:39:57'),
(4, 40, NULL, 1, 1, '2016-05-03 05:47:52'),
(5, 41, NULL, 2, 1, '2016-05-03 07:28:50'),
(6, 42, NULL, 1, 1, '2016-05-03 08:51:17'),
(7, 48, NULL, 4, 1, '2016-05-03 14:39:09'),
(8, 49, NULL, 4, 1, '2016-05-03 15:38:49'),
(9, 58, NULL, 1, 1, '2016-05-04 06:36:09'),
(10, 59, NULL, 2, 1, '2016-05-04 06:46:16'),
(11, 64, NULL, 4, 1, '2016-05-04 18:47:02'),
(12, 64, NULL, 1, 1, '2016-05-04 21:02:28'),
(13, NULL, 1, 4, 1, '2016-05-06 01:20:43'),
(14, 82, 2, 4, 1, '2016-05-04 21:22:03'),
(15, 64, NULL, 2, 1, '2016-05-04 21:30:44'),
(16, 83, NULL, 3, 1, '2016-05-05 00:41:13'),
(17, NULL, 1, 3, 1, '2016-05-06 00:42:57'),
(18, 104, NULL, 3, 1, '2016-05-06 00:36:37'),
(19, 109, NULL, 4, 1, '2016-05-06 02:22:02'),
(20, 115, NULL, 2, 1, '2016-05-06 19:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_review`
--

CREATE TABLE IF NOT EXISTS `mgeg_review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `IDX_MGEG_REVIEW_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_REVIEW_STATUS_ID` (`status_id`),
  KEY `IDX_MGEG_REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review base information' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_review`
--

INSERT INTO `mgeg_review` (`review_id`, `created_at`, `entity_id`, `entity_pk_value`, `status_id`) VALUES
(1, '2016-05-06 01:20:42', 1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_review_detail`
--

CREATE TABLE IF NOT EXISTS `mgeg_review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail id',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  PRIMARY KEY (`detail_id`),
  KEY `IDX_MGEG_REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `IDX_MGEG_REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review detail information' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_review_detail`
--

INSERT INTO `mgeg_review_detail` (`detail_id`, `review_id`, `store_id`, `title`, `detail`, `nickname`, `customer_id`) VALUES
(1, 1, 1, 'Great product', 'This is a must have', 'Benjamin testing 123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_review_entity`
--

CREATE TABLE IF NOT EXISTS `mgeg_review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review entities' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mgeg_review_entity`
--

INSERT INTO `mgeg_review_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_review_entity_summary`
--

CREATE TABLE IF NOT EXISTS `mgeg_review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_MGEG_REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review aggregates' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_review_entity_summary`
--

INSERT INTO `mgeg_review_entity_summary` (`primary_id`, `entity_pk_value`, `entity_type`, `reviews_count`, `rating_summary`, `store_id`) VALUES
(1, 4, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_review_status`
--

CREATE TABLE IF NOT EXISTS `mgeg_review_status` (
  `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review statuses' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mgeg_review_status`
--

INSERT INTO `mgeg_review_status` (`status_id`, `status_code`) VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_review_store`
--

CREATE TABLE IF NOT EXISTS `mgeg_review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `IDX_MGEG_REVIEW_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

--
-- Dumping data for table `mgeg_review_store`
--

INSERT INTO `mgeg_review_store` (`review_id`, `store_id`) VALUES
(1, 0),
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_salesrule`
--

CREATE TABLE IF NOT EXISTS `mgeg_salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL COMMENT 'Discount Step',
  `simple_free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Coupon',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_MGEG_SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_salesrule_coupon`
--

CREATE TABLE IF NOT EXISTS `mgeg_salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `UNQ_MGEG_SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `UNQ_MGEG_SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `IDX_MGEG_SALESRULE_COUPON_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_salesrule_coupon_usage`
--

CREATE TABLE IF NOT EXISTS `mgeg_salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `IDX_MGEG_SALESRULE_COUPON_USAGE_COUPON_ID` (`coupon_id`),
  KEY `IDX_MGEG_SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_salesrule_customer`
--

CREATE TABLE IF NOT EXISTS `mgeg_salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `IDX_MGEG_SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `IDX_MGEG_SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_salesrule_customer_group`
--

CREATE TABLE IF NOT EXISTS `mgeg_salesrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_MGEG_SALESRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_MGEG_SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_salesrule_label`
--

CREATE TABLE IF NOT EXISTS `mgeg_salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `UNQ_MGEG_SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `IDX_MGEG_SALESRULE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_SALESRULE_LABEL_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_salesrule_product_attribute`
--

CREATE TABLE IF NOT EXISTS `mgeg_salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `IDX_MGEG_SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGEG_SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGEG_SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_salesrule_website`
--

CREATE TABLE IF NOT EXISTS `mgeg_salesrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_MGEG_SALESRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_MGEG_SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_bestsellers_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGEG_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MGEG_SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_sales_bestsellers_aggregated_daily`
--

INSERT INTO `mgeg_sales_bestsellers_aggregated_daily` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `qty_ordered`, `rating_pos`) VALUES
(1, '2016-04-27', 1, 1, 'Test ', '11.0000', '1.0000', 1),
(2, '2016-04-27', 0, 1, 'Test ', '11.0000', '1.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_bestsellers_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `1D6736514EDE0A8723A6FD039F4EBB16` (`period`,`store_id`,`product_id`),
  KEY `IDX_MGEG_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_sales_bestsellers_aggregated_monthly`
--

INSERT INTO `mgeg_sales_bestsellers_aggregated_monthly` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `qty_ordered`, `rating_pos`) VALUES
(1, '2016-04-01', 0, 1, 'Test ', '11.0000', '1.0000', 1),
(2, '2016-04-01', 1, 1, 'Test ', '11.0000', '1.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_bestsellers_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGEG_SALES_BESTSELLERS_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MGEG_SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_sales_bestsellers_aggregated_yearly`
--

INSERT INTO `mgeg_sales_bestsellers_aggregated_yearly` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `qty_ordered`, `rating_pos`) VALUES
(1, '2016-01-01', 0, 1, 'Test ', '11.0000', '1.0000', 1),
(2, '2016-01-01', 1, 1, 'Test ', '11.0000', '1.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_billing_agreement`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `IDX_MGEG_SALES_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGEG_SALES_BILLING_AGREEMENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_billing_agreement_order`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `IDX_MGEG_SALES_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_creditmemo`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_SALES_FLAT_CREDITMEMO_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_STATE` (`state`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_creditmemo_comment`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_creditmemo_grid`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_SALES_FLAT_CREDITMEMO_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_GRID_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_GRID_STATE` (`state`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_creditmemo_item`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_SALES_FLAT_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_invoice`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_SALES_FLAT_INVOICE_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_ORDER_ID` (`order_id`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_STATE` (`state`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_invoice_comment`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_invoice_grid`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_SALES_FLAT_INVOICE_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_GRID_STATE` (`state`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_GRID_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_invoice_item`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_SALES_FLAT_INVOICE_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_order`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(255) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(255) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(255) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(255) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(255) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(255) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(50) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(255) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(255) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `ebizmarts_abandonedcart_flag` int(1) DEFAULT NULL,
  `ebizmarts_magemonkey_campaign_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_SALES_FLAT_ORDER_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_STATUS` (`status`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_STATE` (`state`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_CREATED_AT` (`created_at`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_QUOTE_ID` (`quote_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_sales_flat_order`
--

INSERT INTO `mgeg_sales_flat_order` (`entity_id`, `state`, `status`, `coupon_code`, `protect_code`, `shipping_description`, `is_virtual`, `store_id`, `customer_id`, `base_discount_amount`, `base_discount_canceled`, `base_discount_invoiced`, `base_discount_refunded`, `base_grand_total`, `base_shipping_amount`, `base_shipping_canceled`, `base_shipping_invoiced`, `base_shipping_refunded`, `base_shipping_tax_amount`, `base_shipping_tax_refunded`, `base_subtotal`, `base_subtotal_canceled`, `base_subtotal_invoiced`, `base_subtotal_refunded`, `base_tax_amount`, `base_tax_canceled`, `base_tax_invoiced`, `base_tax_refunded`, `base_to_global_rate`, `base_to_order_rate`, `base_total_canceled`, `base_total_invoiced`, `base_total_invoiced_cost`, `base_total_offline_refunded`, `base_total_online_refunded`, `base_total_paid`, `base_total_qty_ordered`, `base_total_refunded`, `discount_amount`, `discount_canceled`, `discount_invoiced`, `discount_refunded`, `grand_total`, `shipping_amount`, `shipping_canceled`, `shipping_invoiced`, `shipping_refunded`, `shipping_tax_amount`, `shipping_tax_refunded`, `store_to_base_rate`, `store_to_order_rate`, `subtotal`, `subtotal_canceled`, `subtotal_invoiced`, `subtotal_refunded`, `tax_amount`, `tax_canceled`, `tax_invoiced`, `tax_refunded`, `total_canceled`, `total_invoiced`, `total_offline_refunded`, `total_online_refunded`, `total_paid`, `total_qty_ordered`, `total_refunded`, `can_ship_partially`, `can_ship_partially_item`, `customer_is_guest`, `customer_note_notify`, `billing_address_id`, `customer_group_id`, `edit_increment`, `email_sent`, `forced_shipment_with_invoice`, `payment_auth_expiration`, `quote_address_id`, `quote_id`, `shipping_address_id`, `adjustment_negative`, `adjustment_positive`, `base_adjustment_negative`, `base_adjustment_positive`, `base_shipping_discount_amount`, `base_subtotal_incl_tax`, `base_total_due`, `payment_authorization_amount`, `shipping_discount_amount`, `subtotal_incl_tax`, `total_due`, `weight`, `customer_dob`, `increment_id`, `applied_rule_ids`, `base_currency_code`, `customer_email`, `customer_firstname`, `customer_lastname`, `customer_middlename`, `customer_prefix`, `customer_suffix`, `customer_taxvat`, `discount_description`, `ext_customer_id`, `ext_order_id`, `global_currency_code`, `hold_before_state`, `hold_before_status`, `order_currency_code`, `original_increment_id`, `relation_child_id`, `relation_child_real_id`, `relation_parent_id`, `relation_parent_real_id`, `remote_ip`, `shipping_method`, `store_currency_code`, `store_name`, `x_forwarded_for`, `customer_note`, `created_at`, `updated_at`, `total_item_count`, `customer_gender`, `hidden_tax_amount`, `base_hidden_tax_amount`, `shipping_hidden_tax_amount`, `base_shipping_hidden_tax_amnt`, `hidden_tax_invoiced`, `base_hidden_tax_invoiced`, `hidden_tax_refunded`, `base_hidden_tax_refunded`, `shipping_incl_tax`, `base_shipping_incl_tax`, `coupon_rule_name`, `paypal_ipn_customer_notified`, `gift_message_id`, `ebizmarts_abandonedcart_flag`, `ebizmarts_magemonkey_campaign_id`) VALUES
(1, 'processing', 'processing', NULL, '6be690', 'Flat Rate - Fixed', 0, 1, NULL, '0.0000', NULL, NULL, NULL, '16.0000', '5.0000', NULL, NULL, NULL, '0.0000', NULL, '11.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, '1.0000', '1.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, '16.0000', '5.0000', NULL, NULL, NULL, '0.0000', NULL, '1.0000', '1.0000', '11.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, 1, 0, 1, 0, NULL, 1, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '0.0000', '11.0000', '16.0000', NULL, '0.0000', '11.0000', '16.0000', '1.0000', NULL, '100000001', NULL, 'USD', 'j@d.com', 'J', 'D', 'c', NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '79.119.60.169', 'flatrate_flatrate', 'USD', 'Main Website\nMain Website Store\nDefault Store View', NULL, NULL, '2016-04-27 19:13:21', '2016-04-27 19:16:34', 1, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '5.0000', '5.0000', NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_order_address`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_ADDRESS_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_sales_flat_order_address`
--

INSERT INTO `mgeg_sales_flat_order_address` (`entity_id`, `parent_id`, `customer_address_id`, `quote_address_id`, `region_id`, `customer_id`, `fax`, `region`, `postcode`, `lastname`, `street`, `city`, `email`, `telephone`, `country_id`, `firstname`, `address_type`, `prefix`, `middlename`, `suffix`, `company`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`) VALUES
(1, 1, NULL, NULL, 1, NULL, NULL, 'Alabama', '41205', 'D', 'aaa 1', 'Was', 'j@d.com', '1055555555', 'US', 'J', 'billing', NULL, 'c', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, NULL, NULL, 1, NULL, NULL, 'Alabama', '41205', 'D', 'aaa 1', 'Was', 'j@d.com', '1055555555', 'US', 'J', 'shipping', NULL, 'c', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_order_grid`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_SALES_FLAT_ORDER_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_GRID_STATUS` (`status`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_GRID_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

--
-- Dumping data for table `mgeg_sales_flat_order_grid`
--

INSERT INTO `mgeg_sales_flat_order_grid` (`entity_id`, `status`, `store_id`, `store_name`, `customer_id`, `base_grand_total`, `base_total_paid`, `grand_total`, `total_paid`, `increment_id`, `base_currency_code`, `order_currency_code`, `shipping_name`, `billing_name`, `created_at`, `updated_at`) VALUES
(1, 'processing', 1, 'Main Website\nMain Website Store\nDefault Store View', NULL, '16.0000', NULL, '16.0000', NULL, '100000001', 'USD', 'USD', 'J c D', 'J c D', '2016-04-27 19:13:21', '2016-04-27 19:16:34');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_order_item`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `is_nominal` int(11) NOT NULL DEFAULT '0' COMMENT 'Is Nominal',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `hidden_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_sales_flat_order_item`
--

INSERT INTO `mgeg_sales_flat_order_item` (`item_id`, `order_id`, `parent_item_id`, `quote_item_id`, `store_id`, `created_at`, `updated_at`, `product_id`, `product_type`, `product_options`, `weight`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `free_shipping`, `is_qty_decimal`, `no_discount`, `qty_backordered`, `qty_canceled`, `qty_invoiced`, `qty_ordered`, `qty_refunded`, `qty_shipped`, `base_cost`, `price`, `base_price`, `original_price`, `base_original_price`, `tax_percent`, `tax_amount`, `base_tax_amount`, `tax_invoiced`, `base_tax_invoiced`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `amount_refunded`, `base_amount_refunded`, `row_total`, `base_row_total`, `row_invoiced`, `base_row_invoiced`, `row_weight`, `base_tax_before_discount`, `tax_before_discount`, `ext_order_item_id`, `locked_do_invoice`, `locked_do_ship`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `hidden_tax_invoiced`, `base_hidden_tax_invoiced`, `hidden_tax_refunded`, `base_hidden_tax_refunded`, `is_nominal`, `tax_canceled`, `hidden_tax_canceled`, `tax_refunded`, `base_tax_refunded`, `discount_refunded`, `base_discount_refunded`, `gift_message_id`, `gift_message_available`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `weee_tax_applied`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`) VALUES
(1, 1, NULL, 1, 1, '2016-04-27 19:13:21', '2016-04-27 19:16:34', 1, 'simple', 'a:1:{s:15:"info_buyRequest";a:5:{s:4:"uenc";s:80:"aHR0cDovL2Jpc29ubWVkaWEubmV0L2RkL2luZGV4LnBocC90ZXN0LWNhdGVnb3J5L3Rlc3QuaHRtbA,,";s:7:"product";s:1:"1";s:8:"form_key";s:16:"4SWsy2AoKOo5FTwf";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}}', '1.0000', 0, '007', 'Test ', NULL, NULL, NULL, 0, 0, 0, NULL, '0.0000', '0.0000', '1.0000', '0.0000', '1.0000', NULL, '11.0000', '11.0000', '11.0000', '11.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '11.0000', '11.0000', '0.0000', '0.0000', '1.0000', NULL, NULL, NULL, NULL, NULL, '11.0000', '11.0000', '11.0000', '11.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_order_payment`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(255) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(255) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(255) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_status_description` varchar(255) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(255) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(255) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(255) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(255) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(255) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(255) DEFAULT NULL COMMENT 'Cc Trans Id',
  `paybox_request_number` varchar(255) DEFAULT NULL COMMENT 'Paybox Request Number',
  `address_status` varchar(255) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_PAYMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_sales_flat_order_payment`
--

INSERT INTO `mgeg_sales_flat_order_payment` (`entity_id`, `parent_id`, `base_shipping_captured`, `shipping_captured`, `amount_refunded`, `base_amount_paid`, `amount_canceled`, `base_amount_authorized`, `base_amount_paid_online`, `base_amount_refunded_online`, `base_shipping_amount`, `shipping_amount`, `amount_paid`, `amount_authorized`, `base_amount_ordered`, `base_shipping_refunded`, `shipping_refunded`, `base_amount_refunded`, `amount_ordered`, `base_amount_canceled`, `quote_payment_id`, `additional_data`, `cc_exp_month`, `cc_ss_start_year`, `echeck_bank_name`, `method`, `cc_debug_request_body`, `cc_secure_verify`, `protection_eligibility`, `cc_approval`, `cc_last4`, `cc_status_description`, `echeck_type`, `cc_debug_response_serialized`, `cc_ss_start_month`, `echeck_account_type`, `last_trans_id`, `cc_cid_status`, `cc_owner`, `cc_type`, `po_number`, `cc_exp_year`, `cc_status`, `echeck_routing_number`, `account_status`, `anet_trans_method`, `cc_debug_response_body`, `cc_ss_issue`, `echeck_account_name`, `cc_avs_status`, `cc_number_enc`, `cc_trans_id`, `paybox_request_number`, `address_status`, `additional_information`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '5.0000', NULL, NULL, '16.0000', NULL, NULL, NULL, '16.0000', NULL, NULL, NULL, '0', '0', NULL, 'checkmo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_order_status_history`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `IDX_MGEG_SALES_FLAT_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_sales_flat_order_status_history`
--

INSERT INTO `mgeg_sales_flat_order_status_history` (`entity_id`, `parent_id`, `is_customer_notified`, `is_visible_on_front`, `comment`, `status`, `created_at`, `entity_name`) VALUES
(1, 1, 1, 0, NULL, 'pending', '2016-04-27 19:13:21', 'order'),
(2, 1, 0, 0, NULL, 'processing', '2016-04-27 19:16:34', 'shipment');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_quote`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(255) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  `ebizmarts_abandonedcart_counter` int(5) NOT NULL DEFAULT '0',
  `ebizmarts_abandonedcart_flag` int(5) NOT NULL DEFAULT '0',
  `ebizmarts_abandonedcart_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_SALES_FLAT_QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `IDX_MGEG_SALES_FLAT_QUOTE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mgeg_sales_flat_quote`
--

INSERT INTO `mgeg_sales_flat_quote` (`entity_id`, `store_id`, `created_at`, `updated_at`, `converted_at`, `is_active`, `is_virtual`, `is_multi_shipping`, `items_count`, `items_qty`, `orig_order_id`, `store_to_base_rate`, `store_to_quote_rate`, `base_currency_code`, `store_currency_code`, `quote_currency_code`, `grand_total`, `base_grand_total`, `checkout_method`, `customer_id`, `customer_tax_class_id`, `customer_group_id`, `customer_email`, `customer_prefix`, `customer_firstname`, `customer_middlename`, `customer_lastname`, `customer_suffix`, `customer_dob`, `customer_note`, `customer_note_notify`, `customer_is_guest`, `remote_ip`, `applied_rule_ids`, `reserved_order_id`, `password_hash`, `coupon_code`, `global_currency_code`, `base_to_global_rate`, `base_to_quote_rate`, `customer_taxvat`, `customer_gender`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `is_changed`, `trigger_recollect`, `ext_shipping_info`, `gift_message_id`, `is_persistent`, `ebizmarts_abandonedcart_counter`, `ebizmarts_abandonedcart_flag`, `ebizmarts_abandonedcart_token`) VALUES
(1, 1, '2016-04-27 19:11:20', '2016-04-27 19:13:21', NULL, 0, 0, 0, 1, '1.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '16.0000', '16.0000', 'guest', NULL, 3, 0, 'j@d.com', NULL, 'J', 'c', 'D', NULL, NULL, NULL, 1, 1, '79.119.60.169', NULL, '100000001', NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '11.0000', '11.0000', '11.0000', '11.0000', 1, 0, NULL, NULL, 0, 0, 0, NULL),
(2, 1, '2016-04-27 19:18:32', '2016-04-27 19:18:45', NULL, 0, 0, 0, 0, '0.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '0.0000', '0.0000', NULL, NULL, 3, 0, 'j@d.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, NULL, 0, 0, 0, NULL),
(3, 1, '2016-04-28 21:18:53', '2016-05-06 17:40:08', NULL, 1, 0, 0, 1, '1.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '21.0000', '21.0000', NULL, 1, 3, 1, 'benjamin.daniel@outlook.com', NULL, 'Benjamin ', NULL, 'Daniel', NULL, NULL, NULL, 1, 0, '216.75.238.146', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '21.0000', '21.0000', '21.0000', '21.0000', 1, 0, NULL, NULL, 0, 0, 0, NULL),
(4, 1, '2016-05-04 21:16:31', '2016-05-04 21:16:31', NULL, 1, 0, 0, 0, '0.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '0.0000', '0.0000', NULL, 2, 3, 1, 'john@demian.com', NULL, 'John', NULL, 'Demian', NULL, NULL, NULL, 1, 0, '79.117.22.22', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, NULL, 0, 0, 0, NULL),
(5, 1, '2016-05-05 00:41:14', '2016-05-05 00:41:15', NULL, 1, 0, 0, 1, '1.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '21.0000', '21.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '172.9.163.104', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '19.4000', '19.4000', '19.4000', '19.4000', 1, 0, NULL, NULL, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_quote_address`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(40) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(255) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_id`),
  KEY `IDX_MGEG_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `mgeg_sales_flat_quote_address`
--

INSERT INTO `mgeg_sales_flat_quote_address` (`address_id`, `quote_id`, `created_at`, `updated_at`, `customer_id`, `save_in_address_book`, `customer_address_id`, `address_type`, `email`, `prefix`, `firstname`, `middlename`, `lastname`, `suffix`, `company`, `street`, `city`, `region`, `region_id`, `postcode`, `country_id`, `telephone`, `fax`, `same_as_billing`, `free_shipping`, `collect_shipping_rates`, `shipping_method`, `shipping_description`, `weight`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `tax_amount`, `base_tax_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `discount_amount`, `base_discount_amount`, `grand_total`, `base_grand_total`, `customer_notes`, `applied_taxes`, `discount_description`, `shipping_discount_amount`, `base_shipping_discount_amount`, `subtotal_incl_tax`, `base_subtotal_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `shipping_hidden_tax_amount`, `base_shipping_hidden_tax_amnt`, `shipping_incl_tax`, `base_shipping_incl_tax`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`, `gift_message_id`) VALUES
(1, 1, '2016-04-27 19:11:20', '2016-04-27 19:13:21', NULL, 1, NULL, 'billing', 'j@d.com', NULL, 'J', 'c', 'D', NULL, NULL, 'aaa 1', 'Was', 'Alabama', 1, '41205', 'US', '1055555555', NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, '2016-04-27 19:11:20', '2016-04-27 19:13:21', NULL, 0, NULL, 'shipping', 'j@d.com', NULL, 'J', 'c', 'D', NULL, NULL, 'aaa 1', 'Was', 'Alabama', 1, '41205', 'US', '1055555555', NULL, 1, 0, 0, 'flatrate_flatrate', 'Flat Rate - Fixed', '1.0000', '11.0000', '11.0000', '0.0000', '0.0000', '0.0000', '0.0000', '5.0000', '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '16.0000', '16.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '11.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '5.0000', '5.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, '2016-04-27 19:18:32', '2016-04-27 19:18:45', NULL, 0, NULL, 'billing', NULL, NULL, 'J', 'c', 'D', NULL, NULL, 'aaa 1', 'Was', 'Alabama', 1, '41205', 'US', '1055555555', NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, '2016-04-27 19:18:32', '2016-04-27 19:18:45', NULL, 0, NULL, 'shipping', NULL, NULL, 'J', 'c', 'D', NULL, NULL, 'aaa 1', 'Was', 'Alabama', 1, '41205', 'US', '1055555555', NULL, 0, 0, 1, 'flatrate_flatrate', 'Flat Rate - Fixed', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, '2016-04-28 21:18:53', '2016-05-06 17:40:08', 1, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, '2016-04-28 21:18:53', '2016-05-06 17:40:08', 1, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '1.0000', '21.0000', '21.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '21.0000', '21.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '21.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 4, '2016-05-04 21:16:31', '2016-05-04 21:16:31', 2, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 4, '2016-05-04 21:16:31', '2016-05-04 21:16:31', 2, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 5, '2016-05-05 00:41:14', '2016-05-05 00:41:15', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 5, '2016-05-05 00:41:14', '2016-05-05 00:41:15', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '1.0000', '19.4000', '19.4000', '0.0000', '0.0000', '1.6000', '1.6000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '21.0000', '21.0000', NULL, 'a:1:{s:14:"US-CA-*-Rate 1";a:6:{s:5:"rates";a:1:{i:0;a:6:{s:4:"code";s:14:"US-CA-*-Rate 1";s:5:"title";s:14:"US-CA-*-Rate 1";s:7:"percent";d:8.25;s:8:"position";s:1:"1";s:8:"priority";s:1:"1";s:7:"rule_id";s:1:"1";}}s:7:"percent";d:8.25;s:2:"id";s:14:"US-CA-*-Rate 1";s:7:"process";i:0;s:6:"amount";d:1.600000000000000088817841970012523233890533447265625;s:11:"base_amount";d:1.600000000000000088817841970012523233890533447265625;}}', NULL, '0.0000', '0.0000', '21.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_quote_address_item`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `free_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Free Shipping',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_item_id`),
  KEY `IDX_MGEG_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `IDX_MGEG_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_MGEG_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_quote_item`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  PRIMARY KEY (`item_id`),
  KEY `IDX_MGEG_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_MGEG_SALES_FLAT_QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGEG_SALES_FLAT_QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `IDX_MGEG_SALES_FLAT_QUOTE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mgeg_sales_flat_quote_item`
--

INSERT INTO `mgeg_sales_flat_quote_item` (`item_id`, `quote_id`, `created_at`, `updated_at`, `product_id`, `store_id`, `parent_item_id`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `free_shipping`, `is_qty_decimal`, `no_discount`, `weight`, `qty`, `price`, `base_price`, `custom_price`, `discount_percent`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `row_total`, `base_row_total`, `row_total_with_discount`, `row_weight`, `product_type`, `base_tax_before_discount`, `tax_before_discount`, `original_custom_price`, `redirect_url`, `base_cost`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `gift_message_id`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`, `weee_tax_applied`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`) VALUES
(1, 1, '2016-04-27 19:11:20', '2016-04-27 19:11:20', 1, 1, NULL, 0, '007', 'Test ', NULL, NULL, NULL, 0, 0, 0, '1.0000', '1.0000', '11.0000', '11.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '11.0000', '11.0000', '0.0000', '1.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '11.0000', '11.0000', '11.0000', '11.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL),
(3, 5, '2016-05-05 00:41:15', '2016-05-05 00:41:15', 3, 1, NULL, 0, '009', 'Test concentrate 1', NULL, NULL, NULL, 0, 0, 0, '1.0000', '1.0000', '19.4000', '19.4000', NULL, '0.0000', '0.0000', '0.0000', '8.2500', '1.6000', '1.6000', '19.4000', '19.4000', '0.0000', '1.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '21.0000', '21.0000', '21.0000', '21.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL),
(4, 3, '2016-05-06 17:40:07', '2016-05-06 17:40:07', 1, 1, NULL, 0, '007', 'Test sativa flower 1', NULL, NULL, NULL, 0, 0, 0, '1.0000', '1.0000', '21.0000', '21.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '21.0000', '21.0000', '0.0000', '1.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '21.0000', '21.0000', '21.0000', '21.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_quote_item_option`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MGEG_SALES_FLAT_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mgeg_sales_flat_quote_item_option`
--

INSERT INTO `mgeg_sales_flat_quote_item_option` (`option_id`, `item_id`, `product_id`, `code`, `value`) VALUES
(1, 1, 1, 'info_buyRequest', 'a:5:{s:4:"uenc";s:80:"aHR0cDovL2Jpc29ubWVkaWEubmV0L2RkL2luZGV4LnBocC90ZXN0LWNhdGVnb3J5L3Rlc3QuaHRtbA,,";s:7:"product";s:1:"1";s:8:"form_key";s:16:"4SWsy2AoKOo5FTwf";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}'),
(3, 3, 3, 'info_buyRequest', 'a:4:{s:4:"uenc";s:72:"aHR0cDovL2Jpc29ubWVkaWEubmV0L2RkL2luZGV4LnBocC9jb25jZW50cmF0ZXMuaHRtbA,,";s:7:"product";s:1:"3";s:8:"form_key";s:16:"FZk2xcWIOdwXHB0g";s:3:"qty";i:1;}'),
(4, 4, 1, 'info_buyRequest', 'a:6:{s:4:"item";s:1:"1";s:4:"uenc";s:96:"aHR0cDovL2Jpc29ubWVkaWEubmV0L2RkL2luZGV4LnBocC93aXNobGlzdC9pbmRleC9pbmRleC93aXNobGlzdF9pZC8xLw,,";s:8:"form_key";s:16:"25BvEyHzK1PpCNLZ";s:3:"qty";d:1;s:7:"product";s:1:"1";s:12:"original_qty";a:1:{i:1;s:1:"1";}}');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_quote_payment`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id',
  PRIMARY KEY (`payment_id`),
  KEY `IDX_MGEG_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_sales_flat_quote_payment`
--

INSERT INTO `mgeg_sales_flat_quote_payment` (`payment_id`, `quote_id`, `created_at`, `updated_at`, `method`, `cc_type`, `cc_number_enc`, `cc_last4`, `cc_cid_enc`, `cc_owner`, `cc_exp_month`, `cc_exp_year`, `cc_ss_owner`, `cc_ss_start_month`, `cc_ss_start_year`, `po_number`, `additional_data`, `cc_ss_issue`, `additional_information`, `paypal_payer_id`, `paypal_payer_status`, `paypal_correlation_id`) VALUES
(1, 1, '2016-04-27 19:11:35', '2016-04-27 19:13:21', 'checkmo', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, '2016-04-27 19:18:32', '2016-04-27 19:18:45', 'free', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_quote_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate Id',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `IDX_MGEG_SALES_FLAT_QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mgeg_sales_flat_quote_shipping_rate`
--

INSERT INTO `mgeg_sales_flat_quote_shipping_rate` (`rate_id`, `address_id`, `created_at`, `updated_at`, `carrier`, `carrier_title`, `code`, `method`, `method_description`, `price`, `error_message`, `method_title`) VALUES
(3, 2, '2016-04-27 19:13:18', '2016-04-27 19:13:21', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, '5.0000', NULL, 'Fixed');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_shipment`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_SALES_FLAT_SHIPMENT_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_sales_flat_shipment`
--

INSERT INTO `mgeg_sales_flat_shipment` (`entity_id`, `store_id`, `total_weight`, `total_qty`, `email_sent`, `order_id`, `customer_id`, `shipping_address_id`, `billing_address_id`, `shipment_status`, `increment_id`, `created_at`, `updated_at`, `packages`, `shipping_label`) VALUES
(1, 1, NULL, '1.0000', NULL, 1, NULL, 2, 1, NULL, '100000001', '2016-04-27 19:16:34', '2016-04-27 19:16:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_shipment_comment`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_shipment_grid`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGEG_SALES_FLAT_SHIPMENT_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

--
-- Dumping data for table `mgeg_sales_flat_shipment_grid`
--

INSERT INTO `mgeg_sales_flat_shipment_grid` (`entity_id`, `store_id`, `total_qty`, `order_id`, `shipment_status`, `increment_id`, `order_increment_id`, `created_at`, `order_created_at`, `shipping_name`) VALUES
(1, 1, '1.0000', 1, NULL, '100000001', '100000001', '2016-04-27 19:16:34', '2016-04-27 19:13:21', 'J c D');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_shipment_item`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_sales_flat_shipment_item`
--

INSERT INTO `mgeg_sales_flat_shipment_item` (`entity_id`, `parent_id`, `row_total`, `price`, `weight`, `qty`, `product_id`, `order_item_id`, `additional_data`, `description`, `name`, `sku`) VALUES
(1, 1, NULL, '11.0000', '1.0000', '1.0000', 1, 1, NULL, NULL, 'Test ', '007');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_flat_shipment_track`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_flat_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `IDX_MGEG_SALES_FLAT_SHIPMENT_TRACK_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_invoiced_aggregated`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGEG_SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MGEG_SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_invoiced_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGEG_SALES_INVOICED_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MGEG_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGEG_SALES_ORDER_AGGRED_CREATED_PERIOD_STORE_ID_ORDER_STS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MGEG_SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_sales_order_aggregated_created`
--

INSERT INTO `mgeg_sales_order_aggregated_created` (`id`, `period`, `store_id`, `order_status`, `orders_count`, `total_qty_ordered`, `total_qty_invoiced`, `total_income_amount`, `total_revenue_amount`, `total_profit_amount`, `total_invoiced_amount`, `total_canceled_amount`, `total_paid_amount`, `total_refunded_amount`, `total_tax_amount`, `total_tax_amount_actual`, `total_shipping_amount`, `total_shipping_amount_actual`, `total_discount_amount`, `total_discount_amount_actual`) VALUES
(1, '2016-04-27', 1, 'processing', 1, '1.0000', '0.0000', '16.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '5.0000', '0.0000', '0.0000', '0.0000'),
(2, '2016-04-27', 0, 'processing', 1, '1.0000', '0.0000', '16.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '5.0000', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGEG_SALES_ORDER_AGGRED_UPDATED_PERIOD_STORE_ID_ORDER_STS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MGEG_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Premg Sales Order Aggregated Updated' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_sales_order_aggregated_updated`
--

INSERT INTO `mgeg_sales_order_aggregated_updated` (`id`, `period`, `store_id`, `order_status`, `orders_count`, `total_qty_ordered`, `total_qty_invoiced`, `total_income_amount`, `total_revenue_amount`, `total_profit_amount`, `total_invoiced_amount`, `total_canceled_amount`, `total_paid_amount`, `total_refunded_amount`, `total_tax_amount`, `total_tax_amount_actual`, `total_shipping_amount`, `total_shipping_amount_actual`, `total_discount_amount`, `total_discount_amount_actual`) VALUES
(1, '2016-04-27', 1, 'processing', 1, '1.0000', '0.0000', '16.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '5.0000', '0.0000', '0.0000', '0.0000'),
(2, '2016-04-27', 0, 'processing', 1, '1.0000', '0.0000', '16.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '5.0000', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_order_status`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `mgeg_sales_order_status`
--

INSERT INTO `mgeg_sales_order_status` (`status`, `label`) VALUES
('canceled', 'Canceled'),
('closed', 'Closed'),
('complete', 'Complete'),
('fraud', 'Suspected Fraud'),
('holded', 'On Hold'),
('payment_review', 'Payment Review'),
('paypal_canceled_reversal', 'PayPal Canceled Reversal'),
('paypal_reversed', 'PayPal Reversed'),
('pending', 'Pending'),
('pending_payment', 'Pending Payment'),
('pending_paypal', 'Pending PayPal'),
('processing', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_order_status_label`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `IDX_MGEG_SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_order_status_state`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  PRIMARY KEY (`status`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `mgeg_sales_order_status_state`
--

INSERT INTO `mgeg_sales_order_status_state` (`status`, `state`, `is_default`) VALUES
('canceled', 'canceled', 1),
('closed', 'closed', 1),
('complete', 'complete', 1),
('fraud', 'payment_review', 0),
('holded', 'holded', 1),
('payment_review', 'payment_review', 1),
('pending', 'new', 1),
('pending_payment', 'pending_payment', 1),
('processing', 'processing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_order_tax`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Hidden',
  PRIMARY KEY (`tax_id`),
  KEY `IDX_MGEG_SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_order_tax_item`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `UNQ_MGEG_SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `IDX_MGEG_SALES_ORDER_TAX_ITEM_TAX_ID` (`tax_id`),
  KEY `IDX_MGEG_SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_MGEG_SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `IDX_MGEG_SALES_PAYMENT_TRANSACTION_ORDER_ID` (`order_id`),
  KEY `IDX_MGEG_SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `IDX_MGEG_SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_recurring_profile`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_recurring_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `state` varchar(20) NOT NULL COMMENT 'State',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `reference_id` varchar(32) DEFAULT NULL COMMENT 'Reference Id',
  `subscriber_name` varchar(150) DEFAULT NULL COMMENT 'Subscriber Name',
  `start_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Start Datetime',
  `internal_reference_id` varchar(42) NOT NULL COMMENT 'Internal Reference Id',
  `schedule_description` varchar(255) NOT NULL COMMENT 'Schedule Description',
  `suspension_threshold` smallint(5) unsigned DEFAULT NULL COMMENT 'Suspension Threshold',
  `bill_failed_later` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Bill Failed Later',
  `period_unit` varchar(20) NOT NULL COMMENT 'Period Unit',
  `period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Frequency',
  `period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Max Cycles',
  `billing_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Billing Amount',
  `trial_period_unit` varchar(20) DEFAULT NULL COMMENT 'Trial Period Unit',
  `trial_period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Frequency',
  `trial_period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Max Cycles',
  `trial_billing_amount` text COMMENT 'Trial Billing Amount',
  `currency_code` varchar(3) NOT NULL COMMENT 'Currency Code',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `init_amount` decimal(12,4) DEFAULT NULL COMMENT 'Init Amount',
  `init_may_fail` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Init May Fail',
  `order_info` text NOT NULL COMMENT 'Order Info',
  `order_item_info` text NOT NULL COMMENT 'Order Item Info',
  `billing_address_info` text NOT NULL COMMENT 'Billing Address Info',
  `shipping_address_info` text COMMENT 'Shipping Address Info',
  `profile_vendor_info` text COMMENT 'Profile Vendor Info',
  `additional_info` text COMMENT 'Additional Info',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `UNQ_MGEG_SALES_RECURRING_PROFILE_INTERNAL_REFERENCE_ID` (`internal_reference_id`),
  KEY `IDX_MGEG_SALES_RECURRING_PROFILE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGEG_SALES_RECURRING_PROFILE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_recurring_profile_order`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_recurring_profile_order` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_MGEG_SALES_RECURRING_PROFILE_ORDER_PROFILE_ID_ORDER_ID` (`profile_id`,`order_id`),
  KEY `IDX_MGEG_SALES_RECURRING_PROFILE_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_refunded_aggregated`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGEG_SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MGEG_SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_refunded_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGEG_SALES_REFUNDED_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MGEG_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_shipping_aggregated`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `4E81A34DB7D9F659CE0A570E838DC41B` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_MGEG_SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sales_shipping_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `mgeg_sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `1E457DBF2B45D8F536DE2DD068B1E6DC` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_MGEG_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_sales_shipping_aggregated_order`
--

INSERT INTO `mgeg_sales_shipping_aggregated_order` (`id`, `period`, `store_id`, `order_status`, `shipping_description`, `orders_count`, `total_shipping`, `total_shipping_actual`) VALUES
(1, '2016-04-27', 1, 'processing', 'Flat Rate - Fixed', 1, '5.0000', NULL),
(2, '2016-04-27', 0, 'processing', 'Flat Rate - Fixed', 1, '5.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sendfriend_log`
--

CREATE TABLE IF NOT EXISTS `mgeg_sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` varbinary(16) DEFAULT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_MGEG_SENDFRIEND_LOG_IP` (`ip`),
  KEY `IDX_MGEG_SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_shipping_tablerate`
--

CREATE TABLE IF NOT EXISTS `mgeg_shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `FF646A6FBC73C036A8F4D85AB1241510` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_sitemap`
--

CREATE TABLE IF NOT EXISTS `mgeg_sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`sitemap_id`),
  KEY `IDX_MGEG_SITEMAP_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Sitemap' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_tag`
--

CREATE TABLE IF NOT EXISTS `mgeg_tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status',
  `first_customer_id` int(10) unsigned DEFAULT NULL COMMENT 'First Customer Id',
  `first_store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'First Store Id',
  PRIMARY KEY (`tag_id`),
  KEY `FK_MGEG_TAG_FIRST_CUSTOMER_ID_MGEG_CUSTOMER_ENTITY_ENTITY_ID` (`first_customer_id`),
  KEY `FK_MGEG_TAG_FIRST_STORE_ID_MGEG_CORE_STORE_STORE_ID` (`first_store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_tag_properties`
--

CREATE TABLE IF NOT EXISTS `mgeg_tag_properties` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_MGEG_TAG_PROPERTIES_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Properties';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_tag_relation`
--

CREATE TABLE IF NOT EXISTS `mgeg_tag_relation` (
  `tag_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Relation Id',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Store Id',
  `active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Active',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`tag_relation_id`),
  UNIQUE KEY `UNQ_MGEG_TAG_RELATION_TAG_ID_CUSTOMER_ID_PRODUCT_ID_STORE_ID` (`tag_id`,`customer_id`,`product_id`,`store_id`),
  KEY `IDX_MGEG_TAG_RELATION_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGEG_TAG_RELATION_TAG_ID` (`tag_id`),
  KEY `IDX_MGEG_TAG_RELATION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGEG_TAG_RELATION_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Relation' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_tag_summary`
--

CREATE TABLE IF NOT EXISTS `mgeg_tag_summary` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `customers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customers',
  `products` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Products',
  `uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Uses',
  `historical_uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Historical Uses',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_MGEG_TAG_SUMMARY_STORE_ID` (`store_id`),
  KEY `IDX_MGEG_TAG_SUMMARY_TAG_ID` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Summary';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_tax_calculation`
--

CREATE TABLE IF NOT EXISTS `mgeg_tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `IDX_MGEG_TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `IDX_MGEG_TAX_CALCULATION_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_MGEG_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `IDX_MGEG_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `C1CD32DFCDE6AECF8A008FCC8E63D0F6` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_tax_calculation`
--

INSERT INTO `mgeg_tax_calculation` (`tax_calculation_id`, `tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
(1, 1, 1, 3, 2),
(2, 2, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_tax_calculation_rate`
--

CREATE TABLE IF NOT EXISTS `mgeg_tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `CC94E14E12E0FB1CC34A5CECD8F0DE46` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `IDX_MGEG_TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `AFF30062DC7CAB29BA3A5801D60C9FA9` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_tax_calculation_rate`
--

INSERT INTO `mgeg_tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
(1, 'US', 12, '*', 'US-CA-*-Rate 1', '8.2500', NULL, NULL, NULL),
(2, 'US', 43, '*', 'US-NY-*-Rate 1', '8.3750', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_tax_calculation_rate_title`
--

CREATE TABLE IF NOT EXISTS `mgeg_tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `IDX_MGEG_TAX_CALC_RATE_TTL_TAX_CALC_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `IDX_MGEG_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_MGEG_TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_tax_calculation_rule`
--

CREATE TABLE IF NOT EXISTS `mgeg_tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `IDX_MGEG_TAX_CALC_RULE_PRIORITY_POSITION_TAX_CALC_RULE_ID` (`priority`,`position`,`tax_calculation_rule_id`),
  KEY `IDX_MGEG_TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_tax_calculation_rule`
--

INSERT INTO `mgeg_tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`, `calculate_subtotal`) VALUES
(1, 'Retail Customer-Taxable Goods-Rate 1', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_tax_class`
--

CREATE TABLE IF NOT EXISTS `mgeg_tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Class' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mgeg_tax_class`
--

INSERT INTO `mgeg_tax_class` (`class_id`, `class_name`, `class_type`) VALUES
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER'),
(4, 'Shipping', 'PRODUCT');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_tax_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `mgeg_tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `A15F406A2CCC06E94A6F1F5F8246E684` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_MGEG_TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_tax_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `mgeg_tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `AE59E67444B0382A3A2EE358CFB54D95` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_MGEG_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Premg Tax Order Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_weee_discount`
--

CREATE TABLE IF NOT EXISTS `mgeg_weee_discount` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  KEY `IDX_MGEG_WEEE_DISCOUNT_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGEG_WEEE_DISCOUNT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_WEEE_DISCOUNT_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Discount';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_weee_tax`
--

CREATE TABLE IF NOT EXISTS `mgeg_weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` varchar(255) NOT NULL DEFAULT '*' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MGEG_WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGEG_WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGEG_WEEE_TAX_COUNTRY` (`country`),
  KEY `IDX_MGEG_WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_widget`
--

CREATE TABLE IF NOT EXISTS `mgeg_widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `IDX_MGEG_WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_widget_instance`
--

CREATE TABLE IF NOT EXISTS `mgeg_widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `package_theme` varchar(255) DEFAULT NULL COMMENT 'Package Theme',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_widget_instance_page`
--

CREATE TABLE IF NOT EXISTS `mgeg_widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Block Reference',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `IDX_MGEG_WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_widget_instance_page_layout`
--

CREATE TABLE IF NOT EXISTS `mgeg_widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  UNIQUE KEY `UNQ_MGEG_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `IDX_MGEG_WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`),
  KEY `IDX_MGEG_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_wishlist`
--

CREATE TABLE IF NOT EXISTS `mgeg_wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `UNQ_MGEG_WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGEG_WISHLIST_SHARED` (`shared`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgeg_wishlist`
--

INSERT INTO `mgeg_wishlist` (`wishlist_id`, `customer_id`, `shared`, `sharing_code`, `updated_at`) VALUES
(1, 1, 0, 'a23ff34e2d4b8f58218f5fa3b9a43050', '2016-05-06 17:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_wishlist_item`
--

CREATE TABLE IF NOT EXISTS `mgeg_wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `IDX_MGEG_WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `IDX_MGEG_WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGEG_WISHLIST_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Wishlist items' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_wishlist_item`
--

INSERT INTO `mgeg_wishlist_item` (`wishlist_item_id`, `wishlist_id`, `product_id`, `store_id`, `added_at`, `description`, `qty`) VALUES
(2, 1, 2, 1, '2016-05-03 07:21:33', NULL, '2.0000');

-- --------------------------------------------------------

--
-- Table structure for table `mgeg_wishlist_item_option`
--

CREATE TABLE IF NOT EXISTS `mgeg_wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_FE8D359D8182B3C41C9E6C0382995807` (`wishlist_item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgeg_wishlist_item_option`
--

INSERT INTO `mgeg_wishlist_item_option` (`option_id`, `wishlist_item_id`, `product_id`, `code`, `value`) VALUES
(2, 2, 2, 'info_buyRequest', 'a:2:{s:7:"product";s:1:"2";s:8:"form_key";s:16:"Cf0tRNFKrAFXxF9i";}');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mgeg_admin_rule`
--
ALTER TABLE `mgeg_admin_rule`
  ADD CONSTRAINT `FK_MGEG_ADMIN_RULE_ROLE_ID_MGEG_ADMIN_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `mgeg_admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_api2_acl_rule`
--
ALTER TABLE `mgeg_api2_acl_rule`
  ADD CONSTRAINT `FK_MGEG_API2_ACL_RULE_ROLE_ID_MGEG_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `mgeg_api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_api2_acl_user`
--
ALTER TABLE `mgeg_api2_acl_user`
  ADD CONSTRAINT `FK_MGEG_API2_ACL_USER_ADMIN_ID_MGEG_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `mgeg_admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_API2_ACL_USER_ROLE_ID_MGEG_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `mgeg_api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_api_rule`
--
ALTER TABLE `mgeg_api_rule`
  ADD CONSTRAINT `FK_MGEG_API_RULE_ROLE_ID_MGEG_API_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `mgeg_api_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_api_session`
--
ALTER TABLE `mgeg_api_session`
  ADD CONSTRAINT `FK_MGEG_API_SESSION_USER_ID_MGEG_API_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `mgeg_api_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_cataloginventory_stock_item`
--
ALTER TABLE `mgeg_cataloginventory_stock_item`
  ADD CONSTRAINT `FK_MGEG_CATINV_STOCK_ITEM_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CATINV_STOCK_ITEM_STOCK_ID_MGEG_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `mgeg_cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_cataloginventory_stock_status`
--
ALTER TABLE `mgeg_cataloginventory_stock_status`
  ADD CONSTRAINT `FK_MGEG_CATINV_STOCK_STS_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CATINV_STOCK_STS_STOCK_ID_MGEG_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `mgeg_cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CATINV_STOCK_STS_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalogrule_customer_group`
--
ALTER TABLE `mgeg_catalogrule_customer_group`
  ADD CONSTRAINT `FK_D2CBD2EF6AB598453E831C272600FBE3` FOREIGN KEY (`customer_group_id`) REFERENCES `mgeg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CATRULE_CSTR_GROUP_RULE_ID_MGEG_CATRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgeg_catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalogrule_group_website`
--
ALTER TABLE `mgeg_catalogrule_group_website`
  ADD CONSTRAINT `FK_AD79B83D5050177FF7B7C74818A8B289` FOREIGN KEY (`customer_group_id`) REFERENCES `mgeg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CATRULE_GROUP_WS_RULE_ID_MGEG_CATRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgeg_catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CATRULE_GROUP_WS_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalogrule_product`
--
ALTER TABLE `mgeg_catalogrule_product`
  ADD CONSTRAINT `FK_F7F9F29BF881DDED4B44A45C063C280B` FOREIGN KEY (`customer_group_id`) REFERENCES `mgeg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CATALOGRULE_PRODUCT_RULE_ID_MGEG_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgeg_catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CATRULE_PRD_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CATRULE_PRD_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalogrule_product_price`
--
ALTER TABLE `mgeg_catalogrule_product_price`
  ADD CONSTRAINT `FK_750C4A6EC0D32F916D173213F3CD0264` FOREIGN KEY (`customer_group_id`) REFERENCES `mgeg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CATRULE_PRD_PRICE_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CATRULE_PRD_PRICE_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalogrule_website`
--
ALTER TABLE `mgeg_catalogrule_website`
  ADD CONSTRAINT `FK_MGEG_CATALOGRULE_WEBSITE_RULE_ID_MGEG_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgeg_catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CATRULE_WS_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalogsearch_query`
--
ALTER TABLE `mgeg_catalogsearch_query`
  ADD CONSTRAINT `FK_MGEG_CATALOGSEARCH_QUERY_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalogsearch_result`
--
ALTER TABLE `mgeg_catalogsearch_result`
  ADD CONSTRAINT `FK_MGEG_CATSRCH_RESULT_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CATSRCH_RESULT_QR_ID_MGEG_CATSRCH_QR_QR_ID` FOREIGN KEY (`query_id`) REFERENCES `mgeg_catalogsearch_query` (`query_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_category_entity_datetime`
--
ALTER TABLE `mgeg_catalog_category_entity_datetime`
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_DTIME_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_DTIME_ENTT_ID_MGEG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_DTIME_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_category_entity_decimal`
--
ALTER TABLE `mgeg_catalog_category_entity_decimal`
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_DEC_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_DEC_ENTT_ID_MGEG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_DEC_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_category_entity_int`
--
ALTER TABLE `mgeg_catalog_category_entity_int`
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_INT_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_INT_ENTT_ID_MGEG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_INT_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_category_entity_text`
--
ALTER TABLE `mgeg_catalog_category_entity_text`
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_TEXT_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_TEXT_ENTT_ID_MGEG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_TEXT_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_category_entity_varchar`
--
ALTER TABLE `mgeg_catalog_category_entity_varchar`
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_VCHR_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_VCHR_ENTT_ID_MGEG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_ENTT_VCHR_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_category_flat_store_1`
--
ALTER TABLE `mgeg_catalog_category_flat_store_1`
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_FLAT_STORE_1_ENTT_ID_MGEG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_FLAT_STORE_1_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_category_product`
--
ALTER TABLE `mgeg_catalog_category_product`
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_PRD_CTGR_ID_MGEG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `mgeg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_PRD_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_category_product_index`
--
ALTER TABLE `mgeg_catalog_category_product_index`
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_PRD_IDX_CTGR_ID_MGEG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `mgeg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_PRD_IDX_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CTGR_PRD_IDX_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_compare_item`
--
ALTER TABLE `mgeg_catalog_compare_item`
  ADD CONSTRAINT `FK_MGEG_CATALOG_COMPARE_ITEM_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CMP_ITEM_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_CMP_ITEM_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_eav_attribute`
--
ALTER TABLE `mgeg_catalog_eav_attribute`
  ADD CONSTRAINT `FK_MGEG_CAT_EAV_ATTR_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_bundle_option`
--
ALTER TABLE `mgeg_catalog_product_bundle_option`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_BNDL_OPT_PARENT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_bundle_option_value`
--
ALTER TABLE `mgeg_catalog_product_bundle_option_value`
  ADD CONSTRAINT `FK_65AF5D67314DA55B5E902CB21768AB04` FOREIGN KEY (`option_id`) REFERENCES `mgeg_catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_bundle_price_index`
--
ALTER TABLE `mgeg_catalog_product_bundle_price_index`
  ADD CONSTRAINT `FK_5000D1FAEB32AD8818E411C70C91AF88` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_9C6E8AFB2642B903354CABE4A02F6F9F` FOREIGN KEY (`customer_group_id`) REFERENCES `mgeg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_BNDL_PRICE_IDX_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_bundle_selection`
--
ALTER TABLE `mgeg_catalog_product_bundle_selection`
  ADD CONSTRAINT `FK_226003B9484F1F6845CFED5AEEA2A812` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_58194080F7F992EFCD85B56385B209B3` FOREIGN KEY (`option_id`) REFERENCES `mgeg_catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_bundle_selection_price`
--
ALTER TABLE `mgeg_catalog_product_bundle_selection_price`
  ADD CONSTRAINT `FK_24FF28C8FA5139327C53363C2E756244` FOREIGN KEY (`selection_id`) REFERENCES `mgeg_catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_enabled_index`
--
ALTER TABLE `mgeg_catalog_product_enabled_index`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENABLED_IDX_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENABLED_IDX_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_entity`
--
ALTER TABLE `mgeg_catalog_product_entity`
  ADD CONSTRAINT `FK_762F759E5D6A03C98DA667539F69518B` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_ATTR_SET_ID_MGEG_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `mgeg_eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_entity_datetime`
--
ALTER TABLE `mgeg_catalog_product_entity_datetime`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_DTIME_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_DTIME_ENTT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_DTIME_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_entity_decimal`
--
ALTER TABLE `mgeg_catalog_product_entity_decimal`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_DEC_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_DEC_ENTT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_DEC_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_entity_gallery`
--
ALTER TABLE `mgeg_catalog_product_entity_gallery`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_GLR_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_GLR_ENTT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_GLR_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_entity_group_price`
--
ALTER TABLE `mgeg_catalog_product_entity_group_price`
  ADD CONSTRAINT `FK_363EDCF1A972BAEAE6239F2AF8EA1A16` FOREIGN KEY (`customer_group_id`) REFERENCES `mgeg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_E1EDB4A7E55FEA14228B83D635AF8744` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_GROUP_PRICE_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_entity_int`
--
ALTER TABLE `mgeg_catalog_product_entity_int`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_INT_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_INT_ENTT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_INT_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_entity_media_gallery`
--
ALTER TABLE `mgeg_catalog_product_entity_media_gallery`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_MDA_GLR_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_MDA_GLR_ENTT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_entity_media_gallery_value`
--
ALTER TABLE `mgeg_catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `FK_32EA8E63E4B7DF886DA4AD733E941693` FOREIGN KEY (`value_id`) REFERENCES `mgeg_catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_D0F3D51D0DD3B144F12C6692D2B21740` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_entity_text`
--
ALTER TABLE `mgeg_catalog_product_entity_text`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_TEXT_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_TEXT_ENTT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_TEXT_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_entity_tier_price`
--
ALTER TABLE `mgeg_catalog_product_entity_tier_price`
  ADD CONSTRAINT `FK_2037FB2E4F1413E49D8A19F5E7766E58` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ECDF90789C1F3844BAC21993A35F1D9E` FOREIGN KEY (`customer_group_id`) REFERENCES `mgeg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_TIER_PRICE_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_entity_varchar`
--
ALTER TABLE `mgeg_catalog_product_entity_varchar`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_VCHR_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_VCHR_ENTT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_ENTT_VCHR_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_flat_1`
--
ALTER TABLE `mgeg_catalog_product_flat_1`
  ADD CONSTRAINT `FK_MGEG_MGEG_CAT_PRD_FLAT_1_ENTT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_index_eav`
--
ALTER TABLE `mgeg_catalog_product_index_eav`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_IDX_EAV_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_IDX_EAV_ENTT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_IDX_EAV_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_index_eav_decimal`
--
ALTER TABLE `mgeg_catalog_product_index_eav_decimal`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_IDX_EAV_DEC_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_IDX_EAV_DEC_ENTT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_IDX_EAV_DEC_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_index_group_price`
--
ALTER TABLE `mgeg_catalog_product_index_group_price`
  ADD CONSTRAINT `FK_8B37C965360A1C55A07CD47140D62B95` FOREIGN KEY (`customer_group_id`) REFERENCES `mgeg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAAFADEBE01EB038A29EB37AFAA78FA1` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_IDX_GROUP_PRICE_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_index_price`
--
ALTER TABLE `mgeg_catalog_product_index_price`
  ADD CONSTRAINT `FK_70A1DD2B2CE4B1EC1F8B41EBE0D0627D` FOREIGN KEY (`customer_group_id`) REFERENCES `mgeg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_IDX_PRICE_ENTT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_IDX_PRICE_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_index_tier_price`
--
ALTER TABLE `mgeg_catalog_product_index_tier_price`
  ADD CONSTRAINT `FK_2B5AAB079CEAD1ACA1F0A1A798997C73` FOREIGN KEY (`customer_group_id`) REFERENCES `mgeg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_A6D1467B108F1DDF26F4F29998B27734` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_IDX_TIER_PRICE_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_index_website`
--
ALTER TABLE `mgeg_catalog_product_index_website`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_IDX_WS_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_link`
--
ALTER TABLE `mgeg_catalog_product_link`
  ADD CONSTRAINT `FK_4A457BBE1B1B323B01055608818BD708` FOREIGN KEY (`link_type_id`) REFERENCES `mgeg_catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_LNK_LNKED_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_LNK_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_link_attribute`
--
ALTER TABLE `mgeg_catalog_product_link_attribute`
  ADD CONSTRAINT `FK_B11082B06D668A27D870759D4A7AF764` FOREIGN KEY (`link_type_id`) REFERENCES `mgeg_catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_link_attribute_decimal`
--
ALTER TABLE `mgeg_catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `FK_9854C6FA8EEBC8BC2DDC6F178F7BDDB1` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `mgeg_catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_LNK_ATTR_DEC_LNK_ID_MGEG_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mgeg_catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_link_attribute_int`
--
ALTER TABLE `mgeg_catalog_product_link_attribute_int`
  ADD CONSTRAINT `FK_6748AA4813250E3757CE8AE4F9CB6D12` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `mgeg_catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_LNK_ATTR_INT_LNK_ID_MGEG_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mgeg_catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_link_attribute_varchar`
--
ALTER TABLE `mgeg_catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `FK_33A595325A3292100202B82AD411F7E7` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `mgeg_catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_LNK_ATTR_VCHR_LNK_ID_MGEG_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mgeg_catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_option`
--
ALTER TABLE `mgeg_catalog_product_option`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_OPT_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_option_price`
--
ALTER TABLE `mgeg_catalog_product_option_price`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_OPT_PRICE_OPT_ID_MGEG_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mgeg_catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_OPT_PRICE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_option_title`
--
ALTER TABLE `mgeg_catalog_product_option_title`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_OPT_TTL_OPT_ID_MGEG_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mgeg_catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_OPT_TTL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_option_type_price`
--
ALTER TABLE `mgeg_catalog_product_option_type_price`
  ADD CONSTRAINT `FK_29035457405D39CC063BD0904D351993` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_79D8EB8DD82C3BF43EDD486C7308FA78` FOREIGN KEY (`option_type_id`) REFERENCES `mgeg_catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_option_type_title`
--
ALTER TABLE `mgeg_catalog_product_option_type_title`
  ADD CONSTRAINT `FK_756AD4236A49B4EB717861EAD7C17243` FOREIGN KEY (`option_type_id`) REFERENCES `mgeg_catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_OPT_TYPE_TTL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_option_type_value`
--
ALTER TABLE `mgeg_catalog_product_option_type_value`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_OPT_TYPE_VAL_OPT_ID_MGEG_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mgeg_catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_relation`
--
ALTER TABLE `mgeg_catalog_product_relation`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_RELATION_CHILD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_RELATION_PARENT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_super_attribute`
--
ALTER TABLE `mgeg_catalog_product_super_attribute`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_SPR_ATTR_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mgeg_catalog_product_super_attribute_label`
--
ALTER TABLE `mgeg_catalog_product_super_attribute_label`
  ADD CONSTRAINT `FK_35A7758B2F5A0EA2C64E20A776EA55D7` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `mgeg_catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_SPR_ATTR_LBL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_super_attribute_pricing`
--
ALTER TABLE `mgeg_catalog_product_super_attribute_pricing`
  ADD CONSTRAINT `FK_CDB23C34280F1FB713AC22A7E9D5B6F5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `mgeg_catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_SPR_ATTR_PRICING_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_super_link`
--
ALTER TABLE `mgeg_catalog_product_super_link`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_SPR_LNK_PARENT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_SPR_LNK_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_catalog_product_website`
--
ALTER TABLE `mgeg_catalog_product_website`
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_WS_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CAT_PRD_WS_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_checkout_agreement_store`
--
ALTER TABLE `mgeg_checkout_agreement_store`
  ADD CONSTRAINT `FK_MGEG_CHKT_AGRT_STORE_AGRT_ID_MGEG_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `mgeg_checkout_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CHKT_AGRT_STORE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_cms_block_store`
--
ALTER TABLE `mgeg_cms_block_store`
  ADD CONSTRAINT `FK_MGEG_CMS_BLOCK_STORE_BLOCK_ID_MGEG_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `mgeg_cms_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CMS_BLOCK_STORE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_cms_page_store`
--
ALTER TABLE `mgeg_cms_page_store`
  ADD CONSTRAINT `FK_MGEG_CMS_PAGE_STORE_PAGE_ID_MGEG_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `mgeg_cms_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CMS_PAGE_STORE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_core_email_queue_recipients`
--
ALTER TABLE `mgeg_core_email_queue_recipients`
  ADD CONSTRAINT `FK_1675A619A51E6242E09A5915C6D9F40A` FOREIGN KEY (`message_id`) REFERENCES `mgeg_core_email_queue` (`message_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_core_layout_link`
--
ALTER TABLE `mgeg_core_layout_link`
  ADD CONSTRAINT `FK_B735615DED2EB727F5360978C609489C` FOREIGN KEY (`layout_update_id`) REFERENCES `mgeg_core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CORE_LAYOUT_LINK_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_core_store`
--
ALTER TABLE `mgeg_core_store`
  ADD CONSTRAINT `FK_MGEG_CORE_STORE_GROUP_ID_MGEG_CORE_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `mgeg_core_store_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CORE_STORE_WEBSITE_ID_MGEG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_core_store_group`
--
ALTER TABLE `mgeg_core_store_group`
  ADD CONSTRAINT `FK_MGEG_CORE_STORE_GROUP_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_core_translate`
--
ALTER TABLE `mgeg_core_translate`
  ADD CONSTRAINT `FK_MGEG_CORE_TRANSLATE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_core_url_rewrite`
--
ALTER TABLE `mgeg_core_url_rewrite`
  ADD CONSTRAINT `FK_MGEG_CORE_URL_REWRITE_CTGR_ID_MGEG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `mgeg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CORE_URL_REWRITE_PRD_ID_MGEG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CORE_URL_REWRITE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_core_variable_value`
--
ALTER TABLE `mgeg_core_variable_value`
  ADD CONSTRAINT `FK_711AE70BBF1D1B4E81EB7DE73A48FFD2` FOREIGN KEY (`variable_id`) REFERENCES `mgeg_core_variable` (`variable_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CORE_VARIABLE_VALUE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_coupon_aggregated`
--
ALTER TABLE `mgeg_coupon_aggregated`
  ADD CONSTRAINT `FK_MGEG_COUPON_AGGREGATED_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_coupon_aggregated_order`
--
ALTER TABLE `mgeg_coupon_aggregated_order`
  ADD CONSTRAINT `FK_MGEG_COUPON_AGGRED_ORDER_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_coupon_aggregated_updated`
--
ALTER TABLE `mgeg_coupon_aggregated_updated`
  ADD CONSTRAINT `FK_FF1961D402B818EF1A6A9B23311E963C` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_address_entity`
--
ALTER TABLE `mgeg_customer_address_entity`
  ADD CONSTRAINT `FK_MGEG_CSTR_ADDR_ENTT_PARENT_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_address_entity_datetime`
--
ALTER TABLE `mgeg_customer_address_entity_datetime`
  ADD CONSTRAINT `FK_2CA63FC4BAFC02DD33926515611A3A8F` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CD06C3AB7F79B770C858692BD0922B37` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ADDR_ENTT_DTIME_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_address_entity_decimal`
--
ALTER TABLE `mgeg_customer_address_entity_decimal`
  ADD CONSTRAINT `FK_CC4B6CFFECDEBD9D702F874DBD8E7CED` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ADDR_ENTT_DEC_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ADDR_ENTT_DEC_ENTT_ID_MGEG_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_address_entity_int`
--
ALTER TABLE `mgeg_customer_address_entity_int`
  ADD CONSTRAINT `FK_0086637D45A455D222ACE039B05F7BD9` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ADDR_ENTT_INT_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ADDR_ENTT_INT_ENTT_ID_MGEG_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_address_entity_text`
--
ALTER TABLE `mgeg_customer_address_entity_text`
  ADD CONSTRAINT `FK_709AF96BC2E58200614CB1BD0DE34CD3` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_738458AB1C3F98D94D6ABEEC7FABFAA2` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ADDR_ENTT_TEXT_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_address_entity_varchar`
--
ALTER TABLE `mgeg_customer_address_entity_varchar`
  ADD CONSTRAINT `FK_5558AB56C586BFCF9F65CD8B45513E1B` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_D8DADFA8739B1BB0F19568F79A388E13` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ADDR_ENTT_VCHR_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_eav_attribute`
--
ALTER TABLE `mgeg_customer_eav_attribute`
  ADD CONSTRAINT `FK_MGEG_CSTR_EAV_ATTR_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_eav_attribute_website`
--
ALTER TABLE `mgeg_customer_eav_attribute_website`
  ADD CONSTRAINT `FK_MGEG_CSTR_EAV_ATTR_WS_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_EAV_ATTR_WS_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_entity`
--
ALTER TABLE `mgeg_customer_entity`
  ADD CONSTRAINT `FK_MGEG_CSTR_ENTT_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CUSTOMER_ENTITY_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_entity_datetime`
--
ALTER TABLE `mgeg_customer_entity_datetime`
  ADD CONSTRAINT `FK_EC7C750C5786B2611F701D4101EE8309` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ENTT_DTIME_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ENTT_DTIME_ENTT_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_entity_decimal`
--
ALTER TABLE `mgeg_customer_entity_decimal`
  ADD CONSTRAINT `FK_151821EF4DF9786DBCC4E8DC847D79E2` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ENTT_DEC_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ENTT_DEC_ENTT_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_entity_int`
--
ALTER TABLE `mgeg_customer_entity_int`
  ADD CONSTRAINT `FK_6E45F7055F91B02834E795FEF5EA226E` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ENTT_INT_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ENTT_INT_ENTT_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_entity_text`
--
ALTER TABLE `mgeg_customer_entity_text`
  ADD CONSTRAINT `FK_46BAFE4E57B4F9C12F1A08B3AD830E16` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ENTT_TEXT_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ENTT_TEXT_ENTT_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_entity_varchar`
--
ALTER TABLE `mgeg_customer_entity_varchar`
  ADD CONSTRAINT `FK_3C2DAE54597C66B27F83E7327B601A4D` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ENTT_VCHR_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_CSTR_ENTT_VCHR_ENTT_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_customer_form_attribute`
--
ALTER TABLE `mgeg_customer_form_attribute`
  ADD CONSTRAINT `FK_MGEG_CSTR_FORM_ATTR_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_dataflow_batch`
--
ALTER TABLE `mgeg_dataflow_batch`
  ADD CONSTRAINT `FK_E029C41604D336C262B0CAA79539CC14` FOREIGN KEY (`profile_id`) REFERENCES `mgeg_dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGEG_DATAFLOW_BATCH_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mgeg_dataflow_batch_export`
--
ALTER TABLE `mgeg_dataflow_batch_export`
  ADD CONSTRAINT `FK_B82DC9AA702BD5ED0F94C5EE5BE46DF0` FOREIGN KEY (`batch_id`) REFERENCES `mgeg_dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mgeg_dataflow_batch_import`
--
ALTER TABLE `mgeg_dataflow_batch_import`
  ADD CONSTRAINT `FK_D419100A0D127482C917E297F8258A3C` FOREIGN KEY (`batch_id`) REFERENCES `mgeg_dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mgeg_dataflow_import_data`
--
ALTER TABLE `mgeg_dataflow_import_data`
  ADD CONSTRAINT `FK_70BE73610B433643C9A10AAF96CD382D` FOREIGN KEY (`session_id`) REFERENCES `mgeg_dataflow_session` (`session_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mgeg_dataflow_profile_history`
--
ALTER TABLE `mgeg_dataflow_profile_history`
  ADD CONSTRAINT `FK_E7334630C3E65A5FB2670909A6335EBE` FOREIGN KEY (`profile_id`) REFERENCES `mgeg_dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_design_change`
--
ALTER TABLE `mgeg_design_change`
  ADD CONSTRAINT `FK_MGEG_DESIGN_CHANGE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_directory_country_region_name`
--
ALTER TABLE `mgeg_directory_country_region_name`
  ADD CONSTRAINT `FK_0C7D31CCB49556A16F45E08FDFB8B8A3` FOREIGN KEY (`region_id`) REFERENCES `mgeg_directory_country_region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_downloadable_link`
--
ALTER TABLE `mgeg_downloadable_link`
  ADD CONSTRAINT `FK_MGEG_DL_LNK_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_downloadable_link_price`
--
ALTER TABLE `mgeg_downloadable_link_price`
  ADD CONSTRAINT `FK_MGEG_DL_LNK_PRICE_LNK_ID_MGEG_DL_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mgeg_downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_DL_LNK_PRICE_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_downloadable_link_purchased`
--
ALTER TABLE `mgeg_downloadable_link_purchased`
  ADD CONSTRAINT `FK_ED3C23FE250226D2E9E00554E3A137BE` FOREIGN KEY (`order_id`) REFERENCES `mgeg_sales_flat_order` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_DL_LNK_PURCHASED_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_downloadable_link_purchased_item`
--
ALTER TABLE `mgeg_downloadable_link_purchased_item`
  ADD CONSTRAINT `FK_A9F6C3449C17990AAB7845D7E11753AF` FOREIGN KEY (`purchased_id`) REFERENCES `mgeg_downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DF91B7BE992B852AE1B5815CEFC0BF0E` FOREIGN KEY (`order_item_id`) REFERENCES `mgeg_sales_flat_order_item` (`item_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_downloadable_link_title`
--
ALTER TABLE `mgeg_downloadable_link_title`
  ADD CONSTRAINT `FK_MGEG_DL_LNK_TTL_LNK_ID_MGEG_DL_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mgeg_downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_DL_LNK_TTL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_downloadable_sample`
--
ALTER TABLE `mgeg_downloadable_sample`
  ADD CONSTRAINT `FK_MGEG_DL_SAMPLE_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_downloadable_sample_title`
--
ALTER TABLE `mgeg_downloadable_sample_title`
  ADD CONSTRAINT `FK_MGEG_DL_SAMPLE_TTL_SAMPLE_ID_MGEG_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `mgeg_downloadable_sample` (`sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_DL_SAMPLE_TTL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_attribute`
--
ALTER TABLE `mgeg_eav_attribute`
  ADD CONSTRAINT `FK_MGEG_EAV_ATTR_ENTT_TYPE_ID_MGEG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_attribute_group`
--
ALTER TABLE `mgeg_eav_attribute_group`
  ADD CONSTRAINT `FK_48D193CBF6713ED9AD27C34DFB1954C1` FOREIGN KEY (`attribute_set_id`) REFERENCES `mgeg_eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_attribute_label`
--
ALTER TABLE `mgeg_eav_attribute_label`
  ADD CONSTRAINT `FK_MGEG_EAV_ATTRIBUTE_LABEL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ATTR_LBL_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_attribute_option`
--
ALTER TABLE `mgeg_eav_attribute_option`
  ADD CONSTRAINT `FK_MGEG_EAV_ATTR_OPT_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_attribute_option_value`
--
ALTER TABLE `mgeg_eav_attribute_option_value`
  ADD CONSTRAINT `FK_MGEG_EAV_ATTR_OPT_VAL_OPT_ID_MGEG_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mgeg_eav_attribute_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ATTR_OPT_VAL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_attribute_set`
--
ALTER TABLE `mgeg_eav_attribute_set`
  ADD CONSTRAINT `FK_A5581293BC8C241022CC05AA957039B0` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_entity`
--
ALTER TABLE `mgeg_eav_entity`
  ADD CONSTRAINT `FK_MGEG_EAV_ENTITY_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ENTT_ENTT_TYPE_ID_MGEG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_entity_attribute`
--
ALTER TABLE `mgeg_eav_entity_attribute`
  ADD CONSTRAINT `FK_6D6C2C0D9649BC516C6BA676D8C586DB` FOREIGN KEY (`attribute_group_id`) REFERENCES `mgeg_eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ENTT_ATTR_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_entity_datetime`
--
ALTER TABLE `mgeg_eav_entity_datetime`
  ADD CONSTRAINT `FK_6065137600210C0D676FF440BF8B5383` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ENTITY_DATETIME_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ENTT_DTIME_ENTT_ID_MGEG_EAV_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_entity_decimal`
--
ALTER TABLE `mgeg_eav_entity_decimal`
  ADD CONSTRAINT `FK_BFCB6F743BF2BE34A63B37C64F25AEFF` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ENTITY_DECIMAL_ENTITY_ID_MGEG_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ENTITY_DECIMAL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_entity_int`
--
ALTER TABLE `mgeg_eav_entity_int`
  ADD CONSTRAINT `FK_6FC644B781F19CC9CB3D3E2F74BF5BA5` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ENTITY_INT_ENTITY_ID_MGEG_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ENTITY_INT_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_entity_store`
--
ALTER TABLE `mgeg_eav_entity_store`
  ADD CONSTRAINT `FK_1015FE3E3C3F273ADC5B3E4DE3E18D39` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ENTITY_STORE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_entity_text`
--
ALTER TABLE `mgeg_eav_entity_text`
  ADD CONSTRAINT `FK_637ADC75EED4FB47EA17A1BC1C2CE2EA` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ENTITY_TEXT_ENTITY_ID_MGEG_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ENTITY_TEXT_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_entity_varchar`
--
ALTER TABLE `mgeg_eav_entity_varchar`
  ADD CONSTRAINT `FK_C9156BB03257E4254FAF8CB76AF435FA` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ENTITY_VARCHAR_ENTITY_ID_MGEG_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_ENTITY_VARCHAR_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_form_element`
--
ALTER TABLE `mgeg_eav_form_element`
  ADD CONSTRAINT `FK_MGEG_EAV_FORM_ELEMENT_TYPE_ID_MGEG_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `mgeg_eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_FORM_ELM_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_FORM_ELM_FSET_ID_MGEG_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `mgeg_eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_form_fieldset`
--
ALTER TABLE `mgeg_eav_form_fieldset`
  ADD CONSTRAINT `FK_MGEG_EAV_FORM_FIELDSET_TYPE_ID_MGEG_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `mgeg_eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_form_fieldset_label`
--
ALTER TABLE `mgeg_eav_form_fieldset_label`
  ADD CONSTRAINT `FK_MGEG_EAV_FORM_FSET_LBL_FSET_ID_MGEG_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `mgeg_eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_FORM_FSET_LBL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_form_type`
--
ALTER TABLE `mgeg_eav_form_type`
  ADD CONSTRAINT `FK_MGEG_EAV_FORM_TYPE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_eav_form_type_entity`
--
ALTER TABLE `mgeg_eav_form_type_entity`
  ADD CONSTRAINT `FK_ECD06749F393DF334228975D2CDA8667` FOREIGN KEY (`entity_type_id`) REFERENCES `mgeg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_EAV_FORM_TYPE_ENTT_TYPE_ID_MGEG_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `mgeg_eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_evopin_fancypopup_store`
--
ALTER TABLE `mgeg_evopin_fancypopup_store`
  ADD CONSTRAINT `FK_FANCYPOPUP_STORE_FANCYPOPUP` FOREIGN KEY (`fancy_id`) REFERENCES `mgeg_evopin_fancypopup` (`fancypopup_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_FANCYPOPUP_STORE_STORE` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_index_process_event`
--
ALTER TABLE `mgeg_index_process_event`
  ADD CONSTRAINT `FK_751E05A03D3937444F039172809AA041` FOREIGN KEY (`process_id`) REFERENCES `mgeg_index_process` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_INDEX_PROCESS_EVENT_EVENT_ID_MGEG_INDEX_EVENT_EVENT_ID` FOREIGN KEY (`event_id`) REFERENCES `mgeg_index_event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_newsletter_problem`
--
ALTER TABLE `mgeg_newsletter_problem`
  ADD CONSTRAINT `FK_C541F9AB7AF657A6A3FBF4705B6A80C7` FOREIGN KEY (`subscriber_id`) REFERENCES `mgeg_newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_NLTTR_PROBLEM_QUEUE_ID_MGEG_NLTTR_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `mgeg_newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_newsletter_queue`
--
ALTER TABLE `mgeg_newsletter_queue`
  ADD CONSTRAINT `FK_D8C6C5B95B1F7302E657C961C13F6B9D` FOREIGN KEY (`template_id`) REFERENCES `mgeg_newsletter_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_newsletter_queue_link`
--
ALTER TABLE `mgeg_newsletter_queue_link`
  ADD CONSTRAINT `FK_7D1BAC8003657A5C4420B3E5EA851608` FOREIGN KEY (`subscriber_id`) REFERENCES `mgeg_newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_NLTTR_QUEUE_LNK_QUEUE_ID_MGEG_NLTTR_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `mgeg_newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_newsletter_queue_store_link`
--
ALTER TABLE `mgeg_newsletter_queue_store_link`
  ADD CONSTRAINT `FK_4F242958E87E95FA5DAF6E38B25E727D` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_9FA56C8E0EDB6D3319B263FBD7FB4D27` FOREIGN KEY (`queue_id`) REFERENCES `mgeg_newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_newsletter_subscriber`
--
ALTER TABLE `mgeg_newsletter_subscriber`
  ADD CONSTRAINT `FK_MGEG_NLTTR_SUBSCRIBER_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_oauth_token`
--
ALTER TABLE `mgeg_oauth_token`
  ADD CONSTRAINT `FK_MGEG_OAUTH_TOKEN_ADMIN_ID_MGEG_MGEG_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `mgeg_admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_OAUTH_TOKEN_CONSUMER_ID_MGEG_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `mgeg_oauth_consumer` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_OAUTH_TOKEN_CSTR_ID_MGEG_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_paypal_cert`
--
ALTER TABLE `mgeg_paypal_cert`
  ADD CONSTRAINT `FK_MGEG_PAYPAL_CERT_WEBSITE_ID_MGEG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_paypal_settlement_report_row`
--
ALTER TABLE `mgeg_paypal_settlement_report_row`
  ADD CONSTRAINT `FK_573562133B43E99D0987AA37B2300460` FOREIGN KEY (`report_id`) REFERENCES `mgeg_paypal_settlement_report` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_persistent_session`
--
ALTER TABLE `mgeg_persistent_session`
  ADD CONSTRAINT `FK_MGEG_PERSISTENT_SESS_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGEG_PERSISTENT_SESS_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mgeg_poll`
--
ALTER TABLE `mgeg_poll`
  ADD CONSTRAINT `FK_MGEG_POLL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_poll_answer`
--
ALTER TABLE `mgeg_poll_answer`
  ADD CONSTRAINT `FK_MGEG_POLL_ANSWER_POLL_ID_MGEG_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `mgeg_poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_poll_store`
--
ALTER TABLE `mgeg_poll_store`
  ADD CONSTRAINT `FK_MGEG_POLL_STORE_POLL_ID_MGEG_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `mgeg_poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_POLL_STORE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_poll_vote`
--
ALTER TABLE `mgeg_poll_vote`
  ADD CONSTRAINT `FK_MGEG_POLL_VOTE_POLL_ANSWER_ID_MGEG_POLL_ANSWER_ANSWER_ID` FOREIGN KEY (`poll_answer_id`) REFERENCES `mgeg_poll_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_product_alert_price`
--
ALTER TABLE `mgeg_product_alert_price`
  ADD CONSTRAINT `FK_MGEG_PRD_ALERT_PRICE_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_PRD_ALERT_PRICE_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_PRD_ALERT_PRICE_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_product_alert_stock`
--
ALTER TABLE `mgeg_product_alert_stock`
  ADD CONSTRAINT `FK_MGEG_PRD_ALERT_STOCK_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_PRD_ALERT_STOCK_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_PRD_ALERT_STOCK_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_rating`
--
ALTER TABLE `mgeg_rating`
  ADD CONSTRAINT `FK_MGEG_RATING_ENTITY_ID_MGEG_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_rating_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_rating_option`
--
ALTER TABLE `mgeg_rating_option`
  ADD CONSTRAINT `FK_MGEG_RATING_OPTION_RATING_ID_MGEG_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `mgeg_rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_rating_option_vote`
--
ALTER TABLE `mgeg_rating_option_vote`
  ADD CONSTRAINT `FK_MGEG_RATING_OPTION_VOTE_REVIEW_ID_MGEG_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `mgeg_review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_RATING_OPT_VOTE_OPT_ID_MGEG_RATING_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mgeg_rating_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_rating_option_vote_aggregated`
--
ALTER TABLE `mgeg_rating_option_vote_aggregated`
  ADD CONSTRAINT `FK_8E49F04E5DD0D79CB33CE69094D81622` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_RATING_OPT_VOTE_AGGRED_RATING_ID_MGEG_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `mgeg_rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_rating_store`
--
ALTER TABLE `mgeg_rating_store`
  ADD CONSTRAINT `FK_MGEG_RATING_STORE_RATING_ID_MGEG_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `mgeg_rating` (`rating_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGEG_RATING_STORE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_rating_title`
--
ALTER TABLE `mgeg_rating_title`
  ADD CONSTRAINT `FK_MGEG_RATING_TITLE_RATING_ID_MGEG_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `mgeg_rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_RATING_TITLE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_report_compared_product_index`
--
ALTER TABLE `mgeg_report_compared_product_index`
  ADD CONSTRAINT `FK_MGEG_REPORT_CMPD_PRD_IDX_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_REPORT_CMPD_PRD_IDX_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_REPORT_CMPD_PRD_IDX_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_report_event`
--
ALTER TABLE `mgeg_report_event`
  ADD CONSTRAINT `FK_8BB81D8A372114A184FC1A9375C99584` FOREIGN KEY (`event_type_id`) REFERENCES `mgeg_report_event_types` (`event_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_REPORT_EVENT_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_report_viewed_product_aggregated_daily`
--
ALTER TABLE `mgeg_report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `FK_2B0084FEB037AF82450B4F03C6A80B58` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B83D7B1E8A75CD00882F75EA857A7491` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_report_viewed_product_aggregated_monthly`
--
ALTER TABLE `mgeg_report_viewed_product_aggregated_monthly`
  ADD CONSTRAINT `FK_30092B56869D68566C415E001428AB94` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_C235A074544BF9D581E0D8AC1BF34425` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_report_viewed_product_aggregated_yearly`
--
ALTER TABLE `mgeg_report_viewed_product_aggregated_yearly`
  ADD CONSTRAINT `FK_7B828590DF4C42E1FE7ABA65C87F59E7` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_A1EA01A64AB479608854BF006FA622AE` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_report_viewed_product_index`
--
ALTER TABLE `mgeg_report_viewed_product_index`
  ADD CONSTRAINT `FK_D1B5E2FD702E6F97D7999E0D0D0E5CC0` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_REPORT_VIEWED_PRD_IDX_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_REPORT_VIEWED_PRD_IDX_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_review`
--
ALTER TABLE `mgeg_review`
  ADD CONSTRAINT `FK_MGEG_REVIEW_ENTITY_ID_MGEG_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_review_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_REVIEW_STATUS_ID_MGEG_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `mgeg_review_status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mgeg_review_detail`
--
ALTER TABLE `mgeg_review_detail`
  ADD CONSTRAINT `FK_MGEG_REVIEW_DETAIL_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_REVIEW_DETAIL_REVIEW_ID_MGEG_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `mgeg_review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_REVIEW_DETAIL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_review_entity_summary`
--
ALTER TABLE `mgeg_review_entity_summary`
  ADD CONSTRAINT `FK_MGEG_REVIEW_ENTT_SUMMARY_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_review_store`
--
ALTER TABLE `mgeg_review_store`
  ADD CONSTRAINT `FK_MGEG_REVIEW_STORE_REVIEW_ID_MGEG_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `mgeg_review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_REVIEW_STORE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_salesrule_coupon`
--
ALTER TABLE `mgeg_salesrule_coupon`
  ADD CONSTRAINT `FK_MGEG_SALESRULE_COUPON_RULE_ID_MGEG_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgeg_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_salesrule_coupon_usage`
--
ALTER TABLE `mgeg_salesrule_coupon_usage`
  ADD CONSTRAINT `FK_7140C9BA24AE1378FC778253EBEE0477` FOREIGN KEY (`coupon_id`) REFERENCES `mgeg_salesrule_coupon` (`coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_SALESRULE_COUPON_USAGE_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_salesrule_customer`
--
ALTER TABLE `mgeg_salesrule_customer`
  ADD CONSTRAINT `FK_MGEG_SALESRULE_CSTR_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_SALESRULE_CUSTOMER_RULE_ID_MGEG_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgeg_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_salesrule_customer_group`
--
ALTER TABLE `mgeg_salesrule_customer_group`
  ADD CONSTRAINT `FK_875F46C3D02EBDACC08D3A72C80D2B34` FOREIGN KEY (`customer_group_id`) REFERENCES `mgeg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_SALESRULE_CSTR_GROUP_RULE_ID_MGEG_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgeg_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_salesrule_label`
--
ALTER TABLE `mgeg_salesrule_label`
  ADD CONSTRAINT `FK_MGEG_SALESRULE_LABEL_RULE_ID_MGEG_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgeg_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_SALESRULE_LABEL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_salesrule_product_attribute`
--
ALTER TABLE `mgeg_salesrule_product_attribute`
  ADD CONSTRAINT `FK_8BFB4A64F87FE214DAB485469DB3E9CA` FOREIGN KEY (`customer_group_id`) REFERENCES `mgeg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGEG_SALESRULE_PRD_ATTR_ATTR_ID_MGEG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGEG_SALESRULE_PRD_ATTR_RULE_ID_MGEG_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgeg_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGEG_SALESRULE_PRD_ATTR_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mgeg_salesrule_website`
--
ALTER TABLE `mgeg_salesrule_website`
  ADD CONSTRAINT `FK_MGEG_SALESRULE_WEBSITE_RULE_ID_MGEG_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgeg_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_SALESRULE_WS_WS_ID_MGEG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_bestsellers_aggregated_daily`
--
ALTER TABLE `mgeg_sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `FK_85EB5D15683E9D26DF01EE0AC652758F` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CC2920ECE6BEFD1E5CD09FEFD971660D` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `mgeg_sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `FK_2FB0138CBDF09FA63150D9CF4D477670` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_AAB7CA9DB4E6756275E82330F333AF9D` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `mgeg_sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `FK_B686F33C731BFE3673DE6EEAF9D8957B` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EEFD851095E37725B3D4A087E61C3193` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_billing_agreement`
--
ALTER TABLE `mgeg_sales_billing_agreement`
  ADD CONSTRAINT `FK_MGEG_SALES_BILLING_AGRT_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_SALES_BILLING_AGRT_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_billing_agreement_order`
--
ALTER TABLE `mgeg_sales_billing_agreement_order`
  ADD CONSTRAINT `FK_4AB507049DA1789AF62DD7F606EA60C8` FOREIGN KEY (`agreement_id`) REFERENCES `mgeg_sales_billing_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_C2D1A3C18DFFF56A3D53BFFB7966F8B0` FOREIGN KEY (`order_id`) REFERENCES `mgeg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_creditmemo`
--
ALTER TABLE `mgeg_sales_flat_creditmemo`
  ADD CONSTRAINT `FK_76282525F581031E9A9C567F75D9AE34` FOREIGN KEY (`order_id`) REFERENCES `mgeg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_E333ECA14B902032901BAF59370DB96A` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_creditmemo_comment`
--
ALTER TABLE `mgeg_sales_flat_creditmemo_comment`
  ADD CONSTRAINT `FK_BA995AF48C4D13D586BA3C50703ECE06` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_creditmemo_grid`
--
ALTER TABLE `mgeg_sales_flat_creditmemo_grid`
  ADD CONSTRAINT `FK_518AFDEAB30D2737D7C45C7D8FFC1C2B` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_A8F2914CAB2AA5E2D3196BE4A382218D` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_creditmemo_item`
--
ALTER TABLE `mgeg_sales_flat_creditmemo_item`
  ADD CONSTRAINT `FK_6D7BAE46831B5F2A0D449F39B5295546` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_invoice`
--
ALTER TABLE `mgeg_sales_flat_invoice`
  ADD CONSTRAINT `FK_497E074BF8CAA8F76BF9FBEFC498AA03` FOREIGN KEY (`order_id`) REFERENCES `mgeg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_SALES_FLAT_INVOICE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_invoice_comment`
--
ALTER TABLE `mgeg_sales_flat_invoice_comment`
  ADD CONSTRAINT `FK_0E73E58B440A536B551F9BEB70B775F4` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_invoice_grid`
--
ALTER TABLE `mgeg_sales_flat_invoice_grid`
  ADD CONSTRAINT `FK_A200E6C0686ED1C0D5A8DE5914346F1C` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_E13C3F69EDD2E80EE568404E2DE00718` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_invoice_item`
--
ALTER TABLE `mgeg_sales_flat_invoice_item`
  ADD CONSTRAINT `FK_3BDCA48FB64D21446ABF3B4DACC88FAA` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_order`
--
ALTER TABLE `mgeg_sales_flat_order`
  ADD CONSTRAINT `FK_MGEG_SALES_FLAT_ORDER_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_SALES_FLAT_ORDER_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_order_address`
--
ALTER TABLE `mgeg_sales_flat_order_address`
  ADD CONSTRAINT `FK_07F733030AB938997D8A1A88049BC3E2` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_order_grid`
--
ALTER TABLE `mgeg_sales_flat_order_grid`
  ADD CONSTRAINT `FK_49741017E68D245270ACD1FCEA5F9FA1` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_784CFD64BBC830B29FB31AEF2259C102` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_SALES_FLAT_ORDER_GRID_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_order_item`
--
ALTER TABLE `mgeg_sales_flat_order_item`
  ADD CONSTRAINT `FK_6603CB983ECBE6BEA13998421F0134B5` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_6FE7CCE2BABA3476F6081C09381EC8C9` FOREIGN KEY (`order_id`) REFERENCES `mgeg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_order_payment`
--
ALTER TABLE `mgeg_sales_flat_order_payment`
  ADD CONSTRAINT `FK_FDBBD00EB15D9FB9415161246B08456B` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_order_status_history`
--
ALTER TABLE `mgeg_sales_flat_order_status_history`
  ADD CONSTRAINT `FK_CB355EEAFBBDA30A5BC4FE423A5A7FF3` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_quote`
--
ALTER TABLE `mgeg_sales_flat_quote`
  ADD CONSTRAINT `FK_MGEG_SALES_FLAT_QUOTE_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_quote_address`
--
ALTER TABLE `mgeg_sales_flat_quote_address`
  ADD CONSTRAINT `FK_0D922E2758E19C130AEF102292F891DD` FOREIGN KEY (`quote_id`) REFERENCES `mgeg_sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_quote_address_item`
--
ALTER TABLE `mgeg_sales_flat_quote_address_item`
  ADD CONSTRAINT `FK_189B58211546DB73305B1B82A1FC59DA` FOREIGN KEY (`parent_item_id`) REFERENCES `mgeg_sales_flat_quote_address_item` (`address_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_2EBF588E37C1933A04508F72F5CB8148` FOREIGN KEY (`quote_item_id`) REFERENCES `mgeg_sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_741BFCC78ECFB698BDB5E33EF1532E73` FOREIGN KEY (`quote_address_id`) REFERENCES `mgeg_sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_quote_item`
--
ALTER TABLE `mgeg_sales_flat_quote_item`
  ADD CONSTRAINT `FK_2D0244783998D2E8D3C7B40F092BE74E` FOREIGN KEY (`quote_id`) REFERENCES `mgeg_sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_77627866B01EC21298AEFA012718B9CA` FOREIGN KEY (`parent_item_id`) REFERENCES `mgeg_sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CEC37C592D2746C01CEEB3ACD302911F` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_SALES_FLAT_QUOTE_ITEM_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_quote_item_option`
--
ALTER TABLE `mgeg_sales_flat_quote_item_option`
  ADD CONSTRAINT `FK_B001F37CDAA20BF32FE60F8EC5ACAE0B` FOREIGN KEY (`item_id`) REFERENCES `mgeg_sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_quote_payment`
--
ALTER TABLE `mgeg_sales_flat_quote_payment`
  ADD CONSTRAINT `FK_E768A9CF867A0F43E7671179C62850B9` FOREIGN KEY (`quote_id`) REFERENCES `mgeg_sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_quote_shipping_rate`
--
ALTER TABLE `mgeg_sales_flat_quote_shipping_rate`
  ADD CONSTRAINT `FK_86CF739F9D6A7894238EAD9D9404D1D6` FOREIGN KEY (`address_id`) REFERENCES `mgeg_sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_shipment`
--
ALTER TABLE `mgeg_sales_flat_shipment`
  ADD CONSTRAINT `FK_D35104462BE5D576F87B56A06586F290` FOREIGN KEY (`order_id`) REFERENCES `mgeg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_SALES_FLAT_SHIPMENT_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_shipment_comment`
--
ALTER TABLE `mgeg_sales_flat_shipment_comment`
  ADD CONSTRAINT `FK_7ACE50F56EDA24C84935351BBEAD529B` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_shipment_grid`
--
ALTER TABLE `mgeg_sales_flat_shipment_grid`
  ADD CONSTRAINT `FK_944BCC6C7D86AEB140D3F0706B999604` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_A0D0011735C8E19C8C6038DC1258849A` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_shipment_item`
--
ALTER TABLE `mgeg_sales_flat_shipment_item`
  ADD CONSTRAINT `FK_43F1A2FC3CE764AD9228B415B0C5D0F9` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_flat_shipment_track`
--
ALTER TABLE `mgeg_sales_flat_shipment_track`
  ADD CONSTRAINT `FK_A15595A672C3F0C376C082C833E03577` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_invoiced_aggregated`
--
ALTER TABLE `mgeg_sales_invoiced_aggregated`
  ADD CONSTRAINT `FK_031495755C0A59147D36087F381BB77D` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_invoiced_aggregated_order`
--
ALTER TABLE `mgeg_sales_invoiced_aggregated_order`
  ADD CONSTRAINT `FK_98512082B5457F1B6D003F3BBDCE3EB4` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_order_aggregated_created`
--
ALTER TABLE `mgeg_sales_order_aggregated_created`
  ADD CONSTRAINT `FK_D2B26908CFC4BB28DB92DBBF873A5B30` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_order_aggregated_updated`
--
ALTER TABLE `mgeg_sales_order_aggregated_updated`
  ADD CONSTRAINT `FK_859A9D38A156877C4CCBD7E45EBAF6CB` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_order_status_label`
--
ALTER TABLE `mgeg_sales_order_status_label`
  ADD CONSTRAINT `FK_MGEG_SALES_ORDER_STS_LBL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_SALES_ORDER_STS_LBL_STS_MGEG_SALES_ORDER_STS_STS` FOREIGN KEY (`status`) REFERENCES `mgeg_sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_order_status_state`
--
ALTER TABLE `mgeg_sales_order_status_state`
  ADD CONSTRAINT `FK_MGEG_SALES_ORDER_STS_STATE_STS_MGEG_SALES_ORDER_STS_STS` FOREIGN KEY (`status`) REFERENCES `mgeg_sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_order_tax_item`
--
ALTER TABLE `mgeg_sales_order_tax_item`
  ADD CONSTRAINT `FK_2442209933DBBCD03A3C03281611B2E8` FOREIGN KEY (`tax_id`) REFERENCES `mgeg_sales_order_tax` (`tax_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_D06EFBE66DD0F933D28DDAA709BD7405` FOREIGN KEY (`item_id`) REFERENCES `mgeg_sales_flat_order_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_payment_transaction`
--
ALTER TABLE `mgeg_sales_payment_transaction`
  ADD CONSTRAINT `FK_7C1EB6D317AF0DE3FBC8C0C92DFD9B75` FOREIGN KEY (`payment_id`) REFERENCES `mgeg_sales_flat_order_payment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_8C739415EBE052E0C840107ABDEA261B` FOREIGN KEY (`order_id`) REFERENCES `mgeg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_F32ACDC9BF911D6824B694149DBB7E29` FOREIGN KEY (`parent_id`) REFERENCES `mgeg_sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_recurring_profile`
--
ALTER TABLE `mgeg_sales_recurring_profile`
  ADD CONSTRAINT `FK_137C3B229CE6BF0BF9728AFDB2300D7D` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_SALES_RECURRING_PROFILE_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_recurring_profile_order`
--
ALTER TABLE `mgeg_sales_recurring_profile_order`
  ADD CONSTRAINT `FK_524D9D85879281B3060210A82DB106CD` FOREIGN KEY (`profile_id`) REFERENCES `mgeg_sales_recurring_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CB1C94E12D1F803A540CDC8E11D7ACAD` FOREIGN KEY (`order_id`) REFERENCES `mgeg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_refunded_aggregated`
--
ALTER TABLE `mgeg_sales_refunded_aggregated`
  ADD CONSTRAINT `FK_EA48D6E6D5E16260AFE79FF7ADC74BD7` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_refunded_aggregated_order`
--
ALTER TABLE `mgeg_sales_refunded_aggregated_order`
  ADD CONSTRAINT `FK_A5AFF2D1D698ACA73FF5E0968B1E7708` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_shipping_aggregated`
--
ALTER TABLE `mgeg_sales_shipping_aggregated`
  ADD CONSTRAINT `FK_MGEG_SALES_SHPP_AGGRED_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sales_shipping_aggregated_order`
--
ALTER TABLE `mgeg_sales_shipping_aggregated_order`
  ADD CONSTRAINT `FK_A9BCB5153276B31C3ADC2DE5DE592F5A` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_sitemap`
--
ALTER TABLE `mgeg_sitemap`
  ADD CONSTRAINT `FK_MGEG_SITEMAP_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_tag`
--
ALTER TABLE `mgeg_tag`
  ADD CONSTRAINT `FK_MGEG_TAG_FIRST_CUSTOMER_ID_MGEG_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`first_customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGEG_TAG_FIRST_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`first_store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `mgeg_tag_properties`
--
ALTER TABLE `mgeg_tag_properties`
  ADD CONSTRAINT `FK_MGEG_TAG_PROPERTIES_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_TAG_PROPERTIES_TAG_ID_MGEG_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `mgeg_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_tag_relation`
--
ALTER TABLE `mgeg_tag_relation`
  ADD CONSTRAINT `FK_MGEG_TAG_RELATION_CSTR_ID_MGEG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_TAG_RELATION_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_TAG_RELATION_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_TAG_RELATION_TAG_ID_MGEG_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `mgeg_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_tag_summary`
--
ALTER TABLE `mgeg_tag_summary`
  ADD CONSTRAINT `FK_MGEG_TAG_SUMMARY_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_TAG_SUMMARY_TAG_ID_MGEG_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `mgeg_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_tax_calculation`
--
ALTER TABLE `mgeg_tax_calculation`
  ADD CONSTRAINT `FK_51A5384F6ABB5AE915A9D409FECED7FD` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `mgeg_tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ABED37A1CD86146BC6E2259A0579781E` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `mgeg_tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_TAX_CALC_CSTR_TAX_CLASS_ID_MGEG_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `mgeg_tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_TAX_CALC_PRD_TAX_CLASS_ID_MGEG_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `mgeg_tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_tax_calculation_rate_title`
--
ALTER TABLE `mgeg_tax_calculation_rate_title`
  ADD CONSTRAINT `FK_4C66BF66E2C3B7DCC3FA05B5D315FE4B` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `mgeg_tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_TAX_CALC_RATE_TTL_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_tax_order_aggregated_created`
--
ALTER TABLE `mgeg_tax_order_aggregated_created`
  ADD CONSTRAINT `FK_BF0441C05975726F4C6AF0B03A490E39` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_tax_order_aggregated_updated`
--
ALTER TABLE `mgeg_tax_order_aggregated_updated`
  ADD CONSTRAINT `FK_2409281BCB5DE8C7FC01A13F3D46B0B7` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_weee_discount`
--
ALTER TABLE `mgeg_weee_discount`
  ADD CONSTRAINT `FK_4BCE9C2928FB1F9D09EB6C694122DA89` FOREIGN KEY (`customer_group_id`) REFERENCES `mgeg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_WEEE_DISCOUNT_ENTT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_WEEE_DISCOUNT_WEBSITE_ID_MGEG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_weee_tax`
--
ALTER TABLE `mgeg_weee_tax`
  ADD CONSTRAINT `FK_MGEG_WEEE_TAX_ATTRIBUTE_ID_MGEG_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgeg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_WEEE_TAX_COUNTRY_MGEG_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `mgeg_directory_country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_WEEE_TAX_ENTT_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_WEEE_TAX_WEBSITE_ID_MGEG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mgeg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_widget_instance_page`
--
ALTER TABLE `mgeg_widget_instance_page`
  ADD CONSTRAINT `FK_06B5CCFD13C5EF8A7B6DA1BB21FB96AA` FOREIGN KEY (`instance_id`) REFERENCES `mgeg_widget_instance` (`instance_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_widget_instance_page_layout`
--
ALTER TABLE `mgeg_widget_instance_page_layout`
  ADD CONSTRAINT `FK_14B008770F9AE66CD43BFB803F90F118` FOREIGN KEY (`page_id`) REFERENCES `mgeg_widget_instance_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_E54195151AE95D708ADF8C2A7AADDE59` FOREIGN KEY (`layout_update_id`) REFERENCES `mgeg_core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_wishlist`
--
ALTER TABLE `mgeg_wishlist`
  ADD CONSTRAINT `FK_MGEG_WISHLIST_CUSTOMER_ID_MGEG_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgeg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_wishlist_item`
--
ALTER TABLE `mgeg_wishlist_item`
  ADD CONSTRAINT `FK_MGEG_WISHLIST_ITEM_PRD_ID_MGEG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgeg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_WISHLIST_ITEM_STORE_ID_MGEG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgeg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGEG_WISHLIST_ITEM_WISHLIST_ID_MGEG_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `mgeg_wishlist` (`wishlist_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgeg_wishlist_item_option`
--
ALTER TABLE `mgeg_wishlist_item_option`
  ADD CONSTRAINT `FK_FE8D359D8182B3C41C9E6C0382995807` FOREIGN KEY (`wishlist_item_id`) REFERENCES `mgeg_wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
