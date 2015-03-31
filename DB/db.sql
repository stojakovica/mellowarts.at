## Redaxo Database Dump Version 4
## Prefix rex_
## charset utf-8

DROP TABLE IF EXISTS `rex_62_params`;
CREATE TABLE `rex_62_params` (
  `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `prior` int(10) unsigned NOT NULL,
  `attributes` text NOT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  `default` varchar(255) NOT NULL,
  `params` text,
  `validate` text,
  `restrictions` text NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` int(11) NOT NULL,
  PRIMARY KEY (`field_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_62_params` WRITE;
/*!40000 ALTER TABLE `rex_62_params` DISABLE KEYS */;
INSERT INTO `rex_62_params` VALUES 
  (1,'translate:pool_file_description','med_description',1,'',2,'','','','','%USER%',1424611363,'%USER%',1424611363),
  (2,'translate:pool_file_copyright','med_copyright',2,'',1,'','','','','%USER%',1424611363,'%USER%',1424611363),
  (3,'translate:online_from','art_online_from',3,'',10,'','','','','%USER%',1424611363,'%USER%',1424611363),
  (4,'translate:online_to','art_online_to',4,'',10,'','','','','%USER%',1424611363,'%USER%',1424611363),
  (5,'translate:description','art_description',5,'',2,'','','','','%USER%',1424611363,'%USER%',1424611363),
  (6,'translate:keywords','art_keywords',6,'',2,'','','','','%USER%',1424611363,'%USER%',1424611363),
  (7,'translate:metadata_image','art_file',7,'',6,'','','','','%USER%',1424611363,'%USER%',1424611363),
  (8,'translate:teaser','art_teaser',8,'',5,'','','','','%USER%',1424611363,'%USER%',1424611363),
  (9,'translate:header_article_type','art_type_id',9,'size=1',3,'','Standard|Zugriff fuer alle','','','%USER%',1424611363,'%USER%',1424611363),
  (10,'Video','art_video',1,'',6,'','','','','root',1427115490,'root',1427116340),
  (11,'Teaser Bild','art_teaser_image',2,'',6,'','','','','root',1427817785,'root',1427817785);
/*!40000 ALTER TABLE `rex_62_params` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_62_type`;
CREATE TABLE `rex_62_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `dbtype` varchar(255) NOT NULL,
  `dblength` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_62_type` WRITE;
/*!40000 ALTER TABLE `rex_62_type` DISABLE KEYS */;
INSERT INTO `rex_62_type` VALUES 
  (1,'text','text',0),
  (2,'textarea','text',0),
  (3,'select','varchar',255),
  (4,'radio','varchar',255),
  (5,'checkbox','varchar',255),
  (10,'date','text',0),
  (13,'time','text',0),
  (11,'datetime','text',0),
  (12,'legend','text',0),
  (6,'REX_MEDIA_BUTTON','varchar',255),
  (7,'REX_MEDIALIST_BUTTON','text',0),
  (8,'REX_LINK_BUTTON','varchar',255),
  (9,'REX_LINKLIST_BUTTON','text',0);
/*!40000 ALTER TABLE `rex_62_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_679_type_effects`;
CREATE TABLE `rex_679_type_effects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `effect` varchar(255) NOT NULL,
  `parameters` text NOT NULL,
  `prior` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_679_type_effects` WRITE;
/*!40000 ALTER TABLE `rex_679_type_effects` DISABLE KEYS */;
INSERT INTO `rex_679_type_effects` VALUES 
  (1,1,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:3:\"200\";s:24:\"rex_effect_resize_height\";s:3:\"200\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1424611363,'%USER%',1424611363,'%USER%'),
  (2,2,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:3:\"600\";s:24:\"rex_effect_resize_height\";s:3:\"600\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1424611363,'%USER%',1424611363,'%USER%'),
  (3,3,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:2:\"80\";s:24:\"rex_effect_resize_height\";s:2:\"80\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1424611363,'%USER%',1424611363,'%USER%'),
  (4,4,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:3:\"246\";s:24:\"rex_effect_resize_height\";s:3:\"246\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1424611363,'%USER%',1424611363,'%USER%'),
  (5,5,'resize','a:6:{s:15:\"rex_effect_crop\";a:5:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:24:\"rex_effect_crop_position\";s:13:\"middle_center\";}s:22:\"rex_effect_filter_blur\";a:3:{s:29:\"rex_effect_filter_blur_amount\";s:2:\"80\";s:29:\"rex_effect_filter_blur_radius\";s:1:\"8\";s:32:\"rex_effect_filter_blur_threshold\";s:1:\"3\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:5:\"right\";s:28:\"rex_effect_insert_image_vpos\";s:6:\"bottom\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:3:\"246\";s:24:\"rex_effect_resize_height\";s:3:\"246\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}}',1,1424611363,'%USER%',1424611363,'%USER%'),
  (6,6,'resize','a:9:{s:15:\"rex_effect_crop\";a:6:{s:21:\"rex_effect_crop_width\";s:0:\"\";s:22:\"rex_effect_crop_height\";s:0:\"\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:20:\"rex_effect_crop_hpos\";s:6:\"center\";s:20:\"rex_effect_crop_vpos\";s:6:\"middle\";}s:22:\"rex_effect_filter_blur\";a:3:{s:30:\"rex_effect_filter_blur_repeats\";s:2:\"10\";s:27:\"rex_effect_filter_blur_type\";s:8:\"gaussian\";s:31:\"rex_effect_filter_blur_smoothit\";s:0:\"\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:4:\"left\";s:28:\"rex_effect_insert_image_vpos\";s:3:\"top\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_mirror\";a:5:{s:24:\"rex_effect_mirror_height\";s:0:\"\";s:33:\"rex_effect_mirror_set_transparent\";s:7:\"colored\";s:22:\"rex_effect_mirror_bg_r\";s:0:\"\";s:22:\"rex_effect_mirror_bg_g\";s:0:\"\";s:22:\"rex_effect_mirror_bg_b\";s:0:\"\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:3:\"400\";s:24:\"rex_effect_resize_height\";s:3:\"400\";s:23:\"rex_effect_resize_style\";s:7:\"minimum\";s:31:\"rex_effect_resize_allow_enlarge\";s:11:\"not_enlarge\";}s:26:\"rex_effect_rounded_corners\";a:4:{s:34:\"rex_effect_rounded_corners_topleft\";s:0:\"\";s:35:\"rex_effect_rounded_corners_topright\";s:0:\"\";s:37:\"rex_effect_rounded_corners_bottomleft\";s:0:\"\";s:38:\"rex_effect_rounded_corners_bottomright\";s:0:\"\";}s:20:\"rex_effect_workspace\";a:8:{s:26:\"rex_effect_workspace_width\";s:0:\"\";s:27:\"rex_effect_workspace_height\";s:0:\"\";s:25:\"rex_effect_workspace_hpos\";s:4:\"left\";s:25:\"rex_effect_workspace_vpos\";s:3:\"top\";s:36:\"rex_effect_workspace_set_transparent\";s:7:\"colored\";s:25:\"rex_effect_workspace_bg_r\";s:0:\"\";s:25:\"rex_effect_workspace_bg_g\";s:0:\"\";s:25:\"rex_effect_workspace_bg_b\";s:0:\"\";}}',1,1427817910,'root',1427817910,'root'),
  (7,6,'crop','a:9:{s:15:\"rex_effect_crop\";a:6:{s:21:\"rex_effect_crop_width\";s:3:\"400\";s:22:\"rex_effect_crop_height\";s:3:\"400\";s:28:\"rex_effect_crop_offset_width\";s:0:\"\";s:29:\"rex_effect_crop_offset_height\";s:0:\"\";s:20:\"rex_effect_crop_hpos\";s:6:\"center\";s:20:\"rex_effect_crop_vpos\";s:6:\"middle\";}s:22:\"rex_effect_filter_blur\";a:3:{s:30:\"rex_effect_filter_blur_repeats\";s:2:\"10\";s:27:\"rex_effect_filter_blur_type\";s:8:\"gaussian\";s:31:\"rex_effect_filter_blur_smoothit\";s:0:\"\";}s:25:\"rex_effect_filter_sharpen\";a:3:{s:32:\"rex_effect_filter_sharpen_amount\";s:2:\"80\";s:32:\"rex_effect_filter_sharpen_radius\";s:3:\"0.5\";s:35:\"rex_effect_filter_sharpen_threshold\";s:1:\"3\";}s:15:\"rex_effect_flip\";a:1:{s:20:\"rex_effect_flip_flip\";s:1:\"X\";}s:23:\"rex_effect_insert_image\";a:5:{s:34:\"rex_effect_insert_image_brandimage\";s:0:\"\";s:28:\"rex_effect_insert_image_hpos\";s:4:\"left\";s:28:\"rex_effect_insert_image_vpos\";s:3:\"top\";s:33:\"rex_effect_insert_image_padding_x\";s:3:\"-10\";s:33:\"rex_effect_insert_image_padding_y\";s:3:\"-10\";}s:17:\"rex_effect_mirror\";a:5:{s:24:\"rex_effect_mirror_height\";s:0:\"\";s:33:\"rex_effect_mirror_set_transparent\";s:7:\"colored\";s:22:\"rex_effect_mirror_bg_r\";s:0:\"\";s:22:\"rex_effect_mirror_bg_g\";s:0:\"\";s:22:\"rex_effect_mirror_bg_b\";s:0:\"\";}s:17:\"rex_effect_resize\";a:4:{s:23:\"rex_effect_resize_width\";s:0:\"\";s:24:\"rex_effect_resize_height\";s:0:\"\";s:23:\"rex_effect_resize_style\";s:7:\"maximum\";s:31:\"rex_effect_resize_allow_enlarge\";s:7:\"enlarge\";}s:26:\"rex_effect_rounded_corners\";a:4:{s:34:\"rex_effect_rounded_corners_topleft\";s:0:\"\";s:35:\"rex_effect_rounded_corners_topright\";s:0:\"\";s:37:\"rex_effect_rounded_corners_bottomleft\";s:0:\"\";s:38:\"rex_effect_rounded_corners_bottomright\";s:0:\"\";}s:20:\"rex_effect_workspace\";a:8:{s:26:\"rex_effect_workspace_width\";s:0:\"\";s:27:\"rex_effect_workspace_height\";s:0:\"\";s:25:\"rex_effect_workspace_hpos\";s:4:\"left\";s:25:\"rex_effect_workspace_vpos\";s:3:\"top\";s:36:\"rex_effect_workspace_set_transparent\";s:7:\"colored\";s:25:\"rex_effect_workspace_bg_r\";s:0:\"\";s:25:\"rex_effect_workspace_bg_g\";s:0:\"\";s:25:\"rex_effect_workspace_bg_b\";s:0:\"\";}}',2,1427817924,'root',1427817924,'root');
/*!40000 ALTER TABLE `rex_679_type_effects` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_679_types`;
CREATE TABLE `rex_679_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_679_types` WRITE;
/*!40000 ALTER TABLE `rex_679_types` DISABLE KEYS */;
INSERT INTO `rex_679_types` VALUES 
  (1,1,'rex_mediapool_detail','Zur Darstellung von Bildern in der Detailansicht im Medienpool'),
  (2,1,'rex_mediapool_maximized','Zur Darstellung von Bildern im Medienpool wenn maximiert'),
  (3,1,'rex_mediapool_preview','Zur Darstellung der Vorschaubilder im Medienpool'),
  (4,1,'rex_mediabutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIA_BUTTON[]s'),
  (5,1,'rex_medialistbutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIALIST_BUTTON[]s'),
  (6,0,'newsList','');
/*!40000 ALTER TABLE `rex_679_types` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_action`;
CREATE TABLE `rex_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `preview` text,
  `presave` text,
  `postsave` text,
  `previewmode` tinyint(4) DEFAULT NULL,
  `presavemode` tinyint(4) DEFAULT NULL,
  `postsavemode` tinyint(4) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_article`;
CREATE TABLE `rex_article` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `re_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catprior` int(11) NOT NULL,
  `attributes` text NOT NULL,
  `startpage` tinyint(1) NOT NULL,
  `prior` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `clang` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  `art_online_from` text,
  `art_online_to` text,
  `art_description` text,
  `art_keywords` text,
  `art_file` varchar(255) DEFAULT '',
  `art_teaser` varchar(255) DEFAULT '',
  `art_type_id` varchar(255) DEFAULT '',
  `seo_title` text,
  `seo_description` text,
  `seo_keywords` text,
  `seo_custom_url` text,
  `seo_canonical_url` text,
  `seo_noindex` varchar(1) DEFAULT NULL,
  `seo_ignore_prefix` varchar(1) DEFAULT NULL,
  `art_video` varchar(255) DEFAULT '',
  `art_teaser_image` varchar(255) DEFAULT '',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `find_articles` (`id`,`clang`),
  KEY `id` (`id`),
  KEY `clang` (`clang`),
  KEY `re_id` (`re_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_article` WRITE;
/*!40000 ALTER TABLE `rex_article` DISABLE KEYS */;
INSERT INTO `rex_article` VALUES 
  (2,2,0,'Home','Home',1,'',1,1,'|',1,1427113644,1427123249,1,0,'root','root',0,'','','','','','||','Standard','','','','','','','','mam.mp4',''),
  (3,3,0,'News','News',2,'',1,1,'|',1,1427113645,1427113602,1,0,'root','root',0,'','','','','','','','','','','','','','','',''),
  (4,4,0,'Projects','Projects',3,'',1,1,'|',0,1427391285,1427113606,1,0,'root','root',0,'','','','','','','','','','','','','','','',''),
  (5,5,0,'Press','Press',4,'',1,1,'|',0,1427391286,1427113691,1,0,'root','root',0,'','','','','','','','','','','','','','','',''),
  (6,6,0,'Contact','Contact',5,'',1,1,'|',1,1427113648,1427124422,1,0,'root','root',0,'','','','','','','','','','','','','','','',''),
  (7,7,0,'Imprint','',0,'',0,1,'|',1,1427122804,1427123169,1,0,'root','root',0,'','','','','','','','','','','','','','','',''),
  (8,8,3,'Mellow Arts - Opening Event','News',0,'',0,2,'|3|',1,1427816956,1427817817,1,0,'root','root',0,'','','','','','||','Standard','','','','','','','','','img_5008-4.jpg');
/*!40000 ALTER TABLE `rex_article` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_article_slice`;
CREATE TABLE `rex_article_slice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clang` int(11) NOT NULL,
  `ctype` int(11) NOT NULL,
  `re_article_slice_id` int(11) NOT NULL,
  `value1` text,
  `value2` text,
  `value3` text,
  `value4` text,
  `value5` text,
  `value6` text,
  `value7` text,
  `value8` text,
  `value9` text,
  `value10` text,
  `value11` text,
  `value12` text,
  `value13` text,
  `value14` text,
  `value15` text,
  `value16` text,
  `value17` text,
  `value18` text,
  `value19` text,
  `value20` text,
  `file1` varchar(255) DEFAULT NULL,
  `file2` varchar(255) DEFAULT NULL,
  `file3` varchar(255) DEFAULT NULL,
  `file4` varchar(255) DEFAULT NULL,
  `file5` varchar(255) DEFAULT NULL,
  `file6` varchar(255) DEFAULT NULL,
  `file7` varchar(255) DEFAULT NULL,
  `file8` varchar(255) DEFAULT NULL,
  `file9` varchar(255) DEFAULT NULL,
  `file10` varchar(255) DEFAULT NULL,
  `filelist1` text,
  `filelist2` text,
  `filelist3` text,
  `filelist4` text,
  `filelist5` text,
  `filelist6` text,
  `filelist7` text,
  `filelist8` text,
  `filelist9` text,
  `filelist10` text,
  `link1` varchar(10) DEFAULT NULL,
  `link2` varchar(10) DEFAULT NULL,
  `link3` varchar(10) DEFAULT NULL,
  `link4` varchar(10) DEFAULT NULL,
  `link5` varchar(10) DEFAULT NULL,
  `link6` varchar(10) DEFAULT NULL,
  `link7` varchar(10) DEFAULT NULL,
  `link8` varchar(10) DEFAULT NULL,
  `link9` varchar(10) DEFAULT NULL,
  `link10` varchar(10) DEFAULT NULL,
  `linklist1` text,
  `linklist2` text,
  `linklist3` text,
  `linklist4` text,
  `linklist5` text,
  `linklist6` text,
  `linklist7` text,
  `linklist8` text,
  `linklist9` text,
  `linklist10` text,
  `php` text,
  `html` text,
  `article_id` int(11) NOT NULL,
  `modultyp_id` int(11) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `next_article_slice_id` int(11) DEFAULT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`,`re_article_slice_id`,`article_id`,`modultyp_id`),
  KEY `id` (`id`),
  KEY `clang` (`clang`),
  KEY `re_article_slice_id` (`re_article_slice_id`),
  KEY `article_id` (`article_id`),
  KEY `find_slices` (`clang`,`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_article_slice` WRITE;
/*!40000 ALTER TABLE `rex_article_slice` DISABLE KEYS */;
INSERT INTO `rex_article_slice` VALUES 
  (1,0,1,0,'About','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,1,1427117590,1427117590,'root','root',0,0),
  (2,0,1,1,'Situated in Innsbruck...\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\r\n<hr>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,3,1427117673,1427118547,'root','root',0,0),
  (3,0,1,2,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,2,1427117686,1427117686,'root','root',0,0),
  (4,0,1,3,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,2,1427117728,1427117728,'root','root',0,0),
  (5,0,1,4,'','','','','','','','','','','','','','','','','','','','','img_5008-7.jpg','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,4,1427118306,1427118306,'root','root',0,0),
  (6,0,1,13,'News','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,1,1427118598,1427118598,'root','root',0,0),
  (7,0,1,6,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,5,1427118642,1427118642,'root','root',0,0),
  (8,0,1,12,'','','','','','','','','','','','','','','','','','','','','img_5008-4.jpg','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,4,1427119791,1427119791,'root','root',0,0),
  (9,0,1,8,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,2,1427119806,1427119806,'root','root',0,0),
  (11,0,1,7,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,2,1427119826,1427119826,'root','root',0,0),
  (12,0,1,11,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,2,1427119829,1427119829,'root','root',0,0),
  (13,0,1,5,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,2,1427119840,1427119840,'root','root',0,0),
  (14,0,1,9,'Contact','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,1,1427119976,1427119976,'root','root',0,0),
  (15,0,1,18,'<div class=\"gmapsContainer\">\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2706.6637368973434!2d11.430700099999994!3d47.2818275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479d6eb830eae935%3A0xcfc3095736e16d01!2sSchusterbergweg+12%2C+6020+Innsbruck!5e0!3m2!1sde!2sat!4v1427123479936\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\"></iframe>\r\n<div class=\"overlay\"></div>\r\n</div>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',6,6,1427121890,1427124422,'root','root',0,0),
  (16,0,1,0,'Contact','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',6,1,1427121897,1427121897,'root','root',0,0),
  (17,0,1,16,'*Mellow Arts*\r\nSchusterbergweg 12\r\n6020 Innsbruck\r\nAustria\r\n\r\nT: +43 664 123 456 78\r\nE: \"info@mellowarts.at\":mailto:info@mellowarts.at\r\n<hr>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',6,3,1427121996,1427123186,'root','root',0,0),
  (18,0,1,17,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',6,2,1427122014,1427122014,'root','root',0,0),
  (20,0,1,15,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',6,2,1427122102,1427122102,'root','root',0,0),
  (21,0,1,22,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',6,7,1427122106,1427122106,'root','root',0,0),
  (22,0,1,20,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',6,2,1427122356,1427122356,'root','root',0,0),
  (23,0,1,0,'Imprint','h1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',7,1,1427122844,1427122844,'root','root',0,0),
  (24,0,1,23,'h2. *Mellow Arts*\r\n\r\nSchusterbergweg 12\r\n6020 Innsbruck\r\n\r\nh3. Vertreten durch:\r\n\r\nMüller Sebastian\r\nLeidner Simon\r\nStojakovic Aleksandar\r\n\r\nh3. Kontakt:\r\n\r\nTelefon:	+43 664 123 456 78\r\nE-Mail: \"info@mellowarts.at\":mailto:info@mellowarts.at','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',7,3,1427123101,1427123169,'root','root',0,0),
  (25,0,1,14,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',2,7,1427123229,1427123229,'root','root',0,0);
/*!40000 ALTER TABLE `rex_article_slice` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_clang`;
CREATE TABLE `rex_clang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `rex_clang` WRITE;
/*!40000 ALTER TABLE `rex_clang` DISABLE KEYS */;
INSERT INTO `rex_clang` VALUES 
  (0,'deutsch',0);
/*!40000 ALTER TABLE `rex_clang` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_file`;
CREATE TABLE `rex_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `re_file_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `attributes` text,
  `filetype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  `med_description` text,
  `med_copyright` text,
  PRIMARY KEY (`file_id`),
  KEY `re_file_id` (`re_file_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_file` WRITE;
/*!40000 ALTER TABLE `rex_file` DISABLE KEYS */;
INSERT INTO `rex_file` VALUES 
  (1,0,0,'','video/mp4','mam.mp4','mam.mp4','14572742',0,0,'',1427116274,1427116274,'root','root',0,'',''),
  (2,0,0,'','image/jpeg','img_5008-7.jpg','img_5008-7.jpg','350168',1500,1000,'',1427117971,1427117971,'root','root',0,'',''),
  (3,0,0,'','image/jpeg','img_5008-4.jpg','img_5008-4.jpg','1009744',1500,1000,'',1427117990,1427117990,'root','root',0,'','');
/*!40000 ALTER TABLE `rex_file` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_file_category`;
CREATE TABLE `rex_file_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `re_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `re_id` (`re_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_module`;
CREATE TABLE `rex_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `ausgabe` text NOT NULL,
  `eingabe` text NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_module` WRITE;
/*!40000 ALTER TABLE `rex_module` DISABLE KEYS */;
INSERT INTO `rex_module` VALUES 
  (1,'01 - Überschrift',0,'<div class=\"container\">\r\n    <div class=\"page-header text-center\">\r\n        <REX_VALUE[2]>REX_VALUE[1]</REX_VALUE[2]>\r\n    </div>\r\n</div>','<strong>&Uuml;berschrift</strong><br>\r\n<input type=\"text\" size=\"50\" name=\"VALUE[1]\" value=\"REX_VALUE[1]\"/>\r\n<select name=\"VALUE[2]\">\r\n    <?php\r\n    foreach (array(\"h1\", \"h2\", \"h3\", \"h4\", \"h5\", \"h6\") as $value) {\r\n        echo \'<option value=\"\' . $value . \'\" \';\r\n\r\n        if (\"REX_VALUE[2]\" == \"$value\") {\r\n            echo \'selected=\"selected\" \';\r\n        }\r\n        echo \'>\' . $value . \'</option>\';\r\n    }\r\n    ?>\r\n</select>\r\n','root','root',1427117435,1427815438,'',0),
  (2,'02 - Abstand',0,'<div class=\"divider\"></div>','','root','root',1427117540,1427815438,'',0),
  (3,'02 - Text',0,'<div class=\"container\">\r\n    <?php\r\n    $description = convertTextile(\"REX_VALUE[1]\");\r\n    echo $description;\r\n    ?>\r\n</div>','<strong>Fliesstext</strong><br>\r\n<textarea name=\"VALUE[1]\" cols=\"80\" rows=\"10\" class=\"inp100\">REX_HTML_VALUE[1]</textarea>\r\n<?php rex_a79_help_overview(); ?>','root','root',1427117608,1427815438,'',0),
  (4,'03 - Bild Parallax',0,'<?php\r\n$image = \"REX_FILE[1]\";\r\n?>\r\n<section class=\"bg-1\" style=\"background: url(\'<?php echo seo42::getMediaFile($image); ?>\') no-repeat center center fixed;\r\n    -webkit-background-size: cover;\r\n    -moz-background-size: cover;\r\n    -o-background-size: cover;\r\n    background-size: cover;\">\r\n    <div class=\"col-sm-6 col-sm-offset-3 text-center\"></div>\r\n</section>','<strong>Bild</strong><br>\r\nREX_MEDIA_BUTTON[1]\r\n','root','root',1427118193,1427815438,'',0),
  (5,'04 - Newsliste',0,'<?php\r\n$newsCat = OOCategory::getCategoryById(3);\r\n$news = array();\r\n\r\nif(!$REX[\'REDAXO\']) {\r\n    /** @var OOArticle $newsArt */\r\n    foreach($newsCat->getArticles(true) as $newsArt) {\r\n        if($newsArt->isStartArticle()) continue;\r\n        $news[$newsArt->getId()][\'title\'] = $newsArt->getName();\r\n        $news[$newsArt->getId()][\'image\'] = $newsArt->getValue(\'art_teaser_image\');\r\n        $news[$newsArt->getId()][\'link\'] = $newsArt->getUrl();\r\n    }\r\n    ?>\r\n    <div class=\"container\">\r\n        <div class=\"newsList carousel slide\" data-ride=\"carousel\">\r\n            <div class=\"carousel-inner\" role=\"listbox\">\r\n                <?php\r\n                $i = 0;\r\n                foreach($news as $n) { ?>\r\n                    <div class=\"item text-center <?php if($i == 0) echo \'active\'; ?>\">\r\n                        <div class=\"img\">\r\n                            <?php if($n[\'image\']) { ?>\r\n                                <a href=\"<?php echo $n[\'link\']; ?>\">\r\n                                    <img src=\"<?php echo seo42::getImageManagerFile($n[\'image\'], \'newsList\'); ?>\" class=\"img-responsive\" />\r\n                                </a>\r\n                            <?php } ?>\r\n                        </div>\r\n                        <div class=\"title\"><a href=\"<?php echo $n[\'link\']; ?>\"><?php echo $n[\'title\']; ?></a></div>\r\n                    </div>\r\n                    <?php\r\n                    $i++;\r\n                } ?>\r\n            </div>\r\n\r\n            <a class=\"left carousel-control\" role=\"button\" data-slide=\"prev\" onclick=\"$(this).parents(\'.carousel\').carousel(\'prev\')\">\r\n                <span class=\"btn-mellow\" aria-hidden=\"true\"><i class=\"fa fa-chevron-left\"></i></span>\r\n                <span class=\"sr-only\">Previous</span>\r\n            </a>\r\n            <a class=\"right carousel-control\" role=\"button\" data-slide=\"next\" onclick=\"$(this).parents(\'.carousel\').carousel(\'next\')\">\r\n                <span class=\"btn-mellow\" aria-hidden=\"true\"><i class=\"fa fa-chevron-right\"></i></span>\r\n                <span class=\"sr-only\">Next</span>\r\n            </a>\r\n        </div>\r\n    </div>\r\n    <?php\r\n}\r\n?>','','root','root',1427118628,1427819496,'',0),
  (6,'99 - HTML',0,'REX_HTML_VALUE[1]\r\n','<strong>HTML</strong><br>\r\n<textarea name=\"VALUE[1]\" cols=\"80\" rows=\"10\">REX_VALUE[1]</textarea>\r\n','root','root',1427121846,1427815438,'',0),
  (7,'05 - Kontaktformular',0,'<div class=\"container\">\r\n    <div class=\"row form-group\">\r\n        <div class=\"col-sm-offset-1 col-xs-10\">\r\n            <input type=\"text\" class=\"form-control\" id=\"firstName\" name=\"name\" placeholder=\"Your Name\">\r\n        </div>\r\n    </div>\r\n    <div class=\"row form-group\">\r\n        <div class=\"col-sm-offset-1 col-xs-10\">\r\n            <input type=\"text\" class=\"form-control\" name=\"email\" placeholder=\"Email\">\r\n        </div>\r\n    </div>\r\n    <div class=\"row form-group\">\r\n        <div class=\"col-sm-offset-1 col-xs-10\">\r\n            <textarea class=\"form-control\" placeholder=\"Comments\"></textarea>\r\n        </div>\r\n    </div>\r\n    <div class=\"row form-group\">\r\n        <div class=\"col-sm-offset-1 col-xs-10\">\r\n            <button class=\"btn btn-default pull-right\">Contact Us</button>\r\n        </div>\r\n    </div>\r\n</div>','','root','root',1427122057,1427815438,'',0);
/*!40000 ALTER TABLE `rex_module` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_module_action`;
CREATE TABLE `rex_module_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_redirects`;
CREATE TABLE `rex_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_url` varchar(255) NOT NULL,
  `target_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_string_table`;
CREATE TABLE `rex_string_table` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyname` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `value_0` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_template`;
CREATE TABLE `rex_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `active` tinyint(1) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_template` WRITE;
/*!40000 ALTER TABLE `rex_template` DISABLE KEYS */;
INSERT INTO `rex_template` VALUES 
  (1,'','Default','<?php\r\nheader(\'Content-Type: text/html; charset=utf-8\');\r\n$ssa = OOArticle::getSiteStartArticle();\r\n$article = OOArticle::getArticleById($this->getValue(\'article_id\'));\r\n$cssFiles = array();\r\n$cssFiles[] = \"main.less\";\r\n\r\n$isSsa = $article->getId() == $ssa->getId();\r\n\r\n//$headerImages = array_filter(explode(\",\", getHierarchicalVar(\"art_header_images\", $article, $ssa)));\r\n$video = getHierarchicalVar(\"art_video\", $article, $ssa);\r\n\r\n$imprint = OOArticle::getArticleById(7);\r\n?>\r\n<!DOCTYPE html>\r\n<html lang=\"<?php echo seo42::getLangCode(); ?>\" xmlns:fb=\"http://ogp.me/ns/fb#\">\r\n<head>\r\n    <meta charset=\"utf-8\" />\r\n    <base href=\"<?php echo seo42::getBaseUrl(); ?>\" />\r\n    <title><?php echo seo42::getTitle(); ?></title>\r\n    <meta name=\"description\" content=\"<?php echo seo42::getDescription(); ?>\" />\r\n    <meta name=\"keywords\" content=\"<?php echo seo42::getKeywords(); ?>\" />\r\n    <meta name=\"robots\" content=\"<?php echo seo42::getRobotRules();?>\" />\r\n    <link rel=\"shortcut icon\" href=\"<?php echo seo42::getIconFile(\"favicon.ico\"); ?>\" type=\"image/x-icon\" />\r\n    <link rel=\"canonical\" href=\"<?php echo seo42::getCanonicalUrl(); ?>\" />\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <link href=\"lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n    <link href=\"lib/lightbox/css/lightbox.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\r\n    <link href=\'lib/font-awesome/css/font-awesome.min.css\' rel=\'stylesheet\' type=\'text/css\'>\r\n    <link href=\'lib/jquery-focuspoint/css/focuspoint.css\' rel=\'stylesheet\' type=\'text/css\'>\r\n    <link href=\"<?php echo seo42::getCombinedCSSFile(\"project.css\", $cssFiles); ?>\" rel=\"stylesheet\">\r\n    <link href=\"http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic\" rel=\"stylesheet\" type=\"text/css\">\r\n    <link href=\'http://fonts.googleapis.com/css?family=Dancing+Script\' rel=\'stylesheet\' type=\'text/css\'>\r\n    <!--[if lt IE 9]>\r\n    <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\r\n    <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\r\n    <![endif]-->\r\n    <?php echo seo42::getLangTags(); ?>\r\n</head>\r\n\r\n<body>\r\n    <div id=\"wrap\">\r\n        <div class=\"navbar navbar-custom navbar-inverse navbar-static-top\" id=\"nav\">\r\n            <div class=\"container\">\r\n                <div class=\"navbar-header\">\r\n                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n                        <span class=\"icon-bar\"></span>\r\n                        <span class=\"icon-bar\"></span>\r\n                        <span class=\"icon-bar\"></span>\r\n                    </button>\r\n                </div>\r\n                <div class=\"collapse navbar-collapse\">\r\n                    <?php\r\n                    $nav = new nav42();\r\n                    $nav->setLevelDepth(4);\r\n                    $nav->setShowAll(true);\r\n                    $nav->setUlClass(\'nav navbar-nav nav-justified\');\r\n                    echo $nav->getNavigationByLevel(0);\r\n                    ?>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n        <header class=\"masthead\">\r\n            <div class=\"logo\">\r\n                <a href=\"<?php echo $ssa->getUrl(); ?>\">\r\n                    <img src=\"<?php echo seo42::getImageFile(\'logo_invert.png\'); ?>\" />\r\n                </a>\r\n            </div>\r\n\r\n            <?php if($video) { ?>\r\n            <div class=\"videoContainer\">\r\n                <video autoplay muted loop>\r\n                    <source src=\"<?php echo seo42::getMediaFile($video); ?>\" type=\"video/mp4\">\r\n                </video>\r\n            </div>\r\n            <?php } ?>\r\n\r\n            <div class=\"scrollToContent\"><i class=\"fa fa-angle-down\"></i></div>\r\n        </header>\r\n\r\n        <!-- Begin page content -->\r\n        <div class=\"divider\" id=\"section1\"></div>\r\n\r\n        <div class=\"containerContent\">\r\n            <?php echo $this->getArticle(); ?>\r\n        </div>\r\n\r\n        <div class=\"container\">\r\n            <div class=\"col-sm-8 col-sm-offset-2 text-center\">\r\n                <ul class=\"list-inline center-block\">\r\n                    <li><a href=\"https://www.facebook.com/mellowartsinnsbruck\" target=\"_blank\"><img src=\"<?php echo seo42::getIconFile(\'fb.png\'); ?>\"></a></li>\r\n                    <li><a href=\"https://instagram.com/mellow.arts/\" target=\"_blank\"><img src=\"<?php echo seo42::getIconFile(\'in.png\'); ?>\"></a></li>\r\n                </ul>\r\n\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n\r\n    <div id=\"footer\">\r\n        <div class=\"container text-center\">\r\n            <?php echo $imprint->toLink(); ?>\r\n        </div>\r\n    </div>\r\n\r\n    <ul class=\"nav pull-right scroll-top\">\r\n        <li><a href=\"#\" title=\"Scroll to top\"><i class=\"glyphicon glyphicon-chevron-up\"></i></a></li>\r\n    </ul>\r\n\r\n    <script src=\"<?php echo seo42::getJSFile(\'jquery-1.11.1.min.js\'); ?>\"></script>\r\n    <script src=\"lib/bootstrap/js/bootstrap.min.js\"></script>\r\n    <script src=\"lib/jquery-focuspoint/js/jquery.focuspoint.min.js\"></script>\r\n    <script src=\"<?php echo seo42::getJSFile(\'slimbox2.js\'); ?>\"></script>\r\n    <script src=\"<?php echo seo42::getJSFile(\'main.js\'); ?>\"></script>\r\n</body>\r\n</html>',1,'root','root',1424611528,1427815439,'a:3:{s:5:\"ctype\";a:0:{}s:7:\"modules\";a:1:{i:1;a:1:{s:3:\"all\";s:1:\"1\";}}s:10:\"categories\";a:1:{s:3:\"all\";s:1:\"1\";}}',0);
/*!40000 ALTER TABLE `rex_template` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_user`;
CREATE TABLE `rex_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `login` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL,
  `status` varchar(5) NOT NULL,
  `rights` text NOT NULL,
  `login_tries` tinyint(4) DEFAULT '0',
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `updatedate` int(11) NOT NULL,
  `lasttrydate` int(11) DEFAULT '0',
  `session_id` varchar(255) DEFAULT NULL,
  `cookiekey` varchar(255) DEFAULT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_user` WRITE;
/*!40000 ALTER TABLE `rex_user` DISABLE KEYS */;
INSERT INTO `rex_user` VALUES 
  (1,'Administrator','','root','669d9799df668c084559d03a89cf82b202930064','1','#admin[]#accesskeys[]#advancedMode[]#article2category[]#article2startpage[]#be_search[mediapool]#be_search[structure]#copyArticle[]#copyContent[]#moveArticle[]#moveCategory[]#moveSlice[]#publishArticle[]#publishCategory[]#seo42[seo_default]#seo42[seo_extended]#seo42[url_default]#textile[help]#',0,'setup','root',1424611374,1427113596,1427815914,'7kj26hh261giaielkigpeupol6','',0);
/*!40000 ALTER TABLE `rex_user` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_xform_email_template`;
CREATE TABLE `rex_xform_email_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `mail_from` varchar(255) NOT NULL DEFAULT '',
  `mail_from_name` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `body_html` text NOT NULL,
  `attachments` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_xform_field`;
CREATE TABLE `rex_xform_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) NOT NULL,
  `prio` int(11) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `list_hidden` tinyint(1) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `name` text NOT NULL,
  `label` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_xform_relation`;
CREATE TABLE `rex_xform_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_table` varchar(100) NOT NULL,
  `source_name` varchar(100) NOT NULL,
  `source_id` int(11) NOT NULL,
  `target_table` varchar(100) NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_xform_table`;
CREATE TABLE `rex_xform_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `list_amount` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `prio` int(11) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `export` tinyint(1) NOT NULL,
  `import` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
