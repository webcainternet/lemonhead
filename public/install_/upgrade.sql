SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(15, 'slideshow', 1),
(16, 'banners', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=379 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(373, 16, 'index.php?route=product/product&amp;product_id=28', 'data/banner-1.jpg'),
(378, 15, 'index.php?route=product/product&amp;product_id=28', 'data/slide-1.jpg'),
(377, 15, 'index.php?route=product/product&amp;product_id=32', 'data/slide-2.jpg'),
(376, 15, 'index.php?route=product/product&amp;product_id=29', 'data/slide-3.jpg'),
(375, 16, 'index.php?route=product/product&amp;product_id=29', 'data/banner-2.jpg'),
(374, 16, 'index.php?route=product/product&amp;product_id=32', 'data/banner-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(375, 3, 16, 'banner-2', '&lt;h1&gt;gift  &lt;br /&gt;cards&lt;/h1&gt;\r\n&lt;h2&gt;Give The best gift&lt;/h2&gt;\r\n'),
(378, 3, 15, 'slide-1', '&lt;a href=&quot;index.php?route=product/product&amp;product_id=28&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;div class=&quot;left&quot;&gt;\r\n&lt;h1&gt;Pearl Jam&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet.&lt;/h2&gt;\r\n&lt;/div&gt;'),
(378, 2, 15, 'slide-1', '&lt;a href=&quot;index.php?route=product/product&amp;product_id=28&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;div class=&quot;left&quot;&gt;\r\n&lt;h1&gt;Pearl Jam&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet.&lt;/h2&gt;\r\n&lt;/div&gt;'),
(377, 3, 15, 'slide-3', '&lt;a href=&quot;index.php?route=product/product&amp;product_id=32&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;div class=&quot;left&quot;&gt;\r\n&lt;h1&gt;B.B. King&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet.&lt;/h2&gt;\r\n&lt;/div&gt;'),
(378, 1, 15, 'slide-1', '&lt;a href=&quot;index.php?route=product/product&amp;product_id=28&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;div class=&quot;left&quot;&gt;\r\n&lt;h1&gt;Pearl Jam&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet.&lt;/h2&gt;\r\n&lt;/div&gt;\r\n'),
(377, 2, 15, 'slide-3', '&lt;a href=&quot;index.php?route=product/product&amp;product_id=32&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;div class=&quot;left&quot;&gt;\r\n&lt;h1&gt;B.B. King&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet.&lt;/h2&gt;\r\n&lt;/div&gt;'),
(377, 1, 15, 'slide-3', '&lt;a href=&quot;index.php?route=product/product&amp;product_id=32&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;div class=&quot;left&quot;&gt;\r\n&lt;h1&gt;B.B. King&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet.&lt;/h2&gt;\r\n&lt;/div&gt;\r\n\r\n'),
(376, 3, 15, 'slide-2', '&lt;a href=&quot;index.php?route=product/product&amp;product_id=29&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;div class=&quot;left&quot;&gt;\r\n&lt;h1&gt;The Dead Weather&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet.&lt;/h2&gt;\r\n&lt;/div&gt;'),
(376, 1, 15, 'slide-2', '&lt;a href=&quot;index.php?route=product/product&amp;product_id=29&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;div class=&quot;left&quot;&gt;\r\n&lt;h1&gt;The Dead Weather&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet.&lt;/h2&gt;\r\n&lt;/div&gt;\r\n'),
(376, 2, 15, 'slide-2', '&lt;a href=&quot;index.php?route=product/product&amp;product_id=29&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;div class=&quot;left&quot;&gt;\r\n&lt;h1&gt;The Dead Weather&lt;/h1&gt;\r\n&lt;h2&gt;Lorem ipsum dolor sit amet.&lt;/h2&gt;\r\n&lt;/div&gt;'),
(375, 2, 16, 'banner-2', '&lt;h1&gt;gift  &lt;br /&gt;cards&lt;/h1&gt;\r\n&lt;h2&gt;Give The best gift&lt;/h2&gt;\r\n'),
(373, 1, 16, 'banner-3', '&lt;h1&gt;order &lt;br /&gt; online&lt;/h1&gt;\r\n&lt;h2&gt;Hours: 8AM -11PM &lt;/h2&gt;\r\n'),
(375, 1, 16, 'banner-2', '&lt;h1&gt;gift  &lt;br /&gt;cards&lt;/h1&gt;\r\n&lt;h2&gt;Give The best gift&lt;/h2&gt;\r\n'),
(374, 3, 16, 'banner-1', '&lt;h1&gt;free &lt;br /&gt; delivery&lt;/h1&gt;\r\n&lt;h2&gt;on orders over $99&lt;/h2&gt;\r\n'),
(374, 2, 16, 'banner-1', '&lt;h1&gt;free &lt;br /&gt; delivery&lt;/h1&gt;\r\n&lt;h2&gt;on orders over $99&lt;/h2&gt;\r\n'),
(374, 1, 16, 'banner-1', '&lt;h1&gt;free &lt;br /&gt; delivery&lt;/h1&gt;\r\n&lt;h2&gt;on orders over $99&lt;/h2&gt;\r\n'),
(373, 3, 16, 'banner-3', '&lt;h1&gt;order &lt;br /&gt; online&lt;/h1&gt;\r\n&lt;h2&gt;Hours: 8AM -11PM &lt;/h2&gt;\r\n'),
(373, 2, 16, 'banner-3', '&lt;h1&gt;order &lt;br /&gt; online&lt;/h1&gt;\r\n&lt;h2&gt;Hours: 8AM -11PM &lt;/h2&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=497 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(468, 'module', 'latest'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(445, 'module', 'filter'),
(464, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(444, 'module', 'featured'),
(440, 'module', 'banner'),
(467, 'module', 'information'),
(465, 'module', 'affiliate'),
(466, 'module', 'bestseller'),
(493, 'module', 'newcarousel'),
(449, 'module', 'special'),
(481, 'shipping', 'free'),
(494, 'module', 'compare'),
(495, 'module', 'vqmod_manager'),
(496, 'module', 'category');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5556 ;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(5347, 0, 'newcarousel', 'newcarousel_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"15";s:5:"width";s:3:"870";s:6:"height";s:3:"537";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(3047, 0, 'flat', 'flat_sort_order', '1', 0),
(3046, 0, 'flat', 'flat_status', '1', 0),
(3045, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(3044, 0, 'flat', 'flat_tax_class_id', '9', 0),
(3043, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(4584, 0, 'account', 'account_module', 'a:7:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:4:{s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:3;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:4;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:5;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:6;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(5233, 0, 'special', 'special_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"112";s:12:"image_height";s:3:"112";s:9:"layout_id";s:1:"1";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(4693, 0, 'compare', 'compare_module', 'a:2:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(4353, 0, 'affiliate', 'affiliate_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(4134, 0, 'filter', 'filter_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(3579, 0, 'information', 'information_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(5551, 0, 'config', 'config_error_log', '1', 0),
(5552, 0, 'config', 'config_error_filename', 'error.txt', 0),
(5553, 0, 'config', 'config_google_analytics', '', 0),
(5546, 0, 'config', 'config_maintenance', '0', 0),
(5547, 0, 'config', 'config_password', '1', 0),
(5548, 0, 'config', 'config_encryption', '8edc8a07990f1bfe6e9226d8455a30d2', 0),
(5549, 0, 'config', 'config_compression', '0', 0),
(5550, 0, 'config', 'config_error_display', '1', 0),
(5543, 0, 'config', 'config_seo_url', '0', 0),
(5544, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(5545, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(2056, 0, 'newslideshow', 'slideshow_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"14";s:5:"width";s:4:"1000";s:6:"height";s:3:"400";s:9:"layout_id";s:1:"6";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(5542, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwget\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(5541, 0, 'config', 'config_shared', '0', 0),
(5540, 0, 'config', 'config_secure', '0', 0),
(5539, 0, 'config', 'config_fraud_status_id', '7', 0),
(5538, 0, 'config', 'config_fraud_score', '', 0),
(3051, 0, 'free', 'free_sort_order', '2', 0),
(3050, 0, 'free', 'free_status', '0', 0),
(3049, 0, 'free', 'free_geo_zone_id', '0', 0),
(3048, 0, 'free', 'free_total', '', 0),
(5554, 0, 'bestseller', 'bestseller_module', 'a:4:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"112";s:12:"image_height";s:3:"112";s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:1;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"112";s:12:"image_height";s:3:"112";s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:2;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"112";s:12:"image_height";s:3:"112";s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:3;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"112";s:12:"image_height";s:3:"112";s:9:"layout_id";s:1:"8";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(5537, 0, 'config', 'config_fraud_key', '', 0),
(5555, 0, 'latest', 'latest_module', 'a:4:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"112";s:12:"image_height";s:3:"112";s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:1;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"112";s:12:"image_height";s:3:"112";s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:2;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"112";s:12:"image_height";s:3:"112";s:9:"layout_id";s:1:"9";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:3;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"112";s:12:"image_height";s:3:"112";s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(5239, 0, 'featured', 'product', '', 0),
(5240, 0, 'featured', 'featured_product', '34,46,49,42,45,31,36,35,48', 0),
(5241, 0, 'featured', 'featured_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"6";s:11:"image_width";s:3:"112";s:12:"image_height";s:3:"112";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(5536, 0, 'config', 'config_fraud_detection', '0', 0),
(5534, 0, 'config', 'config_account_mail', '0', 0),
(5535, 0, 'config', 'config_alert_emails', '', 0),
(5532, 0, 'config', 'config_smtp_timeout', '5', 0),
(5533, 0, 'config', 'config_alert_mail', '0', 0),
(5529, 0, 'config', 'config_smtp_username', '', 0),
(5530, 0, 'config', 'config_smtp_password', '', 0),
(5531, 0, 'config', 'config_smtp_port', '25', 0),
(5528, 0, 'config', 'config_smtp_host', '', 0),
(5527, 0, 'config', 'config_mail_parameter', '', 0),
(5526, 0, 'config', 'config_mail_protocol', 'mail', 0),
(5525, 0, 'config', 'config_ftp_status', '0', 0),
(5523, 0, 'config', 'config_ftp_password', '', 0),
(5524, 0, 'config', 'config_ftp_root', '', 0),
(5522, 0, 'config', 'config_ftp_username', '', 0),
(5521, 0, 'config', 'config_ftp_port', '21', 0),
(5518, 0, 'config', 'config_image_cart_width', '47', 0),
(5520, 0, 'config', 'config_ftp_host', '192.168.9.2', 0),
(5519, 0, 'config', 'config_image_cart_height', '47', 0),
(5517, 0, 'config', 'config_image_wishlist_height', '47', 0),
(5516, 0, 'config', 'config_image_wishlist_width', '47', 0),
(5515, 0, 'config', 'config_image_compare_height', '90', 0),
(5514, 0, 'config', 'config_image_compare_width', '90', 0),
(5513, 0, 'config', 'config_image_related_height', '170', 0),
(5512, 0, 'config', 'config_image_related_width', '170', 0),
(5511, 0, 'config', 'config_image_additional_height', '70', 0),
(5509, 0, 'config', 'config_image_product_height', '180', 0),
(5510, 0, 'config', 'config_image_additional_width', '70', 0),
(5508, 0, 'config', 'config_image_product_width', '180', 0),
(5507, 0, 'config', 'config_image_popup_height', '600', 0),
(5506, 0, 'config', 'config_image_popup_width', '600', 0),
(5505, 0, 'config', 'config_image_thumb_height', '270', 0),
(5242, 0, 'banner', 'banner_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"16";s:5:"width";s:3:"270";s:6:"height";s:3:"302";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(5243, 0, 'category', 'category_module', 'a:11:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:3;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:4;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:5;a:4:{s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:6;a:4:{s:9:"layout_id";s:1:"1";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:7;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:8;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:9;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:10;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(5504, 0, 'config', 'config_image_thumb_width', '270', 0),
(5503, 0, 'config', 'config_image_category_height', '190', 0),
(5502, 0, 'config', 'config_image_category_width', '190', 0),
(5501, 0, 'config', 'config_icon', 'data/favicon.png', 0),
(5500, 0, 'config', 'config_logo', 'data/logo.png', 0),
(5499, 0, 'config', 'config_return_status_id', '2', 0),
(5498, 0, 'config', 'config_return_id', '0', 0),
(5497, 0, 'config', 'config_commission', '5', 0),
(5496, 0, 'config', 'config_affiliate_id', '4', 0),
(5495, 0, 'config', 'config_stock_status_id', '5', 0),
(5494, 0, 'config', 'config_stock_checkout', '0', 0),
(5493, 0, 'config', 'config_stock_warning', '0', 0),
(5492, 0, 'config', 'config_stock_display', '0', 0),
(5491, 0, 'config', 'config_complete_status_id', '5', 0),
(5490, 0, 'config', 'config_order_status_id', '1', 0),
(5489, 0, 'config', 'config_invoice_prefix', 'INV-2012-00', 0),
(5488, 0, 'config', 'config_order_edit', '100', 0),
(5487, 0, 'config', 'config_checkout_id', '5', 0),
(5486, 0, 'config', 'config_guest_checkout', '1', 0),
(5484, 0, 'config', 'config_account_id', '3', 0),
(5485, 0, 'config', 'config_cart_weight', '1', 0),
(5483, 0, 'config', 'config_customer_price', '0', 0),
(5482, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(5481, 0, 'config', 'config_customer_group_id', '1', 0),
(5480, 0, 'config', 'config_customer_online', '0', 0),
(5479, 0, 'config', 'config_tax_customer', 'shipping', 0),
(5477, 0, 'config', 'config_vat', '0', 0),
(5478, 0, 'config', 'config_tax_default', 'shipping', 0),
(5476, 0, 'config', 'config_tax', '1', 0),
(5474, 0, 'config', 'config_voucher_min', '1', 0),
(5475, 0, 'config', 'config_voucher_max', '1000', 0),
(5473, 0, 'config', 'config_download', '1', 0),
(5472, 0, 'config', 'config_review_status', '1', 0),
(5471, 0, 'config', 'config_product_count', '0', 0),
(5470, 0, 'config', 'config_admin_limit', '20', 0),
(5469, 0, 'config', 'config_catalog_limit', '6', 0),
(5468, 0, 'config', 'config_weight_class_id', '1', 0),
(5467, 0, 'config', 'config_length_class_id', '1', 0),
(5466, 0, 'config', 'config_currency_auto', '1', 0),
(5465, 0, 'config', 'config_currency', 'USD', 0),
(5464, 0, 'config', 'config_admin_language', 'en', 0),
(5463, 0, 'config', 'config_language', 'en', 0),
(5460, 0, 'config', 'config_layout_id', '4', 0),
(5462, 0, 'config', 'config_zone_id', '3563', 0),
(5461, 0, 'config', 'config_country_id', '222', 0),
(5459, 0, 'config', 'config_template', 'theme431', 0),
(5458, 0, 'config', 'config_meta_description', 'Music online store', 0),
(5457, 0, 'config', 'config_title', 'Music online store', 0),
(5456, 0, 'config', 'config_fax', '1-800-234-5678', 0),
(5454, 0, 'config', 'config_email', 'admin@admin.com', 0),
(5455, 0, 'config', 'config_telephone', '1-800-234-5677', 0),
(5453, 0, 'config', 'config_address', '8901 Marmora Road, Glasgow, D04 89GR', 0),
(5452, 0, 'config', 'config_owner', 'Music online store', 0),
(5451, 0, 'config', 'config_name', 'Music online store', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
