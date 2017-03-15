-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: eptnew
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.19-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `lab` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `contacted_on` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `iso2` varchar(2) COLLATE utf8_bin NOT NULL,
  `iso3` varchar(3) COLLATE utf8_bin NOT NULL,
  `numeric_code` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','AF','AFG',4),(2,'Aland Islands','AX','ALA',248),(3,'Albania','AL','ALB',8),(4,'Algeria','DZ','DZA',12),(5,'American Samoa','AS','ASM',16),(6,'Andorra','AD','AND',20),(7,'Angola','AO','AGO',24),(8,'Anguilla','AI','AIA',660),(9,'Antarctica','AQ','ATA',10),(10,'Antigua and Barbuda','AG','ATG',28),(11,'Argentina','AR','ARG',32),(12,'Armenia','AM','ARM',51),(13,'Aruba','AW','ABW',533),(14,'Australia','AU','AUS',36),(15,'Austria','AT','AUT',40),(16,'Azerbaijan','AZ','AZE',31),(17,'Bahamas','BS','BHS',44),(18,'Bahrain','BH','BHR',48),(19,'Bangladesh','BD','BGD',50),(20,'Barbados','BB','BRB',52),(21,'Belarus','BY','BLR',112),(22,'Belgium','BE','BEL',56),(23,'Belize','BZ','BLZ',84),(24,'Benin','BJ','BEN',204),(25,'Bermuda','BM','BMU',60),(26,'Bhutan','BT','BTN',64),(27,'Bolivia, Plurinational State of','BO','BOL',68),(28,'Bonaire, Sint Eustatius and Saba','BQ','BES',535),(29,'Bosnia and Herzegovina','BA','BIH',70),(30,'Botswana','BW','BWA',72),(31,'Bouvet Island','BV','BVT',74),(32,'Brazil','BR','BRA',76),(33,'British Indian Ocean Territory','IO','IOT',86),(34,'Brunei Darussalam','BN','BRN',96),(35,'Bulgaria','BG','BGR',100),(36,'Burkina Faso','BF','BFA',854),(37,'Burundi','BI','BDI',108),(38,'Cambodia','KH','KHM',116),(39,'Cameroon','CM','CMR',120),(40,'Canada','CA','CAN',124),(41,'Cape Verde','CV','CPV',132),(42,'Cayman Islands','KY','CYM',136),(43,'Central African Republic','CF','CAF',140),(44,'Chad','TD','TCD',148),(45,'Chile','CL','CHL',152),(46,'China','CN','CHN',156),(47,'Christmas Island','CX','CXR',162),(48,'Cocos (Keeling) Islands','CC','CCK',166),(49,'Colombia','CO','COL',170),(50,'Comoros','KM','COM',174),(51,'Congo','CG','COG',178),(52,'Congo, the Democratic Republic of the','CD','COD',180),(53,'Cook Islands','CK','COK',184),(54,'Costa Rica','CR','CRI',188),(55,'Cote d\'Ivoire','CI','CIV',384),(56,'Croatia','HR','HRV',191),(57,'Cuba','CU','CUB',192),(58,'Cura','CW','CUW',531),(59,'Cyprus','CY','CYP',196),(60,'Czech Republic','CZ','CZE',203),(61,'Denmark','DK','DNK',208),(62,'Djibouti','DJ','DJI',262),(63,'Dominica','DM','DMA',212),(64,'Dominican Republic','DO','DOM',214),(65,'Ecuador','EC','ECU',218),(66,'Egypt','EG','EGY',818),(67,'El Salvador','SV','SLV',222),(68,'Equatorial Guinea','GQ','GNQ',226),(69,'Eritrea','ER','ERI',232),(70,'Estonia','EE','EST',233),(71,'Ethiopia','ET','ETH',231),(72,'Falkland Islands (Malvinas)','FK','FLK',238),(73,'Faroe Islands','FO','FRO',234),(74,'Fiji','FJ','FJI',242),(75,'Finland','FI','FIN',246),(76,'France','FR','FRA',250),(77,'French Guiana','GF','GUF',254),(78,'French Polynesia','PF','PYF',258),(79,'French Southern Territories','TF','ATF',260),(80,'Gabon','GA','GAB',266),(81,'Gambia','GM','GMB',270),(82,'Georgia','GE','GEO',268),(83,'Germany','DE','DEU',276),(84,'Ghana','GH','GHA',288),(85,'Gibraltar','GI','GIB',292),(86,'Greece','GR','GRC',300),(87,'Greenland','GL','GRL',304),(88,'Grenada','GD','GRD',308),(89,'Guadeloupe','GP','GLP',312),(90,'Guam','GU','GUM',316),(91,'Guatemala','GT','GTM',320),(92,'Guernsey','GG','GGY',831),(93,'Guinea','GN','GIN',324),(94,'Guinea-Bissau','GW','GNB',624),(95,'Guyana','GY','GUY',328),(96,'Haiti','HT','HTI',332),(97,'Heard Island and McDonald Islands','HM','HMD',334),(98,'Holy See (Vatican City State)','VA','VAT',336),(99,'Honduras','HN','HND',340),(100,'Hong Kong','HK','HKG',344),(101,'Hungary','HU','HUN',348),(102,'Iceland','IS','ISL',352),(103,'India','IN','IND',356),(104,'Indonesia','ID','IDN',360),(105,'Iran, Islamic Republic of','IR','IRN',364),(106,'Iraq','IQ','IRQ',368),(107,'Ireland','IE','IRL',372),(108,'Isle of Man','IM','IMN',833),(109,'Israel','IL','ISR',376),(110,'Italy','IT','ITA',380),(111,'Jamaica','JM','JAM',388),(112,'Japan','JP','JPN',392),(113,'Jersey','JE','JEY',832),(114,'Jordan','JO','JOR',400),(115,'Kazakhstan','KZ','KAZ',398),(116,'Kenya','KE','KEN',404),(117,'Kiribati','KI','KIR',296),(118,'Korea, Democratic People\'s Republic of','KP','PRK',408),(119,'Korea, Republic of','KR','KOR',410),(120,'Kuwait','KW','KWT',414),(121,'Kyrgyzstan','KG','KGZ',417),(122,'Lao People\'s Democratic Republic','LA','LAO',418),(123,'Latvia','LV','LVA',428),(124,'Lebanon','LB','LBN',422),(125,'Lesotho','LS','LSO',426),(126,'Liberia','LR','LBR',430),(127,'Libya','LY','LBY',434),(128,'Liechtenstein','LI','LIE',438),(129,'Lithuania','LT','LTU',440),(130,'Luxembourg','LU','LUX',442),(131,'Macao','MO','MAC',446),(132,'Macedonia, the former Yugoslav Republic of','MK','MKD',807),(133,'Madagascar','MG','MDG',450),(134,'Malawi','MW','MWI',454),(135,'Malaysia','MY','MYS',458),(136,'Maldives','MV','MDV',462),(137,'Mali','ML','MLI',466),(138,'Malta','MT','MLT',470),(139,'Marshall Islands','MH','MHL',584),(140,'Martinique','MQ','MTQ',474),(141,'Mauritania','MR','MRT',478),(142,'Mauritius','MU','MUS',480),(143,'Mayotte','YT','MYT',175),(144,'Mexico','MX','MEX',484),(145,'Micronesia, Federated States of','FM','FSM',583),(146,'Moldova, Republic of','MD','MDA',498),(147,'Monaco','MC','MCO',492),(148,'Mongolia','MN','MNG',496),(149,'Montenegro','ME','MNE',499),(150,'Montserrat','MS','MSR',500),(151,'Morocco','MA','MAR',504),(152,'Mozambique','MZ','MOZ',508),(153,'Myanmar','MM','MMR',104),(154,'Namibia','NA','NAM',516),(155,'Nauru','NR','NRU',520),(156,'Nepal','NP','NPL',524),(157,'Netherlands','NL','NLD',528),(158,'New Caledonia','NC','NCL',540),(159,'New Zealand','NZ','NZL',554),(160,'Nicaragua','NI','NIC',558),(161,'Niger','NE','NER',562),(162,'Nigeria','NG','NGA',566),(163,'Niue','NU','NIU',570),(164,'Norfolk Island','NF','NFK',574),(165,'Northern Mariana Islands','MP','MNP',580),(166,'Norway','NO','NOR',578),(167,'Oman','OM','OMN',512),(168,'Pakistan','PK','PAK',586),(169,'Palau','PW','PLW',585),(170,'Palestine, State of','PS','PSE',275),(171,'Panama','PA','PAN',591),(172,'Papua New Guinea','PG','PNG',598),(173,'Paraguay','PY','PRY',600),(174,'Peru','PE','PER',604),(175,'Philippines','PH','PHL',608),(176,'Pitcairn','PN','PCN',612),(177,'Poland','PL','POL',616),(178,'Portugal','PT','PRT',620),(179,'Puerto Rico','PR','PRI',630),(180,'Qatar','QA','QAT',634),(181,'Reunion','RE','REU',638),(182,'Romania','RO','ROU',642),(183,'Russian Federation','RU','RUS',643),(184,'Rwanda','RW','RWA',646),(185,'Saint Barthelemy','BL','BLM',652),(186,'Saint Helena, Ascension and Tristan da Cunha','SH','SHN',654),(187,'Saint Kitts and Nevis','KN','KNA',659),(188,'Saint Lucia','LC','LCA',662),(189,'Saint Martin (French part)','MF','MAF',663),(190,'Saint Pierre and Miquelon','PM','SPM',666),(191,'Saint Vincent and the Grenadines','VC','VCT',670),(192,'Samoa','WS','WSM',882),(193,'San Marino','SM','SMR',674),(194,'Sao Tome and Principe','ST','STP',678),(195,'Saudi Arabia','SA','SAU',682),(196,'Senegal','SN','SEN',686),(197,'Serbia','RS','SRB',688),(198,'Seychelles','SC','SYC',690),(199,'Sierra Leone','SL','SLE',694),(200,'Singapore','SG','SGP',702),(201,'Sint Maarten (Dutch part)','SX','SXM',534),(202,'Slovakia','SK','SVK',703),(203,'Slovenia','SI','SVN',705),(204,'Solomon Islands','SB','SLB',90),(205,'Somalia','SO','SOM',706),(206,'South Africa','ZA','ZAF',710),(207,'South Georgia and the South Sandwich Islands','GS','SGS',239),(208,'South Sudan','SS','SSD',728),(209,'Spain','ES','ESP',724),(210,'Sri Lanka','LK','LKA',144),(211,'Sudan','SD','SDN',729),(212,'Suriname','SR','SUR',740),(213,'Svalbard and Jan Mayen','SJ','SJM',744),(214,'Swaziland','SZ','SWZ',748),(215,'Sweden','SE','SWE',752),(216,'Switzerland','CH','CHE',756),(217,'Syrian Arab Republic','SY','SYR',760),(218,'Taiwan, Province of China','TW','TWN',158),(219,'Tajikistan','TJ','TJK',762),(220,'Tanzania, United Republic of','TZ','TZA',834),(221,'Thailand','TH','THA',764),(222,'Timor-Leste','TL','TLS',626),(223,'Togo','TG','TGO',768),(224,'Tokelau','TK','TKL',772),(225,'Tonga','TO','TON',776),(226,'Trinidad and Tobago','TT','TTO',780),(227,'Tunisia','TN','TUN',788),(228,'Turkey','TR','TUR',792),(229,'Turkmenistan','TM','TKM',795),(230,'Turks and Caicos Islands','TC','TCA',796),(231,'Tuvalu','TV','TUV',798),(232,'Uganda','UG','UGA',800),(233,'Ukraine','UA','UKR',804),(234,'United Arab Emirates','AE','ARE',784),(235,'United Kingdom','GB','GBR',826),(236,'United States','US','USA',840),(237,'United States Minor Outlying Islands','UM','UMI',581),(238,'Uruguay','UY','URY',858),(239,'Uzbekistan','UZ','UZB',860),(240,'Vanuatu','VU','VUT',548),(241,'Venezuela, Bolivarian Republic of','VE','VEN',862),(242,'Viet Nam','VN','VNM',704),(243,'Virgin Islands, British','VG','VGB',92),(244,'Virgin Islands, U.S.','VI','VIR',850),(245,'Wallis and Futuna','WF','WLF',876),(246,'Western Sahara','EH','ESH',732),(247,'Yemen','YE','YEM',887),(248,'Zambia','ZM','ZMB',894),(249,'Zimbabwe','ZW','ZWE',716);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_manager`
--

DROP TABLE IF EXISTS `data_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_manager` (
  `dm_id` int(11) NOT NULL AUTO_INCREMENT,
  `primary_email` varchar(255) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `institute` varchar(500) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `secondary_email` varchar(45) DEFAULT NULL,
  `UserFld1` varchar(45) DEFAULT NULL,
  `UserFld2` varchar(45) DEFAULT NULL,
  `UserFld3` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `force_password_reset` int(1) NOT NULL DEFAULT '0',
  `qc_access` varchar(100) DEFAULT NULL,
  `enable_adding_test_response_date` varchar(45) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inactive',
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dm_id`),
  UNIQUE KEY `primary_email` (`primary_email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='A PT user Table for Data entry or report printing';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_manager`
--

LOCK TABLES `data_manager` WRITE;
/*!40000 ALTER TABLE `data_manager` DISABLE KEYS */;
INSERT INTO `data_manager` VALUES (1,'test@yahoo.com','w@r10r@90',NULL,'osoro','michael','0711560619','osoromichael@gmail.com',NULL,NULL,NULL,'0711560619',0,NULL,NULL,'active','2017-01-24 15:07:15','1','2017-02-07 10:24:19','1'),(2,'moh@test.com','moh@test.com1','MOH','moraa','omollo','0711560619','moh@gmail.com',NULL,NULL,NULL,'0711560619',1,'yes','yes','active','2017-02-03 12:52:07','1',NULL,NULL),(3,'test2@yahoo.com','w@r10r@90','KNH','john','mhindi','','osor90michael@gmail.com',NULL,NULL,NULL,'0711560619',0,'yes','yes','active','2017-01-24 15:07:15','1',NULL,NULL),(4,'moh2@test.com','moh@test.com1','MOH','gideon','mwalimu','0711560619','moh1@gmail.com',NULL,NULL,NULL,'0711560619',1,'yes','yes','active','2017-02-03 12:52:07','1',NULL,NULL);
/*!40000 ALTER TABLE `data_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributions`
--

DROP TABLE IF EXISTS `distributions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distributions` (
  `distribution_id` int(11) NOT NULL AUTO_INCREMENT,
  `distribution_code` varchar(255) NOT NULL,
  `distribution_date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`distribution_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributions`
--

LOCK TABLES `distributions` WRITE;
/*!40000 ALTER TABLE `distributions` DISABLE KEYS */;
INSERT INTO `distributions` VALUES (1,'R-0001','2017-01-11','shipped','2017-01-24 15:55:59','1',NULL,NULL),(2,'R-0002','2017-01-19','shipped','2017-01-24 16:02:22','1',NULL,NULL),(3,'Q12017','2017-02-08','shipped','2017-02-01 14:39:30','1',NULL,NULL),(4,'0008','2017-02-20','pending','2017-02-20 11:36:45','1',NULL,NULL);
/*!40000 ALTER TABLE `distributions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dts_recommended_testkits`
--

DROP TABLE IF EXISTS `dts_recommended_testkits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dts_recommended_testkits` (
  `test_no` int(11) NOT NULL,
  `testkit` varchar(255) NOT NULL,
  PRIMARY KEY (`test_no`,`testkit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dts_recommended_testkits`
--

LOCK TABLES `dts_recommended_testkits` WRITE;
/*!40000 ALTER TABLE `dts_recommended_testkits` DISABLE KEYS */;
INSERT INTO `dts_recommended_testkits` VALUES (1,'tk50f41f66a23df'),(2,'tk50f41f66a238f'),(3,'tk50f41f66a239e');
/*!40000 ALTER TABLE `dts_recommended_testkits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dts_shipment_corrective_action_map`
--

DROP TABLE IF EXISTS `dts_shipment_corrective_action_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dts_shipment_corrective_action_map` (
  `shipment_map_id` int(11) NOT NULL,
  `corrective_action_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dts_shipment_corrective_action_map`
--

LOCK TABLES `dts_shipment_corrective_action_map` WRITE;
/*!40000 ALTER TABLE `dts_shipment_corrective_action_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `dts_shipment_corrective_action_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollments` (
  `scheme_id` varchar(255) NOT NULL,
  `participant_id` int(11) NOT NULL,
  `enrolled_on` date DEFAULT NULL,
  `enrollment_ended_on` date DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`scheme_id`,`participant_id`),
  KEY `participant_id` (`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES ('dts',1,'2017-02-01',NULL,'enrolled');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_config`
--

DROP TABLE IF EXISTS `global_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `global_config` (
  `name` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_config`
--

LOCK TABLES `global_config` WRITE;
/*!40000 ALTER TABLE `global_config` DISABLE KEYS */;
INSERT INTO `global_config` VALUES ('admin_email','adhikariamitabh@gmail.com'),('custom_field_1',''),('custom_field_2',''),('custom_field_needed','no'),('pass_percentage','95'),('qc_access','yes'),('response_after_evaluate','yes');
/*!40000 ALTER TABLE `global_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_template`
--

DROP TABLE IF EXISTS `mail_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_template` (
  `mail_temp_id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_purpose` varchar(255) NOT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `mail_from` varchar(255) DEFAULT NULL,
  `mail_cc` varchar(255) DEFAULT NULL,
  `mail_bcc` varchar(255) DEFAULT NULL,
  `mail_subject` varchar(255) DEFAULT NULL,
  `mail_content` text,
  `mail_footer` text,
  PRIMARY KEY (`mail_temp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_template`
--

LOCK TABLES `mail_template` WRITE;
/*!40000 ALTER TABLE `mail_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant` (
  `participant_id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_identifier` varchar(255) NOT NULL,
  `individual` varchar(255) DEFAULT NULL,
  `lab_name` varchar(255) DEFAULT NULL,
  `institute_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` int(11) NOT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(1000) DEFAULT NULL,
  `funding_source` varchar(255) DEFAULT NULL,
  `testing_volume` varchar(255) DEFAULT NULL,
  `enrolled_programs` varchar(255) DEFAULT NULL,
  `site_type` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `affiliation` varchar(45) DEFAULT NULL,
  `network_tier` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inactive',
  PRIMARY KEY (`participant_id`),
  UNIQUE KEY `unique_identifier` (`unique_identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` VALUES (1,'0002','no',NULL,'KNH','BACTERIAL','175','NAIROBI','',116,'','','','175 nairobi','','',NULL,'2','NAIROBI','LAB-0001','','0711560619','0711560619','','osoromichael@gmail.com','Hospital',1,'2017-01-24 15:05:24','eptmanager@gmail.com','2017-02-07 10:46:44','1','active'),(2,'0003','no',NULL,'KISUMU','BACTERIAL','859','KISUM','',254,'','','','582 KISUMU','','',NULL,'2','KISUMU','LAB-0002','','0721671211','0721671211','','osoromichael@gmail.com','Hospital',1,'2017-01-24 15:05:24','eptmanager@gmail.com','2017-02-07 10:46:44','1','active');
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant_enrolled_programs_map`
--

DROP TABLE IF EXISTS `participant_enrolled_programs_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant_enrolled_programs_map` (
  `participant_id` int(11) NOT NULL,
  `ep_id` int(11) NOT NULL,
  PRIMARY KEY (`participant_id`,`ep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant_enrolled_programs_map`
--

LOCK TABLES `participant_enrolled_programs_map` WRITE;
/*!40000 ALTER TABLE `participant_enrolled_programs_map` DISABLE KEYS */;
INSERT INTO `participant_enrolled_programs_map` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `participant_enrolled_programs_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant_manager_map`
--

DROP TABLE IF EXISTS `participant_manager_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant_manager_map` (
  `participant_id` int(11) NOT NULL,
  `dm_id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT '1',
  PRIMARY KEY (`participant_id`,`dm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant_manager_map`
--

LOCK TABLES `participant_manager_map` WRITE;
/*!40000 ALTER TABLE `participant_manager_map` DISABLE KEYS */;
INSERT INTO `participant_manager_map` VALUES (1,1,'1'),(1,2,'1');
/*!40000 ALTER TABLE `participant_manager_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_control`
--

DROP TABLE IF EXISTS `r_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_control` (
  `control_id` int(11) NOT NULL AUTO_INCREMENT,
  `control_name` varchar(255) DEFAULT NULL,
  `for_scheme` varchar(255) DEFAULT NULL,
  `is_active` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`control_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_control`
--

LOCK TABLES `r_control` WRITE;
/*!40000 ALTER TABLE `r_control` DISABLE KEYS */;
INSERT INTO `r_control` VALUES (1,'Kit Negative Control','eid','active'),(2,'Kit Positive Control','eid','active'),(3,'PT Provider Negative Control','eid','active'),(4,'PT Provider Positive Control','eid','active'),(5,'In-House Negative Control','eid','active'),(6,'In-House Positive Control	','eid','active'),(7,'Negative Control','vl','active'),(8,'Low Positive Control','vl','active'),(9,'High Positive Control','vl','active');
/*!40000 ALTER TABLE `r_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_dbs_eia`
--

DROP TABLE IF EXISTS `r_dbs_eia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_dbs_eia` (
  `eia_id` int(11) NOT NULL AUTO_INCREMENT,
  `eia_name` varchar(500) NOT NULL,
  PRIMARY KEY (`eia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_dbs_eia`
--

LOCK TABLES `r_dbs_eia` WRITE;
/*!40000 ALTER TABLE `r_dbs_eia` DISABLE KEYS */;
INSERT INTO `r_dbs_eia` VALUES (1,'EIA-01 BioRad Genetic Systems HIV 1/2 plus O'),(2,'EIA-02 bioMerieux Vironostika Uniform II plus O (3rd gen)'),(3,'EIA-03 bioMerieux Vironostika HIV Ag/Ab (4th gen)'),(4,'EIA-04 Murex HIV 1.2.0 (3rd gen)');
/*!40000 ALTER TABLE `r_dbs_eia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_dbs_wb`
--

DROP TABLE IF EXISTS `r_dbs_wb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_dbs_wb` (
  `wb_id` int(11) NOT NULL AUTO_INCREMENT,
  `wb_name` varchar(500) NOT NULL,
  PRIMARY KEY (`wb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_dbs_wb`
--

LOCK TABLES `r_dbs_wb` WRITE;
/*!40000 ALTER TABLE `r_dbs_wb` DISABLE KEYS */;
INSERT INTO `r_dbs_wb` VALUES (1,'WB-01 BioRad GS HIV- 1 Western Blot'),(2,'WB-02 Cambridge Biotech HIV-1 Western Blot'),(3,'WB-03 BioRad LAV Blot I '),(4,'WB-04 Genelab Diagnostics HIV Blot kit');
/*!40000 ALTER TABLE `r_dbs_wb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_dts_corrective_actions`
--

DROP TABLE IF EXISTS `r_dts_corrective_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_dts_corrective_actions` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `corrective_action` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_dts_corrective_actions`
--

LOCK TABLES `r_dts_corrective_actions` WRITE;
/*!40000 ALTER TABLE `r_dts_corrective_actions` DISABLE KEYS */;
INSERT INTO `r_dts_corrective_actions` VALUES (1,'Please submit response before last date','Late response, response not evaluated. Your response received after last date. Expected result for PT panel will be available for your reference. '),(2,'Review and refer to SOP for testing. Sample should be tested per National HIV Testing algorithm. ','For sample (1/2/3?) National HIV Testing algorithm was not followed.'),(3,'Review all testing procedures prior to performing client testing as reported result does not match expected result.','Sample (1/2/3?) reported result does not match with expected result.'),(4,'You are required to test all samples in PT panel','Sample (1/2/3) was not reported '),(5,'Ensure expired test kit are not be used for testing. If test kits are not available, please contact your superior.','Test kit XYZ expired M days before the test date DD-MON-YYY.'),(6,'Ensure expiry date information is submitted for all performed tests.','Result not evaluated Ð test kit expiry date (first/second/third) is not reported with PT response.'),(7,'Ensure test kit name is reported for all performed tests.','Result not evaluated Ð name of test kit not reported.'),(8,'Please use the approved test kits according to the SOP/National HIV Testing algorithm for confirmatory and tie-breaker.','Testkit XYZ repeated for all 3 test kits'),(9,'Please use the approved test kits according to the SOP/National HIV Testing algorithm for confirmatory and tie-breaker.','Test kit repeated for confirmatory or tiebreaker test (T1/T2/T3).'),(10,'Ensure test kit lot number is reported for all performed tests. ','Result not evaluated Ð Test Kit lot number (first/second/third) is not reported.'),(11,'Ensure to provide supervisor approval along with his name.','Missing supervisor approval for reported result.'),(12,'Ensure to provide sample rehydration date','Re-hydration date missing in PT report form.'),(13,'Ensure to provide to provide panel testing date.','Testing date missing in PT report form.'),(14,'DTS Testing should be done within specified hours of rehydration as per SOP.','Testing is not performed within X to Y hours of rehydration.'),(15,'Review all testing procedures prior to performing client testing and contact your supervisor for improvement.','Participant did not meet the score criteria (Participant Score is 80 and Required Score is 95)'),(16,'Ensure to provide to provide panel receipt date. ','Panel receipt date missing in PT report form.'),(17,'Please test DTS sample as per National HIV Testing algorithm. Review and refer to SOP for testing.','For Test (1/2/3) testing is not performed with country approved test kit.');
/*!40000 ALTER TABLE `r_dts_corrective_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_eid_detection_assay`
--

DROP TABLE IF EXISTS `r_eid_detection_assay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_eid_detection_assay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_eid_detection_assay`
--

LOCK TABLES `r_eid_detection_assay` WRITE;
/*!40000 ALTER TABLE `r_eid_detection_assay` DISABLE KEYS */;
INSERT INTO `r_eid_detection_assay` VALUES (1,'COBAS Ampliprep/Taqman HIV-1 Qual Test'),(2,'Roche - Amplicor HIV-1 Monitor Test'),(3,'QIAamp Viral Mini Kit (DNA or RNA)'),(4,'Biocentric - Generic'),(5,'Chelex'),(6,'In House');
/*!40000 ALTER TABLE `r_eid_detection_assay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_eid_extraction_assay`
--

DROP TABLE IF EXISTS `r_eid_extraction_assay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_eid_extraction_assay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_eid_extraction_assay`
--

LOCK TABLES `r_eid_extraction_assay` WRITE;
/*!40000 ALTER TABLE `r_eid_extraction_assay` DISABLE KEYS */;
INSERT INTO `r_eid_extraction_assay` VALUES (1,'COBAS Ampliprep/Taqman HIV-1 Qual Test'),(2,'Roche - Amplicor HIV-1 Monitor Test'),(3,'QIAamp Viral Mini Kit (DNA or RNA)'),(4,'Biocentric - Generic'),(5,'Chelex'),(6,'In House');
/*!40000 ALTER TABLE `r_eid_extraction_assay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_enrolled_programs`
--

DROP TABLE IF EXISTS `r_enrolled_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_enrolled_programs` (
  `r_epid` int(11) NOT NULL AUTO_INCREMENT,
  `enrolled_programs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_epid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_enrolled_programs`
--

LOCK TABLES `r_enrolled_programs` WRITE;
/*!40000 ALTER TABLE `r_enrolled_programs` DISABLE KEYS */;
INSERT INTO `r_enrolled_programs` VALUES (1,'PEPFAR RTQI Program'),(2,'PEPFAR');
/*!40000 ALTER TABLE `r_enrolled_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_evaluation_comments`
--

DROP TABLE IF EXISTS `r_evaluation_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_evaluation_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_evaluation_comments`
--

LOCK TABLES `r_evaluation_comments` WRITE;
/*!40000 ALTER TABLE `r_evaluation_comments` DISABLE KEYS */;
INSERT INTO `r_evaluation_comments` VALUES (1,'dts','Mandatory Samples not reported'),(2,'dts','Minimum score not reached'),(3,'eid','Controls were not reported'),(4,'eid','Unsatisfactory score'),(5,'vl','There were not enough responses for the VL Assay chosen'),(6,'vl','Some mandatory samples were not reported'),(7,'dbs','Some Mandatory samples were not reported'),(8,'','Did not meet the minimum score required');
/*!40000 ALTER TABLE `r_evaluation_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_modes_of_receipt`
--

DROP TABLE IF EXISTS `r_modes_of_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_modes_of_receipt` (
  `mode_id` int(11) NOT NULL AUTO_INCREMENT,
  `mode_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_modes_of_receipt`
--

LOCK TABLES `r_modes_of_receipt` WRITE;
/*!40000 ALTER TABLE `r_modes_of_receipt` DISABLE KEYS */;
INSERT INTO `r_modes_of_receipt` VALUES (1,'Courier'),(2,'Email'),(3,'Scan'),(4,'SMS'),(5,'Online Response');
/*!40000 ALTER TABLE `r_modes_of_receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_network_tiers`
--

DROP TABLE IF EXISTS `r_network_tiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_network_tiers` (
  `network_id` int(11) NOT NULL AUTO_INCREMENT,
  `network_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`network_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_network_tiers`
--

LOCK TABLES `r_network_tiers` WRITE;
/*!40000 ALTER TABLE `r_network_tiers` DISABLE KEYS */;
INSERT INTO `r_network_tiers` VALUES (1,'Primary care laboratory service tier'),(2,'Secondary and tertiary laboratory service tiers'),(3,'Public Health Reference Laboratories');
/*!40000 ALTER TABLE `r_network_tiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_participant_affiliates`
--

DROP TABLE IF EXISTS `r_participant_affiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_participant_affiliates` (
  `aff_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate` varchar(255) NOT NULL,
  PRIMARY KEY (`aff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_participant_affiliates`
--

LOCK TABLES `r_participant_affiliates` WRITE;
/*!40000 ALTER TABLE `r_participant_affiliates` DISABLE KEYS */;
INSERT INTO `r_participant_affiliates` VALUES (1,'PMTCT'),(2,'VCT'),(3,'Mobile VCT'),(4,'Hospital');
/*!40000 ALTER TABLE `r_participant_affiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_possibleresult`
--

DROP TABLE IF EXISTS `r_possibleresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_possibleresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme_id` varchar(45) NOT NULL,
  `scheme_sub_group` varchar(45) DEFAULT NULL,
  `response` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_possibleresult`
--

LOCK TABLES `r_possibleresult` WRITE;
/*!40000 ALTER TABLE `r_possibleresult` DISABLE KEYS */;
INSERT INTO `r_possibleresult` VALUES (1,'dts','DTS_TEST','REACTIVE'),(2,'dts','DTS_TEST','NONREACTIVE'),(3,'dts','DTS_TEST','INVALID'),(4,'dts','DTS_FINAL','POSITIVE'),(5,'dts','DTS_FINAL','NEGATIVE'),(6,'dts','DTS_FINAL','INDETERMINATE'),(7,'eid','EID_FINAL','Positive (HIV Detected)'),(8,'eid','EID_FINAL','Negative (HIV Not Detected)'),(9,'eid','EID_FINAL','Equivocal'),(10,'dbs','DBS_FINAL','P'),(11,'dbs','DBS_FINAL','N'),(12,'dts','DTS_FINAL','Not Tested'),(13,'dts','DTS_FINAL','NOT TESTED');
/*!40000 ALTER TABLE `r_possibleresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_results`
--

DROP TABLE IF EXISTS `r_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_results` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `result_name` varchar(255) NOT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_results`
--

LOCK TABLES `r_results` WRITE;
/*!40000 ALTER TABLE `r_results` DISABLE KEYS */;
INSERT INTO `r_results` VALUES (1,'Pass'),(2,'Fail'),(3,'Excluded');
/*!40000 ALTER TABLE `r_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_site_type`
--

DROP TABLE IF EXISTS `r_site_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_site_type` (
  `r_stid` int(11) NOT NULL AUTO_INCREMENT,
  `site_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_stid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_site_type`
--

LOCK TABLES `r_site_type` WRITE;
/*!40000 ALTER TABLE `r_site_type` DISABLE KEYS */;
INSERT INTO `r_site_type` VALUES (1,'VCT'),(2,'Mobile VCT'),(3,'TB Center'),(4,'Antenatal Clinic (PMTCT)'),(5,'Outpatient Clinic'),(6,'Hospital'),(7,'Laboratory'),(8,'District'),(9,'Province'),(10,'Region'),(11,'Department'),(12,'Other');
/*!40000 ALTER TABLE `r_site_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_testkitname_dts`
--

DROP TABLE IF EXISTS `r_testkitname_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_testkitname_dts` (
  `TestKitName_ID` varchar(50) NOT NULL,
  `scheme_type` varchar(255) NOT NULL,
  `TestKit_Name` varchar(100) DEFAULT NULL,
  `TestKit_Name_Short` varchar(50) DEFAULT NULL,
  `TestKit_Comments` varchar(50) DEFAULT NULL,
  `Updated_On` datetime DEFAULT NULL,
  `Updated_By` int(11) DEFAULT NULL,
  `Installation_id` varchar(50) DEFAULT NULL,
  `TestKit_Manufacturer` varchar(50) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `Created_By` int(11) DEFAULT NULL,
  `Approval` int(1) DEFAULT '1' COMMENT '1 = Approved , 0 not approved.',
  `TestKit_ApprovalAgency` varchar(20) DEFAULT NULL COMMENT 'USAID, FDA, LOCAL',
  `source_reference` varchar(50) DEFAULT NULL,
  `CountryAdapted` int(11) DEFAULT NULL COMMENT '0= Not allowed in the country 1 = approved in country ',
  `testkit_1` int(11) NOT NULL DEFAULT '0',
  `testkit_2` int(11) NOT NULL DEFAULT '0',
  `testkit_3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TestKitName_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_testkitname_dts`
--

LOCK TABLES `r_testkitname_dts` WRITE;
/*!40000 ALTER TABLE `r_testkitname_dts` DISABLE KEYS */;
INSERT INTO `r_testkitname_dts` VALUES ('tk245A0egsg03q6','','Advanced Quality',NULL,NULL,NULL,NULL,NULL,NULL,'2015-09-08 07:58:54',NULL,0,NULL,NULL,NULL,0,0,0),('tk50f41f66a2388','dts','ACON HIV 1/2/0 Tri-line','ACON HIV 1/2/0 Tri',NULL,'2013-01-14 10:09:21',0,'0',' Alere','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a238f','dts','Alere Determine HIV-1/2','Alere Determine HIV-1/2',NULL,'2013-01-14 10:09:21',0,'0',' Alere/Abbott Laboratories','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,1,1),('tk50f41f66a2399','dts','Aware HIV-1/2 BSP','Aware HIV-1/2 BSP',NULL,'2013-01-14 10:09:21',0,'0',' Calypte Biomedical ','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a239e','dts','Bionor HIV-1&2','Bionor HIV-1&2',NULL,'2013-01-14 10:09:21',0,'0',' Bionor A/S ','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23a7','dts','Calypte Aware HIV-1/2 OMT ','Calypte Aware HIV-',NULL,'2013-01-14 10:09:21',0,'0',' Calypte Biomedical Corp.','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23b1','dts','Care Start HIV 1-2-O','Care Start HIV 1-2',NULL,'2013-01-14 10:09:21',0,'0',' Access Bio, Inc.','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23b5','dts','ClearviewÃ‚Â® COMPLETE HIV1/2 (formerly SURE) CHECKÃ‚Â® HIV1/2)','ClearviewÃ‚Â® COMPLETE HIV1/2 Non - US Labeling',NULL,'2013-01-14 10:09:21',0,'0',' Alere','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23ba','dts','ClearviewÃ‚Â® COMPLETE HIV1/2 - US labeling** (formerly SURE CHECKÃ‚Â® HIV1/2)','ClearviewÃ‚Â® COMPLETE HIV1/2 - US labeling ',NULL,'2013-01-14 10:09:21',0,'0',' Alere','2012-06-06 11:53:26',0,1,'FDA','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23bf','dts','Clearview  HIV 1/2 STAT-PAK Assay','Clearview  HIV 1/2',NULL,'2013-01-14 10:09:21',0,'0',' Alere','2012-06-06 11:53:26',0,1,'FDA','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23c4','dts','Combaids RS Advantage','Combaids RS Advant',NULL,'2013-01-14 10:09:21',0,'0',' Span Diagnostics Ltd.','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23c8','dts','DPP HIV 1/2 Screen ','DPP HIV 1/2 Screen',NULL,'2013-01-14 10:09:21',0,'0',' Chembio Diagnostic Systems, Inc','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23cd','dts','DPP HIV 1 / 2 Screen Assay  Oral Fluid, Whole Blood,Serum & Plasma','DPP HIV 1 / 2 Scre',NULL,'2013-01-14 10:09:21',0,'0',' Chembio Diagnostic Systems, Inc','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23d1','dts','Double Check HIV 1&2','Double Check HIV 1',NULL,'2013-01-14 10:09:21',0,'0',' Alere/ Orgenics, Ltd','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23d6','dts','Double Check Gold HIV1&2','Double Check Gold ',NULL,'2013-01-14 10:09:21',0,'0',' Alere/ Orgenics, Ltd','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23db','dts','EZ-TRUST Rapid Anti-HIV (1&2) Test','EZ-TRUST Rapid Ant',NULL,'2013-01-14 10:09:21',0,'0',' CS Innovation','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23df','dts','First Response HIV 1-2.0','First Response HIV',NULL,'2013-01-14 10:09:21',0,'0',' Premier Medical Corporation','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,1,1),('tk50f41f66a23e3','dts','Genie Fast HIV 1/2 ','Genie Fast HIV 1/2',NULL,'2013-01-14 10:09:21',0,'0',' Bio-Rad Laboratories','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23e8','dts','HIV 1/2 Gold Rapid Screen Test ','HIV 1/2 Gold Rapid',NULL,'2013-01-14 10:09:21',0,'0',' Medinostics IntÃ¢â‚¬â„¢l','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23ed','dts','HIV 1/2 Rapid Test Kit','HIV 1/2 Rapid Test',NULL,'2013-01-14 10:09:21',0,'0',' Medinostics IntÃ¢â‚¬â„¢l','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23f1','dts','HIV 1/ 2 STAT-PAK Assay','HIV 1/ 2 STAT-PAK ',NULL,'2013-01-14 10:09:21',0,'0',' Chembio Diagnostic Systems, Inc','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23f6','dts','HIV 1/2 STAT-PAK Dipstick Assay','HIV 1/2 STAT-PAK D',NULL,'2013-01-14 10:09:21',0,'0',' Chembio Diagnostic Systems, Inc','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23fa','dts','HIV(1+2) Rapid Test Strip','HIV(1+2) Rapid Tes',NULL,'2013-01-14 10:09:21',0,'0',' Shanghai Kehua Bio-engineering Co., Ltd (KHB)','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23ff','dts','HIVSav 1&2 Rapid SeroTest','HIVSav 1&2 Rapid S',NULL,'2013-01-14 10:09:21',0,'0',' Savyvon Diagnostics Ltd.','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2404','dts','iCARE Rapid Anti-HIV (1&2) ','iCARE Rapid Anti-H',NULL,'2013-01-14 10:09:21',0,'0',' JAL Innovation','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2408','dts','ImmunoComb HIV 1&2','ImmunoComb HIV 1&2',NULL,'2013-01-14 10:09:21',0,'0',' Alere/ Orgenics, Ltd','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a240d','dts','InstantCHEK HIV1+2','InstantCHEK HIV1+2',NULL,'2013-01-14 10:09:21',0,'0',' EY Laboratories','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2411','dts','KSII  HIV 1/2 Rapid Diagnostic Test Kit ','KSII  HIV 1/2 Rapi',NULL,'2013-01-14 10:09:21',0,'0',' K. Shorehill Int\'l, Inc.','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2415','dts','MPI Diagnostics Anti-HIV (1&2) Test ','MPI Diagnostics An',NULL,'2013-01-14 10:09:21',0,'0',' MPI Diagnostics','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a241a','dts','INSTI HIV Antibody','INSTI HIV Antibody',NULL,'2013-01-14 10:09:21',0,'0',' Biolytical Laboratories','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a241f','dts','Multispot HIV-1/HIV-2','Multispot HIV-1/HI',NULL,'2013-01-14 10:09:21',0,'0',' Bio-Rad laboratories','2012-06-06 11:53:26',0,1,'FDA','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2423','dts','OraQuick ADVANCE Rapid HIV-1/2','OraQuick ADVANCE R',NULL,'2013-01-14 10:09:21',0,'0',' OraSure Technologies','2012-06-06 11:53:26',0,1,'FDA','USAID Approval List March 30, 2012',1,1,1,1),('tk50f41f66a2428','dts','OraQuick HIV-1/2 Rapid Antibody Test','OraQuick HIV-1/2 R',NULL,'2013-01-14 10:09:21',0,'0',' OraSure Technologies','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,1,1),('tk50f41f66a242c','dts','RAPID 1-2-3 HEMA Dipstick','RAPID 1-2-3 HEMA D',NULL,'2013-01-14 10:09:21',0,'0',' Hema Diagnostics Systems','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2430','dts','RAPID 1-2-3 HEMA EZ ','RAPID 1-2-3 HEMA E',NULL,'2013-01-14 10:09:21',0,'0',' Hema Diagnostics Systems','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2435','dts','RAPID 1-2-3 HEMA EXPRESS','RAPID 1-2-3 HEMA E',NULL,'2013-01-14 10:09:21',0,'0',' Hema Diagnostics Systems','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2439','dts','Reveal Rapid HIV Test','Reveal Rapid HIV T',NULL,'2013-01-14 10:09:21',0,'0',' MedMira','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a243e','dts','Reveal G3 Rapid HIV-1 Antibody Test','Reveal G3 Rapid HI',NULL,'2013-01-14 10:09:21',0,'0',' MedMira','2012-06-06 11:53:26',0,1,'FDA','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2443','dts','Signal HIV Rapid Test','Signal HIV Rapid T',NULL,'2013-01-14 10:09:21',0,'0',' Span Diagnostics Ltd.','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2447','dts','Uni-Gold HIV - USAID','Uni-Gold HIV -USAID',NULL,'2013-01-14 10:09:21',0,'0',' Trinity Biotech','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a244b','dts','Uni-Gold Recombigen HIV - FDA','Uni-Gold Recombige - FDA',NULL,'2013-01-14 10:09:21',0,'0',' Trinity Biotech','2012-06-06 11:53:26',0,1,'FDA','USAID Approval List March 30, 2012',1,1,0,1),('tk5136b425387a4','dts','First Own Test Kit','MyKitname','Comments',NULL,NULL,'LOG4fabc8babf6eb','Oh','2013-03-06 04:12:37',0,1,'WHO and National','Yes',1,1,0,1),('tk5137b608ac1d9','dts','Hexagon HIVI II','Hexagon','rwer',NULL,NULL,'LOG4fabc8babf6eb','rewr','2013-03-06 22:32:56',0,0,'NA','Yes',1,1,0,1),('tk51435b69f3b7e','dts','gdfg','gfdg','gfdg',NULL,NULL,'5132ceba8fafa','gfdg','2013-03-15 18:33:29',0,1,'NA','NA',1,1,0,1),('tk514b50a81832c','dts','Test Kit New ','New ','dasd',NULL,NULL,'5132ceba8fafa','dsad','2013-03-21 19:25:44',0,1,'Other','Yes',1,1,0,1),('tkHhd7y1xOFIOzl','','bioline',NULL,NULL,NULL,NULL,NULL,NULL,'2015-09-08 07:58:52',NULL,0,NULL,NULL,NULL,0,0,0),('tkHmogbQfQTpk6c','','Abon',NULL,NULL,NULL,NULL,NULL,NULL,'2015-09-08 07:53:23',NULL,0,NULL,NULL,NULL,0,0,0),('tkjbtACskirhDkM','','Advance Quality',NULL,NULL,NULL,NULL,NULL,NULL,'2015-09-08 07:53:23',NULL,0,NULL,NULL,NULL,0,0,0),('tkuEhwZIYiS7A1B','','Determine',NULL,NULL,NULL,NULL,NULL,NULL,'2015-09-08 07:55:27',NULL,0,NULL,NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `r_testkitname_dts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_vl_assay`
--

DROP TABLE IF EXISTS `r_vl_assay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_vl_assay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_vl_assay`
--

LOCK TABLES `r_vl_assay` WRITE;
/*!40000 ALTER TABLE `r_vl_assay` DISABLE KEYS */;
INSERT INTO `r_vl_assay` VALUES (1,'Abbott - RealTime ','Abbott'),(2,'Roche - COBAS Ampliprep/TaqMan','Cobas'),(3,'Biocentric - Generic HIV Charge Virale','Biocentric'),(4,'Biomerieux - NucliSENS','Biomerieux'),(5,'Roche - Amplicor','Amplicor'),(6,'Other','Other');
/*!40000 ALTER TABLE `r_vl_assay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_dbs_eia`
--

DROP TABLE IF EXISTS `reference_dbs_eia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_dbs_eia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `eia` int(11) NOT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `od` varchar(255) DEFAULT NULL,
  `cutoff` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_dbs_eia`
--

LOCK TABLES `reference_dbs_eia` WRITE;
/*!40000 ALTER TABLE `reference_dbs_eia` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_dbs_eia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_dbs_wb`
--

DROP TABLE IF EXISTS `reference_dbs_wb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_dbs_wb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `wb` int(11) NOT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `160` int(11) DEFAULT NULL,
  `120` int(11) DEFAULT NULL,
  `66` int(11) DEFAULT NULL,
  `55` int(11) DEFAULT NULL,
  `51` int(11) DEFAULT NULL,
  `41` int(11) DEFAULT NULL,
  `31` int(11) DEFAULT NULL,
  `24` int(11) DEFAULT NULL,
  `17` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_dbs_wb`
--

LOCK TABLES `reference_dbs_wb` WRITE;
/*!40000 ALTER TABLE `reference_dbs_wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_dbs_wb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_dts_eia`
--

DROP TABLE IF EXISTS `reference_dts_eia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_dts_eia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `eia` int(11) NOT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `od` varchar(255) DEFAULT NULL,
  `cutoff` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_dts_eia`
--

LOCK TABLES `reference_dts_eia` WRITE;
/*!40000 ALTER TABLE `reference_dts_eia` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_dts_eia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_dts_rapid_hiv`
--

DROP TABLE IF EXISTS `reference_dts_rapid_hiv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_dts_rapid_hiv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` varchar(255) NOT NULL,
  `sample_id` varchar(255) NOT NULL,
  `testkit` varchar(255) NOT NULL,
  `lot_no` varchar(255) NOT NULL,
  `expiry_date` date NOT NULL,
  `result` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_dts_rapid_hiv`
--

LOCK TABLES `reference_dts_rapid_hiv` WRITE;
/*!40000 ALTER TABLE `reference_dts_rapid_hiv` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_dts_rapid_hiv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_dts_wb`
--

DROP TABLE IF EXISTS `reference_dts_wb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_dts_wb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `wb` int(11) NOT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `160` int(11) DEFAULT NULL,
  `120` int(11) DEFAULT NULL,
  `66` int(11) DEFAULT NULL,
  `55` int(11) DEFAULT NULL,
  `51` int(11) DEFAULT NULL,
  `41` int(11) DEFAULT NULL,
  `31` int(11) DEFAULT NULL,
  `24` int(11) DEFAULT NULL,
  `17` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_dts_wb`
--

LOCK TABLES `reference_dts_wb` WRITE;
/*!40000 ALTER TABLE `reference_dts_wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_dts_wb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_result_dbs`
--

DROP TABLE IF EXISTS `reference_result_dbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_result_dbs` (
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `sample_label` varchar(45) DEFAULT NULL,
  `reference_result` varchar(45) DEFAULT NULL,
  `control` int(11) DEFAULT NULL,
  `mandatory` int(11) NOT NULL DEFAULT '0',
  `sample_score` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`shipment_id`,`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Referance Result for DBS Shipment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_result_dbs`
--

LOCK TABLES `reference_result_dbs` WRITE;
/*!40000 ALTER TABLE `reference_result_dbs` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_result_dbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_result_dts`
--

DROP TABLE IF EXISTS `reference_result_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_result_dts` (
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `sample_label` varchar(45) DEFAULT NULL,
  `reference_result` varchar(45) DEFAULT NULL,
  `control` int(11) DEFAULT NULL,
  `mandatory` int(11) NOT NULL DEFAULT '0',
  `sample_score` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`shipment_id`,`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Referance Result for DTS Shipment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_result_dts`
--

LOCK TABLES `reference_result_dts` WRITE;
/*!40000 ALTER TABLE `reference_result_dts` DISABLE KEYS */;
INSERT INTO `reference_result_dts` VALUES (1,1,'hiv dried blood','4',0,1,0),(1,2,'hiv vl','4',0,1,0),(1,3,'hiv','4',0,1,0),(2,1,'HIVDTS','6',1,1,0),(3,1,'sample','4',0,1,1),(4,1,'HIV 002','4',1,1,0);
/*!40000 ALTER TABLE `reference_result_dts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_result_eid`
--

DROP TABLE IF EXISTS `reference_result_eid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_result_eid` (
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `sample_label` varchar(255) DEFAULT NULL,
  `reference_result` varchar(255) DEFAULT NULL,
  `control` int(11) DEFAULT NULL,
  `reference_hiv_ct_od` varchar(45) DEFAULT NULL,
  `reference_ic_qs` varchar(45) DEFAULT NULL,
  `mandatory` int(11) NOT NULL DEFAULT '0',
  `sample_score` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`shipment_id`,`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_result_eid`
--

LOCK TABLES `reference_result_eid` WRITE;
/*!40000 ALTER TABLE `reference_result_eid` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_result_eid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_result_vl`
--

DROP TABLE IF EXISTS `reference_result_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_result_vl` (
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `sample_label` varchar(255) DEFAULT NULL,
  `reference_result` varchar(45) DEFAULT NULL,
  `control` int(11) DEFAULT NULL,
  `mandatory` int(11) NOT NULL DEFAULT '0',
  `sample_score` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`shipment_id`,`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_result_vl`
--

LOCK TABLES `reference_result_vl` WRITE;
/*!40000 ALTER TABLE `reference_result_vl` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_result_vl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_vl_calculation`
--

DROP TABLE IF EXISTS `reference_vl_calculation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_vl_calculation` (
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `vl_assay` int(11) NOT NULL,
  `q1` double(10,2) NOT NULL,
  `q3` double(10,2) NOT NULL,
  `iqr` double(10,2) NOT NULL,
  `quartile_low` double(10,2) NOT NULL,
  `quartile_high` double(10,2) NOT NULL,
  `mean` double(10,2) NOT NULL,
  `sd` double(10,2) NOT NULL,
  `cv` double(10,2) NOT NULL,
  `low_limit` double(10,2) NOT NULL,
  `high_limit` double(10,2) NOT NULL,
  `calculated_on` datetime DEFAULT NULL,
  `manual_low_limit` double(10,2) NOT NULL DEFAULT '0.00',
  `manual_high_limit` double(10,2) NOT NULL DEFAULT '0.00',
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `use_range` varchar(255) NOT NULL DEFAULT 'calculated',
  PRIMARY KEY (`shipment_id`,`sample_id`,`vl_assay`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_vl_calculation`
--

LOCK TABLES `reference_vl_calculation` WRITE;
/*!40000 ALTER TABLE `reference_vl_calculation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_vl_calculation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_vl_methods`
--

DROP TABLE IF EXISTS `reference_vl_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_vl_methods` (
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `assay` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`shipment_id`,`sample_id`,`assay`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_vl_methods`
--

LOCK TABLES `reference_vl_methods` WRITE;
/*!40000 ALTER TABLE `reference_vl_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_vl_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_analytes`
--

DROP TABLE IF EXISTS `rep_analytes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_analytes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AnalyteDescription` varchar(128) NOT NULL,
  `ProgramID` int(11) DEFAULT NULL,
  `ProviderID` int(11) DEFAULT NULL,
  `LabID` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_analytes`
--

LOCK TABLES `rep_analytes` WRITE;
/*!40000 ALTER TABLE `rep_analytes` DISABLE KEYS */;
INSERT INTO `rep_analytes` VALUES (1,'Malaria Parasite Detection and Identification',1,1,NULL,'2016-11-29 14:58:18',NULL);
/*!40000 ALTER TABLE `rep_analytes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_counties`
--

DROP TABLE IF EXISTS `rep_counties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_counties` (
  `CountyID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(20) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`CountyID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_counties`
--

LOCK TABLES `rep_counties` WRITE;
/*!40000 ALTER TABLE `rep_counties` DISABLE KEYS */;
INSERT INTO `rep_counties` VALUES (1,'BARINGO','1','2016-11-23 16:16:00'),(2,'BOMET','1','2016-11-24 16:16:00'),(3,'BUNGOMA','1','2016-11-25 16:16:00'),(4,'BUSIA','1','2016-11-26 16:16:00'),(5,'ELGEYO MARAKWET','1','2016-11-27 16:16:00'),(6,'EMBU','1','2016-11-28 16:16:00'),(7,'GARISSA','1','2016-11-29 16:16:00'),(8,'HOMA BAY','1','2016-11-30 16:16:00'),(9,'ISIOLO','1','2016-12-01 16:16:00'),(10,'KAJIADO','1','2016-12-02 16:16:00'),(11,'KAKAMEGA','1','2016-12-03 16:16:00'),(12,'KERICHO','1','2016-12-04 16:16:00'),(13,'KIAMBU','1','2016-12-05 16:16:00'),(14,'KILIFI','1','2016-12-06 16:16:00'),(15,'KIRINYAGA','1','2016-12-07 16:16:00'),(16,'KISII','1','2016-12-08 16:16:00'),(17,'KISUMU','1','2016-12-09 16:16:00'),(18,'KITUI','1','2016-12-10 16:16:00'),(19,'KWALE','1','2016-12-11 16:16:00'),(20,'LAIKIPIA','1','2016-12-12 16:16:00'),(21,'LAMU','1','2016-12-13 16:16:00'),(22,'MACHAKOS','1','2016-12-14 16:16:00'),(23,'MAKUENI','1','2016-12-15 16:16:00'),(24,'MANDERA','1','2016-12-16 16:16:00'),(25,'MARSABIT','1','2016-12-17 16:16:00'),(26,'MERU','1','2016-12-18 16:16:00'),(27,'MIGORI','1','2016-12-19 16:16:00'),(28,'MOMBASA','1','2016-12-20 16:16:00'),(29,'MURANG`A','1','2016-12-21 16:16:00'),(30,'NAIROBI','1','2016-12-22 16:16:00'),(31,'NAKURU','1','2016-12-23 16:16:00'),(32,'NANDI','1','2016-12-24 16:16:00'),(33,'NAROK','1','2016-12-25 16:16:00'),(34,'NYAMIRA','1','2016-12-26 16:16:00'),(35,'NYANDARUA','1','2016-12-27 16:16:00'),(36,'NYERI','1','2016-12-28 16:16:00'),(37,'SAMBURU','1','2016-12-29 16:16:00'),(38,'SIAYA','1','2016-12-30 16:16:00'),(39,'TAITA TAVETA','1','2016-12-31 16:16:00'),(40,'TANA RIVER','1','2017-01-01 16:16:00'),(41,'THARAKA NITHI','1','2017-01-02 16:16:00'),(42,'TRANS NZOIA','1','2017-01-03 16:16:00'),(43,'TURKANA','1','2017-01-04 16:16:00'),(44,'UASIN GISHU','1','2017-01-05 16:16:00'),(45,'VIHIGA','1','2017-01-06 16:16:00'),(46,'WAJIR','1','2017-01-07 16:16:00'),(47,'WEST POKOT','1','2017-01-08 16:16:00');
/*!40000 ALTER TABLE `rep_counties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_customfields`
--

DROP TABLE IF EXISTS `rep_customfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_customfields` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProviderID` varchar(128) DEFAULT NULL,
  `ProgramID` varchar(128) DEFAULT NULL,
  `ColumnName` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Mandatory` varchar(128) DEFAULT NULL,
  `Datatype` varchar(50) DEFAULT NULL,
  `Length` int(11) DEFAULT NULL,
  `CreatedBy` varchar(20) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_customfields`
--

LOCK TABLES `rep_customfields` WRITE;
/*!40000 ALTER TABLE `rep_customfields` DISABLE KEYS */;
INSERT INTO `rep_customfields` VALUES (55,'HuQas Provider','Malaria','Frequency','Frequency',NULL,NULL,NULL,NULL,NULL),(56,'HuQas Provider','Malaria','StCount','St. Count',NULL,NULL,NULL,NULL,NULL),(57,'HuQas Provider','Malaria','TragetValue','Traget Value',NULL,NULL,NULL,NULL,NULL),(58,'HuQas Provider','Malaria','UpperLimit','Upper Limit',NULL,NULL,NULL,NULL,NULL),(59,'HuQas Provider','Malaria','LowerLimit','Lower Limit',NULL,NULL,NULL,NULL,NULL),(61,'HuQas Provider','Malaria','OverallScore','Overall Score','NULL','varchar',100,'1','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `rep_customfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_failreasons`
--

DROP TABLE IF EXISTS `rep_failreasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_failreasons` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ReasonDescription` varchar(200) DEFAULT NULL,
  `ProgramID` varchar(128) DEFAULT NULL,
  `ProviderID` varchar(128) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_failreasons`
--

LOCK TABLES `rep_failreasons` WRITE;
/*!40000 ALTER TABLE `rep_failreasons` DISABLE KEYS */;
INSERT INTO `rep_failreasons` VALUES (1,'Poor Slide Smear','Malaria','HuQas Provider','1','2016-12-08 10:50:23');
/*!40000 ALTER TABLE `rep_failreasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_grading`
--

DROP TABLE IF EXISTS `rep_grading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_grading` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GradeDescription` varchar(128) NOT NULL,
  `ProgramID` varchar(128) DEFAULT NULL,
  `ProviderID` varchar(128) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_grading`
--

LOCK TABLES `rep_grading` WRITE;
/*!40000 ALTER TABLE `rep_grading` DISABLE KEYS */;
INSERT INTO `rep_grading` VALUES (1,'ACCEPTABLE','Malaria','HuQas Provider','2016-12-08 10:12:52','1'),(2,'NOT ACCEPTABLE','Malaria','HuQas Provider','2016-12-08 10:00:25','1');
/*!40000 ALTER TABLE `rep_grading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_labs`
--

DROP TABLE IF EXISTS `rep_labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_labs` (
  `LabID` int(11) NOT NULL AUTO_INCREMENT,
  `LabName` varchar(200) NOT NULL,
  `County` int(11) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `PostalCode` int(11) DEFAULT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  `ContactName` varchar(50) DEFAULT NULL,
  `ContactEmail` varchar(50) DEFAULT NULL,
  `ContactTelephone` varchar(50) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `labStatus` varchar(45) DEFAULT '1',
  PRIMARY KEY (`LabID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_labs`
--

LOCK TABLES `rep_labs` WRITE;
/*!40000 ALTER TABLE `rep_labs` DISABLE KEYS */;
INSERT INTO `rep_labs` VALUES (1,'Coast Provincial General Hospital\r\n',NULL,'470741',100,'0737547388','dennis kamau','dkamau@abnosoftwares.co.ke','07323243422','active','1','2016-11-23 16:55:49','1'),(2,'Kenyatta National Hospital\r\n',NULL,'894304',100,'08984743','brian vidoloo','bvidolo@abnosoftwares.co.ke','0839289','active','1','2016-12-08 14:44:07','1');
/*!40000 ALTER TABLE `rep_labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_programs`
--

DROP TABLE IF EXISTS `rep_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_programs` (
  `ProgramID` int(11) NOT NULL AUTO_INCREMENT,
  `ProgramCode` varchar(10) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ProgramID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_programs`
--

LOCK TABLES `rep_programs` WRITE;
/*!40000 ALTER TABLE `rep_programs` DISABLE KEYS */;
INSERT INTO `rep_programs` VALUES (1,'MLR','Malaria','active','1','2016-11-23 16:16:23'),(2,'Bio Chem','Bio Chemistry','active','1','2016-12-16 10:06:54');
/*!40000 ALTER TABLE `rep_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providerfiles`
--

DROP TABLE IF EXISTS `rep_providerfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providerfiles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProviderID` varchar(128) DEFAULT NULL,
  `PeriodID` varchar(128) DEFAULT NULL,
  `ProgramID` varchar(128) DEFAULT NULL,
  `FileName` varchar(100) DEFAULT NULL,
  `FileType` varchar(100) DEFAULT NULL,
  `FileSize` int(11) DEFAULT NULL,
  `Url` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providerfiles`
--

LOCK TABLES `rep_providerfiles` WRITE;
/*!40000 ALTER TABLE `rep_providerfiles` DISABLE KEYS */;
INSERT INTO `rep_providerfiles` VALUES (1,'1','1','1','Malaria.pdf','application/pdf',142838,'C:\\temp\\Malaria.pdf','1','2016-12-08 11:10:08'),(2,'1','2','2','EQA Process Workflow.pdf','application/pdf',592200,'C:\\temp\\EQA Process Workflow.pdf','1','2016-12-08 14:57:43'),(3,'2','1','1','Malaria.pdf','application/pdf',142838,'C:\\temp\\Malaria.pdf','1','2016-12-15 10:43:56'),(4,'2','1','1','Malaria.pdf','application/pdf',142838,'C:\\temp\\Malaria.pdf','1','2016-12-15 10:55:01'),(5,'8','1','1','Malaria.pdf','application/pdf',142838,'C:\\temp\\Malaria.pdf','7','2016-12-15 13:30:09'),(6,'8','1','2','Basic_Chemistry.pdf','application/pdf',283843,'C:\\temp\\Basic_Chemistry.pdf','7','2016-12-20 15:50:43');
/*!40000 ALTER TABLE `rep_providerfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providerlabs`
--

DROP TABLE IF EXISTS `rep_providerlabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providerlabs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LabID` int(11) DEFAULT NULL,
  `ProviderID` int(11) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providerlabs`
--

LOCK TABLES `rep_providerlabs` WRITE;
/*!40000 ALTER TABLE `rep_providerlabs` DISABLE KEYS */;
INSERT INTO `rep_providerlabs` VALUES (1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `rep_providerlabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providerprograms`
--

DROP TABLE IF EXISTS `rep_providerprograms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providerprograms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProviderID` int(11) DEFAULT NULL,
  `ProgramID` int(11) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providerprograms`
--

LOCK TABLES `rep_providerprograms` WRITE;
/*!40000 ALTER TABLE `rep_providerprograms` DISABLE KEYS */;
INSERT INTO `rep_providerprograms` VALUES (5,12,1,'1','2016-12-16 12:27:50'),(6,12,2,'1','2016-12-16 12:27:50');
/*!40000 ALTER TABLE `rep_providerprograms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providerresultcodes`
--

DROP TABLE IF EXISTS `rep_providerresultcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providerresultcodes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ResultCode` varchar(200) DEFAULT NULL,
  `ProviderID` varchar(128) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providerresultcodes`
--

LOCK TABLES `rep_providerresultcodes` WRITE;
/*!40000 ALTER TABLE `rep_providerresultcodes` DISABLE KEYS */;
INSERT INTO `rep_providerresultcodes` VALUES (1,'OK','HuQas Provider','1','2016-12-01 11:08:08'),(2,'REAGENT UNAVAILABLE\r\n','HuQas Provider','1','2016-12-01 11:09:33'),(3,'PENDING\r\n','HuQas Provider','1','2016-12-01 11:09:59'),(4,'ANALYZER OUT OF SERVICE\r\n','HuQas Provider','1','2016-12-01 11:10:26'),(5,'FAILURE TO PARTICIPATE\r\n','HuQas Provider','1','2016-12-01 11:10:53'),(6,'TESTING SUSPENDED DURING TEST EVENT\r\n','HuQas Provider','1','2016-12-01 11:11:13'),(7,'BELOW LINEAR/DETECTION LIMIT\r\n','HuQas Provider','1','2016-12-01 11:11:40');
/*!40000 ALTER TABLE `rep_providerresultcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providerrounds`
--

DROP TABLE IF EXISTS `rep_providerrounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providerrounds` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PeriodDescription` varchar(128) NOT NULL,
  `ProviderID` varchar(128) DEFAULT NULL,
  `EnrolledLabs` int(11) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providerrounds`
--

LOCK TABLES `rep_providerrounds` WRITE;
/*!40000 ALTER TABLE `rep_providerrounds` DISABLE KEYS */;
INSERT INTO `rep_providerrounds` VALUES (1,'2nd Test Event 2016','HuQas Provider',30,'1','2016-12-08 10:03:13'),(2,'3rd Test Event 2016','HuQas Provider',40,'1','2016-12-08 10:07:27');
/*!40000 ALTER TABLE `rep_providerrounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providers`
--

DROP TABLE IF EXISTS `rep_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providers` (
  `ProviderID` int(11) NOT NULL AUTO_INCREMENT,
  `ProviderName` varchar(100) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  `PostalCode` int(10) DEFAULT NULL,
  `ContactName` varchar(100) DEFAULT NULL,
  `ContactTelephone` varchar(20) DEFAULT NULL,
  `ContactEmail` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ProviderID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providers`
--

LOCK TABLES `rep_providers` WRITE;
/*!40000 ALTER TABLE `rep_providers` DISABLE KEYS */;
INSERT INTO `rep_providers` VALUES (1,'HuQas Provider','brianonyi@gmail.com','47074 Nairobi, Kenya','0737547388',100,'Dennis Kamau','0727368823','dkamau@abnosoftwares','active','1','2016-11-23 13:26:08'),(2,'Hiv PT','vmwenda@gmail.com','73827','078327393',100,'Victor Mwenda','0722339993','bvidolo@abnosoftwares.co.ke','active','1','2016-12-14 09:06:27'),(8,'Amref Provider','info@amref.co.ke','656555','0722339993',100,'Brian Vidolo','0722339993','brianonyi@gmail.com','active','1','2016-12-14 09:41:12'),(12,'Micro Provider','brianonyi@gmail.com','97765','0722339993',100,'Brian Vidolo','0722339993','bvidolo@abnosoftwares.co.ke','active','1','2016-12-16 12:27:50');
/*!40000 ALTER TABLE `rep_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providersamples`
--

DROP TABLE IF EXISTS `rep_providersamples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providersamples` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SampleCode` varchar(100) DEFAULT NULL,
  `ProviderID` varchar(128) DEFAULT NULL,
  `ProgramID` varchar(128) DEFAULT NULL,
  `PeriodID` varchar(128) DEFAULT NULL,
  `LabID` varchar(128) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providersamples`
--

LOCK TABLES `rep_providersamples` WRITE;
/*!40000 ALTER TABLE `rep_providersamples` DISABLE KEYS */;
INSERT INTO `rep_providersamples` VALUES (1,'A','HuQas Provider','Malaria','2nd Test Event 2016','Lab-001','1','2016-12-01 10:17:09'),(2,'B','HuQas Provider','Malaria','2nd Test Event 2016','Lab-001','1','2016-12-01 10:17:19'),(3,'C','HuQas Provider','Malaria','2nd Test Event 2016','Lab-001','1','2016-12-01 10:17:30'),(4,'D','HuQas Provider','Malaria','2nd Test Event 2016','Lab-001','1','2016-12-01 10:17:40');
/*!40000 ALTER TABLE `rep_providersamples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_repository`
--

DROP TABLE IF EXISTS `rep_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_repository` (
  `ImpID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Repository unique Identifier',
  `ProviderID` varchar(128) DEFAULT NULL COMMENT 'Provider Name',
  `LabID` varchar(200) DEFAULT NULL COMMENT 'Lab Names',
  `RoundID` varchar(128) DEFAULT NULL COMMENT 'Round Names',
  `ProgramID` varchar(128) DEFAULT NULL COMMENT 'Program Name',
  `ReleaseDate` date DEFAULT NULL COMMENT 'Release Date',
  `SampleCode` varchar(100) DEFAULT NULL COMMENT 'Sample Code',
  `AnalyteID` varchar(128) DEFAULT NULL COMMENT 'Analyte Name',
  `SampleCondition` varchar(100) DEFAULT NULL COMMENT 'Sample Condition',
  `DateSampleReceived` datetime DEFAULT NULL COMMENT 'Date Sample Received',
  `Result` varchar(200) DEFAULT NULL COMMENT 'Result',
  `ResultCode` varchar(100) DEFAULT NULL COMMENT 'Result Code',
  `Grade` varchar(128) DEFAULT NULL COMMENT 'Grade',
  `TestKitID` varchar(128) DEFAULT NULL COMMENT 'Test Kit Name',
  `DateSampleShipped` datetime DEFAULT NULL COMMENT 'Date Sample Shipped',
  `FailReasonCode` varchar(100) DEFAULT NULL COMMENT 'Fail Reason Code',
  `Frequency` text COMMENT 'Frequency',
  `StCount` text COMMENT 'St. Count',
  `TragetValue` text COMMENT 'Traget Value',
  `UpperLimit` text COMMENT 'Upper Limit',
  `LowerLimit` text COMMENT 'Lower Limit',
  `OverallScore` varchar(100) DEFAULT NULL COMMENT 'Overall Score',
  PRIMARY KEY (`ImpID`),
  KEY `rep_repository_ibfk_1` (`ProviderID`),
  KEY `LabID` (`LabID`),
  KEY `RoundID` (`RoundID`),
  KEY `ProgramID` (`ProgramID`),
  KEY `AnalyteID` (`AnalyteID`),
  KEY `Grade` (`Grade`),
  KEY `TestKitID` (`TestKitID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_repository`
--

LOCK TABLES `rep_repository` WRITE;
/*!40000 ALTER TABLE `rep_repository` DISABLE KEYS */;
INSERT INTO `rep_repository` VALUES (1,'HuQas Provider','Coast Provincial General Hospital','2nd Test Event 2016','Malaria','2016-02-02','A','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'A','42416','','','42416',NULL),(2,'HuQas Provider','Coast Provincial General Hospital','2nd Test Event 2016','Malaria','2016-02-03','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,'B','42416','','','42416',NULL),(3,'HuQas Provider','Coast Provincial General Hospital','2nd Test Event 2016','Malaria','2016-02-04','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'C','42417','','','42417',NULL),(4,'HuQas Provider','Coast Provincial General Hospital','2nd Test Event 2016','Malaria','2016-02-05','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,'D','42418','','','42418',NULL),(5,'HuQas Provider','Coast Provincial General Hospital','2nd Test Event 2016','Malaria','2016-02-06','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale','OK','ACCEPTABLE',NULL,NULL,NULL,'E','42419','','','42419',NULL),(6,'HuQas Provider','Kangemi Health Center','2nd Test Event 2016','Malaria','2016-02-07','A','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'A','42420','','','42420',NULL),(7,'HuQas Provider','Kangemi Health Center','2nd Test Event 2016','Malaria','2016-02-08','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,'B','42421','','','42421',NULL),(8,'HuQas Provider','Kangemi Health Center','2nd Test Event 2016','Malaria','2016-02-09','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'C','42422','','','42422',NULL),(9,'HuQas Provider','Kangemi Health Center','2nd Test Event 2016','Malaria','2016-02-10','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,'D','42423','','','42423',NULL),(10,'HuQas Provider','Kangemi Health Center','2nd Test Event 2016','Malaria','2016-02-11','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale','OK','ACCEPTABLE',NULL,NULL,NULL,'E','42424','','','42424',NULL),(11,'HuQas Provider','Kenyatta National Hospital','2nd Test Event 2016','Malaria','2016-02-12','5','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium malariae','OK','ACCEPTABLE',NULL,NULL,NULL,'A','42425','','','42425',NULL),(12,'HuQas Provider','Kenyatta National Hospital','2nd Test Event 2016','Malaria','2016-02-13','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,'B','42426','','','42426',NULL),(13,'HuQas Provider','Kenyatta National Hospital','2nd Test Event 2016','Malaria','2016-02-14','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum, Plasmodium malariae','OK','ACCEPTABLE',NULL,NULL,NULL,'C','42427','','','42427',NULL),(14,'HuQas Provider','Kenyatta National Hospital','2nd Test Event 2016','Malaria','2016-02-15','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,'D','42428','','','42428',NULL),(15,'HuQas Provider','Kenyatta National Hospital','2nd Test Event 2016','Malaria','2016-02-16','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale, Plasmodium vivax','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'E','42429','','','42429',NULL),(16,'HuQas Provider','Kenyatta National Hospital- BTU','2nd Test Event 2016','Malaria','2016-02-17','A','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'A','42430','','','42430',NULL),(17,'HuQas Provider','Kenyatta National Hospital- BTU','2nd Test Event 2016','Malaria','2016-02-18','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,'B','42431','','','42431',NULL),(18,'HuQas Provider','Kenyatta National Hospital- BTU','2nd Test Event 2016','Malaria','2016-02-19','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium vivax','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'C','42432','','','42432',NULL),(19,'HuQas Provider','Kenyatta National Hospital- BTU','2nd Test Event 2016','Malaria','2016-02-20','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium vivax','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'D','42433','','','42433',NULL),(20,'HuQas Provider','Kenyatta National Hospital- BTU','2nd Test Event 2016','Malaria','2016-02-21','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale','OK','ACCEPTABLE',NULL,NULL,NULL,'E','42434','','','42434',NULL),(21,'HuQas Provider','Gilgil Sub-District Hospital','2nd Test Event 2016','Malaria','2016-02-22','A','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'A','42435','','','42435',NULL),(22,'HuQas Provider','Gilgil Sub-District Hospital','2nd Test Event 2016','Malaria','2016-02-23','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,'B','42436','','','42436',NULL),(23,'HuQas Provider','Gilgil Sub-District Hospital','2nd Test Event 2016','Malaria','2016-02-24','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'C','42437','','','42437',NULL),(24,'HuQas Provider','Gilgil Sub-District Hospital','2nd Test Event 2016','Malaria','2016-02-25','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,'D','42438','','','42438',NULL),(25,'HuQas Provider','Gilgil Sub-District Hospital','2nd Test Event 2016','Malaria','2016-02-26','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium malariae','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'E','42439','','','42439',NULL),(26,'HuQas Provider','Kangema Sub County Hospital','2nd Test Event 2016','Malaria','2016-02-27','A','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium malariae','OK','ACCEPTABLE',NULL,NULL,NULL,'A','42440','','','42440',NULL),(27,'HuQas Provider','Kangema Sub County Hospital','2nd Test Event 2016','Malaria','2016-02-28','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,'B','42441','','','42441',NULL),(28,'HuQas Provider','Kangema Sub County Hospital','2nd Test Event 2016','Malaria','2016-02-29','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum, Plasmodium malariae','OK','ACCEPTABLE',NULL,NULL,NULL,'C','42442','','','42442',NULL),(29,'HuQas Provider','Kangema Sub County Hospital','2nd Test Event 2016','Malaria','2016-03-01','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,'D','42443','','','42443',NULL),(30,'HuQas Provider','Kangema Sub County Hospital','2nd Test Event 2016','Malaria','2016-03-02','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale','OK','ACCEPTABLE',NULL,NULL,NULL,'E','42444','','','42444',NULL),(31,'Amref Provider','Coast Provincial General Hospital','2nd Test Event 2016','Malaria','2016-02-02','A','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'A','42416','','','42416',NULL),(32,'Amref Provider','Coast Provincial General Hospital','2nd Test Event 2016','Malaria','2016-02-03','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,'B','42416','','','42416',NULL),(33,'Amref Provider','Coast Provincial General Hospital','2nd Test Event 2016','Malaria','2016-02-04','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'C','42417','','','42417',NULL),(34,'Amref Provider','Coast Provincial General Hospital','2nd Test Event 2016','Malaria','2016-02-05','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,'D','42418','','','42418',NULL),(35,'Amref Provider','Coast Provincial General Hospital','2nd Test Event 2016','Malaria','2016-02-06','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale','OK','ACCEPTABLE',NULL,NULL,NULL,'E','42419','','','42419',NULL),(36,'Amref Provider','Kangemi Health Center','2nd Test Event 2016','Malaria','2016-02-07','A','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'A','42420','','','42420',NULL),(37,'Amref Provider','Kangemi Health Center','2nd Test Event 2016','Malaria','2016-02-08','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,'B','42421','','','42421',NULL),(38,'Amref Provider','Kangemi Health Center','2nd Test Event 2016','Malaria','2016-02-09','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'C','42422','','','42422',NULL),(39,'Amref Provider','Kangemi Health Center','2nd Test Event 2016','Malaria','2016-02-10','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,'D','42423','','','42423',NULL),(40,'Amref Provider','Kangemi Health Center','2nd Test Event 2016','Malaria','2016-02-11','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale','OK','ACCEPTABLE',NULL,NULL,NULL,'E','42424','','','42424',NULL),(41,'Amref Provider','Kenyatta National Hospital','2nd Test Event 2016','Malaria','2016-02-12','5','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium malariae','OK','ACCEPTABLE',NULL,NULL,NULL,'A','42425','','','42425',NULL),(42,'Amref Provider','Kenyatta National Hospital','2nd Test Event 2016','Malaria','2016-02-13','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,'B','42426','','','42426',NULL),(43,'Amref Provider','Kenyatta National Hospital','2nd Test Event 2016','Malaria','2016-02-14','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum, Plasmodium malariae','OK','ACCEPTABLE',NULL,NULL,NULL,'C','42427','','','42427',NULL),(44,'Amref Provider','Kenyatta National Hospital','2nd Test Event 2016','Malaria','2016-02-15','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,'D','42428','','','42428',NULL),(45,'Amref Provider','Kenyatta National Hospital','2nd Test Event 2016','Malaria','2016-02-16','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale, Plasmodium vivax','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'E','42429','','','42429',NULL),(46,'Amref Provider','Kenyatta National Hospital- BTU','2nd Test Event 2016','Malaria','2016-02-17','A','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'A','42430','','','42430',NULL),(47,'Amref Provider','Kenyatta National Hospital- BTU','2nd Test Event 2016','Malaria','2016-02-18','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,'B','42431','','','42431',NULL),(48,'Amref Provider','Kenyatta National Hospital- BTU','2nd Test Event 2016','Malaria','2016-02-19','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium vivax','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'C','42432','','','42432',NULL),(49,'Amref Provider','Kenyatta National Hospital- BTU','2nd Test Event 2016','Malaria','2016-02-20','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium vivax','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'D','42433','','','42433',NULL),(50,'Amref Provider','Kenyatta National Hospital- BTU','2nd Test Event 2016','Malaria','2016-02-21','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale','OK','ACCEPTABLE',NULL,NULL,NULL,'E','42434','','','42434',NULL),(51,'Amref Provider','Gilgil Sub-District Hospital','2nd Test Event 2016','Malaria','2016-02-22','A','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'A','42435','','','42435',NULL),(52,'Amref Provider','Gilgil Sub-District Hospital','2nd Test Event 2016','Malaria','2016-02-23','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,'B','42436','','','42436',NULL),(53,'Amref Provider','Gilgil Sub-District Hospital','2nd Test Event 2016','Malaria','2016-02-24','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'C','42437','','','42437',NULL),(54,'Amref Provider','Gilgil Sub-District Hospital','2nd Test Event 2016','Malaria','2016-02-25','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,'D','42438','','','42438',NULL),(55,'Amref Provider','Gilgil Sub-District Hospital','2nd Test Event 2016','Malaria','2016-02-26','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium malariae','OK','NOT ACCEPTABLE',NULL,NULL,NULL,'E','42439','','','42439',NULL),(56,'Amref Provider','Kangema Sub County Hospital','2nd Test Event 2016','Malaria','2016-02-27','A','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium malariae','OK','ACCEPTABLE',NULL,NULL,NULL,'A','42440','','','42440',NULL),(57,'Amref Provider','Kangema Sub County Hospital','2nd Test Event 2016','Malaria','2016-02-28','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,'B','42441','','','42441',NULL),(58,'Amref Provider','Kangema Sub County Hospital','2nd Test Event 2016','Malaria','2016-02-29','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum, Plasmodium malariae','OK','ACCEPTABLE',NULL,NULL,NULL,'C','42442','','','42442',NULL),(59,'Amref Provider','Kangema Sub County Hospital','2nd Test Event 2016','Malaria','2016-03-01','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,'D','42443','','','42443',NULL),(60,'Amref Provider','Kangema Sub County Hospital','2nd Test Event 2016','Malaria','2016-03-02','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale','OK','ACCEPTABLE',NULL,NULL,NULL,'E','42444','','','42444',NULL);
/*!40000 ALTER TABLE `rep_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_testkits`
--

DROP TABLE IF EXISTS `rep_testkits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_testkits` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TestKitName` varchar(128) NOT NULL,
  `ProgramID` varchar(128) DEFAULT NULL,
  `ProviderID` varchar(128) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_testkits`
--

LOCK TABLES `rep_testkits` WRITE;
/*!40000 ALTER TABLE `rep_testkits` DISABLE KEYS */;
INSERT INTO `rep_testkits` VALUES (1,'TestKit 1','Malaria','HuQas Provider','1','2016-12-08 10:12:36'),(2,'TestKit 2','Malaria','HuQas Provider','1','2016-12-08 10:14:54');
/*!40000 ALTER TABLE `rep_testkits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_config`
--

DROP TABLE IF EXISTS `report_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_config` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_config`
--

LOCK TABLES `report_config` WRITE;
/*!40000 ALTER TABLE `report_config` DISABLE KEYS */;
INSERT INTO `report_config` VALUES ('logo','logo_example.jpg'),('logo-right','logo_right.jpg'),('report-header','																																																									<div><div style=\"text-align: center;\"><b><font face=\"Times\">NATIONAL HEALTH LABORATORY QUALITY ASSURANCE SURVEY</font></b></div></div><div style=\"text-align: center;\"><b><font face=\"Times\">NATIONAL AIDS/STI CONTROL PROGRAMME</font></b></div>																																						');
/*!40000 ALTER TABLE `report_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_result_dbs`
--

DROP TABLE IF EXISTS `response_result_dbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_result_dbs` (
  `shipment_map_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `eia_1` int(11) DEFAULT NULL,
  `lot_no_1` varchar(45) DEFAULT NULL,
  `exp_date_1` date DEFAULT NULL,
  `od_1` varchar(45) DEFAULT NULL,
  `cutoff_1` varchar(45) DEFAULT NULL,
  `eia_2` int(11) DEFAULT NULL,
  `lot_no_2` varchar(45) DEFAULT NULL,
  `exp_date_2` date DEFAULT NULL,
  `od_2` varchar(45) DEFAULT NULL,
  `cutoff_2` varchar(45) DEFAULT NULL,
  `eia_3` int(11) DEFAULT NULL,
  `lot_no_3` varchar(45) DEFAULT NULL,
  `exp_date_3` date DEFAULT NULL,
  `od_3` varchar(45) DEFAULT NULL,
  `cutoff_3` varchar(45) DEFAULT NULL,
  `wb` int(11) DEFAULT NULL,
  `wb_lot` varchar(45) DEFAULT NULL,
  `wb_exp_date` date DEFAULT NULL,
  `wb_160` varchar(45) DEFAULT NULL,
  `wb_120` varchar(45) DEFAULT NULL,
  `wb_66` varchar(45) DEFAULT NULL,
  `wb_55` varchar(45) DEFAULT NULL,
  `wb_51` varchar(45) DEFAULT NULL,
  `wb_41` varchar(45) DEFAULT NULL,
  `wb_31` varchar(45) DEFAULT NULL,
  `wb_24` varchar(45) DEFAULT NULL,
  `wb_17` varchar(45) DEFAULT NULL,
  `reported_result` int(11) DEFAULT NULL,
  `calculated_score` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`shipment_map_id`,`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_result_dbs`
--

LOCK TABLES `response_result_dbs` WRITE;
/*!40000 ALTER TABLE `response_result_dbs` DISABLE KEYS */;
/*!40000 ALTER TABLE `response_result_dbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_result_dts`
--

DROP TABLE IF EXISTS `response_result_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_result_dts` (
  `shipment_map_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `test_kit_name_1` varchar(45) DEFAULT NULL,
  `lot_no_1` varchar(45) DEFAULT NULL,
  `exp_date_1` date DEFAULT NULL,
  `test_result_1` varchar(45) DEFAULT NULL,
  `test_kit_name_2` varchar(45) DEFAULT NULL,
  `lot_no_2` varchar(45) DEFAULT NULL,
  `exp_date_2` date DEFAULT NULL,
  `test_result_2` varchar(45) DEFAULT NULL,
  `test_kit_name_3` varchar(45) DEFAULT NULL,
  `lot_no_3` varchar(45) DEFAULT NULL,
  `exp_date_3` date DEFAULT NULL,
  `test_result_3` varchar(45) DEFAULT NULL,
  `reported_result` varchar(45) DEFAULT NULL,
  `calculated_score` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`shipment_map_id`,`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_result_dts`
--

LOCK TABLES `response_result_dts` WRITE;
/*!40000 ALTER TABLE `response_result_dts` DISABLE KEYS */;
/*!40000 ALTER TABLE `response_result_dts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_result_eid`
--

DROP TABLE IF EXISTS `response_result_eid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_result_eid` (
  `shipment_map_id` int(11) NOT NULL,
  `sample_id` varchar(45) NOT NULL,
  `reported_result` varchar(45) DEFAULT NULL,
  `hiv_ct_od` varchar(45) DEFAULT NULL,
  `ic_qs` varchar(45) DEFAULT NULL,
  `calculated_score` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`shipment_map_id`,`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_result_eid`
--

LOCK TABLES `response_result_eid` WRITE;
/*!40000 ALTER TABLE `response_result_eid` DISABLE KEYS */;
/*!40000 ALTER TABLE `response_result_eid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_result_vl`
--

DROP TABLE IF EXISTS `response_result_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_result_vl` (
  `shipment_map_id` int(11) NOT NULL,
  `sample_id` varchar(45) NOT NULL,
  `reported_viral_load` varchar(255) DEFAULT NULL,
  `calculated_score` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`shipment_map_id`,`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_result_vl`
--

LOCK TABLES `response_result_vl` WRITE;
/*!40000 ALTER TABLE `response_result_vl` DISABLE KEYS */;
/*!40000 ALTER TABLE `response_result_vl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheme_list`
--

DROP TABLE IF EXISTS `scheme_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheme_list` (
  `scheme_id` varchar(10) NOT NULL,
  `scheme_name` varchar(255) NOT NULL,
  `response_table` varchar(45) DEFAULT NULL,
  `reference_result_table` varchar(45) DEFAULT NULL,
  `attribute_list` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`scheme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheme_list`
--

LOCK TABLES `scheme_list` WRITE;
/*!40000 ALTER TABLE `scheme_list` DISABLE KEYS */;
INSERT INTO `scheme_list` VALUES ('dbs','Dried Blood Spot - HIV Serology','response_result_dbs','reference_result_dbs',NULL,'inactive'),('dts','Dried Tube Specimen - HIV Serology','response_result_dts','reference_result_dts',NULL,'active'),('eid','Dried Blood Spot - Early Infant Diagnosis','response_result_eid','reference_result_eid',NULL,'inactive'),('tb','Dried Tube Specimen - Tuberculosis','response_result_tb','reference_result_tb',NULL,'active'),('vl','Dried Tube Specimen - HIV Viral Load','response_result_vl','reference_result_vl',NULL,'inactive');
/*!40000 ALTER TABLE `scheme_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment` (
  `shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_code` varchar(255) NOT NULL,
  `scheme_type` varchar(10) DEFAULT NULL,
  `shipment_date` date DEFAULT NULL,
  `lastdate_response` date DEFAULT NULL,
  `distribution_id` int(11) NOT NULL,
  `number_of_samples` int(11) DEFAULT NULL,
  `number_of_controls` int(11) NOT NULL,
  `response_switch` varchar(255) NOT NULL DEFAULT 'off',
  `max_score` int(11) DEFAULT NULL,
  `average_score` varchar(255) DEFAULT '0',
  `shipment_comment` text,
  `created_by_admin` varchar(255) DEFAULT NULL,
  `created_on_admin` datetime DEFAULT NULL,
  `updated_by_admin` varchar(255) DEFAULT NULL,
  `updated_on_admin` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`shipment_id`),
  KEY `scheme_type` (`scheme_type`),
  KEY `distribution_id` (`distribution_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES (1,'DTS0117-1','dts','2017-01-11','2017-01-31',1,3,0,'on',NULL,'0',NULL,'eptmanager@gmail.com','2017-01-24 15:57:26',NULL,NULL,'shipped'),(2,'DTS0117-2','dts','2017-01-19','2017-01-31',2,0,1,'on',NULL,'0',NULL,'eptmanager@gmail.com','2017-01-24 16:06:28',NULL,NULL,'shipped'),(3,'DTS0217-1','dts','2017-02-08','2017-02-28',3,1,0,'on',NULL,'0',NULL,'eptmanager@gmail.com','2017-02-01 14:41:21',NULL,NULL,'shipped'),(4,'DTS0217-2','dts','2017-02-20','2017-02-28',4,0,1,'off',NULL,'0',NULL,'eptmanager@gmail.com','2017-02-20 11:41:24',NULL,NULL,'pending');
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_participant_map`
--

DROP TABLE IF EXISTS `shipment_participant_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_participant_map` (
  `map_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) NOT NULL,
  `participant_id` int(11) NOT NULL,
  `attributes` mediumtext,
  `evaluation_status` varchar(10) DEFAULT NULL COMMENT 'Shipment Status					\nUse this to flag - 					\nABCDEFG					',
  `shipment_score` decimal(5,2) DEFAULT NULL,
  `documentation_score` decimal(5,2) DEFAULT '0.00',
  `shipment_test_date` date DEFAULT '0000-00-00',
  `shipment_receipt_date` date DEFAULT NULL,
  `shipment_test_report_date` datetime DEFAULT NULL,
  `participant_supervisor` varchar(45) DEFAULT NULL,
  `supervisor_approval` varchar(45) DEFAULT NULL,
  `review_date` date DEFAULT NULL,
  `final_result` int(11) DEFAULT '0',
  `failure_reason` text,
  `evaluation_comment` int(11) DEFAULT '0',
  `optional_eval_comment` text,
  `is_followup` varchar(255) DEFAULT 'no',
  `is_excluded` varchar(255) NOT NULL DEFAULT 'no',
  `user_comment` varchar(90) DEFAULT NULL,
  `custom_field_1` text,
  `custom_field_2` text,
  `created_on_admin` datetime DEFAULT NULL,
  `updated_on_admin` datetime DEFAULT NULL,
  `updated_by_admin` varchar(45) DEFAULT NULL,
  `updated_on_user` datetime DEFAULT NULL,
  `updated_by_user` varchar(45) DEFAULT NULL,
  `created_by_admin` varchar(45) DEFAULT NULL,
  `created_on_user` datetime DEFAULT NULL,
  `report_generated` varchar(100) DEFAULT NULL,
  `last_new_shipment_mailed_on` datetime DEFAULT NULL,
  `new_shipment_mail_count` int(11) NOT NULL DEFAULT '0',
  `last_not_participated_mailed_on` datetime DEFAULT NULL,
  `last_not_participated_mail_count` int(11) NOT NULL DEFAULT '0',
  `qc_date` date DEFAULT NULL,
  `qc_done_by` int(11) DEFAULT NULL,
  `qc_created_on` datetime DEFAULT NULL,
  `mode_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`map_id`),
  UNIQUE KEY `shipment_id_2` (`shipment_id`,`participant_id`),
  KEY `shipment_id` (`shipment_id`),
  KEY `participant_id` (`participant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Shipment for DTS Samples';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_participant_map`
--

LOCK TABLES `shipment_participant_map` WRITE;
/*!40000 ALTER TABLE `shipment_participant_map` DISABLE KEYS */;
INSERT INTO `shipment_participant_map` VALUES (1,1,1,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-01-24 15:58:38',NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL),(2,2,1,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-01-24 16:07:20',NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL),(3,3,1,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-02-01 14:42:29',NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `shipment_participant_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_admin`
--

DROP TABLE IF EXISTS `system_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `primary_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `secondary_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `force_password_reset` int(11) DEFAULT NULL,
  `IsProvider` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'inactive',
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `ProviderName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_admin`
--

LOCK TABLES `system_admin` WRITE;
/*!40000 ALTER TABLE `system_admin` DISABLE KEYS */;
INSERT INTO `system_admin` VALUES (1,'Manager','Test','eptmanager@gmail.com','123','','9841462565',1,0,'active',NULL,NULL,'2015-03-04 10:56:43','1',NULL),(6,'Demo ','Admin','demoadmin@gmail.com','demopassword#1','demo@gmail.com','12121212',1,0,'active','2015-09-08 06:21:31','1','2015-10-07 01:21:02','1',NULL),(7,'Brian Vidolo','Brian Vidolo','brianonyi@gmail.com','Boblacaster1988@','brianonyi@gmail.com','0722339993',0,1,'active','2016-12-14 09:41:12','1',NULL,NULL,'Amref Provider'),(10,'Brian Vidolo','Brian Vidolo','bvidolo@abnosoftwares.co.ke','Boblacaster1988@','bvidolo@abnosoftwares.co.ke','0722339993',0,1,'active','2016-12-16 12:27:50','1',NULL,NULL,'Micro Provider');
/*!40000 ALTER TABLE `system_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_bacteria`
--

DROP TABLE IF EXISTS `tbl_bac_bacteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_bacteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organismName` varchar(100) DEFAULT NULL,
  `organismCode` varchar(100) DEFAULT NULL,
  `conceptCode` varchar(100) DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(100) DEFAULT '1',
  `lastUpdatePerson` int(11) DEFAULT '1',
  `updateDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fullname` (`fullName`)
) ENGINE=InnoDB AUTO_INCREMENT=3459 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_bacteria`
--

LOCK TABLES `tbl_bac_bacteria` WRITE;
/*!40000 ALTER TABLE `tbl_bac_bacteria` DISABLE KEYS */;
INSERT INTO `tbl_bac_bacteria` VALUES (1,'Abiotrophia','ABISP','115161005','Genus Abiotrophia (organism)','2017-03-02 18:39:47','1',1,NULL,1),(2,'Abiotrophia adiacens','GRADJ','113713009','Granulicatella adiacens (organism)','2017-03-02 18:39:47','1',1,NULL,1),(3,'Abiotrophia adjacens','GRADJ','113713009','Granulicatella adiacens (organism)','2017-03-02 18:39:47','1',1,NULL,1),(4,'Abiotrophia defectiva','STRDF','113714003','Abiotrophia defectiva (organism)','2017-03-02 18:39:47','1',1,NULL,1),(5,'Abiotrophia elegans','GRANELEG','115944008','Granulicatella elegans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(6,'Acanthamoeba','ACANT','50875003','Acanthamoeba (organism)','2017-03-02 18:39:47','1',1,NULL,1),(7,'Acholeplasma','ACHOSP','84858009','Genus Acholeplasma (organism)','2017-03-02 18:39:47','1',1,NULL,1),(8,'Acholeplasma laidlawii','ACHOLAID','89082003','Acholeplasma laidlawii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(9,'Acholeplasma oculi','ACHOOCUL','86450009','Acholeplasma oculi (organism)','2017-03-02 18:39:47','1',1,NULL,1),(10,'Achromobacter','ACHSP','91620006','Genus Achromobacter (organism)','2017-03-02 18:39:47','1',1,NULL,1),(11,'Achromobacter denitrificans','ACHDENI','413414001','Achromobacter denitrificans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(12,'Achromobacter piechaudii','ACHPIEC','413420000','Achromobacter piechaudii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(13,'Achromobacter ruhlandii','ACHRUHL','413421001','Achromobacter ruhlandii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(14,'Achromobacter xylosoxidans','ALCXYL','413424009','Achromobacter xylosoxidans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(15,'Achromobacter xylosoxidans xylosoxidans','ACHXYL','423897003','Achromobacter xylosoxidans xylosoxidans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(16,'Achromobacter, group Vd biotype 1','ACHVD1','59995003','Achromobacter, group Vd biotype 1 (organism)','2017-03-02 18:39:47','1',1,NULL,1),(17,'Achromobacter, group Vd biotype 2','ACHVD2','55156008','Achromobacter, group Vd biotype 2 (organism)','2017-03-02 18:39:47','1',1,NULL,1),(18,'Acidaminococcus','ACISP','28207003','Genus Acidaminococcus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(19,'Acidaminococcus fermentans','ACIFE','63005002','Acidaminococcus fermentans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(20,'Acid-fast bacillus','AFB','243365003','Acid-fast bacillus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(21,'Acidovorax','ACIDSP','115153000','Genus Acidovorax  (organism)','2017-03-02 18:39:47','1',1,NULL,1),(22,'Acidovorax delafieldii','ACDEL','113685003','Acidovorax delafieldii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(23,'Acidovorax facilis','ACIDFACI','113686002','Acidovorax facilis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(24,'Acidovorax temperans','ACIDTEMP','113687006','Acidovorax temperans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(25,'Acinetobacter','ACS','7757008','Genus Acinetobacter (organism)','2017-03-02 18:39:47','1',1,NULL,1),(26,'Acinetobacter anitratus','ACICBA','82550008','Acinetobacter calcoaceticus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(27,'Acinetobacter baumannii','ACBA','91288006','Acinetobacter baumannii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(28,'Acinetobacter calcoaceticus','ACICBA','82550008','Acinetobacter calcoaceticus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(29,'Acinetobacter calcoaceticus anitratus','ACICBA','82550008','Acinetobacter calcoaceticus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(30,'Acinetobacter calcoaceticus lwoffi','ACLW','83088009','Acinetobacter lwoffi (organism) ','2017-03-02 18:39:47','1',1,NULL,1),(31,'Acinetobacter calcoaceticus lwoffii','ACLW','83088009','Acinetobacter lwoffi (organism)','2017-03-02 18:39:47','1',1,NULL,1),(32,'Acinetobacter calcoaceticus-baumannii complex','ACCA','113376007','Acinetobacter calcoaceticus-Acinetobacter baumanni complex (organism)','2017-03-02 18:39:47','1',1,NULL,1),(33,'Acinetobacter genospecies 3','ACIGEN','113377003','Acinetobacter genospecies 3 (organism)','2017-03-02 18:39:47','1',1,NULL,1),(34,'Acinetobacter haemolyticus','ACHA','77045006','Acinetobacter haemolyticus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(35,'Acinetobacter hemolyticus','ACHA','77045006','Acinetobacter haemolyticus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(36,'Acinetobacter johnsonii','ACJH','252000','Acinetobacter johnsonii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(37,'Acinetobacter junii','ACJU','13879009','Acinetobacter junii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(38,'Acinetobacter lwoffi','ACLW','83088009','Acinetobacter lwoffi (organism) ','2017-03-02 18:39:47','1',1,NULL,1),(39,'Acinetobacter lwoffii','ACLW','83088009','Acinetobacter lwoffi (organism)','2017-03-02 18:39:47','1',1,NULL,1),(40,'Acinetobacter radioresistans','ACIRADI','113381003','Acinetobacter radioresistens (organism)','2017-03-02 18:39:47','1',1,NULL,1),(41,'Acinetobacter radioresistens','ACIRADI','113381003','Acinetobacter radioresistens (organism)','2017-03-02 18:39:47','1',1,NULL,1),(42,'Acinetobacter schindleri','ACISCHI','423732001','Acinetobacter schindleri (organism)','2017-03-02 18:39:47','1',1,NULL,1),(43,'Acinetobacter ursingii','ACIURSI','424791004','Acinetobacter ursingii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(44,'Acladium castellani','PSEBOY','91088000','Pseudallescheria boydii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(45,'Acremonium','ACRE','63996006','Acremonium (organism)','2017-03-02 18:39:47','1',1,NULL,1),(46,'Acremonium alabamensis','ACREALAB','83075006','Acremonium alabamensis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(47,'Acremonium kiliense','ACREKILI','243484001','Acremonium kiliense (organism)','2017-03-02 18:39:47','1',1,NULL,1),(48,'Acremonium potroni','ACREPOTR','36128004','Acremonium potroni (organism)','2017-03-02 18:39:47','1',1,NULL,1),(49,'Acremonium potronii','ACREPOTR','36128004','Acremonium potroni (organism)','2017-03-02 18:39:47','1',1,NULL,1),(50,'Acremonium recifei','ACRERECI','654006','Acremonium recifei (organism)','2017-03-02 18:39:47','1',1,NULL,1),(51,'Acremonium strictum','ACRESTRI','17720002','Acremonium strictum (organism)','2017-03-02 18:39:47','1',1,NULL,1),(52,'Acrotheca aquaspersa','RHINAQUA','45462000','Rhinocladiella aquaspersa (organism)','2017-03-02 18:39:47','1',1,NULL,1),(53,'Actinobacillus','ACBSP','85851009','Genus Actinobacillus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(54,'Actinobacillus actinomycetemcomitans','HAEACT','442680008','Aggregatibacter actinomycetemcomitans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(55,'Actinobacillus equuli','ACBEQ','27165004','Actinobacillus equuli (organism)','2017-03-02 18:39:47','1',1,NULL,1),(56,'Actinobacillus hominis','ACBHOMI','43638004','Actinobacillus hominis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(57,'Actinobacillus lignieresii','ACBLI','78043002','Actinobacillus lignieresii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(58,'Actinobacillus pseudomallei','BURPM','116399000','Burkholderia pseudomallei (organism)','2017-03-02 18:39:47','1',1,NULL,1),(59,'Actinobacillus suis','ACBSU','112272003','Actinobacillus suis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(60,'Actinobacillus ureae','ACURE','1839009','Actinobacillus ureae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(61,'Actinobacterium meyeri','ACTME','3174002','Actinomyces meyeri (organism)','2017-03-02 18:39:47','1',1,NULL,1),(62,'Actinobaculum','ACTISP','114043007','Genus Actinobaculum (organism)','2017-03-02 18:39:47','1',1,NULL,1),(63,'Actinobaculum massiliae','ACTIMASS','416353004','Actinobaculum massiliense (organism)','2017-03-02 18:39:47','1',1,NULL,1),(64,'Actinobaculum massiliense','ACTIMASS','416353004','Actinobaculum massiliense (organism)','2017-03-02 18:39:47','1',1,NULL,1),(65,'Actinobaculum schaalii','ACTISCHA','114044001','Actinobaculum schaalii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(66,'Actinobaculum urinale','ACTIURIN','427148009','Actinobaculum urinale (organism)','2017-03-02 18:39:47','1',1,NULL,1),(67,'Actinomadura','ACTINSP','41571004','Genus Actinomadura (organism)','2017-03-02 18:39:47','1',1,NULL,1),(68,'Actinomadura dassonvillei','NOCADASS','15526005','Nocardiopsis dassonvillei (organism)','2017-03-02 18:39:47','1',1,NULL,1),(69,'Actinomadura latina','ACTINLATI','113402007','Actinomadura latina (organism)','2017-03-02 18:39:47','1',1,NULL,1),(70,'Actinomadura madurae','ACTINMADU','90285002','Actinomadura madurae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(71,'Actinomadura pelletieri','ACTINPELL','65202006','Actinomadura pelletieri (organism)','2017-03-02 18:39:47','1',1,NULL,1),(72,'Actinomyces','ACTSP','40560008','Genus Actinomyces (organism) ','2017-03-02 18:39:47','1',1,NULL,1),(73,'Actinomyces asteroides','NOCAS','30092002','Nocardia asteroides (organism)','2017-03-02 18:39:47','1',1,NULL,1),(74,'Actinomyces bernardiae','TRUEBERN','704975008','Trueperella bernardiae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(75,'Actinomyces bovis','ACTBO','59806008','Actinomyces bovis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(76,'Actinomyces brasiliensis','NOCBR','58970008','Nocardia brasiliensis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(77,'Actinomyces cardiffensis','ACTCARD','427237005','Actinomyces cardiffensis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(78,'Actinomyces dentalis','ACTDENT','426330001','Actinomyces dentalis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(79,'Actinomyces dentocariosus','ROTDE','35379007','Rothia dentocariosa (organism)','2017-03-02 18:39:47','1',1,NULL,1),(80,'Actinomyces DO8','ACTGE','113415003','Actinomyces georgiae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(81,'Actinomyces europaeus','ACTEURO','113414004','Actinomyces europaeus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(82,'Actinomyces funkei','ACTFUNK','419012004','Actinomyces funkei (organism)','2017-03-02 18:39:47','1',1,NULL,1),(83,'Actinomyces georgiae','ACTGE','113415003','Actinomyces georgiae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(84,'Actinomyces gerencseriae','ACTGR','113416002','Actinomyces gerencseriae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(85,'Actinomyces gerenseriae','ACTGR','113416002','Actinomyces gerencseriae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(86,'Actinomyces gonidiaformis','FUSGO','84644009','Fusobacterium gonidiaformans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(87,'Actinomyces graevenitzii','ACTGRAE','113417006','Actinomyces graevenitzii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(88,'Actinomyces hongkongensis','ACTHONG','427269001','Actinomyces hongkongensis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(89,'Actinomyces israelii','ACTIS','46369004','Actinomyces israelii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(90,'Actinomyces israelii serotype II','ACTGR','113416002','Actinomyces gerencseriae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(91,'Actinomyces meyeri','ACTME','3174002','Actinomyces meyeri (organism)','2017-03-02 18:39:47','1',1,NULL,1),(92,'Actinomyces naeslundii','ACTNA','8940004','Actinomyces naeslundii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(93,'Actinomyces nasicola','ACTNASI','425520001','Actinomyces nasicola (organism)','2017-03-02 18:39:47','1',1,NULL,1),(94,'Actinomyces necrophorus','FUSNE','27274008','Fusobacterium necrophorum (organism)','2017-03-02 18:39:47','1',1,NULL,1),(95,'Actinomyces neuii','ACTNEUI','877802991000087109','Actinomyces neuii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(96,'Actinomyces odontolyticus','ACTOD','12069003','Actinomyces odontolyticus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(97,'Actinomyces oricola','ACTORIC','425488009','Actinomyces oricola (organism)','2017-03-02 18:39:47','1',1,NULL,1),(98,'Actinomyces propionicus','PRPRO','427413007','Propionibacterium propionicum (organism)','2017-03-02 18:39:47','1',1,NULL,1),(99,'Actinomyces pyogenes','ARCPY','258933002','Trueperella pyogenes (organism)','2017-03-02 18:39:47','1',1,NULL,1),(100,'Actinomyces radicidentis','ACTRADI','427691003','Actinomyces radicidentis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(101,'Actinomyces radingae','ACTRADIN','113421004','Actinomyces radingae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(102,'Actinomyces ramosus','CLORA','42706008','Clostridium ramosum (organism)','2017-03-02 18:39:47','1',1,NULL,1),(103,'Actinomyces turicensis','ACTTURI','113422006','Actinomyces turicensis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(104,'Actinomyces urogenitalis','ACTUROG','409827009','Actinomyces urogenitalis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(105,'Actinomyces viscosus','ACTVI','33529006','Actinomyces viscosus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(106,'Actinomycosis israelii','ACTIS','46369004','Actinomyces israelii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(107,'Adenovirus','ADV','424470006','Family Adenoviridae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(108,'Aerobacter','ESP','58683007','Genus Enterobacter (organism)','2017-03-02 18:39:47','1',1,NULL,1),(109,'Aerobacter aerogenes','EA','62592009','Enterobacter aerogenes (organism)','2017-03-02 18:39:47','1',1,NULL,1),(110,'Aerobacter cloacae','ENC','14385002','Enterobacter cloacae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(111,'Aerobe','AEROBE','27471002','Aerobic bacteria (organism)','2017-03-02 18:39:47','1',1,NULL,1),(112,'Aerococcus','AEGU','9008009','Genus Aerococcus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(113,'Aerococcus christensenii','AECH','409818008','Aerococcus christensenii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(114,'Aerococcus sanguicola','AESG','131205009','Aerococcus sanguicola (organism)','2017-03-02 18:39:47','1',1,NULL,1),(115,'Aerococcus sanguinicola','AESGN','427222006','Aerococcus sanguinicola (organism)','2017-03-02 18:39:47','1',1,NULL,1),(116,'Aerococcus urinae','AEUR','243230001','Aerococcus urinae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(117,'Aerococcus urinaeequi','AEURQ','430979003','Aerococcus urinaeequi (organism)','2017-03-02 18:39:47','1',1,NULL,1),(118,'Aerococcus urinaehominis','AEURH','409819000','Aerococcus urinaehominis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(119,'Aerococcus viridans','AEVI','78803006','Aerococcus viridans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(120,'Aeromonas','AES','88529008','Genus Aeromonas (organism)','2017-03-02 18:39:47','1',1,NULL,1),(121,'Aeromonas bestiarum','AERBEST','115027006','Aeromonas bestiarum (organism)','2017-03-02 18:39:47','1',1,NULL,1),(122,'Aeromonas caviae','AERPUN','115036005','Aeromonas punctata (organism)','2017-03-02 18:39:47','1',1,NULL,1),(123,'Aeromonas caviae complex','AERCAVI','429561000124107','Aeromonas caviae complex (organism)','2017-03-02 18:39:47','1',1,NULL,1),(124,'Aeromonas encheleia','AERENCH','115028001','Aeromonas encheleia (organism)','2017-03-02 18:39:47','1',1,NULL,1),(125,'Aeromonas enteropelogenes','AERTR','243316008','Aeromonas trota (organism)','2017-03-02 18:39:47','1',1,NULL,1),(126,'Aeromonas eucrenophila','AEREUCR','115030004','Aeromonas eucrenophilia (organism)','2017-03-02 18:39:47','1',1,NULL,1),(127,'Aeromonas eucrenophilia','AEREUCR','115030004','Aeromonas eucrenophilia (organism)','2017-03-02 18:39:47','1',1,NULL,1),(128,'Aeromonas hydrophila','AH','85823000','Aeromonas hydrophila (organism)','2017-03-02 18:39:47','1',1,NULL,1),(129,'Aeromonas hydrophila complex','AERHYDR','429581000124102','Aeromonas hydrophila complex (organism)','2017-03-02 18:39:47','1',1,NULL,1),(130,'Aeromonas jandaei','AERJA','115034008','Aeromonas jandei (organism) ','2017-03-02 18:39:47','1',1,NULL,1),(131,'Aeromonas jandei','AERJA','115034008','Aeromonas jandei (organism)','2017-03-02 18:39:47','1',1,NULL,1),(132,'Aeromonas media','AERME','65192005','Aeromonas media (organism)','2017-03-02 18:39:47','1',1,NULL,1),(133,'Aeromonas molluscorum','AERMOLL','425862003','Aeromonas molluscorum (organism)','2017-03-02 18:39:47','1',1,NULL,1),(134,'Aeromonas popoffii','AERPOPO','115035009','Aeromonas popoffii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(135,'Aeromonas punctata','AERPUN','115036005','Aeromonas punctata (organism)','2017-03-02 18:39:47','1',1,NULL,1),(136,'Aeromonas salmonicida','AERSA','30334005','Aeromonas salmonicida (organism)','2017-03-02 18:39:47','1',1,NULL,1),(137,'Aeromonas salmonicida achromogenes','AERSALACH','64537004','Aeromonas salmonicida ss. achromogenes (organism)','2017-03-02 18:39:47','1',1,NULL,1),(138,'Aeromonas salmonicida masoucida','AERSALMAS','51768004','Aeromonas salmonicida ss. masoucida (organism)','2017-03-02 18:39:47','1',1,NULL,1),(139,'Aeromonas salmonicida pectinolytica','AERSALPEC','416266002','Aeromonas salmonicida subsp. pectinolytica (organism)','2017-03-02 18:39:47','1',1,NULL,1),(140,'Aeromonas salmonicida salmonicida','AERSALSAL','62520007','Aeromonas salmonicida ss. salmonicida (organism)','2017-03-02 18:39:47','1',1,NULL,1),(141,'Aeromonas salmonicida smithia','AERSALSMI','243315007','Aeromonas salmonicida subsp smithia (organism)','2017-03-02 18:39:47','1',1,NULL,1),(142,'Aeromonas schubertii','AERSC','115039003','Aeromonas schubertii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(143,'Aeromonas shigelloides','PLESH','38643006','Plesiomonas shigelloides (organism)','2017-03-02 18:39:47','1',1,NULL,1),(144,'Aeromonas simiae','AERSIMI','426333004','Aeromonas simiae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(145,'Aeromonas sobria','AERSOB','43731003','Aeromonas sobria (organism)','2017-03-02 18:39:47','1',1,NULL,1),(146,'Aeromonas trota','AERTR','243316008','Aeromonas trota (organism)','2017-03-02 18:39:47','1',1,NULL,1),(147,'Aeromonas tructi','AERTR','243316008','Aeromonas trota (organism)','2017-03-02 18:39:47','1',1,NULL,1),(148,'Aeromonas veronii','AEVER','9281006','Aeromonas veronii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(149,'Aeromonas veronii biovar sobria','AERSO','425549009','Aeromonas veronii biovar sobria (organism)','2017-03-02 18:39:47','1',1,NULL,1),(150,'Aeromonas veronii biovar veronii','AERVE','425796003','Aeromonas veronii biovar veronii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(151,'Afipia','AFIPSP','114234007','Genus Afipia (organism)','2017-03-02 18:39:47','1',1,NULL,1),(152,'Afipia clevelandensis','AFIPCLEV','114236009','Afipia clevelandensis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(153,'Afipia felis','AFIPFELI','114237000','Afipia felis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(154,'Aggregatibacter','AGGRSP','441718002','Genus Aggregatibacter (organism)','2017-03-02 18:39:47','1',1,NULL,1),(155,'Aggregatibacter actinomycetemcomitans','HAEACT','442680008','Aggregatibacter actinomycetemcomitans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(156,'Aggregatibacter aphrophilus','HAEAP ','442683005','Aggregatibacter aphrophilus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(157,'Aggregatibacter segnis','AGGRSEGN','442651004','Aggregatibacter segnis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(158,'Agrobacterium','AGSP','33436009','Genus Agrobacterium (organism)','2017-03-02 18:39:47','1',1,NULL,1),(159,'Agrobacterium radiobacter','RHIRAD','438107000','Rhizobium radiobacter (organism)','2017-03-02 18:39:47','1',1,NULL,1),(160,'Agromyces','AGROSP','427200004','Genus Agromyces (organism)','2017-03-02 18:39:47','1',1,NULL,1),(161,'Alcaligenes','ALSP','68571003','Genus Alcaligenes (organism)','2017-03-02 18:39:47','1',1,NULL,1),(162,'Alcaligenes bronchisepticus','BORBR','10620008','Bordetella bronchiseptica (organism)','2017-03-02 18:39:47','1',1,NULL,1),(163,'Alcaligenes denitrificans','ALDE','42947002','Alcaligenes xylosoxidans ss. denitrificans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(164,'Alcaligenes faecalis','ALFE','25223004','Alcaligenes fecalis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(165,'Alcaligenes odorans','ALFE','25223004','Alcaligenes fecalis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(166,'Alcaligenes piechaudii','ALPIE','58251005','Alcaligenes piechaudii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(167,'Alcaligenes xylosoxidans','ALCXYL','413424009','Achromobacter xylosoxidans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(168,'Alcaligenes xylosoxidans denitrificans','ALDE','42947002','Alcaligenes xylosoxidans ss. denitrificans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(169,'Alcaligenes xylosoxidans xylosoxidans','ALXY','53735001','Alcaligenes xylosoxidans ss. xylosoxidans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(170,'Aleurisma','CHRYSP','55038006','Chrysosporium (organism)','2017-03-02 18:39:47','1',1,NULL,1),(171,'Alishewanella','ALISSP','416056000','Genus Alishewanella (organism)','2017-03-02 18:39:47','1',1,NULL,1),(172,'Alishewanella fetalis','ALISFETA','417165004','Alishewanella fetalis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(173,'Alistipes','ALISTSP','427315001','Genus Alistipes (organism)','2017-03-02 18:39:47','1',1,NULL,1),(174,'Alistipes putredinis','BACPU','426435007','Alistipes putredinis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(175,'Allescheria boydii','PSEBOY','91088000','Pseudallescheria boydii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(176,'Alloiococcus','ALLOSP','396453006','Genus Alloiococcus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(177,'Alloiococcus otitis','ALLOOTIT','396454000','Alloiococcus otitis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(178,'Alloscardovia','ALLOSSP','429601004','Genus Alloscardovia (organism)','2017-03-02 18:39:47','1',1,NULL,1),(179,'Alloscardovia omnicolens','ALLOOMNI','429317001','Alloscardovia omnicolens (organism)','2017-03-02 18:39:47','1',1,NULL,1),(180,'Alpha non-hemolytic streptococcus','STRANH','302608002','Alpha non-hemolytic streptococcus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(181,'Alpha-hemolytic streptococcus','AS','60631002','Alpha-hemolytic streptococcus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(182,'Alpha-hemolytic Streptococcus, not S pneumoniae','ASNSP','442131000124101','Alpha-hemolytic Streptococcus species not Streptococcus pneumoniae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(183,'Alternaria','ALTER','75059003','Genus Alternaria (organism)','2017-03-02 18:39:47','1',1,NULL,1),(184,'Alternaria alternata','ALTERALTE','36703000','Alternaria alternata (organism)','2017-03-02 18:39:47','1',1,NULL,1),(185,'Alternaria dianthicola','ALTERDIAN','28387003','Alternaria dianthicola (organism)','2017-03-02 18:39:47','1',1,NULL,1),(186,'Alternaria infectoria','ALTERINFE','21702003','Alternaria infectoria (organism)','2017-03-02 18:39:47','1',1,NULL,1),(187,'Alternaria tenuis','ALTERALTE','36703000','Alternaria alternata (organism)','2017-03-02 18:39:47','1',1,NULL,1),(188,'Alternaria tenuissima','ALTERTENU','35667002','Alternaria tenuissima (organism)','2017-03-02 18:39:47','1',1,NULL,1),(189,'Alysiella','ALYSSP','55181006','Genus Alysiella (organism)','2017-03-02 18:39:47','1',1,NULL,1),(190,'Alysiella crassa','ALYSCRAS','444924000','Alysiella crassa (organism)','2017-03-02 18:39:47','1',1,NULL,1),(191,'Amycolatopsis','AMYCSP','115149002','Genus Amycolatopsis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(192,'Amycolatopsis orientalis','AMYCORIE','427705005','Amycolatopsis orientalis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(193,'Anaerobe','ANS','59343002','Anaerobic bacteria (organism)','2017-03-02 18:39:47','1',1,NULL,1),(194,'Anaerobic Gram-negative bacillus','ANAGNR','243386003','Anaerobic Gram-negative bacillus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(195,'Anaerobic Gram-negative coccobacillus','ANAGNCB','445380009','Anaerobic Gram negative coccobacillus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(196,'Anaerobic Gram-negative coccus','ANAGNC','243397003','Anaerobic Gram-negative coccus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(197,'Anaerobic Gram-positive bacillus','ANAGPR','243398008','Anaerobic Gram-positive bacillus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(198,'Anaerobic Gram-positive coccobacillus','ANAGPCB','445381008','Anaerobic Gram positive coccobacillus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(199,'Anaerobic Gram-positive coccus','ANAGPC','243416009','Anaerobic Gram-positive coccus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(200,'Anaerobiospirillum','ANSP','55757006','Genus Anaerobiospirillum (organism)','2017-03-02 18:39:47','1',1,NULL,1),(201,'Anaerobiospirillum succiniciproducens','ANSU','46934005','Anaerobiospirillum succinoproducens (organism)','2017-03-02 18:39:47','1',1,NULL,1),(202,'Anaerobiospirillum succinoproducens','ANSU','46934005','Anaerobiospirillum succinoproducens (organism)','2017-03-02 18:39:47','1',1,NULL,1),(203,'Anaerobiospirillum thomasii','ANTHOM','426729008','Anaerobiospirillum thomasii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(204,'Anaerococcus','ANASP','413518000','Genus Anaerococcus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(205,'Anaerococcus hydrogenalis','PPSHY','413519008','Anaerococcus hydrogenalis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(206,'Anaerococcus lactolyticus','ANALAC','413520002','Anaerococcus lactolyticus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(207,'Anaerococcus octavius','ANAOCTA','413521003','Anaerococcus octavius (organism)','2017-03-02 18:39:47','1',1,NULL,1),(208,'Anaerococcus prevotii','ANAPRE','413522005','Anaerococcus prevotii (organism)','2017-03-02 18:39:47','1',1,NULL,1),(209,'Anaerococcus tetradius','ANATETR','427220003','Anaerococcus tetradius (organism)','2017-03-02 18:39:47','1',1,NULL,1),(210,'Anaerococcus tretradius','ANATET','413524006','Anaerococcus tretradius (organism)','2017-03-02 18:39:47','1',1,NULL,1),(211,'Anaerococcus vaginalis','ANAVAG','413525007','Anaerococcus vaginalis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(212,'Anaerorhabdus','ANRSP','54522000','Genus Anaerorhabdus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(213,'Anaerorhabdus furcosus','ANRFU','24716009','Anaerorhabdus furcosus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(214,'Anaplasma','ANAPSP','3351007','Genus Anaplasma (organism)','2017-03-02 18:39:47','1',1,NULL,1),(215,'Ancylostoma','ANCYC','17113000','Ancylostoma (organism) ','2017-03-02 18:39:47','1',1,NULL,1),(216,'Aneurinibacillus','ANEUSP','114125006','Genus Aneurinibacillus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(217,'Angiostrongylus','ANGIO','7153002','Angiostrongylus (organism) ','2017-03-02 18:39:47','1',1,NULL,1),(218,'Apophysomyces','APOPSP','68038008','Apophysomyces (organism)','2017-03-02 18:39:47','1',1,NULL,1),(219,'Apophysomyces elegans','APOPELEG','71235006','Apophysomyces elegans (organism)','2017-03-02 18:39:47','1',1,NULL,1),(220,'Arachnia propionica','PRPRO','427413007','Propionibacterium propionicum (organism)','2017-03-02 18:39:47','1',1,NULL,1),(221,'Arbovirus group B','FLAVI','28375005','Genus Flavivirus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(222,'Arcanobacterium','ARCSP','51714009','Genus Arcanobacterium (organism)','2017-03-02 18:39:47','1',1,NULL,1),(223,'Arcanobacterium bernardiae','TRUEBERN','704975008','Trueperella bernardiae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(224,'Arcanobacterium haemolyticum','ARCHA','44723000','Arcanobacterium haemolyticum (organism)','2017-03-02 18:39:47','1',1,NULL,1),(225,'Arcanobacterium pluranimalium','ARCPLUR','428939003','Arcanobacterium pluranimalium (organism)','2017-03-02 18:39:47','1',1,NULL,1),(226,'Arcanobacterium pyogenes','ARCPY','258933002','Trueperella pyogenes (organism)','2017-03-02 18:39:47','1',1,NULL,1),(227,'Arcobacter','ACOSP','114206000','Genus Arcobacter (organism)','2017-03-02 18:39:47','1',1,NULL,1),(228,'Arcobacter butzleri','ACOBUTZ','114207009','Arcobacter butzleri (organism)','2017-03-02 18:39:47','1',1,NULL,1),(229,'Arcobacter cryaerophilus','CMPCR','7858008','Campylobacter cryaerophila (organism)','2017-03-02 18:39:47','1',1,NULL,1),(230,'Arcobacter nitrofigilis','ACONI','408629003','Arcobacter nitrofigilis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(231,'Arenavirus','ARETU','58234003','Genus Arenavirus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(232,'Arginine positive Pseudomonas stutzeri-like','CDCVB3','413797008','Centers for Disease Control and Prevention (CDC) Group Vb-3 (organism)','2017-03-02 18:39:47','1',1,NULL,1),(233,'Arizona hinshawii','SALAR','397502001','Salmonella enterica subsp. arizonae (organism)','2017-03-02 18:39:47','1',1,NULL,1),(234,'Arthrobacter','ARTSP','56214009','Genus Arthrobacter (organism)','2017-03-02 18:39:47','1',1,NULL,1),(235,'Arthrobacter agilis','ARTAGIL','113432004','Arthrobacter agilis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(236,'Arthrobacter albus','ARTALBU','127496003','Arthrobacter albus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(237,'Arthrobacter arilaitensis','ARTARIL','428949000','Arthrobacter arilaitensis (organism)','2017-03-02 18:39:47','1',1,NULL,1),(238,'Arthrobacter astrocyaneus','ARTASTR','113433009','Arthrobacter astrocyaneus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(239,'Arthrobacter atrocyaneus','ARTATRO','429101003','Arthrobacter atrocyaneus (organism)','2017-03-02 18:39:47','1',1,NULL,1),(240,'Arthrobacter aurescens','ARTAURE','113434003','Arthrobacter aurescens (organism)','2017-03-02 18:39:47','1',1,NULL,1),(241,'Arthrobacter bergerei','ARTBERG','428950000','Arthrobacter bergerei (organism)','2017-03-02 18:39:47','1',1,NULL,1),(242,'Arthrobacter chlorophenolicus','ARTCHLO','428038008','Arthrobacter chlorophenolicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(243,'Arthrobacter citreus','ARTCITR','44955005','Arthrobacter citreus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(244,'Arthrobacter creatinolyticus','ARTCREA','417608004','Arthrobacter creatinolyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(245,'Arthrobacter crystallopoietes','ARTCRYS','113435002','Arthrobacter crystallopoietes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(246,'Arthrobacter cumminsii','ARTCUMM','113436001','Arthrobacter cumminsii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(247,'Arthrobacter flavus','ARTFLAV','429762004','Arthrobacter flavus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(248,'Arthrobacter gandavensis','ARTGAND','428332000','Arthrobacter gandavensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(249,'Arthrobacter gangotriensis','ARTGANG','429237000','Arthrobacter gangotriensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(250,'Arthrobacter globiformis','ARTGLOB','3840003','Arthrobacter globiformis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(251,'Arthrobacter histidinolovorans','ARTHIST','113437005','Arthrobacter histidinolovorans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(252,'Arthrobacter ilicis','ARTILIC','48276002','Arthrobacter ilicis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(253,'Arthrobacter kerguelensis','ARTKERG','429238005','Arthrobacter kerguelensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(254,'Arthrobacter koreensis','ARTKORE','427847001','Arthrobacter koreensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(255,'Arthrobacter luteolus','ARTLUTE','127497007','Arthrobacter luteolus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(256,'Arthrobacter methylotrophus','ARTMETH','428270003','Arthrobacter methylotrophus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(257,'Arthrobacter mysorens','ARTMYSO','113438000','Arthrobacter mysorens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(258,'Arthrobacter nasiphocae','ARTNASI','428337006','Arthrobacter nasiphocae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(259,'Arthrobacter nicotianae','ARTNICO','113439008','Arthrobacter nicotianae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(260,'Arthrobacter nicotinovorans','ARTNICOT','113440005','Arthrobacter nicotianae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(261,'Arthrobacter nitroguajacolicus','ARTNITR','429001000','Arthrobacter nitroguajacolicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(262,'Arthrobacter oryzae','ARTORYZ','446485009','Arthrobacter oryzae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(263,'Arthrobacter oxydans','ARTOXYD','113441009','Arthrobacter oxydans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(264,'Arthrobacter pascens','ARTPASC','113442002','Arthrobacter pascens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(265,'Arthrobacter polychromogenes','ARTPOLY','113443007','Arthrobacter polychromogenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(266,'Arthrobacter protophormiae','ARTPROT','62636004','Arthrobacter protophormiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(267,'Arthrobacter psychrolactophilus','ARTPSYC','428338001','Arthrobacter psychrolactophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(268,'Arthrobacter psychrophenolicus','ARTPSYCH','428048005','Arthrobacter psychrophenolicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(269,'Arthrobacter ramosus','ARTRAMO','113444001','Arthrobacter ramosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(270,'Arthrobacter rhombi','ARTRHOM','428277000','Arthrobacter rhombi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(271,'Arthrobacter roseus','ARTROSE','429003002','Arthrobacter roseus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(272,'Arthrobacter russicus','ARTRUSS','428049002','Arthrobacter russicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(273,'Arthrobacter scleromae','ARTSCLE','704978005','Arthrobacter scleromae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(274,'Arthrobacter siderocapsulatus','PP','68608003','Pseudomonas putida (organism)','2017-03-02 18:39:48','1',1,NULL,1),(275,'Arthrobacter sulfonivorans','ARTSULF','429111005','Arthrobacter sulfonivorans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(276,'Arthrobacter sulfureus','ARTSULFU','33287009','Arthrobacter sulfureus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(277,'Arthrobacter uratoxydans','ARTURAT','112273008','Arthrobacter uratoxydans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(278,'Arthrobacter ureafaciens','ARTUREA','113446004','Arthrobacter ureafaciens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(279,'Arthrobacter variabilis','CORVAR','11575001','Corynebacterium variabile (organism)','2017-03-02 18:39:48','1',1,NULL,1),(280,'Arthrobacter viscosus','ARTVISC','113447008','Arthrobacter viscosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(281,'Arthrobacter woluwensis','ARTWOLU','113448003','Arthrobacter woluwensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(282,'Arthroderma','ARTHSP','11860003','Genus Arthroderma (organism)','2017-03-02 18:39:48','1',1,NULL,1),(283,'Arthrographis','ARTHRSP','112406004','Arthrographis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(284,'Ascaris','ASCAR','66953006','Ascaris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(285,'Aspergillus','ASU','2429008','Aspergillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(286,'Aspergillus candidus','ASPCAND','21477007','Aspergillus candidus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(287,'Aspergillus clavatus','ASPCLAV','87240002','Aspergillus clavatus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(288,'Aspergillus deflectus','ASPDEFL','4204003','Aspergillus deflectus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(289,'Aspergillus flavipes','ASPFLAV','54120001','Aspergillus flavipes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(290,'Aspergillus flavus','AF','66821001','Aspergillus flavus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(291,'Aspergillus fumigatus','ASPFU','32684000','Aspergillus fumigatus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(292,'Aspergillus glaucus','ASPGLAU','19556009','Aspergillus glaucus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(293,'Aspergillus nidulans','ASPNIDU','60264008','Aspergillus nidulans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(294,'Aspergillus niger','ASPNI','89354002','Aspergillus niger (organism)','2017-03-02 18:39:48','1',1,NULL,1),(295,'Aspergillus niveus','ASPNIVE','18651002','Aspergillus niveus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(296,'Aspergillus ochraceus','ASPOCHR','60111002','Aspergillus ochraceus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(297,'Aspergillus oryzae','ASPOR','35805009','Aspergillus oryzae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(298,'Aspergillus parasiticus','ASPPARA','57685002','Aspergillus parasiticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(299,'Aspergillus restrictus','ASPREST','12871004','Aspergillus restrictus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(300,'Aspergillus sydowii','ASPSYDO','46388006','Aspergillus sydowii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(301,'Aspergillus terreus','ASPTERR','26406003','Aspergillus terreus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(302,'Aspergillus ustus','ASPUSTU','23179008','Aspergillus ustus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(303,'Aspergillus versicolor','ASPVERS','48315007','Aspergillus versicolor (organism)','2017-03-02 18:39:48','1',1,NULL,1),(304,'Aspergillus wentii','ASPWENT','26030007','Aspergillus wentii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(305,'Asterococcus laidlawii','ACHOLAID','89082003','Acholeplasma laidlawii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(306,'Astroviridae','ASTTU','424055004','Family Astroviridae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(307,'Atopobium','ATOSP','115136007','Genus Atopobium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(308,'Atopobium fossor','ATOFOSS','428580003','Atopobium fossor (organism)','2017-03-02 18:39:48','1',1,NULL,1),(309,'Atopobium minutum','ATOMIN','113630002','Atopobium minutum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(310,'Atopobium parvulum','ATOPAR','113631003','Atopobium parvulum ( organism)','2017-03-02 18:39:48','1',1,NULL,1),(311,'Atopobium rimae','ATORIM','113632005','Atopobium rimae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(312,'Atopobium vaginae','ATOVAGI','417246003','Atopobium vaginae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(313,'Aureobacterium','MICRSP','114199008','Genus Microbacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(314,'Aureobasidium','AURESP','34121008','Genus Aureobasidium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(315,'Aureobasidium pullulans','AUREPULL','39129008','Aureobasidium pullulans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(316,'Averyella','AVERSP','421099007','Genus Averyella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(317,'Avian Influenza A H1N1 Virus','H1N1AVI','420362005','Influenzavirus type A, avian, H1N1 strain (organism)','2017-03-02 18:39:48','1',1,NULL,1),(318,'Avian tubercle bacillus','MYSCP','83723009','Mycobacterium avium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(319,'Avibacterium gallinarum','PASGA','429076006','Avibacterium gallinarum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(320,'Azospirillum','AZOSSP','413607005','Genus Azospirillum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(321,'Azospirillum brasilense','AZOSBRAS','413609008','Azospirillum brasilense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(322,'B19 virus','PARVOB19','63603005','B19 virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(323,'Babesia','BABES','35029001','Babesia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(324,'Babesia microti','BABMI','76828008','Babesia microti (organism)','2017-03-02 18:39:48','1',1,NULL,1),(325,'Bacillus','BAC','44762009','Genus Bacillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(326,'Bacillus abortus','BRAB','24224000','Brucella abortus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(327,'Bacillus aeolius','BAEOL','428272006','Bacillus aeolius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(328,'Bacillus aerius','BAERI','446486005','Bacillus aerius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(329,'Bacillus agaradhaerens','BAGAR','429112003','Bacillus agaradhaerens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(330,'Bacillus agri','BREVIAGRI','114115001','Brevibacillus agri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(331,'Bacillus alcalophilus','BALCA','90547001','Bacillus alcalophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(332,'Bacillus algicola','BALGI','428278005','Bacillus algicola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(333,'Bacillus alvei','PAEALV','114088008','Paenibacillus alvei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(334,'Bacillus amyloliquefaciens','BAMYL','82289003','Bacillus amyloliquefaciens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(335,'Bacillus anthracis','BA','21927003','Bacillus anthracis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(336,'Bacillus aquimaris','BAQUI','423188000','Bacillus aquimaris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(337,'Bacillus arseniciselenatis','BARSE','429004008','Bacillus arseniciselenatis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(338,'Bacillus asahii','BASAH','429115001','Bacillus asahii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(339,'Bacillus atrophaeus','BATRO','113450006','Bacillus atrophaeus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(340,'Bacillus azotoformans','BAZOT','72997009','Bacillus azotoformans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(341,'Bacillus badius','BBADI','33457001','Bacillus badius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(342,'Bacillus barbaricus','BBARB','429638004','Bacillus barbaricus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(343,'Bacillus bataviensis','BBATA','429246006','Bacillus bataviensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(344,'Bacillus benzoevorans','BBENZ','39232002','Bacillus benzoevorans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(345,'Bacillus boroniphilus','BBORO','427831003','Bacillus boroniphilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(346,'Bacillus brevis','BREBRE','114117009','Brevibacillus brevis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(347,'Bacillus butanolivorans','BBUTA','447039005','Bacillus butanolivorans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(348,'Bacillus carboniphilus','BCARB','113451005','Bacillus carboniphilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(349,'Bacillus centrosporus','BREVICENT','114118004','Brevibacillus centrosporus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(350,'Bacillus cereus','BC','84408007','Bacillus cereus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(351,'Bacillus cereus group','BCERG','413618005','Bacillus cereus group (organism)','2017-03-02 18:39:48','1',1,NULL,1),(352,'Bacillus chittonlyticus','BCHIT','113452003','Bacillus chittonlyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(353,'Bacillus circulans','BACCIR','71812004','Bacillus circulans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(354,'Bacillus circulans group','BACCIRG','413619002','Bacillus circulans group (organism)','2017-03-02 18:39:48','1',1,NULL,1),(355,'Bacillus clarkii','BCLARK','113453008','Bacillus clarkii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(356,'Bacillus clausii','BCLAUS','113454002','Bacillus clausii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(357,'Bacillus coagulans','BACCOA','81346002','Bacillus coagulans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(358,'Bacillus cohnii','BCOHN','113455001','Bacillus cohnii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(359,'Bacillus decisifrondis','BDECI','445081000','Bacillus decisifrondis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(360,'Bacillus decolorationis','BDECO','429116000','Bacillus decolorationis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(361,'Bacillus dipsosauri','BDIPS','113456000','Bacillus dipsosauri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(362,'Bacillus drentensis','BDREN','428129008','Bacillus drentensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(363,'Bacillus edaphicus','BEDAP','428284008','Bacillus edaphicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(364,'Bacillus ehimensis','BEHIM','113457009','Bacillus ehimensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(365,'Bacillus endophyticus','BENDO','429137008','Bacillus endophyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(366,'Bacillus farraginis','BFARR','429348009','Bacillus farraginis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(367,'Bacillus fastidiosus','BFAST','35784003','Bacillus fastidiosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(368,'Bacillus firmus','BACFIR','13430008','Bacillus firmus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(369,'Bacillus flexus','BFLEX','113458004','Bacillus flexus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(370,'Bacillus fordii','BFORD','417062004','Bacillus fordii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(371,'Bacillus fortis','BFORT','427859002','Bacillus fortis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(372,'Bacillus fumarioli','BFUMA','429118004','Bacillus fumarioli (organism)','2017-03-02 18:39:48','1',1,NULL,1),(373,'Bacillus funiculus','BFUNI','428387004','Bacillus funiculus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(374,'Bacillus galactophilus','BREVIAGRI','114115001','Brevibacillus agri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(375,'Bacillus galactosidilyticus','BGALA','427864003','Bacillus galactosidilyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(376,'Bacillus gelatini','BGELA','429034003','Bacillus gelatini (organism)','2017-03-02 18:39:48','1',1,NULL,1),(377,'Bacillus gibsonii','BGIBS','113460002','Bacillus gibsonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(378,'Bacillus ginsengi','BGINS','445082007','Bacillus ginsengi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(379,'Bacillus globisporus marinus','BMARN','87850009','Bacillus marinus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(380,'Bacillus gornadae','BGORN','29100001','Bacillus gornadae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(381,'Bacillus halmapalus','BHALM','113462005','Bacillus halmapalus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(382,'Bacillus haloalkaliphilus','BHALA','113463000','Bacillus haloalkaliphilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(383,'Bacillus halodenitrificans','BHALDF','113464006','Bacillus halodenitrificans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(384,'Bacillus halodurans','BHALDR','113465007','Bacillus halodurans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(385,'Bacillus halophilus','BHALP','113466008','Bacillus halophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(386,'Bacillus horikoshii','BHORI','113467004','Bacillus horikoshii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(387,'Bacillus horti','BHORT','429138003','Bacillus horti (organism)','2017-03-02 18:39:48','1',1,NULL,1),(388,'Bacillus humi','BHUMI','429139006','Bacillus humi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(389,'Bacillus hwajinpoensis','BHWAJ','429035002','Bacillus hwajinpoensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(390,'Bacillus idriensis','BIDRI','447040007','Bacillus idriensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(391,'Bacillus indicus','BINDI','429145003','Bacillus indicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(392,'Bacillus infantis','BINFA','432698009','Bacillus infantis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(393,'Bacillus infernus','BINFE','113468009','Bacillus infernus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(394,'Bacillus insolitus','BINSO','54382003','Bacillus insolitus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(395,'Bacillus jeotgali','BJEOT','429127003','Bacillus jeotgali (organism)','2017-03-02 18:39:48','1',1,NULL,1),(396,'Bacillus kaustophilus','BKAUS','113469001','Bacillus kaustophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(397,'Bacillus korlensis','BKORL','447041006','Bacillus korlensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(398,'Bacillus krulwichiae','BKRUL','429126007','Bacillus krulwichiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(399,'Bacillus laevolacticus','BLAEV','113470000','Bacillus laevolacticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(400,'Bacillus larvae','PAELARV','114098002','Paenibacillus larvae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(401,'Bacillus laterosporus','BRELAT','114121002','Brevibacillus laterosporus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(402,'Bacillus lentimorbus','PAELENT','414989004','Paenibacillus lentimorbus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(403,'Bacillus lentus','BACLEN','3020006','Bacillus lentus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(404,'Bacillus licheniformis','BACLIC','74867004','Bacillus licheniformis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(405,'Bacillus luciferensis','BLUCI','429675009','Bacillus luciferensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(406,'Bacillus macerans','PAEMAC','114101003','Paenibacillus macerans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(407,'Bacillus macroides','BMACR','413620008','Bacillus macroides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(408,'Bacillus macyae','BMACY','429206000','Bacillus macyae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(409,'Bacillus marinus','BMARN','87850009','Bacillus marinus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(410,'Bacillus marisflavi','BMARS','424425003','Bacillus marisflavi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(411,'Bacillus massiliensis','BMASS','445083002','Bacillus massiliensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(412,'Bacillus megaterium','BACMEG','79109002','Bacillus megaterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(413,'Bacillus methanolicus','BMETH','113471001','Bacillus methanolicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(414,'Bacillus mojavensis','BMOJA','113472008','Bacillus mojavensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(415,'Bacillus mucilaginosus','BMUCI','429210002','Bacillus mucilaginosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(416,'Bacillus muralis','BMURA','428576008','Bacillus muralis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(417,'Bacillus mycoides','BMYCO','33900003','Bacillus mycoides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(418,'Bacillus naganoensis','BNAGA','113473003','Bacillus naganoensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(419,'Bacillus nealsonii','BNEAL','428577004','Bacillus nealsonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(420,'Bacillus niacini','BNIAC','429747001','Bacillus niacini (organism)','2017-03-02 18:39:48','1',1,NULL,1),(421,'Bacillus not B anthracis','BACNANT','413352001','Bacillus species not Bacillus anthracis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(422,'Bacillus novalis','BNOVA','429212005','Bacillus novalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(423,'Bacillus odysseyi','BODYS','428958007','Bacillus odysseyi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(424,'Bacillus okuhidensis','BOKUH','429468004','Bacillus okuhidensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(425,'Bacillus oleronius','BOLER','113487003','Bacillus oleronius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(426,'Bacillus pallidus','BPALL','84897001','Bacillus pallidus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(427,'Bacillus pantothenticus','VIRPAN','114109001','Virgibacillus pantothenticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(428,'Bacillus parabrevis','BREVIPARA','114122009','Brevibacillus parabrevis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(429,'Bacillus pasteurii','BPAST','43131009','Bacillus pasteurii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(430,'Bacillus patagoniensis','BPATA','428962001','Bacillus patagoniensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(431,'Bacillus pocheonensis','BPOCH','442283002','Bacillus pocheonensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(432,'Bacillus polymyxa','PAEPOL','114105007','Paenibacillus polymyxa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(433,'Bacillus popilliae','PAEPOPI','414990008','Paenibacillus popilliae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(434,'Bacillus pseudalcaliphilus','BPSDL','113474009','Bacillus pseudalcaliphilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(435,'Bacillus pseudofirmus','BPSDF','113475005','Bacillus pseudofirmus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(436,'Bacillus pseudomycoides','BPSMY','429077002','Bacillus pseudomycoides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(437,'Bacillus psychrodurans','BPSYD','429078007','Bacillus psychrodurans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(438,'Bacillus psychrophilus','BPSYP','1810009','Bacillus psychrophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(439,'Bacillus psychrosaccharolyticus','BPSYS','113476006','Bacillus psychrosaccharolyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(440,'Bacillus psychrotolerans','BPSYT','429748006','Bacillus psychrotolerans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(441,'Bacillus pulvifaciens','BPULV','112274002','Bacillus pulvifaciens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(442,'Bacillus pumilus','BACPUM','16580009','Bacillus pumilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(443,'Bacillus pycnus','RUMMPYCN','450459009','Rummeliibacillus pycnus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(444,'Bacillus salexigens','BSALE','113478007','Bacillus salexigens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(445,'Bacillus saliphilus','BSALI','428588005','Bacillus saliphilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(446,'Bacillus schlegelii','BSCHL','51823001','Bacillus schlegelii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(447,'Bacillus selenitireducens','BSELE','428966003','Bacillus selenitireducens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(448,'Bacillus shackletonii','BSHAC','429221006','Bacillus shackletonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(449,'Bacillus silvestris','BSILV','429471007','Solibacillus silvestris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(450,'Bacillus simplex','BSIMP','113479004','Bacillus simplex (organism)','2017-03-02 18:39:48','1',1,NULL,1),(451,'Bacillus siralis','BSIRA','428972003','Bacillus siralis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(452,'Bacillus smithii','BACSM','84789000','Bacillus smithii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(453,'Bacillus soli','BSOLI','428973008','Bacillus soli (organism)','2017-03-02 18:39:48','1',1,NULL,1),(454,'Bacillus sonorensis','BSONO','429472000','Bacillus sonorensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(455,'Bacillus sphaericus','BACSPH','70313006','Bacillus sphaericus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(456,'Bacillus sporothermodurans','BSPOR','113480001','Bacillus sporothermodurans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(457,'Bacillus stearothermophilus','BACSTE','25484005','Bacillus stearothermophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(458,'Bacillus subterraneus','BSUBT','429486001','Bacillus subterraneus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(459,'Bacillus subtilis','BSU','83512007','Bacillus subtilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(460,'Bacillus subtilis group','BACSUG','413621007','Bacillus subtilis group (organism)','2017-03-02 18:39:48','1',1,NULL,1),(461,'Bacillus subtilis inaquosorum','BSIN','447068006','Bacillus subtilis subspecies inaquosorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(462,'Bacillus subtilis spizizenii','BSSP','427760003','Bacillus subtilis spizizenii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(463,'Bacillus subtilis subtilis','BSS','427764007','Bacillus subtilis subtilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(464,'Bacillus tequilensis','BTEQU','447069003','Bacillus tequilensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(465,'Bacillus thermantarcticus','BTHMN','429760007','Bacillus thermantarcticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(466,'Bacillus thermoamylovorans','BTHMM','113481002','Bacillus thermoamylovorans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(467,'Bacillus thermocatenulatus','BTHMC','113482009','Bacillus thermocatenulatus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(468,'Bacillus thermocloacae','BTHMCL','113483004','Bacillus thermocloacae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(469,'Bacillus thermoglucosidasius','BTHMG','36302007','Bacillus thermoglucosidasius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(470,'Bacillus thiaminolyticus','PAETHIA','114106008','Paenibacillus thiaminolyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(471,'Bacillus thuringiensis','BACTHU','64840009','Bacillus thuringiensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(472,'Bacillus tusciae','BTUSC','34498004','Bacillus tusciae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(473,'Bacillus validus','PAEVALI','114107004','Paenibacillus validus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(474,'Bacillus vallismortis','BVALL','113484005','Bacillus vallismortis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(475,'Bacillus vedderi','BVEDD','113485006','Bacillus vedderi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(476,'Bacillus velezensis','BVELE','429488000','Bacillus velezensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(477,'Bacillus vietnamensis','BVIET','429229008','Bacillus vietnamensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(478,'Bacillus violaceus','CHRVI','11042002','Chromobacterium violaceum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(479,'Bacillus vireti','BVIRE','429230003','Bacillus vireti (organism)','2017-03-02 18:39:48','1',1,NULL,1),(480,'Bacillus weihenstephanensis','BWEIH','413622000','Bacillus weihenstephanensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(481,'Bacterionema matruchotii','CORMA','89922004','Corynebacterium matruchotii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(482,'Bacterium anitratum','ACICBA','82550008','Acinetobacter calcoaceticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(483,'Bacterium lacti','LACTLACT','62079003','Lactococcus lactis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(484,'Bacteroides','BAS','57522007','Genus Bacteroides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(485,'Bacteroides bivius','PREBI','114131009','Prevotella bivia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(486,'Bacteroides buccae','PREBC','114134001','Prevotella buccae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(487,'Bacteroides buccalis','PREBU','114135000','Prevotella buccalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(488,'Bacteroides caccae','BACCC','14342006','Bacteroides caccae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(489,'Bacteroides capillosus','PSEFCAPI','447428000','Pseudoflavonifractor capillosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(490,'Bacteroides capillus','PREBC','114134001','Prevotella buccae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(491,'Bacteroides clostridiiformis','CLOCL','53220001','Clostridium clostridiiforme (organism)','2017-03-02 18:39:48','1',1,NULL,1),(492,'Bacteroides coagulans','BACCG','86193002','Bacteroides coagulans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(493,'Bacteroides corporis','PRECO','114136004','Prevotella corporis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(494,'Bacteroides denticola','PREDE','114138003','Prevotella denticola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(495,'Bacteroides disiens','PREDI','114139006','Prevotella disiens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(496,'Bacteroides distasonis','BACDT','447512008','Parabacteroides distasonis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(497,'Bacteroides eggerthii','BACEG','90072006','Bacteroides eggerthii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(498,'Bacteroides endodontalis','POREN','2401005','Bacteroides endodontalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(499,'Bacteroides fragilis','BF','55247009','Bacteroides fragilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(500,'Bacteroides fragilis a','BACST','163009','Bacteroides stercoris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(501,'Bacteroides fragilis fragilis','BF','55247009','Bacteroides fragilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(502,'Bacteroides fragilis group','BFG','417375007','Bacteroides fragilis group (organism)','2017-03-02 18:39:48','1',1,NULL,1),(503,'Bacteroides fragilis group 3452A','BACCC','14342006','Bacteroides caccae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(504,'Bacteroides fragilis ovatus','BACOV','86936008','Bacteroides ovatus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(505,'Bacteroides fragilis thetaiotamicron','BACTH','34236001','Bacteroides thetaiotaomicron (organism)','2017-03-02 18:39:48','1',1,NULL,1),(506,'Bacteroides fragilis vulgatus','BACVU','52798008','Bacteroides vulgatus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(507,'Bacteroides furcosus','ANRFU','24716009','Anaerorhabdus furcosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(508,'Bacteroides gingivalis','PORGI','114163003','Porphyromonas gingivalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(509,'Bacteroides gracilis','CAMGR','113528007','Campylobacter gracilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(510,'Bacteroides heparinolyticus','PREHE','114141007','Prevotella heparinolytica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(511,'Bacteroides hypermegas','MEGAHYPE','9199006','Megamonas hypermegale (organism)','2017-03-02 18:39:48','1',1,NULL,1),(512,'Bacteroides intermedius','PREIN','114142000','Prevotella intermedia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(513,'Bacteroides levii','PORLE','114165005','Porphyromonas levii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(514,'Bacteroides macacae','PORSA','114166006','Porphyromonas macacae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(515,'Bacteroides melaninogenicus','PREM','114144004','Prevotella melaninogenica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(516,'Bacteroides melaninogenicus asaccharolyticus','PORAS','115950003','Porphyromonas asaccharolyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(517,'Bacteroides melaninogenicus intermedius','PREIN','114142000','Prevotella intermedia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(518,'Bacteroides merdae','BACMR','447513003','Parabacteroides merdae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(519,'Bacteroides multiacidus','MITML','55553008','Mitsuokella multacida (organism)','2017-03-02 18:39:48','1',1,NULL,1),(520,'Bacteroides necrophorus','FUSNE','27274008','Fusobacterium necrophorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(521,'Bacteroides nodosus','DICNO','114168007','Dichelobacter nodosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(522,'Bacteroides nordii','BACNORD','10091000087105','Bacteroides nordii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(523,'Bacteroides ochraceus','CAPOC','4256006','Capnocytophaga ochracea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(524,'Bacteroides oralis','PREOR','114146002','Prevotella oralis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(525,'Bacteroides oris','PREOS','114147006','Prevotella oris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(526,'Bacteroides oulorum','PREOU','419466004','Prevotella oulorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(527,'Bacteroides ovatus','BACOV','86936008','Bacteroides ovatus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(528,'Bacteroides pentosaceus','PREBC','114134001','Prevotella buccae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(529,'Bacteroides praeacuta','TISPR','75376009','Tissierella praeacuta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(530,'Bacteroides praeacutus','TISPR','75376009','Tissierella praeacuta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(531,'Bacteroides putredinis','BACPU','426435007','Alistipes putredinis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(532,'Bacteroides pyogenes','BACPYOG','50504006','Bacteroides pyogenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(533,'Bacteroides ruminicola','PRERU','115949003','Prevotella ruminicola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(534,'Bacteroides ruminicola brevis','PRERU','115949003','Prevotella ruminicola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(535,'Bacteroides salivosus','PORSA','114166006','Porphyromonas macacae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(536,'Bacteroides splanchnicus','BACSP','446487001','Odoribacter splanchnicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(537,'Bacteroides stercoris','BACST','163009','Bacteroides stercoris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(538,'Bacteroides symbiosus','CLOSY','48321006','Clostridium symbiosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(539,'Bacteroides tectum','BACTE','85541000','Bacteroides tectum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(540,'Bacteroides tectus','BACTECT','431145009','Bacteroides tectus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(541,'Bacteroides thetaiotaomicron','BACTH','34236001','Bacteroides thetaiotaomicron (organism)','2017-03-02 18:39:48','1',1,NULL,1),(542,'Bacteroides trichoides','CLORA','42706008','Clostridium ramosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(543,'Bacteroides uniformis','BACUN','59604009','Bacteroides uniformis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(544,'Bacteroides veroralis','PREVE','114152001','Prevotella veroralis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(545,'Bacteroides vulgatus','BACVU','52798008','Bacteroides vulgatus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(546,'Bacteroides zoogleoformans','PREZO','425729002','Bacteroides zoogleoformans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(547,'Balantidium','BALAN','14479005','Balantidium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(548,'Balneatrix','BALNSP','416418007','Genus Balneatrix (organism)','2017-03-02 18:39:48','1',1,NULL,1),(549,'Balneatrix alpica','BALNALPI','416691007','Balneatrix alpica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(550,'Bartonella','BARSP','62496009','Genus Bartonella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(551,'Bartonella bacilliformis','BARBA','243352007','Bartonella bacilliformis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(552,'Bartonella clarridgeiae','BARCLAR','114223009','Bartonella clarridgeiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(553,'Bartonella elizabethae','BARELIZ','103513003','Bartonella elizabethae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(554,'Bartonella henselae','BARHEN','103510000','Bartonella henselae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(555,'Bartonella quintana','BARQUI','103511001','Bartonella quintana (organism)','2017-03-02 18:39:48','1',1,NULL,1),(556,'Bartonella vinsonii','BARVIN','103512008','Bartonella vinsonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(557,'Bartonella vinsonii arupensis','BARVINARU','417657001','Bartonella vinsonii subsp. arupensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(558,'Bartonella vinsonii berkhoffii','BARVINBER','114228000','Bartonella vinsonii ss berkhoffii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(559,'Basidiobolus','BASID','26217004','Basidiobolus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(560,'Basidiobolus haptosporus','BASIDRAN','68673006','Basidiobolus ranarum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(561,'Basidiobolus heterosporus','BASIDRAN','68673006','Basidiobolus ranarum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(562,'Basidiobolus meristosporus','BASIDRAN','68673006','Basidiobolus ranarum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(563,'Basidiobolus ranarum','BASIDRAN','68673006','Basidiobolus ranarum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(564,'Battey bacillus','MYCIN','83841006','Mycobacterium intracellulare (organism)','2017-03-02 18:39:48','1',1,NULL,1),(565,'Beauveria','BEAUV','66193005','Beauveria (organism)','2017-03-02 18:39:48','1',1,NULL,1),(566,'Beauveria alba','BEAUVALB','40056004','Beauveria alba (organism)','2017-03-02 18:39:48','1',1,NULL,1),(567,'Beauveria bassiana','BEAUVBAS','65562008','Beauveria bassiana (organism)','2017-03-02 18:39:48','1',1,NULL,1),(568,'Beneckea alginolytica','VIBAL','45749000','Vibrio alginolyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(569,'Beneckea harveyi','VIBHAR','84003007','Vibrio harveyi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(570,'Beneckea parahaemolytica','VIBPA','11736008','Vibrio parahaemolyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(571,'Beneckea vulnifica','VIBVU','55905000','Vibrio vulnificus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(572,'Bergeyella','BERSP','115659000','Genus Bergeyella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(573,'Bergeyella zoohelcum','BERZOO','113718000','Bergeyella zoohelcum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(574,'Beta-hemolytic streptococcus','BS','53490009','Beta-hemolytic streptococcus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(575,'Beta-hemolytic Streptococcus, group A','STRABH','413643004','Beta-hemolytic Streptococcus, group A (organism)','2017-03-02 18:39:48','1',1,NULL,1),(577,'Bifidobacterium','BIFSP','5912005','Genus Bifidobacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(578,'Bifidobacterium adolescentis','BIFADOL','34446001','Bifidobacterium adolescentis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(579,'Bifidobacterium angulatum','BIFANGU','33811005','Bifidobacterium angulatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(580,'Bifidobacterium appendicitis','BIFDE','36623007','Bifidobacterium dentium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(581,'Bifidobacterium bifidum','BIFBI','27108000','Bifidobacterium bifidum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(582,'Bifidobacterium breve','BIFBR','35011006','Bifidobacterium breve (organism)','2017-03-02 18:39:48','1',1,NULL,1),(583,'Bifidobacterium catenulatum','BIFCATE','11539003','Bifidobacterium catenulatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(584,'Bifidobacterium dentium','BIFDE','36623007','Bifidobacterium dentium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(585,'Bifidobacterium ericksonii','BIFDE','36623007','Bifidobacterium dentium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(586,'Bifidobacterium gallicum','BIFGALL','51095003','Bifidobacterium gallicum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(587,'Bifidobacterium infantis','BIFINF','35848003','Bifidobacterium infantis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(588,'Bifidobacterium longum','BIFLO','19464000','Bifidobacterium longum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(589,'Bifidobacterium pseudocatenulatum','BIFPSEU','19333001','Bifidobacterium pseudocatenulatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(590,'Bifidobacterium scardovii','BIFSCAR','385502004','Bifidobacterium scardovii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(591,'Bifidobacterium suis','BIFLO','19464000','Bifidobacterium longum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(592,'Bilophila','BILSP','114242008','Genus Bilophila (organism)','2017-03-02 18:39:48','1',1,NULL,1),(593,'Bilophila wadsworthia','BILWA','114243003','Bilophia wadsworhthia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(594,'Bipolaris','BIPOSP','24145000','Genus Bipolaris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(595,'Bipolaris australiensis','BIPOAUST','80923003','Bipolaris australiensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(596,'Bipolaris hawaiiense','BIPOHAWA','31335001','Bipolaris hawaiiense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(597,'Bipolaris hawaiiensis','BIPOHAWA','31335001','Bipolaris hawaiiense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(598,'Bipolaris spicifera','BIPOSPIC','88228004','Bipolaris spicifera (organism)','2017-03-02 18:39:48','1',1,NULL,1),(599,'BK Polyomavirus','BK','83397001','BK polyomavirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(600,'Blastoschizomyces','BLASSP','48211001','Blastoschizomyces (organism)','2017-03-02 18:39:48','1',1,NULL,1),(601,'Blastoschizomyces capitatus','BLACAP','67999003','Blastoschizomyces pseudotrichosporon (organism)','2017-03-02 18:39:48','1',1,NULL,1),(602,'Blastoschizomyces pseudotrichosporon','BLACAP','67999003','Blastoschizomyces pseudotrichosporon (organism)','2017-03-02 18:39:48','1',1,NULL,1),(603,'Blautia','BLAUSP','448390002','Genus Blautia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(604,'Blautia coccoides','BLAUCOCC','449531007','Blautia coccoides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(605,'Blautia hansenii','RUMHAN','449574005','Blautia hansenii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(606,'Blautia producta','BLAUPROD','698205008','Blautia producta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(607,'Boas-Oppler bacillus','LACAC','45707005','Lactobacillus acidophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(608,'Bocavirus','BOCA','430902006','Genus Bocavirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(609,'Bordetella','BORSP','46466005','Genus Bordetella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(610,'Bordetella avium','BORAVI','43354005','Bordetella avium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(611,'Bordetella bronchiseptica','BORBR','10620008','Bordetella bronchiseptica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(612,'Bordetella hinzii','BORHINZ','113495004','Bordetella hinzii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(613,'Bordetella holmesii','BORHOLM','116035000','Bordetella holmesii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(614,'Bordetella parapertussis','BORPA','26183002','Bordetella parapertussis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(615,'Bordetella pertussis','BORPE','5247005','Bordetella pertussis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(616,'Bordetella pertussis rough phase IV','PSEPE','17191002','Pseudomonas pertucinogena (organism)','2017-03-02 18:39:48','1',1,NULL,1),(617,'Bordetella petrii','BORPETR','416665006','Bordetella petrii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(618,'Bordetella trematum','BORTREM','113496003','Bordetella trematum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(619,'Borrelia','BOSP','112277009','Genus Borrelia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(620,'Borrelia afzelii','BOAFZE','416551001','Borrelia afzelii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(621,'Borrelia anserina','BOANSE','58382007','Borrelia anserina (organism)','2017-03-02 18:39:48','1',1,NULL,1),(622,'Borrelia burgdorferi','BOBU','76327009','Borrelia burgdorferi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(623,'Borrelia caucasica','BOCAUC','12544007','Borrelia caucasica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(624,'Borrelia coriaceae','BOCORI','43459001','Borrelia coriaceae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(625,'Borrelia crocidurae','BOCROC','35660000','Borrelia crocidurae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(626,'Borrelia duttoni','BODUTT','39709002','Borrelia duttonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(627,'Borrelia duttonii','BODUTT','39709002','Borrelia duttonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(628,'Borrelia garinii','BOGA','113497007','Borrelia garinii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(629,'Borrelia hermsii','BOHE','62748005','Borrelia hermsii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(630,'Borrelia hispanica','BOHISP','11787006','Borrelia hispanica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(631,'Borrelia japonica','BOJAPO','113498002','Borrelia japonica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(632,'Borrelia lusitaniae','BOLUSI','113499005','Borrelia lusitaniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(633,'Borrelia mazzottii','BOMAZZ','3293005','Borrelia mazzottii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(634,'Borrelia miyamotoi','BOMIYA','113500001','Borrelia miyamotoi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(635,'Borrelia novyi','BORE','34726005','Borrelia recurrentis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(636,'Borrelia obermyeri','BORE','34726005','Borrelia recurrentis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(637,'Borrelia parkeri','BOPA','41704008','Borrelia parkeri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(638,'Borrelia recurrentis','BORE','34726005','Borrelia recurrentis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(639,'Borrelia tanukii','BOTANU','113501002','Borrelia tanukii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(640,'Borrelia theileri','BOTHEI','89068003','Borrelia theileri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(641,'Borrelia turicatae','BOTU','24986006','Borrelia turicatae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(642,'Borrelia valaisiana','BOVALA','113503004','Borrelia valaisiana (organism)','2017-03-02 18:39:48','1',1,NULL,1),(643,'Borrelia venezuelensis','BOVENE','30765003','Borrelia venezuelensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(644,'Botryodiplodia','LASISP','78690001','Lasiodiplodia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(645,'Botryodiplodia theobromae','LASITHEO','784008','Lasiodiplodia theobromae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(646,'Bovine tubercle bacillus','MYCBO','27142009','Mycobacterium bovis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(647,'Brachycladium spiciferum','BIPOSPIC','88228004','Bipolaris spicifera (organism)','2017-03-02 18:39:48','1',1,NULL,1),(648,'Brachyspira','BRACSP','11572003','Genus Brachyspira (organism)','2017-03-02 18:39:48','1',1,NULL,1),(649,'Brachyspira aalborgi','BRACAALB','48621001','Brachyspira aalborgi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(650,'Brachyspira pilosicoli','BRACPILO','113517008','Brachyspira pilosicoli (organism)','2017-03-02 18:39:48','1',1,NULL,1),(651,'Branhamella catarrhalis','MORCA','24226003','Moraxella catarrhalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(652,'Branhamella cuniculi','MORCUNI','46450008','Moraxella cuniculi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(653,'Branhamella ovis','MOROVIS','112332009','Moraxella ovis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(654,'Brevibacillus','BREVISP','114114002','Genus Brevibacillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(655,'Brevibacillus agri','BREVIAGRI','114115001','Brevibacillus agri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(656,'Brevibacillus brevis','BREBRE','114117009','Brevibacillus brevis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(657,'Brevibacillus centrosporus','BREVICENT','114118004','Brevibacillus centrosporus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(658,'Brevibacillus laterosporus','BRELAT','114121002','Brevibacillus laterosporus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(659,'Brevibacillus parabrevis','BREVIPARA','114122009','Brevibacillus parabrevis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(660,'Brevibacterium','BRVSP','3603008','Genus Brevibacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(661,'Brevibacterium ammoniagenes','CORAMM','113607008','Corynebacterium ammoniagenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(662,'Brevibacterium casei','BRVCAS','6405003','Brevibacterium casei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(663,'Brevibacterium epidermidis','BRVEPI','57301000','Brevibacterium epidermidis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(664,'Brevibacterium linens','BRVLINE','112278004','Brevibacterium linens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(665,'Brevibacterium luteolum','BRVLUTE','409826000','Brevibacterium luteolum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(666,'Brevibacterium lutzens','BRVLUTE','409826000','Brevibacterium luteolum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(667,'Brevibacterium mcbrellneri','BRVMCBR','431099002','Brevibacterium mcbrellneri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(668,'Brevibacterium sanguinis','BRVSANG','431681006','Brevibacterium sanguinis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(669,'Brevibacterium vitarumen','CORVIT','116390001','Corynebacterium vitaeruminis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(670,'Brevundimonas','BREVUSP','115154006','Genus Brevundimonas (organism)','2017-03-02 18:39:48','1',1,NULL,1),(671,'Brevundimonas diminuta','BREDIM','113689009','Brevundimonas diminuta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(672,'Brevundimonas vesicularis','BREVES','113690000','Brevundimonas vesicularis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(673,'Brucella','BRSP','26250004','Genus Brucella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(674,'Brucella abortus','BRAB','24224000','Brucella abortus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(675,'Brucella canis','BRCA','38025008','Brucella canis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(676,'Brucella melitensis','BRME','72829003','Brucella melitensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(677,'Brucella melitensis biov suis','BRSU','48317004','Brucella suis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(678,'Brucella melitensis biovar abortus','BRAB','24224000','Brucella abortus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(679,'Brucella melitensis biovar canis','BRCA','38025008','Brucella canis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(680,'Brucella melitensis biovar neotomae','BRNEOT','28461002','Brucella neotomae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(681,'Brucella melitensis biovar ovis','BROVIS','35049005','Brucella ovis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(682,'Brucella neotomae','BRNEOT','28461002','Brucella neotomae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(683,'Brucella ovis','BROVIS','35049005','Brucella ovis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(684,'Brucella suis','BRSU','48317004','Brucella suis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(685,'Budvicia','BUDSP','55851000','Genus Budvicia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(686,'Budvicia aquatica','BUDAQ','75464008','Budvicia aquatica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(687,'Bulleidia','BULLSP','413724008','Genus Bulleidia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(688,'Bulleidia extructa','BULLEXTR','413725009','Bulleidia extructa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(689,'Bunyaviridae','BUNYA','243615000','Family Bunyaviridae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(690,'Burkholderia','BURSP','414324002','Genus Burkholderia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(691,'Burkholderia ambifaria','BURAMBI','416467009','Burkholderia ambifaria (organism)','2017-03-02 18:39:48','1',1,NULL,1),(692,'Burkholderia anthina','BURANTH','417565005','Burkholderia anthina (organism)','2017-03-02 18:39:48','1',1,NULL,1),(693,'Burkholderia arboris','BURARBO','445778000','Burkholderia arboris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(694,'Burkholderia cenocepacia','BURCENO','416941006','Burkholderia cenocepacia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(695,'Burkholderia cepacia','BURCE','113669008','Burkholderia cepacia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(696,'Burkholderia cepacia complex','BURCEPCOM','131281002','Burkholderia cepacia complex (organism)','2017-03-02 18:39:48','1',1,NULL,1),(697,'Burkholderia cocovenenans','BURGL','113671008','Burkholderia gladioli (organism)','2017-03-02 18:39:48','1',1,NULL,1),(698,'Burkholderia contaminans','BURCONT','698061006','Burkholderia contaminans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(699,'Burkholderia diffusa','BURDIFF','700394003','Burkholderia diffusa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(700,'Burkholderia dolosa','BURDOLO','431173006','Burkholderia dolosa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(701,'Burkholderia fungorum','BURFUNG','417285005','Burkholderia fungorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(702,'Burkholderia gladioli','BURGL','113671008','Burkholderia gladioli (organism)','2017-03-02 18:39:48','1',1,NULL,1),(703,'Burkholderia lata','BURLATA','442143003','Burkholderia lata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(704,'Burkholderia latens','BURLATE','700393009','Burkholderia latens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(705,'Burkholderia mallei','BURMA','113674000','Burkholderia mallei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(706,'Burkholderia metallica','BURMETA','700392004','Burkholderia metallica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(707,'Burkholderia multivorans','BURMULT','113675004','Burkholderia multivorans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(708,'Burkholderia pickettii','RALPIC','114053008','Ralstonia picketti (organism)','2017-03-02 18:39:48','1',1,NULL,1),(709,'Burkholderia pseudomallei','BURPM','116399000','Burkholderia pseudomallei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(710,'Burkholderia pyrrocinia','BURPYRR','113677007','Burkholderia pyrrocinia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(711,'Burkholderia stabilis','BURSTAB','416616001','Burkholderia stabilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(712,'Burkholderia thailandensis','BURTHAI','113678002','Burkholderia thailandensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(713,'Burkholderia ubonensis','BURUBON','431686001','Burkholderia ubonensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(714,'Burkholderia vietnamensis','BURVIET','113680008','Burkholderia vietnamensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(715,'Buttiauxella','BUTSP','3451006','Genus Buttiauxella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(716,'Buttiauxella agrestis','BUTAG','10969007','Buttiauxella agrestis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(717,'Buttiauxella brennerae','BUTBREN','416844002','Buttiauxella brennerae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(718,'Buttiauxella ferragutiae','BUTFERR','417520001','Buttiauxella ferragutiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(719,'Buttiauxella gaviniae','BUTGAVI','416852004','Buttiauxella gaviniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(720,'Buttiauxella izardii','BUTIZAR','417035007','Buttiauxella izardii','2017-03-02 18:39:48','1',1,NULL,1),(721,'Buttiauxella noackiae','BUTNO','114261007','Buttiauxella noackiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(722,'Buttiauxella warmboldiae','BUTWARM','416444007','Buttiauxella warmboldiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(723,'Butyribacterium rettgeri','EUBLI','87632000','Eubacterium limosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(724,'Butyrivibrio','BUTYSP','20778009','Genus Butyrivibrio (organism)','2017-03-02 18:39:48','1',1,NULL,1),(725,'Butyrivibrio fibrisolvens','BUTYFIBR','22176007','Butyrivibrio fibrisolvens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(726,'Butyrivibrio hungatei','BUTYHUNG','431168000','Butyrivibrio hungatei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(727,'Calicivirus','CALIV','243627002','Family Caliciviridae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(728,'California encephalitis virus','CALENC','64979004','California encephalitis virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(729,'Calymmatobacterium','CALSP','86702009','Genus Calymmatobacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(730,'Calymmatobacterium granulomatis','KLEGRA','417443008','Klebsiella granulomatis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(731,'Campylobacter','CAMSP','35408001','Genus Campylobacter (organism)','2017-03-02 18:39:48','1',1,NULL,1),(732,'Campylobacter butzleri','ACOBUTZ','114207009','Arcobacter butzleri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(733,'Campylobacter cinaedi','HELCI','29258005','Helicobacter cinaedi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(734,'Campylobacter coli','CAMCL','40614002','Campylobacter coli (organism)','2017-03-02 18:39:48','1',1,NULL,1),(735,'Campylobacter concisus','CAMCO','9892000','Campylobacter concisus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(736,'Campylobacter cryaerophila','CMPCR','7858008','Campylobacter cryaerophila (organism)','2017-03-02 18:39:48','1',1,NULL,1),(737,'Campylobacter curvus','CAMCU','116037008','Campylobacter curvus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(738,'Campylobacter fennelliae','HELFE','58177005','Helicobacter fennelliae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(739,'Campylobacter fetus','CAMFU','84210007','Campylobacter fetus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(740,'Campylobacter fetus fetus','CAMFF','64589009','Campylobacter fetus ss. fetus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(741,'Campylobacter fetus jejuni','CAMJE','66543000','Campylobacter jejuni (organism)','2017-03-02 18:39:48','1',1,NULL,1),(742,'Campylobacter fetus venerealis','CAMFV','60817000','Campylobacter fetus ss. venerealis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(743,'Campylobacter gracilis','CAMGR','113528007','Campylobacter gracilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(744,'Campylobacter helveticus','CAMHELV','113522008','Campylobacter helveticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(745,'Campylobacter hominis','CAMHOMI','416679003','Campylobacter hominis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(746,'Campylobacter hyointestinalis','CAMHY','9041007','Campylobacter hyointestinalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(747,'Campylobacter insulaenigrae','CAMINSU','432460004','Campylobacter insulaenigrae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(748,'Campylobacter jejuni','CAMJE','66543000','Campylobacter jejuni (organism)','2017-03-02 18:39:48','1',1,NULL,1),(749,'Campylobacter jejuni doylei','CAMJD','113523003','Campylobacter jejuni ss doylei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(750,'Campylobacter jejuni jejuni','CAMJJ','113524009','Campylobacter jejuni ss jejuni (organism)','2017-03-02 18:39:48','1',1,NULL,1),(751,'Campylobacter lanienae','CAMLANI','432537009','Campylobacter lanienae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(752,'Campylobacter lari','CAMLA','116386003','Campylobacter lari (organism)','2017-03-02 18:39:48','1',1,NULL,1),(753,'Campylobacter laridis','CAMLA','116386003','Campylobacter lari (organism)','2017-03-02 18:39:48','1',1,NULL,1),(754,'Campylobacter mucosalis','CAMSM','87402003','Campylobacter mucosalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(755,'Campylobacter mustelae','HELMU','10402009','Helicobacter mustelae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(756,'Campylobacter nitrofigilis','ACONI','408629003','Arcobacter nitrofigilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(757,'Campylobacter pylori','HELPY','80774000','Helicobacter pylori (organism)','2017-03-02 18:39:48','1',1,NULL,1),(758,'Campylobacter pylori mustelae','HELMU','10402009','Helicobacter mustelae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(759,'Campylobacter pylori pylori','HELPY','80774000','Helicobacter pylori (organism)','2017-03-02 18:39:48','1',1,NULL,1),(760,'Campylobacter pyloridis','HELPY','80774000','Helicobacter pylori (organism)','2017-03-02 18:39:48','1',1,NULL,1),(761,'Campylobacter rectus','CAMRE','113525005','Campylobacter rectus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(762,'Campylobacter showae','CAMSHOW','113526006','Campylobacter showae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(763,'Campylobacter sputorum','CAMSPUT','91524009','Campylobacter sputorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(764,'Campylobacter sputorum bubulus','CAMSB','19552006','Campylobacter sputorum ss. bubulus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(765,'Campylobacter sputorum mucosalis','CAMSM','87402003','Campylobacter mucosalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(766,'Campylobacter sputorum sputorum','CAMSS','58928003','Campylobacter sputorum ss. sputorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(767,'Campylobacter upsaliensis','CAMUPSA','103427005','Campylobacter upsaliensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(768,'Campylobacter ureolyticus','CAMUREO','450602004','Campylobacter ureolyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(769,'Candida','CAS','3265006','Genus Candida (organism)','2017-03-02 18:39:48','1',1,NULL,1),(770,'Candida albicans','CA','53326005','Candida albicans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(771,'Candida albicans var stellatoidea','CANST','20849004','Candida stellatoidea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(772,'Candida brumptii','CANCAT','283868009','Candida catenulata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(773,'Candida candida','TORCAN','47931009','Torulopsis candida (organism)','2017-03-02 18:39:48','1',1,NULL,1),(774,'Candida catenulata','CANCAT','283868009','Candida catenulata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(775,'Candida ciferrii','CANCIF','283867004','Candida ciferrii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(776,'Candida dubliniensis','CANDUB','115952006','Candida dubliniensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(777,'Candida famata','CANFAM','415888004','Candida famata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(778,'Candida glabrata','CG','444877006','Candida glabrata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(779,'Candida guilliermondii','CANGU','16557001','Candida guilliermondii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(780,'Candida guilliermondii var membranaefaciens','CANGUI','283874009','Candida guilliermondii var membranaefaciens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(781,'Candida haemulonii','CANHAE','243452008','Candida haemulonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(782,'Candida inconspicua','CANINC','283871001','Candida inconspicua (organism)','2017-03-02 18:39:48','1',1,NULL,1),(783,'Candida intermedia','CANINT','243455005','Candida intermedia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(784,'Candida kefyr','CANKEF','446237006','Candida kefyr (organism)','2017-03-02 18:39:48','1',1,NULL,1),(785,'Candida krusei','CK','76995003','Candida krusei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(786,'Candida lambica','CANLAM','116458007','Candida lambica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(787,'Candida lipolytica','CANLIP','63775007','Candida lipolytica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(788,'Candida lusitaniae','CANLU','47608006','Candida lusitaniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(789,'Candida norvegensis','CANNOR','243458007','Candida norvegensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(790,'Candida obtusa','CANLU','47608006','Candida lusitaniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(791,'Candida parakrusei','CP','61302002','Candida parapsilosis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(792,'Candida parapsilosis','CP','61302002','Candida parapsilosis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(793,'Candida parapsilosis var obtusa','CANLU','47608006','Candida lusitaniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(794,'Candida pararugosa','CANPARA','702328004','Candida pararugosa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(795,'Candida paratropicalis','CT','47885008','Candida tropicalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(796,'Candida pelliculosa','CANPEL','115953001','Candida pelliculosa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(797,'Candida pintolopesii','CANPIN','283870000','Candida pintolopesii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(798,'Candida pulcherrima','CANPUL','243459004','Candida pulcherrima (organism)','2017-03-02 18:39:48','1',1,NULL,1),(799,'Candida ravautii','CANCAT','283868009','Candida catenulata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(800,'Candida rugosa','CANRUG','23773004','Candida rugosa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(801,'Candida sake','CANSAKE','446283000','Candida sake (organism)','2017-03-02 18:39:48','1',1,NULL,1),(802,'Candida slooffii','CANPIN','283870000','Candida pintolopesii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(803,'Candida stellatoidea','CANST','20849004','Candida stellatoidea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(804,'Candida tropicalis','CT','47885008','Candida tropicalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(805,'Candida utilis','CANUTI','243464000','Candida utilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(806,'Candida vini','CANVIN','45362004','Candida vini (organism)','2017-03-02 18:39:48','1',1,NULL,1),(807,'Candida viswanathii','CANVIS','243465004','Candida viswanathii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(808,'Candida zeylanoides','CANZEY','243466003','Candida zeylanoides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(809,'Capnocytophaga','CAPSP','22294008','Genus Capnocytophaga (organism)','2017-03-02 18:39:48','1',1,NULL,1),(810,'Capnocytophaga canimorsus','CAPCA','113529004','Capnocytophaga canimorsus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(811,'Capnocytophaga cynodegmi','CAPCYNO','113530009','Capnocytophaga cynodegmi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(812,'Capnocytophaga gingivalis','CAPGI','66463009','Capnocytophaga gingivalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(813,'Capnocytophaga granulosa','CAPGRAN','113531008','Capnocytophaga granulosa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(814,'Capnocytophaga hemolytica','CAPHEMO','113532001','Capnocytophaga haemolytica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(815,'Capnocytophaga ochracea','CAPOC','4256006','Capnocytophaga ochracea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(816,'Capnocytophaga sputigena','CAPST','89892005','Capnocytophaga sputigena (organism)','2017-03-02 18:39:48','1',1,NULL,1),(817,'carbapenem resistant Acinetobacter','ACS','445721008','carbapenem resistant Acinetobacter (organism)','2017-03-02 18:39:48','1',1,NULL,1),(818,'carbapenem resistant Enterobacter cloacae','ENC','714007005','carbapenem resistant Enterobacter cloacae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(819,'carbapenem resistant Klebsiella pneumoniae','KP','446870005','carbapenem resistant Klebsiella pneumoniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(820,'Cardiobacterium','CARSP','22292007','Genus Cardiobacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(821,'Cardiobacterium hominis','CARHO','7333005','Cardiobacterium hominis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(822,'Cardiobacterium valvarum','CARVALV','428148007','Cardiobacterium valvarum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(823,'Catenibacterium','CATESP','417391005','Genus Catenibacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(824,'Catenibacterium mitsuokai','CATEMITS','416305003','Catenibacterium mitsuokai (organism)','2017-03-02 18:39:48','1',1,NULL,1),(825,'Catonella','CATOSP','363774008','Genus Catonella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(826,'Catonella morbi','CATOMORB','363775009','Catonella morbi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(827,'CDC Corynebacterium group ANF','CORA','113608003','Corynebacterium afermentans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(828,'CDC Corynebacterium group D-2','CORUR','113613004','Corynebacterium urealyticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(829,'CDC Corynebacterium group G-1','CORACC','243254006','Corynebacterium accolens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(830,'CDC Corynebacterium group G-2','CORG2','243280007','Centers for Disease Control and Prevention  Corynebacterium group G-2 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(831,'CDC Corynebacterium group JK','CORJK','63410006','Corynebacterium jeikeium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(832,'CDC coryneform group 3','DERMAHOM','413977006','Dermabacter hominis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(833,'CDC coryneform group 5','DERMAHOM','413977006','Dermabacter hominis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(834,'CDC EF-19','COMTR','81829007','Comamonas terrigena (organism)','2017-03-02 18:39:48','1',1,NULL,1),(835,'CDC Enteric group 10','ESCFE','72461005','Escherichia fergusonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(836,'CDC Enteric group 15','CEDDA','30854004','Cedecea davisae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(837,'CDC Enteric group 17','ENTAB','33115003','Enterobacter asburiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(838,'CDC Enteric group 45','YOKRE','89477001','Yokenella regensburgei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(839,'CDC Enteric group 46','MOEWI','37107002','Moellerella wisconsensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(840,'CDC Enteric group 57','LEMGR','74357002','Leminorella grimontii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(841,'CDC Enteric Group 58','CDCENTGRP','413793007','Centers for Disease Control and Prevention Enteric Group 58 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(842,'CDC Enteric group 75','ENTHO','114454006','Enterobacter hormaechei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(843,'CDC Enteric group 90','TRAGU','243309007','Trabulsiella guamensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(844,'CDC group DF-1','CAPOC','4256006','Capnocytophaga ochracea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(845,'CDC group DF-2','CAPCA','113529004','Capnocytophaga canimorsus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(846,'CDC group DF-2-like','CAPCYNO','113530009','Capnocytophaga cynodegmi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(847,'CDC group DF-3','DYSGCAPN','409811002','Dysgonomonas capnocytophagoides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(848,'CDC group E9','TATPT','1546007','Tatumella ptyseos (organism)','2017-03-02 18:39:48','1',1,NULL,1),(849,'CDC group EF22','CAMCL','40614002','Campylobacter coli (organism)','2017-03-02 18:39:48','1',1,NULL,1),(850,'CDC group EF26','BORBR','10620008','Bordetella bronchiseptica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(851,'CDC group EF-4b','EF4B','116405002','Centers for Disease Control and Prevention (CDC) group EF-4b (organism)','2017-03-02 18:39:48','1',1,NULL,1),(852,'CDC group EF5','PHODAM','387799003','Photobacterium damselae subsp damselae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(853,'CDC Group EO-2','PARYEE','415033004','Paracoccus yeei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(854,'CDC group HB-1','EIC','52591004','Eikenella corrodens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(855,'CDC group Iia','ELIZME','425774009','Elizabethkingia meningoseptica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(856,'CDC group Iib','CHRIND','113549008','Chryseobacterium indologenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(857,'CDC group IIe','FLA2E','127530009','Centers for Disease Control and Prevention group IIe (organism)','2017-03-02 18:39:48','1',1,NULL,1),(858,'CDC group IIf','WEEVI','83326004','Weeksella virosa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(859,'CDC group IIh','FLA2H','127532001','Centers for Disease Control and Prevention group IIh (organism)','2017-03-02 18:39:48','1',1,NULL,1),(860,'CDC group IIi','FLA2I','127533006','Centers for Disease Control and Prevention group IIi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(861,'CDC group IIk-1','SPMPA','243350004','Sphingomonas paucimobilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(862,'CDC group IIk-2','SPHMU','51595006','Sphingobacterium multivorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(863,'CDC group IIk-3','SPHST','61675006','Sphingobacterium spiritivorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(864,'CDC group IVa','BORBR','10620008','Bordetella bronchiseptica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(865,'CDC group IVc-2','CDC4C2','127534000','Centers for Disease Control and Prevention (CDC) group IVc-2 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(866,'CDC group IVe','OLIUR','11309009','Oligella ureolytica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(867,'CDC group M-3','MORAT','47491001','Moraxella atlantae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(868,'CDC group M-4','OLIUT','90341001','Oligella urethralis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(869,'CDC group M-5','NEIWEAV','113894007','Neisseria weaveri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(870,'CDC group M-6','NEINI','113895008','Neisseria elongata ss nitroreducens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(871,'CDC group P-1','CLOLI','48305001','Clostridium limosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(872,'CDC group TM-1','KINDE','78676004','Kingella denitrificans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(873,'CDC group Vb-1','PST','58024003','Pseudomonas stutzeri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(874,'CDC group Vb-2','PSEMEN','59419001','Pseudomonas mendocina (organism)','2017-03-02 18:39:48','1',1,NULL,1),(875,'CDC Group Vb-3','CDCVB3','413797008','Centers for Disease Control and Prevention (CDC) Group Vb-3 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(876,'CDC group Vc','ALDE','42947002','Alcaligenes xylosoxidans ss. denitrificans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(877,'CDC group Vd-1','OCHAN','116490002','Ochrobactrum anthropi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(878,'CDC group Ve-1','CHSLU','33919008','Chryseomonas luteola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(879,'CDC Nonoxidizer group 2','BORHOLM','116035000','Bordetella holmesii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(880,'Cedecea','CEDSP','69937007','Genus Cedecea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(881,'Cedecea davisae','CEDDA','30854004','Cedecea davisae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(882,'Cedecea lapagei','CEDLA','2345009','Cedecea lapagei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(883,'Cedecea neteri','CEDNE','83767006','Cedecea neteri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(884,'Cedecea species 3','CEDS3','243292007','Cedecea species 3 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(885,'Cedecea species 4','CEDNE','83767006','Cedecea neteri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(886,'Cedecea species 5','CEDS5','243293002','Cedecea species 5 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(887,'Cellulomonas','CELLSP','114188006','Genus Cellulomonas (organism)','2017-03-02 18:39:48','1',1,NULL,1),(888,'Cellulomonas cellulans','CELLUCELL','409862004','Cellulosimicrobium cellulans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(889,'Cellulomonas hominis','CELLHOMI','114196001','Cellulomonas hominis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(890,'Cellulomonas humilata','CELLHUMI','431580002','Cellulomonas humilata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(891,'Cellulomonas turbata','OERTU','10459009','Oerskovia turbata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(892,'Cellulosimicrobium','CELLUSP','409860007','Genus Cellulosimicrobium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(893,'Cellulosimicrobium cellulans','CELLUCELL','409862004','Cellulosimicrobium cellulans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(894,'Centipeda','CENSP','90699007','Genus Centipeda (organism)','2017-03-02 18:39:48','1',1,NULL,1),(895,'Centipeda periodontii','CENPE','72002007','Centipeda periodontii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(896,'Cephalosporium','ACRE','63996006','Acremonium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(897,'Cephalosporium kiliense','ACREKILI','243484001','Acremonium kiliense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(898,'Cephalosporium potronii','ACREPOTR','36128004','Acremonium potroni (organism)','2017-03-02 18:39:48','1',1,NULL,1),(899,'Cephalosporium recifei','ACRERECI','654006','Acremonium recifei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(900,'Cephalosporium strictum','ACRESTRI','17720002','Acremonium strictum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(901,'Chaetomium','CHAESP','10210008','Chaetomium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(902,'Chaetomium atrobrunneum','CHAEATRO','415894007','Chaetomium atrobrunneum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(903,'Chaetomium globosum','CHAEGLOB','38270005','Chaetomium globosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(904,'Chikungunya virus','CHIKVI','2423009','Chikungunya virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(905,'Chilomastix','CHILSP','72548008','Chilomastix (organism)','2017-03-02 18:39:48','1',1,NULL,1),(906,'Chilomastix mesnili','CHILMESN','41340007','Chilomastix mesnili (organism)','2017-03-02 18:39:48','1',1,NULL,1),(907,'Chlamydia','CHLSP','16241000','Genus Chlamydia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(908,'Chlamydia pneumoniae','CHLPN','103514009','Chlamydophila pneumoniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(909,'Chlamydia psittaci','CHLPS','14590003','Chlamydophila psittaci (organism)','2017-03-02 18:39:48','1',1,NULL,1),(910,'Chlamydia trachomatis','CHLTR','63938009','Chlamydia trachomatis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(911,'Chlamydia TWAR','CHLPN','103514009','Chlamydophila pneumoniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(912,'Chlamydophila','CHLASP','372926008','Genus Chlamydophila (organism)','2017-03-02 18:39:48','1',1,NULL,1),(913,'Chlamydophila abortus','CHLAABOR','413820006','Chlamydophila abortus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(914,'Chlamydophila pneumoniae','CHLPN','103514009','Chlamydophila pneumoniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(915,'Chlamydophila psittaci','CHLPS','14590003','Chlamydophila psittaci (organism)','2017-03-02 18:39:48','1',1,NULL,1),(916,'Chromobacterium','CHRSP','20064000','Genus Chromobacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(917,'Chromobacterium janthinum','CHRVI','11042002','Chromobacterium violaceum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(918,'Chromobacterium violaceum','CHRVI','11042002','Chromobacterium violaceum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(919,'Chryseobacterium','CHRYS','115125000','Genus Chryseobacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(920,'Chryseobacterium gleum','CHRGLE','113548000','Chryseobacterium gleum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(921,'Chryseobacterium indologenes','CHRIND','113549008','Chryseobacterium indologenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(922,'Chryseomonas','CHSSP','5274006','Genus Chryseomonas (organism)','2017-03-02 18:39:48','1',1,NULL,1),(923,'Chryseomonas luteola','CHSLU','33919008','Chryseomonas luteola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(924,'Chryseomonas polytricha','CHSLU','33919008','Chryseomonas luteola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(925,'Chrysosporium','CHRYSP','55038006','Chrysosporium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(926,'Citrobacter','CS','75972000','Genus Citrobacter (organism)','2017-03-02 18:39:48','1',1,NULL,1),(927,'Citrobacter amalonaticus','CITAM','55744003','Citrobacter amalonaticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(928,'Citrobacter amalonaticus, biogroup 1','CITA1','114263005','Citrobacter farmeri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(929,'Citrobacter braakii','CITBRA','114262000','Citrobacter braakii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(930,'Citrobacter diversus','CITKO','114264004','Citrobacter koseri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(931,'Citrobacter farmeri','CITA1','114263005','Citrobacter farmeri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(932,'Citrobacter freundii','CF','6265002','Citrobacter freundii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(933,'Citrobacter gillenii','CITGILL','416990006','Citrobacter gillenii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(934,'Citrobacter koseri','CITKO','114264004','Citrobacter koseri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(935,'Citrobacter murliniae','CITMURL','417581000','Citrobacter murliniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(936,'Citrobacter rodentium','CITRODE','114444007','Citrobacter rodentium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(937,'Citrobacter sedlakii','CITSED','114265003','Citrobacter sedlakii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(938,'Citrobacter werkmanii','CITWER','114442006','Citrobacter werkmanii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(939,'Citrobacter youngae','CITYOU','114443001','Citrobacter youngae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(940,'Cladophialophora','CLADSP','415897000','Cladophialophora (organism)','2017-03-02 18:39:48','1',1,NULL,1),(941,'Cladophialophora bantiana','CLADBANT','415898005','Cladophialophora bantiana (organism)','2017-03-02 18:39:48','1',1,NULL,1),(942,'Cladosporium','CLADO','32043002','Genus Cladosporium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(943,'Cladosporium cladosporioides','CLADOCLAD','21121003','Cladosporium cladosporioides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(944,'Cladosporium herbarum','CLADOHERB','3459008','Cladosporium herbarum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(945,'Cladosporium sphaerospermum','CLADOSPHA','19358006','Cladosporium sphaerospermum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(946,'Cladosporium werneckii','EXOPWERN','83801002','Exophiala werneckii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(947,'Cloaca cloacae','ENC','14385002','Enterobacter cloacae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(948,'Clostridium','CLS','8191000','Genus Clostridium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(949,'Clostridium absonum','CLOSAR','84958008','Clostridium sardiniense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(950,'Clostridium argentiense','CLOAR','113565009','Clostridium argentiense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(951,'Clostridium argentinense','CLOAR','113565009','Clostridium argentiense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(952,'Clostridium barati','CLOBA','31169007','Clostridium baratii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(953,'Clostridium baratii','CLOBA','31169007','Clostridium baratii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(954,'Clostridium barkeri','EUBBARK','113728009','Eubacterium barkeri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(955,'Clostridium bartlettii','CLOBART','432470002','Clostridium bartlettii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(956,'Clostridium bifermentans','CLOBI','8208007','Clostridium bifermentans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(957,'Clostridium bolteae','CLOBOLT','413879005','Clostridium bolteae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(958,'Clostridium botulinum','CLOBO','13080008','Clostridium botulinum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(959,'Clostridium botulinum group G','CLOAR','113565009','Clostridium argentiense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(960,'Clostridium botulinum, type A','CLOBOA','18065004','Clostridium botulinum, type A (organism)','2017-03-02 18:39:48','1',1,NULL,1),(961,'Clostridium botulinum, type E','CLOBOE','8386006','Clostridium botulinum, type E (organism)','2017-03-02 18:39:48','1',1,NULL,1),(962,'Clostridium botulinum, type F','CLOBOF','32829006','Clostridium botulinum, type F (organism)','2017-03-02 18:39:48','1',1,NULL,1),(963,'Clostridium butyricum','CLOBU','19084008','Clostridium butyricum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(964,'Clostridium cadaveris','CLOCA','16616000','Clostridium cadaveris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(965,'Clostridium carnis','CLOCN','7889007','Clostridium carnis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(966,'Clostridium celerecrescens','CLOCELE','113566005','Clostridium celerecrescens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(967,'Clostridium clostridioforme','CLOCL','53220001','Clostridium clostridiiforme (organism)','2017-03-02 18:39:48','1',1,NULL,1),(968,'Clostridium cochlearium','CLOCO','76955000','Clostridium cochlearium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(969,'Clostridium cocleatum','CLOCOCL','24656001','Clostridium cocleatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(970,'Clostridium difficile','CD','5933001','Clostridium difficile (organism)','2017-03-02 18:39:48','1',1,NULL,1),(971,'Clostridium difficilis','CD','5933001','Clostridium difficile (organism)','2017-03-02 18:39:48','1',1,NULL,1),(972,'Clostridium disporicum','CLODISP','57230009','Clostridium disporicum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(973,'Clostridium edematiens (OT)','CLONOVY','45891006','Clostridium novyi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(974,'Clostridium edematiens, type A','CLONO','53591005','Clostridium novyi, type A (organism)','2017-03-02 18:39:48','1',1,NULL,1),(975,'Clostridium edematiens, type B','CLONOVYB','74494007','Clostridium novyi, type B (organism)','2017-03-02 18:39:48','1',1,NULL,1),(976,'Clostridium fallax','CLOFA','14264000','Clostridium fallax (organism)','2017-03-02 18:39:48','1',1,NULL,1),(977,'Clostridium ghoni','CLOGH','10467001','Clostridium ghonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(978,'Clostridium ghonii','CLOGH','10467001','Clostridium ghonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(979,'Clostridium glycolicum','CLOGL','112279007','Clostridium glycolicum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(980,'Clostridium haemolyticum','CLOHA','45724004','Clostridium haemolyticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(981,'Clostridium hastiforme','CLOHT','19185007','Clostridium hastiforme (organism)','2017-03-02 18:39:48','1',1,NULL,1),(982,'Clostridium hathewayi','CLOHATH','416526002','Clostridium hathewayi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(983,'Clostridium hemolyticum','CLOHA','45724004','Clostridium haemolyticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(984,'Clostridium histolyticum','CLOHI','87443003','Clostridium histolyticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(985,'Clostridium indolis','CLOID','50884003','Clostridium indolis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(986,'Clostridium innocuum','CLOIN','19415008','Clostridium innocuum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(987,'Clostridium intestinale','CLOINTE','113580003','Clostridium intestinale (organism)','2017-03-02 18:39:48','1',1,NULL,1),(988,'Clostridium intestinalis','CLOINTE','113580003','Clostridium intestinale (organism)','2017-03-02 18:39:48','1',1,NULL,1),(989,'Clostridium irregulare','CLOIR','40423006','Clostridium irregulare (organism)','2017-03-02 18:39:48','1',1,NULL,1),(990,'Clostridium irregularis','CLOIR','40423006','Clostridium irregulare (organism)','2017-03-02 18:39:48','1',1,NULL,1),(991,'Clostridium lentoputrescens','CLOCO','76955000','Clostridium cochlearium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(992,'Clostridium leptum','CLOLEPT','37059005','Clostridium leptum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(993,'Clostridium limosum','CLOLI','48305001','Clostridium limosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(994,'Clostridium malenominatum','CLOMA','12948002','Clostridium malenominatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(995,'Clostridium novyi','CLONOVY','45891006','Clostridium novyi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(996,'Clostridium novyi type D','CLOHA','45724004','Clostridium haemolyticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(997,'Clostridium novyi, type A','CLONO','53591005','Clostridium novyi, type A (organism)','2017-03-02 18:39:48','1',1,NULL,1),(998,'Clostridium novyi, type B','CLONOVYB','74494007','Clostridium novyi, type B (organism)','2017-03-02 18:39:48','1',1,NULL,1),(999,'Clostridium oedematiens','CLONOVY','45891006','Clostridium novyi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1000,'Clostridium orbiscindens','FLAVPLAU','447490001','Flavonifractor plautii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1001,'Clostridium oroticum','CLOOR','29280008','Clostridium oroticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1002,'Clostridium paraperfringens','CLOBA','31169007','Clostridium baratii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1003,'Clostridium paraputrificum','CLOPU','41966004','Clostridium paraputrificum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1004,'Clostridium perenne','CLOBA','31169007','Clostridium baratii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1005,'Clostridium perfringens','CLP','8331005','Clostridium perfringens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1006,'Clostridium pseudofallax','CLOFA','14264000','Clostridium fallax (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1007,'Clostridium pseudotetanicum','CLOBU','19084008','Clostridium butyricum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1008,'Clostridium putrefaciens','CLOPS','22321006','Clostridium putrefaciens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1009,'Clostridium ramosum','CLORA','42706008','Clostridium ramosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1010,'Clostridium sardiniense','CLOSAR','84958008','Clostridium sardiniense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1011,'Clostridium sardiniensis','CLOSAR','84958008','Clostridium sardiniense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1012,'Clostridium septicum','CLOSE','33101000','Clostridium septicum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1013,'Clostridium sordellii','CLOSO','89313005','Clostridium sordellii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1014,'Clostridium sphenoides','CLOSH','65891000','Clostridium sphenoides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1015,'Clostridium spiroforme','CLOSPIR','42936009','Clostridium spiroforme (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1016,'Clostridium sporogenes','CLOSP','41468005','Clostridium sporogenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1017,'Clostridium sporosphaeroides','CLOSPOR','89918009','Clostridium sporosphaeroides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1018,'Clostridium subterminale','CLOSU','58838009','Clostridium subterminale (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1019,'Clostridium symbiosum','CLOSY','48321006','Clostridium symbiosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1020,'Clostridium tertium','CLOTE','81909005','Clostridium tertium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1021,'Clostridium tetani','CLOTT','30917009','Clostridium tetani (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1022,'Clostridium villosum','FILVIL','114216008','Filifactor villosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1023,'Clostridium welchii','CLP','8331005','Clostridium perfringens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1024,'Cokeromyces','COKESP','22539001','Cokeromyces (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1025,'Cokeromyces recurvatus','COKERECU','30049007','Cokeromyces recurvatus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1026,'Coliform bacteria','COSP','77309002','Coliform bacteria (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1027,'Collinsella','COLLSP','417046005','Genus Collinsella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1028,'Collinsella aerofaciens','COLAER','417399007','Collinsella aerofaciens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1029,'Collinsella intestinalis','COLLINTE','432267004','Collinsella intestinalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1030,'Collinsella stercoris','COLLSTER','432759008','Collinsella stercoris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1031,'Colobactrum freundii','CF','6265002','Citrobacter freundii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1032,'Colorado tick fever virus','REOCT','34212000','Colorado tick fever virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1033,'Comamonas','COMSP','413887006','Genus Comamonas (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1034,'Comamonas acidovorans','DELFAC','20432002','Delftia acidovorans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1035,'Comamonas aquatica','COMAQUA','413888001','Comamonas aquatica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1036,'Comamonas kerstersii','COMKERS','413892008','Comamonas kerstersii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1037,'Comamonas terrigena','COMTR','81829007','Comamonas terrigena (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1038,'Comamonas testosteroni','COMTE','43721005','Comamonas testosteroni (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1039,'Conidiobolus','CONID','42178002','Genus Conidiobolus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1040,'Conidiobolus coronatus','CONIDCOR','15684003','Conidiobolus coronatus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1041,'Conidiobolus incongruus','CONIDINC','55952006','Conidiobolus incongruus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1042,'Coniothyrium','CONISP','416782000','Genus Coniothyrium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1043,'Contagious ecthyma virus','POXOR','64753004','Orf virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1044,'Contagious pustular dermatitis virus','POXOR','64753004','Orf virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1045,'Coprococcus','COPRSP','416549000','Genus Coprococcus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1046,'Coprococcus eutactus','COPREUTA','416184008','Coprococcus eutactus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1047,'Coronavirus','CORTU','243608008','Genus Coronavirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1048,'Corynebacterium','CORGN','77086004','Genus Corynebacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1049,'Corynebacterium accolens','CORACC','243254006','Corynebacterium accolens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1050,'Corynebacterium acnes','PRPAC','39473003','Propionibacterium acnes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1051,'Corynebacterium afermentans','CORA','113608003','Corynebacterium afermentans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1052,'Corynebacterium afermentans afermentans','CORAA','113609006','Corynebacterium afermentans ss afermentans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1053,'Corynebacterium afermentans lipophilum','CORAL','113610001','Corynebacterium afermentans ss lipophilum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1054,'Corynebacterium ammoniagenes','CORAMM','113607008','Corynebacterium ammoniagenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1055,'Corynebacterium amycolatum','CORAMY','113611002','Corynebacterium amycolatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1056,'Corynebacterium anaerobium','PRPAC','39473003','Propionibacterium acnes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1057,'Corynebacterium appendicis','CORAPP','423659000','Corynebacterium appendicis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1058,'Corynebacterium aquaticum','CORAQ','65736001','Corynebacterium aquaticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1059,'Corynebacterium aquilae','CORAQL','424012003','Corynebacterium aquilae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1060,'Corynebacterium argentoratense','CORARG','417499006','Corynebacterium argentoratense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1061,'Corynebacterium atypicum','CORATY','424209005','Corynebacterium atypicum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1062,'Corynebacterium aurimucosum','CORAR','385503009','Corynebacterium aurimucosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1063,'Corynebacterium auris','CORARS','413925000','Corynebacterium auris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1064,'Corynebacterium auriscanis','CORARSC','424389005','Corynebacterium auriscanis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1065,'Corynebacterium beticola','CORBET','432270000','Corynebacterium beticola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1066,'Corynebacterium bovis','CORBO','44885001','Corynebacterium bovis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1067,'Corynebacterium callunae','CORCAL','88866008','Corynebacterium callunae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1068,'Corynebacterium camporealensis','CORCAM','424560007','Corynebacterium camporealensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1069,'Corynebacterium capitovis','CORCAP','424721008','Corynebacterium capitovis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1070,'Corynebacterium casei','CORCAS','424906005','Corynebacterium casei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1071,'Corynebacterium caspium','CORCSP','422791000','Corynebacterium caspium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1072,'Corynebacterium ciconiae','CORCIC','424459004','Corynebacterium ciconiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1073,'Corynebacterium confusum','CORCON','417134008','Corynebacterium confusum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1074,'Corynebacterium coyleae','CORCOY','116461008','Corynebacterium coyleae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1075,'Corynebacterium cystitidis','CORCY','50169005','Corynebacterium cystitidis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1076,'Corynebacterium diphtheriae','CORDI','5851001','Corynebacterium diphtheriae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1077,'Corynebacterium diphtheroides','PRPAC','39473003','Propionibacterium acnes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1078,'Corynebacterium durum','CORDUR','413926004','Corynebacterium durum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1079,'Corynebacterium efficiens','COREFF','423379003','Corynebacterium efficiens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1080,'Corynebacterium equi','RHOEQ','80771008','Rhodococcus equi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1081,'Corynebacterium falsenii','CORFAL','116389005','Corynebacterium falsenii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1082,'Corynebacterium fascians','RHOFASC','28901005','Rhodococcus fascians (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1083,'Corynebacterium felinum','CORFEL','423568009','Corynebacterium felinum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1084,'Corynebacterium flavescens','CORFVS','47802009','Corynebacterium flavescens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1085,'Corynebacterium flavidum','CORST','63815007','Corynebacterium striatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1086,'Corynebacterium freneyi','CORFRE','416914001','Corynebacterium freneyi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1087,'Corynebacterium genitalium','CORGEN','243260006','Corynebacterium genitalium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1088,'Corynebacterium glaucum','CORGLA','432808003','Corynebacterium glaucum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1089,'Corynebacterium glucuronolyticum','CORGLU','413927008','Corynebacterium glucuronolyticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1090,'Corynebacterium glutamicum','CORGL','89651003','Corynebacterium glutamicum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1091,'Corynebacterium group A-3, CDC','CORA3','243268004','Centers for Disease Control and Prevention (CDC) Corynebacterium group A-3 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1092,'Corynebacterium group A-4, CDC','CORA4','243269007','Centers for Disease Control and Prevention (CDC) Corynebacterium group A-4 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1093,'Corynebacterium group A-5, CDC','CORA5','243270008','Centers for Disease Control and Prevention (CDC) Corynebacterium group A-5 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1094,'Corynebacterium group B-1, CDC','CORB1','243271007','Centers for Disease Control and Prevention (CDC) Corynebacterium group B-1 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1095,'Corynebacterium group B-3, CDC','CORB3','243272000','Centers for Disease Control and Prevention (CDC) Corynebacterium group B-3 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1096,'Corynebacterium group C, CDC','CORC','243274004','Centers for Disease Control and Prevention (CDC) Corynebacterium group C (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1097,'Corynebacterium group D-1, CDC','CORD1','243275003','Centers for Disease Control and Prevention (CDC) Corynebacterium group D-1 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1098,'Corynebacterium group E, CDC','CORE','243276002','Centers for Disease Control and Prevention (CDC) Corynebacterium group E (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1099,'Corynebacterium group F-1, CDC','CORF1','243277006','Centers for Disease Control and Prevention (CDC) Corynebacterium group F-1 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1100,'Corynebacterium group F-2, CDC','CORF2','243278001','Centers for Disease Control and Prevention (CDC) Corynebacterium group F-2 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1101,'Corynebacterium group I-1, CDC','CORI1','243281006','Centers for Disease Control and Prevention (CDC) Corynebacterium group I-1 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1102,'Corynebacterium group I-2, CDC','CORI2','243282004','Centers for Disease Control and Prevention (CDC) Corynebacterium group I-2 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1103,'Corynebacterium group, CDC','CORGC','243267009','Centers for Disease Control and Prevention (CDC) Corynebacterium group (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1104,'Corynebacterium halotolerans','CORHAL','424529007','Corynebacterium halotolerans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1105,'Corynebacterium hemolyticum','ARCHA','44723000','Arcanobacterium haemolyticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1106,'Corynebacterium hoagii','CORHOA','54276004','Corynebacterium hoagii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1107,'Corynebacterium hofmannii','CORPD','12050008','Corynebacterium pseudodiphtheriticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1108,'Corynebacterium imitans','CORIMI','413928003','Corynebacterium imitans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1109,'Corynebacterium jeikeium','CORJK','63410006','Corynebacterium jeikeium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1110,'Corynebacterium kroppenstedtii','CORKRO','363777001','Corynebacterium kroppenstedtii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1111,'Corynebacterium kutscheri','CORKU','88575000','Corynebacterium kutscheri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1112,'Corynebacterium lilium','CORGL','89651003','Corynebacterium glutamicum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1113,'Corynebacterium lipophiloflavum','CORLIP','416863001','Corynebacterium lipophiloflavum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1114,'Corynebacterium macginleyi','CORMAC','363772007','Corynebacterium macginleyi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1115,'Corynebacterium manihot','CORMAN','243261005','Corynebacterium manihot (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1116,'Corynebacterium massiliense','CORMSL','446285007','Corynebacterium massiliense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1117,'Corynebacterium mastitidis','CORMST','424709009','Corynebacterium mastitidis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1118,'Corynebacterium matruchotii','CORMA','89922004','Corynebacterium matruchotii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1119,'Corynebacterium mediolanum','CORMED','243262003','Corynebacterium mediolanum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1120,'Corynebacterium minutissimum','CORMI','83594007','Corynebacterium minutissimum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1121,'Corynebacterium mooreparkense','CORVAR','11575001','Corynebacterium variabile (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1122,'Corynebacterium mucifaciens','CORMUC','413929006','Corynebacterium mucifaciens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1123,'Corynebacterium murisepticum','CORMRS','302583000','Corynebacterium murisepticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1124,'Corynebacterium murium','CORKU','88575000','Corynebacterium kutscheri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1125,'Corynebacterium mycetoides','CORMY','58879005','Corynebacterium mycetoides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1126,'Corynebacterium nephridii','CORNEP','243263008','Corynebacterium nephridii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1127,'Corynebacterium nigricans','CORAR','385503009','Corynebacterium aurimucosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1128,'Corynebacterium not C diphtheriae','CORNCD','413931002','Corynebacterium species, not Corynebacterium diphtheriae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1129,'Corynebacterium not C jeikeium','CORNCJ','413930001','Corynebacterium species not Corynebacterium jeikeium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1130,'Corynebacterium ovis','CORPS','55084001','Corynebacterium pseudotuberculosis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1131,'Corynebacterium parvum','PRPAC','39473003','Propionibacterium acnes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1132,'Corynebacterium paurometabolum','TSUKPAUR','113510005','Tsukamurella paurometabola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1133,'Corynebacterium phocae','CORPHO','116462001','Corynebacterium phocae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1134,'Corynebacterium pilosum','CORPI','81368007','Corynebacterium pilosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1135,'Corynebacterium propinquum','CORPRO','113612009','Corynebacterium propinquum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1136,'Corynebacterium pseudodiphtheriticum','CORPD','12050008','Corynebacterium pseudodiphtheriticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1137,'Corynebacterium pseudogenitalium','CORPST','243264002','Corynebacterium pseudogenitalium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1138,'Corynebacterium pseudotuberculosis','CORPS','55084001','Corynebacterium pseudotuberculosis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1139,'Corynebacterium pseudotuberculostearicum','CORPSM','416570006','Corynebacterium pseudotuberculostearicum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1140,'Corynebacterium pyogenes','ARCPY','258933002','Trueperella pyogenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1141,'Corynebacterium renale','CORRE','62000003','Corynebacterium renale (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1142,'Corynebacterium renale type 1','CORRE','62000003','Corynebacterium renale (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1143,'Corynebacterium renale type II','CORPI','81368007','Corynebacterium pilosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1144,'Corynebacterium renale type III','CORCY','50169005','Corynebacterium cystitidis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1145,'Corynebacterium resistens','CORRES','442804004','Corynebacterium resistens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1146,'Corynebacterium riegelii','CORRIE','131241009','Corynebacterium riegelii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1147,'Corynebacterium rubrum','CORRUB','243265001','Corynebacterium rubrum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1148,'Corynebacterium seminale','CORGLU','413927008','Corynebacterium glucuronolyticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1149,'Corynebacterium simulans','CORSIM','416655000','Corynebacterium simulans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1150,'Corynebacterium singulare','CORSIN','422898002','Corynebacterium singulare (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1151,'Corynebacterium sphenisci','CORSPI','422705004','Corynebacterium sphenisci (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1152,'Corynebacterium spheniscorum','CORSPM','432362008','Corynebacterium spheniscorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1153,'Corynebacterium striatum','CORST','63815007','Corynebacterium striatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1154,'Corynebacterium suicordis','CORSUI','423784007','Corynebacterium suicordis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1155,'Corynebacterium sundsvallense','CORSUN','425307003','Corynebacterium sundsvallense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1156,'Corynebacterium tenuis','CORTEN','72243003','Corynebacterium tenuis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1157,'Corynebacterium terpenotabidum','CORTER','422496009','Corynebacterium terpenotabidum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1158,'Corynebacterium testudinoris','CORTES','424212008','Corynebacterium testudinoris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1159,'Corynebacterium thomssenii','CORTHO','416311000','Corynebacterium thomssenii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1160,'Corynebacterium tuberculostearicum','CORTUB','416356007','Corynebacterium tuberculostearicum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1161,'Corynebacterium tuscaniense','CORTUSC','450409000','Corynebacterium tuscaniense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1162,'Corynebacterium ulcerans','CORUL','103428000','Corynebacterium ulcerans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1163,'Corynebacterium urealyticum','CORUR','113613004','Corynebacterium urealyticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1164,'Corynebacterium ureicelerivorans','CORURE','429443001','Corynebacterium ureicelerivorans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1165,'Corynebacterium vaginale','GV','64071004','Gardnerella vaginalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1166,'Corynebacterium variabile','CORVAR','11575001','Corynebacterium variabile (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1167,'Corynebacterium variabilis','CORVAR','11575001','Corynebacterium variabile (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1168,'Corynebacterium viscosum','CORVIS','243266000','Corynebacterium viscosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1169,'Corynebacterium vitaeruminis','CORVIT','116390001','Corynebacterium vitaeruminis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1170,'Corynebacterium vitarumen','CORVIT','116390001','Corynebacterium vitaeruminis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1171,'Corynebacterium vitaruminis','CORVIT','116390001','Corynebacterium vitaeruminis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1172,'Corynebacterium xerosis','CORXE','27101006','Corynebacterium xerosis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1173,'Corynebacterium, toxigenic','CORTOX','397426001','Toxigenic Corynebacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1174,'coryneform gram positive bacilli','CORGPB','116442009','Coryneform bacteria (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1175,'Coxiella','CXLSU','12220009','Genus Coxiella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1176,'Coxiella burnetii','CXLBU','22533000','Coxiella burnetii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1177,'Creutzfeldt-Jakob agent','CJD','88520007','Creutzfeldt-Jakob agent (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1178,'Creutzfeldt-Jakob disease agent','CJD','88520007','Creutzfeldt-Jakob agent (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1179,'Crimean-Congo hemorrhagic fever virus','BUNCC','79875007','Crimean-Congo hemorrhagic fever virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1180,'Cronobacter','CROSP','444664004','Genus Cronobacter (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1181,'Cronobacter dublinensis','CRODUB','445559002','Cronobacter dublinensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1182,'Cronobacter malonaticus','CROMAL','445560007','Cronobacter malonaticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1183,'Cronobacter muytjensii','CROMUY','445561006','Cronobacter muytjensii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1184,'Cronobacter sakazakii','CROSAK','445562004','Cronobacter sakazakii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1185,'Cronobacter turicensis','CROTUR','445639005','Cronobacter turicensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1186,'Cryptobacterium','CRYPSP','416082009','Genus Cryptobacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1187,'Cryptobacterium curtum','CRYPCURT','417538003','Cryptobacterium curtum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1188,'Cryptococcus aggregatus','CANPARA','702328004','Candida pararugosa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1189,'Cryptosporidium','CSPOR','83821001','Cryptosporidium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1190,'Cryptosporidium hominis','CSPORHOM','417722006','Cryptosporidium hominis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1191,'Cryptosporidium parvum','CSPORPAR','51504002','Cryptosporidium parvum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1192,'Cunninghamella','CUNNSP','24861001','Cunninghamella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1193,'Cunninghamella bertholletiae','CUNNBERT','60182000','Cunninghamella bertholletiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1194,'Cupriavidus','CUPRSP','416121002','Genus Cupriavidus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1195,'Cupriavidus basilensis','CUPRBASI','425009006','Cupriavidus basilensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1196,'Cupriavidus gilardii','CUPRGILA','416329005','Cupriavidus gilardii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1197,'Cupriavidus metallidurans','CUPRMETA','423135006','Cupriavidus metallidurans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1198,'Cupriavidus necator','CUPRNECA','432717007','Cupriavidus necator (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1199,'Cupriavidus pauculus','CUPRPAUC','429465001','Cupriavidus pauculus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1200,'Cupriavidus respiraculi','CUPRRESP','416495009','Cupriavidus respiraculi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1201,'Curvularia','CURVA','5214001','Genus Curvularia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1202,'Curvularia geniculata','CURVAGEN','22068007','Curvularia geniculata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1203,'Curvularia lunata','CURVALUN','33165007','Curvularia lunata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1204,'Curvularia speciferum','BIPOSPIC','88228004','Bipolaris spicifera (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1205,'Curvularia spicifera','BIPOSPIC','88228004','Bipolaris spicifera (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1206,'Cyclospora','CYCLSP','103560006','Cyclospora (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1207,'Cyclospora cayetanensis','CYCLCAYE','103561005','Cyclospora cayetanensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1208,'Cysticercus','CYSTI','78167007','Cysticercus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1209,'Cytophaga heparina','PEDOHEPA','113554004','Pedobacter heparinus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1210,'Dactylaria constricta','OCHRCONS','116451001','Ochroconis constricta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1211,'Dactylaria constricta var gallopava','OCHRGALL','116453003','Ochroconis gallopava (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1212,'Delftia','DELFSP','416493002','Genus Delftia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1213,'Delftia acidovorans','DELFAC','20432002','Delftia acidovorans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1214,'Delta hepatitis viral agent','HEPD','83617006','Hepatitis D virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1215,'Dengue virus','DENGE','34348001','Dengue virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1216,'Dermabacter','DERMASP','413976002','Genus Dermabacter (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1217,'Dermabacter hominis','DERMAHOM','413977006','Dermabacter hominis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1218,'Dermacoccus','DERMSP','115142006','Genus Dermacoccus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1219,'Dermacoccus nishinomiyaensis','DENISH','113776005','Dermacoccus nishinomiyaensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1220,'Dermatophilus','DERMATSP','79048004','Genus Dermatophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1221,'Dermatophilus congolensis','DERMATCON','58141003','Dermatophilus congolensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1222,'Dermatophilus pedis','DERMATCON','58141003','Dermatophilus congolensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1223,'Desulfomonas','DSMSP','37456006','Genus Desulfomonas (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1224,'Desulfomonas pigra','DSMPI','43560009','Desulfomonas pigra (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1225,'Desulfovibrio','DSVSP','243393004','Genus Desulfovibrio (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1226,'Desulfovibrio desulfuricans','DSVDE','243394005','Desulfovibrio desulfuricans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1227,'Desulfovibrio piger','DSVPIG','431119000','Desulfovibrio piger (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1228,'Desulfovibrio vulgaris','DSVVUL','431923009','Desulfovibrio vulgaris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1229,'Dialister','DIALSP','114169004','Genus Dialister (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1230,'Dialister micraerophilus','DIALMICR','446809007','Dialister micraerophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1231,'Dialister pneumonsintes','DIALPNEU','114170003','Dialister pneumosintes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1232,'Dialister pneumosintes','DIALPNEU','114170003','Dialister pneumosintes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1233,'Dibothriocephalus','DIBOT','48262003','Diphyllobothrium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1234,'Dichelobacter','DICSP','114167002','Genus Dichelobacter (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1235,'Dichelobacter nodosus','DICNO','114168007','Dichelobacter nodosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1236,'Dientamoeba','DIENSP','29334008','Genus Dientamoeba (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1237,'Dientamoeba fragilis','DIENFRAG','41542000','Dientamoeba fragilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1238,'Dimorphic fungi','DIMOFUNG','416226001','Dimorphic fungi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1239,'Diphtheria bacillus','CORDI','5851001','Corynebacterium diphtheriae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1240,'Diphtheroids','DIPTH','54642001','Diphtheroids (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1241,'Diphtheroids, aerobic','DIPTHAE','44661006','Aerobic diphtheroids (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1242,'Diphtheroids, anaerobic','DIPTHAN','26481006','Anaerobic diphtheroids (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1243,'Diphyllobothrium','DIBOT','48262003','Diphyllobothrium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1244,'Diplococcus pneumoniae','SP','9861002','Streptococcus pneumoniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1245,'Dipodascus capitatus','BLACAP','67999003','Blastoschizomyces pseudotrichosporon (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1246,'Dipylidium','DIPYL','21041005','Dipylidium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1247,'Doderlein\'s bacillus','LACAC','45707005','Lactobacillus acidophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1248,'Dolosicoccus','DOLOSP','416690008','Genus Dolosicoccus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1249,'Dolosicoccus paucivorans','DOLOPAUC','416464002','Dolosicoccus paucivorans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1250,'Dolosigranulum','DOLOSSP','363764005','Genus Dolosigranulum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1251,'Dolosigranulum pigrum','DOLOPIGR','363765006','Dolosigranulum pigrum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1252,'Dorea','DORESP','432232004','Genus Dorea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1253,'Dorea formicigenerans','DOREFORM','433913005','Dorea formicigenerans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1254,'Dorea longicatena','DORELONG','433914004','Dorea longicatena (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1255,'Drechslera','DRECH','73185003','Genus Drechslera (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1256,'Drechslera australiensis','BIPOAUST','80923003','Bipolaris australiensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1257,'Drechslera halodes','EXSEROST','76951009','Exserohilum rostratum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1258,'Drechslera hawaiiensis','BIPOHAWA','31335001','Bipolaris hawaiiense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1259,'Drechslera rostrata','EXSEROST','76951009','Exserohilum rostratum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1260,'Drechslera spicifera','BIPOSPIC','88228004','Bipolaris spicifera (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1261,'Dysgonomonas','DYSGSP','409809006','Genus Dysgonomonas (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1262,'Dysgonomonas capnocytophagoides','DYSGCAPN','409811002','Dysgonomonas capnocytophagoides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1263,'Dysgonomonas gadei','DYSGGADE','409812009','Dysgonomonas gadei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1264,'Eastern equine encephalitis virus','EEE','243601002','Eastern equine encephalitis virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1265,'Ebolavirus','EBOLA','424206003','Genus Ebolavirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1266,'Echinococcus','ECHIN','47622006','Genus Echinococcus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1267,'Edmonston virus','MEASL','52584002','Measles virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1268,'Edwardsiella','EDWSP','14566004','Genus Edwardsiella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1269,'Edwardsiella anguillimortifera','EDWTR','74672006','Edwardsiella tarda (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1270,'Edwardsiella hoshinae','EDWHO','4280005','Edwardsiella hoshinae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1271,'Edwardsiella ictaluri','EDWIC','68227003','Edwardsiella ictaluri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1272,'Edwardsiella tarda','EDWTR','74672006','Edwardsiella tarda (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1273,'Edwardsiella tarda, biogroup 1','EDWT1','114447000','Edwardsiella tarda, biogroup 1 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1274,'Eelworm','ASCAR','66953006','Ascaris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1275,'EF-4','EF4','116403009','Centers for Disease Control and Prevention (CDC) group EF-4 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1276,'Eggerthella','EGGESP','414075007','Genus Eggerthella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1277,'Eggerthella lenta','EUBLE','414077004','Eggerthella lenta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1278,'Eggerthella sinesis','EGGESINE','414078009','Eggerthella sinesis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1279,'Eggerthia catenaformis','LACCA','59836004','Eggerthia catenaformis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1280,'EHEC, serotype O157:H7','ECO157','103429008','Enterohemorrhagic Escherichia coli, serotype O157:H7 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1281,'Ehrlichia','EHRLSP','27334000','Genus Ehrlichia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1282,'Eikenella','EIKSP','4346009','Genus Eikenella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1283,'Eikenella corrodens','EIC','52591004','Eikenella corrodens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1285,'Elizabethkingia','ELIZSP','426244005','Genus Elizabethkingia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1286,'Elizabethkingia meningoseptica','ELIZME','425774009','Elizabethkingia meningoseptica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1287,'Emmonsia','CHRYSP','55038006','Chrysosporium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1288,'Empedobacter','EMPSP','115126004','Genus Empedobacter (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1289,'Empedobacter brevis','EMPBRE','113629007','Empedobacter brevis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1290,'Endolimax','ENDOSP','75866001','Endolimax (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1291,'Endolimax nana','ENDONANA','53272006','Endolimax nana (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1292,'Entamoeba','ENTAS','38324000','Entamoeba (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1293,'Entamoeba coli','ENTCO','79235009','Entamoeba coli (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1294,'Entamoeba dispar','ENTADISP','415987008','Entamoeba dispar (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1295,'Entamoeba gingivalis','ENTAGING','44457009','Entamoeba gingivalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1296,'Entamoeba hartmanni','ENTAHART','70632005','Entamoeba hartmanni (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1297,'Entamoeba histolytica','ENTHI','4716008','Entamoeba histolytica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1298,'Entamoeba histolytica/dispar','ENTAHISDIS','363769000','Entamoeba histolytica/Entamoeba dispar complex (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1299,'Entamoeba polecki','ENTAPOLE','66223005','Entamoeba polecki (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1300,'Enteric bacteria','ENOT','106544002','Family Enterobacteriaceae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1301,'Enterobacter','ESP','58683007','Genus Enterobacter (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1302,'Enterobacter aerogenes','EA','62592009','Enterobacter aerogenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1303,'Enterobacter agglomerans','PANAG','115015008','Pantoea agglomerans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1304,'Enterobacter agglomerans group','PANAG','115015008','Pantoea agglomerans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1305,'Enterobacter amnigenus','ENTAU','84221003','Enterobacter amnigenus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1306,'Enterobacter amnigenus biogroup I','ENTA1','114452005','Enterobacter amnigenus biogroup I (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1307,'Enterobacter amnigenus biogroup II','ENTA2','114453000','Enterobacter amnigenus biogroup II (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1308,'Enterobacter asburiae','ENTAB','33115003','Enterobacter asburiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1309,'Enterobacter cancerogenus','ENTCAN','114451003','Enterobacter cancerogenus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1310,'Enterobacter cloacae','ENC','14385002','Enterobacter cloacae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1311,'Enterobacter cloacae complex','ENCCX','414102007','Enterobacter cloacae complex (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1312,'Enterobacter cowanii','ENTECOWA','416229008','Enterobacter cowanii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1313,'Enterobacter dissolvens','ENTEDISS','56813009','Enterobacter dissolvens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1314,'Enterobacter gergoviae','ENTGE','5381002','Enterobacter gergoviae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1315,'Enterobacter hafniae','HA','76694001','Hafnia alvei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1316,'Enterobacter hormaechei','ENTHO','114454006','Enterobacter hormaechei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1317,'Enterobacter hormaechi','ENTHO','114454006','Enterobacter hormaechei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1318,'Enterobacter intermedium','ENTIN','35165009','Enterobacter intermedius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1319,'Enterobacter intermedius','ENTIN','35165009','Enterobacter intermedius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1320,'Enterobacter kobei','ENTEKOBE','114456008','Enterobacter kobei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1321,'Enterobacter liquefaciens','SL','23787004','Serratia liquefaciens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1322,'Enterobacter ludwigii','ENTELUDW','432763001','Enterobacter ludwigii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1323,'Enterobacter nimipressuralis','ENTENIMI','29511003','Enterobacter nimipressuralis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1324,'Enterobacter pyrinus','ENTEPYRI','114455007','Enterobacter pyrinus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1325,'Enterobacteriaceae','ENOT','106544002','Family Enterobacteriaceae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1326,'Enterobius','ENTER','88569009','Enterobius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1327,'Enterococcus','ENTSP','2785000','Genus Enterococcus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1328,'Enterococcus asini','ENTEASIN','425342004','Enterococcus asini (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1329,'Enterococcus avium','ENTA','87875008','Enterococcus avium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1330,'Enterococcus canis','ENTECANI','424191009','Enterococcus canis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1331,'Enterococcus casseliflavus','ENTCA','30949009','Enterococcus casseliflavus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1332,'Enterococcus cecorum','ENTECECO','113722005','Enterococcus cecorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1333,'Enterococcus dispar','ENTDI','113724006','Enterococcus dispar (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1334,'Enterococcus durans','ENTD','46464008','Enterococcus durans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1335,'Enterococcus faecalis','ENTFS','78065002','Enterococcus faecalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1336,'Enterococcus faecium','ENTFM','90272000','Enterococcus faecium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1337,'Enterococcus flavescens','ENTCA','30949009','Enterococcus casseliflavus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1338,'Enterococcus gallinarum','ENTGA','53233007','Enterococcus gallinarum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1339,'Enterococcus gilvus','ENTEGILV','416934000','Enterococcus gilvus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1340,'Enterococcus haemoperoxidus','ENTEHAEM','423614008','Enterococcus haemoperoxidus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1341,'Enterococcus hermanniensis','ENTEHERM','422482003','Enterococcus hermanniensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1342,'Enterococcus hirae','ENTHR','73852008','Enterococcus hirae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1343,'Enterococcus italicus','ENTEITAL','422707007','Enterococcus italicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1344,'Enterococcus malodoratus','ENTMA','10262005','Enterococcus malodoratus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1345,'Enterococcus moraviensis','ENTEMORA','424862009','Enterococcus moraviensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1346,'Enterococcus mundtii','ENTMU','38004008','Enterococcus mundtii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1347,'Enterococcus pallens','ENTEPALL','417099004','Enterococcus pallens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1348,'Enterococcus phoeniculicola','ENTEPHOE','432791009','Enterococcus phoeniculicola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1349,'Enterococcus pseudoavium','ENTPS','103436009','Enterococcus pseudoavium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1350,'Enterococcus raffinosus','ENTRA','103437000','Enterococcus raffinosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1351,'Enterococcus ratti','ENTERATT','431989005','Enterococcus ratti (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1352,'Enterococcus saccharolyticus','ENTESACC','103438005','Enterococcus saccharolyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1353,'Enterococcus saccharominimus','ENTEITAL','422707007','Enterococcus italicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1354,'Enterococcus seriolicida','LACTGARV','27716002','Lactococcus garvieae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1355,'Enterococcus solitarius','TETRSOLI','431990001','Tetragenococcus solitarius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1356,'Enterococcus sulfureus','ENTESULF','113726008','Enterococcus sulfureus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1357,'Enterococcus villorum','ENTEVILL','424710004','Enterococcus villorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1358,'Enterocytozoon','ENTESP','20581002','Enterocytozoon (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1360,'Enteromonas','ENTERSP','58815006','Enteromonas (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1361,'Enteromonas hominis','ENTERHOM','78006004','Enteromonas hominis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1362,'Enteropathogenic Escherichia coli','ECEP','83285000','Enteropathogenic Escherichia coli (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1363,'Enterovirus','ENTRO','243633006','Genus Enterovirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1364,'Enterovirus type 72','HEPA','32452004','hepatitis A virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1365,'Entomophthora','CONID','42178002','Genus Conidiobolus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1366,'Entomophthora coronata','CONIDCOR','15684003','Conidiobolus coronatus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1367,'Epicoccum','EPICSP','7633000','Epicoccum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1368,'Epidermophyton','EPIDE','112403007','Epidermophyton (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1369,'Epstein-Barr virus','EBV','40168006','Human herpesvirus 4 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1370,'Erwinia','ERWSP','38865008','Genus Erwinia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1371,'Erwinia ananas','PANANAN','115014007','Pantoea ananatis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1372,'Erwinia cancerogena','ENTCAN','114451003','Enterobacter cancerogenus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1373,'Erwinia dissolvens','ENTEDISS','56813009','Enterobacter dissolvens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1374,'Erwinia herbicola-Enterobacter agglomerans group','PANAG','115015008','Pantoea agglomerans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1375,'Erwinia nimipressuralis','ENTENIMI','29511003','Enterobacter nimipressuralis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1376,'Erwinia persicina','ERWPERS','431272005','Erwinia persicina (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1377,'Erwinia uredovora','PANANAN','115014007','Pantoea ananatis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1378,'Erysipelothrix','ERYSP','88266001','Genus Erysipelothrix (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1379,'Erysipelothrix inopinata','ERYINOP','431389000','Erysipelothrix inopinata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1380,'Erysipelothrix insidiosa','ERYRH','48666005','Erysipelothrix rhusiopathiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1381,'Erysipelothrix rhusiopathiae','ERYRH','48666005','Erysipelothrix rhusiopathiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1382,'Erysipelothrix tonsillarum','ERYTONS','12575003','Erysipelothrix tonsillarum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1383,'Erythema infectiosum virus','PARVOB19','63603005','B19 virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1384,'Erythrovirus B19','PARVOB19','63603005','B19 virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1385,'Escherichia','ESCSP','64735005','Genus Escherichia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1386,'Escherichia adecarboxylata','LECAD','57459006','Leclercia adecarboxylata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1387,'Escherichia albertii','ESCALB','419388003','Escherichia albertii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1388,'Escherichia blattae','ESCBL','91550008','Escherichia blattae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1389,'Escherichia coli','EC','112283007','Escherichia coli (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1390,'Escherichia coli, inactive','ESCCAD','417207000','Escherichia coli, inactive (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1391,'Escherichia fergusonii','ESCFE','72461005','Escherichia fergusonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1392,'Escherichia freundii','CF','6265002','Citrobacter freundii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1393,'Escherichia hermannii','ESCHE','85786000','Escherichia hermannii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1394,'Escherichia vulneris','ESCVU','53013003','Escherichia vulneris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1395,'Eubacterium','EUBSP','5615005','Genus Eubacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1396,'Eubacterium aerofaciens','COLAER','417399007','Collinsella aerofaciens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1397,'Eubacterium alactolyticum','PSALA','113828002','Pseudoramibacter alactolyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1398,'Eubacterium barkeri','EUBBARK','113728009','Eubacterium barkeri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1399,'Eubacterium biforme','EUBBIFO','20347007','Eubacterium biforme (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1400,'Eubacterium brachy','EUBBR','12734008','Eubacterium brachy (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1401,'Eubacterium budayi','EUBBUDA','29984006','Eubacterium budayi','2017-03-02 18:39:48','1',1,NULL,1),(1402,'Eubacterium cadaveris','EUBBUDA','29984006','Eubacterium budayi','2017-03-02 18:39:48','1',1,NULL,1),(1403,'Eubacterium callanderi','EUBCALL','113730006','Eubacterium callanderi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1404,'Eubacterium combesii','EUBCM','13257008','Eubacterium combesii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1405,'Eubacterium contortum','EUBCN','59949005','Eubacterium contortum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1406,'Eubacterium cylindroides','EUBCYLI','20804002','Eubacterium cylindroides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1407,'Eubacterium dolichum','EUBDOLI','82964000','Eubacterium dolichum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1408,'Eubacterium eligens','EUBELIG','66412009','Eubacterium eligens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1409,'Eubacterium exiguum','SLACEXIG','434236002','Slackia exigua (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1410,'Eubacterium filamentosum','CLORA','42706008','Clostridium ramosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1411,'Eubacterium fossor','ATOFOSS','428580003','Atopobium fossor (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1412,'Eubacterium hadrum','EUBHADR','4696003','Eubacterium hadrum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1413,'Eubacterium hallii','EUBHALL','58040000','Eubacterium hallii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1414,'Eubacterium infirmum','EUBINFI','113733008','Eubacterium infirmum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1415,'Eubacterium lentum','EUBLE','414077004','Eggerthella lenta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1416,'Eubacterium limosum','EUBLI','87632000','Eubacterium limosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1417,'Eubacterium minutum','EUBMINU','113734002','Eubacterium minutum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1418,'Eubacterium moniliforme','EUBMO','46192006','Eubacterium moniliforme (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1419,'Eubacterium nitrogenes','EUBNI','22777005','Eubacterium nitrogenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1420,'Eubacterium nodatum','EUBNO','48215005','Eubacterium nodatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1421,'Eubacterium plautii','FLAVPLAU','447490001','Flavonifractor plautii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1422,'Eubacterium ramosum','CLORA','42706008','Clostridium ramosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1423,'Eubacterium ramulus','EUBRAMU','8315002','Eubacterium ramulus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1424,'Eubacterium rectale','EUBRECT','69189003','Eubacterium rectale (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1425,'Eubacterium saburreum','EUBSA','41543005','Eubacterium saburreum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1426,'Eubacterium saphenum','EUBSAPH','113735001','Eubacterium saphenum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1427,'Eubacterium siraeum','EUBSIRA','70459007','Eubacterium siraeum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1428,'Eubacterium sulci','EUBSUL','432171006','Eubacterium sulci (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1429,'Eubacterium tenue','EUBTE','29575000','Eubacterium tenue (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1430,'Eubacterium timidum','MOGTIM','417280000','Mogibacterium timidum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1431,'Eubacterium ventriosum','EUBVENT','20578007','Eubacterium ventriosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1432,'Eubacterium yurii','EUBYU','4791002','Eubacterium yurii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1433,'Ewingella','EWISP','3878001','Genus Ewingella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1434,'Ewingella americana','EWIAM','19027003','Ewingella americana (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1435,'Exiguobacterium','EXIGSP','114178005','Genus Exiguobacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1436,'Exiguobacterium acetylicum','EXIGACET','114179002','Exiguobacterium acetylicum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1437,'Exophiala','EXOPSP','12210004','Genus Exophiala (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1438,'Exophiala bergeri','EXOPBERG','415908000','Exophiala bergeri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1439,'Exophiala dermatitidis','WANGDERM','20586007','Wangiella dermatitidis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1440,'Exophiala jeanselmei','EXOPJEAN','38224003','Exophiala jeanselmei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1441,'Exophiala spinifera','EXOPSPIN','66283007','Exophiala spinifera (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1442,'Exophiala werneckii','EXOPWERN','83801002','Exophiala werneckii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1443,'Exserohilum','EXSESP','78813003','Genus Exserohilum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1444,'Exserohilum rostratum','EXSEROST','76951009','Exserohilum rostratum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1445,'Facklamia','FACKSP','414180001','Genus Facklamia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1446,'Facklamia hominis','FACKHOMI','414181002','Facklamia hominis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1447,'Facklamia ignava','FACKIGNA','417537008','Facklamia ignava (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1448,'Facklamia languida','FACKLANG','416607000','Facklamia languida (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1449,'Facklamia sourekii','FACKSOUR','416870001','Facklamia sourekii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1450,'Facklamia tabacinasalis','FACKTABA','432914009','Facklamia tabacinasalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1451,'Faecalibacterium','FAECSP','432915005','Genus Faecalibacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1452,'Faecalibacterium prausnitzii','FAECPRAU','433993006','Faecalibacterium prausnitzii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1453,'Falcivibrio','MOBSP','8984004','Genus Mobiluncus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1454,'Falcivibrio grandis','MOBMU','13716002','Mobiluncus mulieris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1455,'Falcivibrio vaginalis','MOBCU','30224004','Mobiluncus curtisii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1456,'Family Orthomyxoviridae','ORTHO','55014007','Family Orthomyxoviridae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1457,'Fifth disease virus','PARVOB19','63603005','B19 virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1458,'Filifactor','FILISP','115663007','Genus Filifactor (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1459,'Filifactor alocis','FILALO','431367004','Filifactor alocis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1460,'Filifactor villosus','FILVIL','114216008','Filifactor villosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1461,'Finegoldia','FINESP','417248002','Genus Finegoldia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1462,'Finegoldia magna','FINMAG','417469002','Finegoldia magna (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1463,'Fissuricella filamenta','SARINK','243547001','Sarcinosporon inkin (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1464,'Flavimonas oryzihabitans','PSORY','113931000','Pseudomonas oryzihabitans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1465,'Flavivirus','FLAVI','28375005','Genus Flavivirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1466,'Flavobacterium','FLASP','18986002','Genus Flavobacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1467,'Flavobacterium aureum','CHRIND','113549008','Chryseobacterium indologenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1468,'Flavobacterium breve','EMPBRE','113629007','Empedobacter brevis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1469,'Flavobacterium devorans','FLADEVO','14795006','Flavobacterium devorans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1470,'Flavobacterium gleum','CHRGLE','113548000','Chryseobacterium gleum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1471,'Flavobacterium group IIe','FLA2E','127530009','Centers for Disease Control and Prevention group IIe (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1472,'Flavobacterium group IIh','FLA2H','127532001','Centers for Disease Control and Prevention  group IIh (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1473,'Flavobacterium heparinum','PEDOHEPA','113554004','Pedobacter heparinus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1474,'Flavobacterium indologenes','CHRIND','113549008','Chryseobacterium indologenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1475,'Flavobacterium meningosepticum','ELIZME','425774009','Elizabethkingia meningoseptica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1476,'Flavobacterium mitzutaii','SPHMI','113749005','Flavobacterium mitzutaii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1477,'Flavobacterium multivorum','SPHMU','51595006','Sphingobacterium multivorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1478,'Flavobacterium odoratum','MYROD','113558001','Myroides odoratus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1479,'Flavobacterium paucimobilis','SPMPA','243350004','Sphingomonas paucimobilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1480,'Flavobacterium pseudomallei','BURPM','116399000','Burkholderia pseudomallei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1481,'Flavobacterium species group IIi','FLA2I','127533006','Centers for Disease Control and Prevention group IIi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1482,'Flavobacterium spiritivorum','SPHST','61675006','Sphingobacterium spiritivorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1483,'Flavobacterium thalpophilum','SPHTH','113954009','Sphingobacterium thalpophilum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1484,'Flavobacterium yabuuchiae','SPHST','61675006','Sphingobacterium spiritivorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1485,'Flavobacterium, group IIf','WEEVI','83326004','Weeksella virosa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1486,'Flavonifractor','FLAVSP','447035004','Genus Flavonifractor (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1487,'Flavonifractor plautii','FLAVPLAU','447490001','Flavonifractor plautii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1488,'Flexner-Strong bacillus','SHIGB','85729005','Shigella flexneri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1489,'Fluoribacter','FLUOSP','115165001','Genus Fluoribacter (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1490,'Fluoribacter bozemanae','LEGBOZE','450611004','Legionella bozemanae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1491,'Fluoribacter dumoffii','FLDUM','113720002','Legionella dumoffii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1492,'Fluoribacter gormanii','LEGGO','113721003','Legionella gormanii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1493,'Fonsecaea','FONSE','23639003','Genus Fonsecaea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1494,'Fonsecaea compacta','FONSECOM','76124007','Fonsecaea compacta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1495,'Fonsecaea compactum','FONSECOM','76124007','Fonsecaea compacta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1496,'Fonsecaea dermatitidis','WANGDERM','20586007','Wangiella dermatitidis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1497,'Fonsecaea pedrosoi','FONSEPED','69356007','Fonsecaea pedrosoi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1498,'Francisella','FRASP','50255000','Genus Francisella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1499,'Francisella tularensis','FRATU','51526001','Francisella tularensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1500,'Friedlander\'s bacillus','KP','56415008','Klebsiella pneumoniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1501,'Frog tubercle bacillus','MYCFF','333873003','Mycobacterium fortuitum subsp fortuitum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1502,'Fungus','FUNG','23496000','Fungus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1503,'Fusarium','FUSAR','35238009','Fusarium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1504,'Fusarium chlamydosporum','FUSARCHLA','79265004','Fusarium chlamydosporum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1505,'Fusarium culmorum','FUSARCULM','15773001','Fusarium culmorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1506,'Fusarium dimerum','FUSARDIME','62624005','Fusarium dimerum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1507,'Fusarium graminearum','FUSARGRAM','11090009','Fusarium graminearum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1508,'Fusarium javanicum','FUSARSOLA','46351008','Fusarium solani (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1509,'Fusarium moniforme var intermedium','FUSARPROL','243549003','Fusarium proliferatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1510,'Fusarium moniliforme','FUSARMONI','58429004','Fusarium moniliforme (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1511,'Fusarium oxysporum','FUSAROXYS','38836002','Fusarium oxysporum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1512,'Fusarium poae','FUSARPOAE','36116007','Fusarium poae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1513,'Fusarium proliferatum','FUSARPROL','243549003','Fusarium proliferatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1514,'Fusarium roseum','FUSARGRAM','11090009','Fusarium graminearum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1515,'Fusarium semitectum','FUSARSEMI','29238009','Fusarium semitectum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1516,'Fusarium solani','FUSARSOLA','46351008','Fusarium solani (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1517,'Fusarium sporotrichioides','FUSARSPOR','7626000','Fusarium sporotrichioides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1518,'Fusarium tricinctum','FUSARTRIC','75448000','Fusarium tricintum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1519,'Fusarium tricintum','FUSARTRIC','75448000','Fusarium tricintum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1520,'Fusarium verticillioides','FUSARVERT','57877009','Fusarium verticillioides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1521,'Fusiformis fusiformis','FUSNU','32763000','Fusobacterium nucleatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1522,'Fusobacterium','FSU','33562003','Genus Fusobacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1523,'Fusobacterium alocis','FILALO','431367004','Filifactor alocis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1524,'Fusobacterium biacutus','CLOSY','48321006','Clostridium symbiosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1525,'Fusobacterium canifelinum','FUSCANI','432342000','Fusobacterium canifelinum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1526,'Fusobacterium equinum','FUSEQUI','432343005','Fusobacterium equinum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1527,'Fusobacterium fusiforme','FUSNU','32763000','Fusobacterium nucleatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1528,'Fusobacterium gonidiaformans','FUSGO','84644009','Fusobacterium gonidiaformans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1529,'Fusobacterium mortiferum','FUSMO','112330001','Fusobacterium mortiferum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1530,'Fusobacterium naviforme','FUSNA','33311002','Fusobacterium naviforme (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1531,'Fusobacterium necrogenes','FUSNC','17304009','Fusobacterium necrogenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1532,'Fusobacterium necrophorum','FUSNE','27274008','Fusobacterium necrophorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1533,'Fusobacterium necrophorum fundiliforme','FUSND','113757008','Fusobacterium necrophorum subspecies fundiliforme (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1534,'Fusobacterium necrophorum necrophorum','FUSNN','113758003','Fusobacterium necrophorum subspecies necrophorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1535,'Fusobacterium nucleatum','FUSNU','32763000','Fusobacterium nucleatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1536,'Fusobacterium nucleatum fusiforme','FUSNS','113760001','Fusobacterium nucleatum subspecies fusiforme (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1537,'Fusobacterium nucleatum nucleatum','FUSNL','113761002','Fusobacterium nucleatum subspecies nucleatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1538,'Fusobacterium nucleatum polymorphum','FUSNP','113762009','Fusobacterium nucleatum subspecies polymorphum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1539,'Fusobacterium periodonticum','FUSPE','69601004','Fusobacterium periodonticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1540,'Fusobacterium planti-vincenti','FUSNU','32763000','Fusobacterium nucleatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1541,'Fusobacterium plauti','FLAVPLAU','447490001','Flavonifractor plautii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1542,'Fusobacterium polymorphum','FUSNP','113762009','Fusobacterium nucleatum subspecies polymorphum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1543,'Fusobacterium prausnitzii','FAECPRAU','433993006','Faecalibacterium prausnitzii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1544,'Fusobacterium russii','FUSRU','85226004','Fusobacterium russii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1545,'Fusobacterium sulci','EUBSUL','432171006','Eubacterium sulci (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1546,'Fusobacterium symbiosum','CLOSY','48321006','Clostridium symbiosum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1547,'Fusobacterium ulcerans','FUSUL','113764005','Fusobacterium ulcerans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1548,'Fusobacterium varium','FUSVA','1972005','Fusobacterium varium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1549,'Gallicola','GALLSP','432277002','Genus Gallicola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1550,'Gallicola barnesae','GALLBARN','433725004','Gallicola barnesae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1551,'Gamma-hemolytic streptococcus','GS','22339002','gamma-hemolytic streptococcus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1552,'Gardnerella','GARSP','69256005','Genus Gardnerella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1553,'Gardnerella vaginalis','GV','64071004','Gardnerella vaginalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1554,'Gas bacillus','CLP','8331005','Clostridium perfringens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1555,'Gemella','GEMSP','11590002','Genus Gemella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1556,'Gemella bergeriae','GEMBERG','131310006','Gemella bergeriae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1557,'Gemella haemolysans','GEMHA','37511002','Gemella haemolysans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1558,'Gemella hemolysans','GEMHA','37511002','Gemella haemolysans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1559,'Gemella morbillorum','GEMMO','113765006','Gemella morbillorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1560,'Gemella sanguinis','GEMSANG','125038007','Gemella sanguinis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1561,'Geobacillus','GEOBSP','432566007','Genus Geobacillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1562,'Geobacillus stearothermophilus','GEOBSTEA','433616004','Geobacillus stearothermophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1563,'Geobacillus thermodenitrificans','GEOBTHER','433668006','Geobacillus thermodenitrificans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1564,'Geotrichum','GEOTR','34324005','Genus Geotrichum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1565,'Geotrichum candidum','GEOCAN','41625002','Geotrichum candidum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1566,'Geotrichum capitatum','BLACAP','67999003','Blastoschizomyces pseudotrichosporon (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1567,'Geotrichum capitum','BLACAP','67999003','Blastoschizomyces pseudotrichosporon (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1568,'Geotrichum klebahnii','GEOTRKLEB','446493009','Geotrichum klebahnii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1569,'German measles virus','RUBEL','5210005','Rubella virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1570,'Giardia','GIARD','61419001','Giardia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1571,'Giardia intestinalis','GIARDINT','19122007','Giardia intestinalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1572,'Giardia lamblia','GIARDLAMB','78181009','Giardia lamblia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1573,'Glenosporella','CHRYSP','55038006','Chrysosporium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1574,'Gliocladium','GLIOSP','28920007','Gliocladium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1575,'Globicatella','GLOBSP','414344008','Genus Globicatella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1576,'Globicatella sanguinis','GLOBSANG','414345009','Globicatella sanguinis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1577,'Globicatella sulfidifaciens','GLOBSULF','414347001','Globicatella sulfidifaciens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1578,'Gonococcus','GC','68704007','Neisseria gonorrhoeae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1579,'Gordonia','GORDSP','115143001','Genus Gordonia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1580,'Gordonia bronchialis','GORDBRON','113646005','Gordonia bronchialis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1581,'Gordonia otitidis','GORDOTIT','443659007','Gordonia otitidis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1582,'Gordonia polyisoprenivorans','GORDPOLY','420096009','Gordonia polyisoprenivorans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1583,'Gordonia rubripertincta','GORDRUBR','113647001','Gordonia rubripertincta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1584,'Gordonia rubropertinctus','GORDRUBR','113647001','Gordonia rubripertincta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1585,'Gordonia sputi','GORDSPUT','113648006','Gordonia sputi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1586,'Gordonia terrae','GORDTERR','113649003','Gordonia terrae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1587,'Grahamella','BARSP','62496009','Genus Bartonella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1588,'Gram-negative bacillus','GNR','87172008','Gram-negative bacillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1589,'Gram-negative bacillus, fermentative','GNRF','243312005','Fermentative Gram-negative bacillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1590,'Gram-negative bacillus, non-fermentative','GNRNF','243328000','Non-fermentative Gram-negative bacillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1591,'Gram-negative coccobacillus','GNCB','53932007','Gram-negative coccobacillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1592,'Gram-negative coccus','GNC','18383003','Gram-negative coccus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1593,'Gram-negative diplococcus','GNDC','83410001','Gram-negative diplococcus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1594,'Gram-negative pleomorphic bacillus','GNPB','73460001','Gram-negative pleomorphic bacillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1595,'Gram-positive bacillus','GPR','83514008','Gram-positive bacillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1596,'Gram-positive coccobacillus','GPCB','49682003','Gram positive coccobacillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1597,'Gram-positive coccus','GPC','59206002','Gram-positive coccus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1598,'Gram-positive diplococcus','GPDC','11471007','Gram-positive diplococcus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1599,'Gram-variable bacillus','GVR','243288000','Gram-variable bacillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1600,'Gram-variable coccobacillus','GVCB','301782009','Gram-variable coccobacillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1601,'Gram-variable coccus','GVC','301781002','Gram-variable coccus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1602,'Granulicatella','GRANSP','409814005','Genus Granulicatella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1603,'Granulicatella adiacens','GRADJ','113713009','Granulicatella adiacens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1604,'Granulicatella elegans','GRANELEG','115944008','Granulicatella elegans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1605,'Graphium','GRAPSP','21755009','Genus Graphium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1606,'Grimontia','GRIMSP','431444000','Genus Grimontia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1607,'Grimontia hollisae','GRIMHOLL','433669003','Grimontia hollisae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1608,'Group 1 photochromogen','MYCKA','1507005','Mycobacterium kansasii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1609,'Group B streptococcus','GBS','43492007','Streptococcus agalactiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1610,'Haemophilus','HS','71268004','Genus Haemophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1611,'Haemophilus actinomycetemcomitans','HAEACT','442680008','Aggregatibacter actinomycetemcomitans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1612,'Haemophilus aegyptius','HAEAEGY','27784005','Haemophilus aegyptius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1613,'Haemophilus aphrophilus','HAEAP ','442683005','Aggregatibacter aphrophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1614,'Haemophilus canis','HAEHAEM','72339004','Haemophilus haemoglobinophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1615,'Haemophilus ducreyi','HAEDU','64889004','Haemophilus ducreyi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1616,'Haemophilus haemoglobinophilus','HAEHAEM','72339004','Haemophilus haemoglobinophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1617,'Haemophilus haemolyticus','HAEHA','54950008','Haemophilus haemolyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1618,'Haemophilus influenzae','HIU','44470000','Haemophilus influenzae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1619,'Haemophilus influenzae type a','HIA','103441001','Haemophilus influenzae type  a (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1620,'Haemophilus influenzae type b','HIB','103442008','Haemophilus influenzae type b (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1621,'Haemophilus influenzae, biotype I','HAEIN1','127505006','Haemophilus influenzae, biotype I (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1622,'Haemophilus influenzae, biotype II','HAEIN2','127506007','Haemophilus influenzae, biotype II (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1623,'Haemophilus influenzae, biotype III','HAEIN3','127507003','Haemophilus influenzae, biotype III (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1624,'Haemophilus influenzae, biotype IV','HAEIN4','127508008','Haemophilus influenzae, biotype IV (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1625,'Haemophilus influenzae, biotype V','HAEIN5','127509000','Haemophilus influenzae, biotype V (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1626,'Haemophilus influenzae, biotype VI','HAEIN6','127510005','Haemophilus influenzae, biotype VI (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1627,'Haemophilus influenzae, biotype VII','HAEIN7','127511009','Haemophilus influenzae, biotype VII (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1628,'Haemophilus influenzae, biotype VIII','HAEIN8','127512002','Haemophilus influenzae, biotype VIII (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1629,'Haemophilus influenzae, not b','HI','115407004','Haemophilus influenzae, not b (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1630,'Haemophilus parahaemolyticus','HAEPAH','89800007','Haemophilus parahaemolyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1631,'Haemophilus parainfluenzae','HP','51593004','Haemophilus parainfluenzae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1632,'Haemophilus parainfluenzae, biotype I','HAEPA1','127513007','Haemophilus parainfluenzae, biotype I (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1633,'Haemophilus parainfluenzae, biotype II','HAEPA2','127514001','Haemophilus parainfluenzae, biotype II (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1634,'Haemophilus parainfluenzae, biotype III','HAEPA3','127515000','Haemophilus parainfluenzae, biotype III (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1635,'Haemophilus parainfluenzae, biotype IV','HAEPA4','127516004','Haemophilus parainfluenzae, biotype IV (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1636,'Haemophilus parainfluenzae, biotype V','HAEPA5','127517008','Haemophilus parainfluenzae, biotype V (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1637,'Haemophilus parainfluenzae, biotype VI','HAEPA6','127518003','Haemophilus parainfluenzae, biotype VI (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1638,'Haemophilus parainfluenzae, biotype VII','HAEPA7','127519006','Haemophilus parainfluenzae, biotype VII (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1639,'Haemophilus parainfluenzae, biotype VIII','HAEPA8','127520000','Haemophilus parainfluenzae, biotype VIII (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1640,'Haemophilus paraphrophilus','HAEPA','34902001','Haemophilus paraphrophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1641,'Haemophilus pittmaniae','HAEPITT','432919004','Haemophilus pittmaniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1642,'Haemophilus segnis','AGGRSEGN','442651004','Aggregatibacter segnis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1643,'Hafnia','HAFSP','20523001','Genus Hafnia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1644,'Hafnia alvei','HA','76694001','Hafnia alvei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1645,'Hafnia alvei biogroup I','HAFA1','116046002','Hafnia alvei biogroup I (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1646,'Halomonas','HALOSP','114046004','Genus Halomonas (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1647,'Halomonas venusta','HALOVENU','417325005','Halomonas venusta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1648,'Hansen\'s bacillus','MYCLE','58242002','Mycobacterium leprae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1649,'Hansenula angusta','PICANGU','449402006','Pichia angusta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1650,'Hansenula anomala','PICANA','427041001','Pichia anomala (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1651,'Hansenula polymorpha','OGATPOLY','707830000','Ogataea polymorpha (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1652,'Hartmannella','HARTSP','112412009','Hartmannella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1653,'Haverhillia moniliformis','STRBM','16372003','Streptobacillus moniliformis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1654,'Haverhillia multiformis','STRBM','16372003','Streptobacillus moniliformis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1655,'Helcococcus','HELCSP','127526006','Genus Helcococcus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1656,'Helcococcus kunzii','HELCKUNZ','127527002','Helcococcus kunzii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1657,'Helcococcus sueciensis','HELCSUEC','431369001','Helcococcus sueciensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1658,'Helicobacter','HELSP','19454009','Genus Helicobacter (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1659,'Helicobacter acinonychis','HELACIN','60081005','Helicobacter acinonychis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1660,'Helicobacter acinonyx','HELACIN','60081005','Helicobacter acinonychis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1661,'Helicobacter aurati','HELAURA','431287000','Helicobacter aurati (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1662,'Helicobacter bilis','HELBILI','113537007','Helicobacter bilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1663,'Helicobacter bizzozeroni','HELBIZZ','113538002','Helicobacter bizzozeroni (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1664,'Helicobacter canadensis','HELCANA','416087003','Helicobacter canadensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1665,'Helicobacter canis','HELCANI','113539005','Helicobacter canis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1666,'Helicobacter cholecystus','HELCHOL','113540007','Helicobacter cholecystus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1667,'Helicobacter cinaedi','HELCI','29258005','Helicobacter cinaedi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1668,'Helicobacter felis','HELFELI','68625001','Helicobacter felis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1669,'Helicobacter fennelliae','HELFE','58177005','Helicobacter fennelliae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1670,'Helicobacter ganmani','HELGANM','431448002','Helicobacter ganmani (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1671,'Helicobacter hepaticus','HELHEPA','113541006','Helicobacter hepaticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1672,'Helicobacter mesocricetorum','HELMESO','431449005','Helicobacter mesocricetorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1673,'Helicobacter muridarum','HELMURI','78504006','Helicobacter muridarum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1674,'Helicobacter mustelae','HELMU','10402009','Helicobacter mustelae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1675,'Helicobacter nemestrinae','HELPY','80774000','Helicobacter pylori (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1676,'Helicobacter pametensis','HELPAME','432972000','Helicobacter pametensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1677,'Helicobacter pullorum','HELPULL','113543009','Helicobacter pullorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1678,'Helicobacter pylori','HELPY','80774000','Helicobacter pylori (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1679,'Helicobacter rappini','HELRA','49037001','Helicobacter rappini (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1680,'Helicobacter rodentium','HELRODE','113544003','Helicobacter rodentium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1681,'Helicobacter salomonis','HELSALO','113545002','Helicobacter salomonis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1682,'Helicobacter trogontum','HELTROG','113546001','Helicobacter trogontum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1683,'Helicobacter typhlonius','HELTYPH','432973005','Helicobacter typhlonius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1684,'Helminthosporium','HELMSP','14877004','Genus Helminthosporium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1685,'Helminthosporium australiensis','BIPOAUST','80923003','Bipolaris australiensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1686,'Helminthosporium halodes','EXSEROST','76951009','Exserohilum rostratum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1687,'Helminthosporium hawaiiensis','BIPOHAWA','31335001','Bipolaris hawaiiense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1688,'Helminthosporium rostratum','EXSEROST','76951009','Exserohilum rostratum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1689,'Helminthosporium spiciferum','BIPOSPIC','88228004','Bipolaris spicifera (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1690,'Hemophilus bovis','MORBO','19425003','Moraxella bovis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1691,'Hemophilus pertussis','BORPE','5247005','Bordetella pertussis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1692,'Hemophilus vaginalis','GV','64071004','Gardnerella vaginalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1693,'Hepatitis A virus','HEPA','32452004','hepatitis A virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1694,'Hepatitis B virus','HB','81665004','Hepatitis B virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1695,'Hepatitis C virus','HEPC','62944002','Hepatitis C virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1696,'Hepatitis D virus','HEPD','83617006','Hepatitis D virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1697,'Hepatitis E virus','HEPE','78475006','Hepatitis E virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1698,'Hepatitis G virus','HEPG','397582004','Hepatitis G virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1699,'Herbaspirillum','HERBSP','116406001','Genus Herbaspirillum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1700,'Herellea vaginicola','ACICBA','82550008','Acinetobacter calcoaceticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1701,'Herpesviridae','HERPES','128377001','Family Herpesviridae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1702,'Herpesvirus','HSV','19965007','Human herpes simplex virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1703,'Heterophyes','HETESP','13029007','Heterophyes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1704,'Heterophyes heterophyes','HETEHETE','15310008','Heterophyes heterophyes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1705,'Holdemania','HOLDSP','416161001','Genus Holdemania (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1706,'Holdemania filiformis','HOLDFILI','417221003','Holdemania filiformis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1707,'Hormiscium dermatitidis','WANGDERM','20586007','Wangiella dermatitidis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1708,'Hormodendrum','CLADO','32043002','Genus Cladosporium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1709,'Hormodendrum dermatitidis','WANGDERM','20586007','Wangiella dermatitidis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1710,'Hormonema','HORMSP','116445006','Genus Hormonema (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1711,'Hormonema dermatoides','HORMDERM','116471005','Hormonema dermatoides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1712,'Hortaea werneckii','EXOPWERN','83801002','Exophiala werneckii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1713,'Human (beta) herpes virus 5','CMV','243579005','Human cytomegalovirus 5 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1714,'Human coxsackievirus','COX','57757007','Human coxsackievirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1715,'Human coxsackievirus A','COXA','53744000','Human coxsackievirus A (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1716,'Human coxsackievirus B','COXB','49018005','Human coxsackievirus B (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1717,'Human cytomegalovirus 5','CMV','243579005','Human cytomegalovirus 5 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1718,'Human echovirus','ECHOV','39164004','Human echovirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1719,'Human Glanders bacillus','BURPM','116399000','Burkholderia pseudomallei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1720,'Human herpes simplex virus','HSV','19965007','Human herpes simplex virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1721,'Human herpes simplex virus type 1','HSV1','15302007','Human herpes simplex virus type 1 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1722,'Human herpes simplex virus type 2','HSV2','13687007','Human herpes simplex virus type 2 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1723,'Human herpesvirus 3','VZ','19551004','Human herpesvirus 3 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1724,'Human herpesvirus 4','EBV','40168006','Human herpesvirus 4 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1725,'Human Herpesvirus 6','HHV6','103528003','human herpesvirus 6 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1726,'Human Herpesvirus 8','HHV8','427605002','human herpesvirus 8 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1727,'Human immunodeficiency virus type 2','HIV2','36115006','Human immunodeficiency virus type 2 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1728,'Human immunodeficiency virus type I','HIV1','89293008','Human immunodeficiency virus type I (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1729,'Human metapneumovirus','HMPV','416730002','Human metapneumovirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1730,'Human papillomavirus','PAPHW','9482002','Human papillomavirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1731,'Human parainfluenza viruses','PFLU','407498006','Human parainfluenza viruses (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1732,'Human parvovirus B19','PARVOB19','63603005','B19 virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1733,'Human poliovirus','POLIO','44172002','Human poliovirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1734,'Human polyomavirus BK','BK','83397001','BK polyomavirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1735,'Human respiratory syncytial virus','RSV','6415009','Human respiratory syncytial virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1736,'Human T-lymphotropic virus 1','HTLV1','77457007','Human T-lymphotropic virus 1 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1737,'Human T-lymphotropic virus 2','HTLV2','30417003','Human T-lymphotropic virus 2 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1738,'Hydatigera','TAENI','28625000','Taenia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1739,'Hymenolepis','HYMEN','76403008','Hymenolepis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1740,'Ignavigranum','IGNASP','432322009','Genus Ignavigranum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1741,'Ignavigranum ruoffiae','IGNARUOF','434190004','Ignavigranum ruoffiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1742,'Influenza A (H1N1) virus','H1N1','442352004','Influenza A virus subtype H1N1 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1743,'Influenza A virus','FLUA','407479009','Influenza A virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1744,'Influenza A virus subtype H1N1','H1N1','442352004','Influenza A virus subtype H1N1 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1745,'Influenza B virus','FLUB','407480007','Influenza B virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1746,'Influenza C virus','FLUC','407482004','Influenza C virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1747,'Influenzavirus group','ORTHO','55014007','Family Orthomyxoviridae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1748,'Influenzavirus type A, avian, H1N1 strain','H1N1AVI','420362005','Influenzavirus type A, avian, H1N1 strain (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1749,'Inquilinus','INQUSP','428734002','Genus Inquilinus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1750,'Inquilinus limosus','INQULIMO','427977006','Inquilinus limosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1751,'Isospora','ISOSP','26704001','Isospora (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1752,'Janibacter','JANISP','409828004','Genus Janibacter (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1753,'Janibacter hoylei','JANIHOYL','698246003','Janibacter hoylei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1754,'JC virus','JC','36319009','JC virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1755,'Johne\'s bacillus','MYCPARAT','74028009','Mycobacterium paratuberculosis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1756,'Jonesia','JONSP','115138008','Genus Jonesia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1757,'Jonesia denitrificans','JONDE','113769000','Jonesia denitrificans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1758,'Kerstersia','KERSSP','417655009','Genus Kerstersia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1759,'Kerstersia gyiorum','KERSGYIO','417628000','Kerstersia gyiorum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1760,'Kingella','KINSP','32017003','Genus Kingella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1761,'Kingella denitrificans','KINDE','78676004','Kingella denitrificans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1762,'Kingella indologenes','SUTIND','116392009','Suttonella indologenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1763,'Kingella kingae','KINKI','90422000','Kingella kingae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1764,'Kingella orale','KINORAL','129080004','Kingella oralis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1765,'Kingella oralis','KINORAL','129080004','Kingella oralis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1766,'Kingella potus','KINPOTU','423288009','Kingella potus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1767,'Kitasatoa','STRESP','47304000','Genus Streptomyces (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1768,'Klebsiella','KS','75032006','Genus Klebsiella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1769,'Klebsiella aerogenes','EA','62592009','Enterobacter aerogenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1770,'Klebsiella granulomatis','KLEGRA','417443008','Klebsiella granulomatis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1771,'Klebsiella ornithinolytica','RAOORN','416832000','Raoultella ornithinolytica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1772,'Klebsiella oxytoca','KO','40886007','Klebsiella oxytoca (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1773,'Klebsiella ozaenae','KLEOZ','65186004','Klebsiella pneumoniae ss. ozaenae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1774,'Klebsiella planticola','RAOPLA','416264004','Raoultella planticola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1775,'Klebsiella pneumoniae','KP','56415008','Klebsiella pneumoniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1776,'Klebsiella pneumoniae ozaenae','KLEOZ','65186004','Klebsiella pneumoniae ss. ozaenae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1777,'Klebsiella pneumoniae pneumoniae','KLEPNE','18400002','Klebsiella pneumoniae ss. pneumoniae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1778,'Klebsiella pneumoniae rhinoscleromatis','KLERH','17688001','Klebsiella pneumoniae ss. rhinoscleromatis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1779,'Klebsiella rhinoscleromatis','KLERH','17688001','Klebsiella pneumoniae ss. rhinoscleromatis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1780,'Klebsiella singaporensis','KLESING','433047006','Klebsiella singaporensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1781,'Klebsiella terrigena','RAOTER','416096003','Raoultella terrigena (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1782,'Klebsiella trevisanii','RAOPLA','416264004','Raoultella planticola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1783,'Klebsiella variicola','KLEVARI','431976004','Klebsiella variicola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1784,'Klebs-Loeffler bacillus','CORDI','5851001','Corynebacterium diphtheriae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1785,'Kloeckera','KLOESP','415932007','Kloeckera  (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1786,'Kluyvera','KLUSP','61161003','Genus Kluyvera (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1787,'Kluyvera ascorbata','KLUAS','58493008','Kluyvera ascorbata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1788,'Kluyvera cryocrescens','KLUCR','32547006','Kluyvera cryocrescens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1789,'Kluyvera georgiana','KLUGEOR','416156003','Kluyvera georgiana (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1790,'Kluyvera intermedia','KLUINTE','431977008','Kluyvera intermedia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1791,'Kluyveromyces','KLUYSP','78377004','Genus Kluyveromyces (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1792,'Kluyveromyces fragilis','KLUYMAR','243431000','Kluyveromyces marxianus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1793,'Kluyveromyces lactis','KLUYLAC','243430004','Kluyveromyces lactis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1794,'Kluyveromyces marxianus','KLUYMAR','243431000','Kluyveromyces marxianus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1795,'Koch-Weeks bacillus','HAEAEGY','27784005','Haemophilus aegyptius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1796,'Kocuria','KOCSP','414328004','Genus Kocuria (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1797,'Kocuria erythromyxa','KOCROS','113773002','Kocuria rosea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1798,'Kocuria kristinae','KOCKRI','113772007','Kocuria kristinae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1799,'Kocuria rosea','KOCROS','113773002','Kocuria rosea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1800,'Kocuria varians','KOCVAR','113774008','Kocuria varians (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1801,'Kodamaea','KODASP','447042004','Genus Kodamaea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1802,'Kodamaea ohmeri','PICOHM','447491002','Kodamaea ohmeri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1803,'Koserella','YOKSP','14943005','Genus Yokenella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1804,'Koserella trabulsii','YOKRE','89477001','Yokenella regensburgei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1805,'Kurthia','KURSP','69512006','Genus Kurthia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1806,'Kurthia bessoni','KURBE','243283009','Kurthia bessoni (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1807,'Kytococcus','KYTSP','115141004','Genus Kytococcus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1808,'Kytococcus sedentarius','KYSED','113775009','Kytococcus sedentarius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1809,'Lactobacillus','LS','43690008','Genus Lactobacillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1810,'Lactobacillus acidophilus','LACAC','45707005','Lactobacillus acidophilus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1811,'Lactobacillus amylovorus','LACAM','9534006','Lactobacillus amylovorus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1812,'Lactobacillus antri','LACANTR','431689008','Lactobacillus antri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1813,'Lactobacillus arizonensis','LACPLAN','14332009','Lactobacillus plantarum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1814,'Lactobacillus brevis','LACBRE','90396007','Lactobacillus brevis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1815,'Lactobacillus buchneri','LACBUCH','49217007','Lactobacillus buchneri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1816,'Lactobacillus casei','LACCS','1017006','Lactobacillus casei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1817,'Lactobacillus catenaforme','LACCA','59836004','Eggerthia catenaformis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1818,'Lactobacillus catenaformis','EGGERCATE','59836004','Eggerthia catenaformis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1819,'Lactobacillus cellobiosus','LACFER','65506008','Lactobacillus fermentum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1820,'Lactobacillus confusus','WEISCONF','113639001','Weissella confusa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1821,'Lactobacillus crispatus','LACCR','89237007','Lactobacillus crispatus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1822,'Lactobacillus delbrueckii','LACDELB','5197002','Lactobacillus delbrueckii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1823,'Lactobacillus fermentum','LACFER','65506008','Lactobacillus fermentum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1824,'Lactobacillus gasseri','LACGA','71158000','Lactobacillus gasseri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1825,'Lactobacillus gastricus','LACGAST','431787001','Lactobacillus gastricus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1826,'Lactobacillus iners','LACINER','431967006','Lactobacillus iners (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1827,'Lactobacillus jensenii','LACJEN','65904004','Lactobacillus jensenii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1828,'Lactobacillus johnsonii','LACJO','113786006','Lactobacillus johnsonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1829,'Lactobacillus kalixensis','LACKALI','432574008','Lactobacillus kalixensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1830,'Lactobacillus minutus','ATOMIN','113630002','Atopobium minutum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1831,'Lactobacillus oris','LACOR','87480009','Lactobacillus oris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1832,'Lactobacillus paracasei','LACPARA','113792000','Lactobacillus paracasei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1833,'Lactobacillus plantarum','LACPLAN','14332009','Lactobacillus plantarum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1834,'Lactobacillus reuteri','LACREUT','86271002','Lactobacillus reuteri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1835,'Lactobacillus rhamnosus','LACRHAM','113798001','Lactobacillus rhamnosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1836,'Lactobacillus rimae','ATORIM','113632005','Atopobium rimae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1837,'Lactobacillus sakei','LACSAKE','39861009','Lactobacillus sakei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1838,'Lactobacillus salivarius','LACSALI','37809002','Lactobacillus salivarius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1839,'Lactobacillus uli','LACUL','113829005','Lactobacillus uli (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1840,'Lactobacillus ultunensis','LACULTU','432284005','Lactobacillus ultunensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1841,'Lactobacillus vaginalis','LACVA','113803005','Lactobacillus vaginalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1842,'Lactobacillus vitulinus','LACVITU','10276006','Lactobacillus vitulinus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1843,'Lactococcus','LACTSP','9879003','Genus Lactococcus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1844,'Lactococcus garvieae','LACTGARV','27716002','Lactococcus garvieae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1845,'Lactococcus lactis','LACTLACT','62079003','Lactococcus lactis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1846,'Lasiodiplodia','LASISP','78690001','Lasiodiplodia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1847,'Lasiodiplodia theobromae','LASITHEO','784008','Lasiodiplodia theobromae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1848,'Lassa virus','LASA','85944001','Lassa virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1849,'Leclercia','LECSP','43590002','Genus Leclercia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1850,'Leclercia adecarboxylata','LECAD','57459006','Leclercia adecarboxylata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1851,'Lecythophora','LECYSP','17712004','Genus Lecythophora (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1852,'Lecythophora hoffmannii','LECYHOFF','55153000','Lecythophora hoffmannii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1853,'Lecythophora mutabilis','LECYMUTA','38749003','Lecythophora mutabilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1854,'Legionella','LEGS','7527002','Genus Legionella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1855,'Legionella adelaidensis','LEGADEL','103447002','Legionella adelaidensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1856,'Legionella anisa','LEGAN','18214000','Legionella anisa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1857,'Legionella beliardensis','LEGBELI','432714000','Legionella beliardensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1858,'Legionella birminghamensis','LEGBI','22592008','Legionella birminghamensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1859,'Legionella bozemanae','LEGBOZE','450611004','Legionella bozemanae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1860,'Legionella brunensis','LEGBR','103448007','Legionella brunensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1861,'Legionella busanensis','LEGBUSA','433050009','Legionella busanensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1862,'Legionella cherrii','LEGCH','52462004','Legionella cherrii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1863,'Legionella cincinnatiensis','LEGCI','58923007','Legionella cincinnatiensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1864,'Legionella drancourtii','LEGDRAN','432325006','Legionella drancourtii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1865,'Legionella drozanskii','LEGDROZ','432712001','Legionella drozanskii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1866,'Legionella dumoffii','FLDUM','113720002','Legionella dumoffii (organism) (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1867,'Legionella erythra','LEGER','28109006','Legionella erythra (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1868,'Legionella fairfieldensis','LEGFAIR','103449004','Legionella fairfieldensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1869,'Legionella fallonii','LEGFALL','432453005','Legionella fallonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1870,'Legionella feeleii','LEGFE','17083009','Legionella feeleii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1871,'Legionella geestiae','LEGGE','103450004','Legionella geestiana (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1872,'Legionella geestiana','LEGGE','103450004','Legionella geestiana (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1873,'Legionella gormanii','LEGGO','113721003','Legionella gormanii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1874,'Legionella hackeliae','LEGHA','58939000','Legionella hackeliae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1875,'Legionella israelensis','LEGIS','3128001','Legionella israelensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1876,'Legionella jamestowniensis','LEGJA','89709001','Legionella janestowniensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1877,'Legionella janestowniensis','LEGJA','89709001','Legionella janestowniensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1878,'Legionella jordanis','LEGJO','39739007','Legionella jordanis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1879,'Legionella lansingensis','LEGLANS','103452007','Legionella lansingensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1880,'Legionella londiniensis','LEGLO','103453002','Legionella londiniensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1881,'Legionella londoniensis','LEGLO','103453002','Legionella londiniensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1882,'Legionella longbeachae','LEGLB','89605004','Legionella longbeachae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1883,'Legionella lytica','LEGLYTI','113806002','Legionella lytica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1884,'Legionella maceachernii','TATMAC','116379006','Legionella maceachernii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1885,'Legionella micdadei','TATMIC','116380009','Legionella micdadei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1886,'Legionella moravica','LEGMO','103454008','Legionella moravica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1887,'Legionella nautarum','LEGNA','103455009','Legionella nautarum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1888,'Legionella oakridgensis','LEGOK','638008','Legionella oakridgensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1889,'Legionella parisiensis','LEGPA','38322001','Legionella parisiensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1890,'Legionella pittsburghensis','TATMIC','116380009','Legionella micdadei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1891,'Legionella pneumophila','LP','80897008','Legionella pneumophila (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1892,'Legionella quateirensis','LEGQA','113807006','Legionella quateirensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1893,'Legionella quateriensis','LEGQA','113807006','Legionella quateirensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1894,'Legionella quinlivanii','LEGQI','103459003','Legionella quinlivanii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1895,'Legionella rowbothamii','LEGROWB','432713006','Legionella rowbothamii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1896,'Legionella rubrilucens','LEGRU','17298000','Legionella  rubrilucens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1897,'Legionella sainthelens','LEGSH','87271006','Legionella sainthelens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1898,'Legionella sainthelensi','LEGSH','87271006','Legionella sainthelens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1899,'Legionella santicrucis','LEGSA','72814000','Legionella santicrucis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1900,'Legionella shakespearei','LEGSK','103460008','Legionella shakespearei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1901,'Legionella spiritensis','LEGSP','64930007','Legionella spiritensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1902,'Legionella steigerwaltii','LEGST','14121003','Legionella steigerwaltii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1903,'Legionella taurinensis','LEGTAUR','433048001','Legionella taurinensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1904,'Legionella tucsonensis','LEGTU','103461007','Legionella tucsonensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1905,'Legionella wadsworthii','LEGWA','8147000','Legionella wadsworthii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1906,'Legionella waltersii','LEGWALT','113808001','Legionella waltersii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1907,'Legionella worsleiensis','LEGWO','103462000','Legionella worsleiensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1908,'Legionella worsliensis','LEGWO','103462000','Legionella worsleiensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1909,'Leifsonia','LEIFSP','414590004','Genus Leifsonia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1910,'Leifsonia aquatica','LEIFAQUA','414591000','Leifsonia aquatica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1911,'Leifsonia xyli','LEIFXYLI','414596005','Leifsonia xyli (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1912,'Leishmania','LEISH','79357004','Leishmania (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1913,'Leminorella','LEMSU','31556000','Genus Leminorella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1914,'Leminorella grimontii','LEMGR','74357002','Leminorella grimontii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1915,'Leminorella richardii','LEMRI','45354007','Leminorella richardii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1916,'Leprosy bacillus','MYCLE','58242002','Mycobacterium leprae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1917,'Leptosphaeria','LEPTSP','42797005','Genus Leptosphaeria (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1918,'Leptosphaeria senegalensis','LEPTSENE','48529007','Leptosphaeria senegalensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1919,'Leptosphaeria tompkinsii','LEPTTOMP','80279006','Leptosphaeria tompkinsii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1920,'Leptospira','LEPSP','26764003','Genus Leptospira (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1921,'Leptospira Autumnalis','LEPAU','45882007','Leptospira interrogans, serogroup Autumnalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1922,'Leptospira Ballum','LEPBA','59217001','Leptospira interrogans serogroup Ballum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1923,'Leptospira Bataviae','LEPBT','26870001','Leptospira interrogans, serogroup Bataviae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1924,'Leptospira Canicola','LEPCA','54933006','Leptospira interrogans, serogroup Canicola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1925,'Leptospira Grippotyphosa','LEPGR','26615002','Leptospira interrogans, serogroup Grippotyphosa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1926,'Leptospira Icterohaemorrhagiae','LEPIC','19251003','Leptospira interrogans, serogroup Icterohemorrhagiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1927,'Leptospira interrogans','LEPIN','116401006','Leptospira interrogans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1928,'Leptospira interrogans serogroup Autumnalis','LEPAU','45882007','Leptospira interrogans, serogroup Autumnalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1929,'Leptospira interrogans serogroup Ballum','LEPBA','59217001','Leptospira interrogans serogroup Ballum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1930,'Leptospira interrogans, serogroup Bataviae','LEPBT','26870001','Leptospira interrogans, serogroup Bataviae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1931,'Leptospira interrogans, serogroup Canicola','LEPCA','54933006','Leptospira interrogans, serogroup Canicola (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1932,'Leptospira interrogans, serogroup Grippotyphosa','LEPGR','26615002','Leptospira interrogans, serogroup Grippotyphosa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1934,'Leptospira interrogans, serogroup Pomona','LEPPO','47840007','Leptospira interrogans, serogroup Pomona (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1935,'Leptospira interrogans, serogroup Pyrogenes','LEPPY','83409006','Leptospira interrogans, serogroup Pyrogenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1936,'Leptotrichia','LEPTS','52505003','Genus Leptotrichia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1937,'Leptotrichia aerogenes','EUBSA','41543005','Eubacterium saburreum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1938,'Leptotrichia buccalis','LEPTB','85744006','Leptotrichia buccalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1939,'Leptotrichia trevisanii','LEPTTREV','431794003','Leptotrichia trevisanii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1940,'Leuconostoc','LEUC','43639007','Genus Leuconostoc (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1941,'Leuconostoc amelibiosum','LEUCI','113821008','Leuconostoc citreum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1942,'Leuconostoc citreum','LEUCI','113821008','Leuconostoc citreum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1943,'Leuconostoc lactis','LEULA','70285009','Leuconostoc lactis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1944,'Leuconostoc mesenteroides','LEUME','71403009','Leuconostoc mesenteroides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1945,'Leuconostoc pseudomesenteroides','LEUPS','243235006','Leuconostoc pseudomesenteroides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1946,'Levinea amalonatica','CITAM','55744003','Citrobacter amalonaticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1947,'Levinea malonitica','CITKO','114264004','Citrobacter koseri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1948,'Listeria','LISSP','23566007','Genus Listeria (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1949,'Listeria denitrificans','JONDE','113769000','Jonesia denitrificans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1950,'Listeria grayi','LISGR','67816007','Listeria grayi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1951,'Listeria innocua','LISTIN','48331004','Listeria innocua (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1952,'Listeria ivanovii','LISIVAN','55032007','Listeria ivanovii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1953,'Listeria monocytogenes','LM','36094007','Listeria monocytogenes (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1954,'Listeria seeligeri','LISSEE','43091008','Listeria seeligeri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1955,'Listeria welshimeri','LISWELS','80757000','Listeria welshimeri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1956,'Listonella','LISTSP','115043004','Genus Listonella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1957,'Loboa','LOBOA','90959007','Loboa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1958,'Lucibacterium harveyi','VIBHAR','84003007','Vibrio harveyi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1959,'Lymphocytic choriomeningitis virus','LCM','82518003','Lymphocytic choriomeningitis virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1960,'Lymphocytic choriomeningitis virus group','ARETU','58234003','Genus Arenavirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1961,'Lymphogranuloma venereum virus','CHLTR','63938009','Chlamydia trachomatis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1962,'Macrococcus','MACSP','414633005','Genus Macrococcus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1963,'Macrococcus bovicus','MACBOVI','414634004','Macrococcus bovicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1964,'Macrococcus carouselicus','MACCARO','414636002','Macrococcus carouselicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1965,'Macrococcus caseolyticus','MACCAS','416613009','Macrococcus caseolyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1966,'Macrococcus equipercicus','MACEQUI','414637006','Macrococcus equipercicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1967,'Macrosporium','ALTER','75059003','Genus Alternaria (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1968,'Madurella','MADUR','23009007','Genus Madurella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1969,'Madurella grisea','MADUGRIS','82871006','Madurella grisea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1970,'Madurella mycetomatis','MADUMYCE','24876009','Madurella mycetomatis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1971,'Madurella mycetomi','MADUMYCE','24876009','Madurella mycetomatis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1972,'Magnusiomyces capitatus','BLACAP','67999003','Blastoschizomyces pseudotrichosporon (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1973,'Malassezia','MALAS','18097004','Malassezia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1974,'Malassezia furfur','MALFUR','29619007','Malassezia furfur (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1975,'Malassezia globosa','MALGLOB','707291006','Malassezia globosa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1976,'Malassezia ovale','MALFUR','29619007','Malassezia furfur (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1977,'Malassezia pachydermatis','MALPAC','51257000','Malassezia pachydermatis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1978,'Malassezia restricta','MALREST','10171000087105','Malassezia restricta (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1979,'Malassezia sympodialis','MALSYMP','447178007','Malassezia sympodialis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1980,'Malbranchea','MALBSP','87186007','Genus Malbranchea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1981,'Malleomyces pseudomallei (OT)','BURPM','116399000','Burkholderia pseudomallei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1982,'Mannheimia','MANNSP','128381001','Genus Mannheimia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1983,'Mannheimia haemolytica','PASHE','128385005','Mannheimia haemolytica (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1984,'Marburgvirus','MARB','424421007','Genus Marburgvirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1985,'Massilia','MASSSP','409856009','Genus Massilia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1986,'Massilia timonae','MASSTIMO','409858005','Massilia timonae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1987,'Mastadenovirus','MASTSP','38350001','Genus Mastadenovirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1988,'Measles virus','MEASL','52584002','Measles virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1989,'Megamonas','MEGASP','44152007','Genus Megamonas (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1990,'Megamonas hypermegale','MEGAHYPE','9199006','Megamonas hypermegale (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1991,'Megamonas hypermegas','MEGAHYPE','9199006','Megamonas hypermegale (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1992,'Megasphaera','MEGSP','48889004','Genus Megasphaera (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1993,'Megasphaera elsdenii','MEGEL','26044001','Megasphaera elsdenii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1994,'Meningococcus','NM','17872004','Neisseria meningitidis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1995,'Metarhizium','METASP','116443004','Metarhizium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1996,'Metarhizium anisopliae','METAANIS','116446007','Metarhizium anisopliae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1997,'Methicillin-resistant Staphylococcus aureus','SA','115329001','methicillin resistant Staphylococcus aureus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1998,'Methylobacterium','METSP','38395008','Genus Methylobacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(1999,'Methylobacterium mesophilicum','METME','103486003','Methylobacterium mesophilicum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2000,'Methylobacterium zatmanii','METZATM','103491002','Methylobacterium zatmanii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2001,'Microbacterium','MICRSP','114199008','Genus Microbacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2002,'Microbacterium paraoxydans','MICRPARA','414714007','Microbacterium paraoxydans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2003,'Micrococcus','MICG','52864008','Genus Micrococcus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2004,'Micrococcus antarcticus','MICANT','416555005','Micrococcus antarcticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2005,'Micrococcus catarrhalis','MORCA','24226003','Moraxella catarrhalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2006,'Micrococcus cinereus','NEICI','69312007','Neisseria cinerea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2007,'Micrococcus cryophilus','PSYIM','70465007','Psychrobacter immobilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2008,'Micrococcus flavus','MICLUT','48299003','Micrococcus luteus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2009,'Micrococcus glutamicus','CORGL','89651003','Corynebacterium glutamicum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2010,'Micrococcus halobius','NESTHALO','113770004','Nesterenkonia halobia (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2011,'Micrococcus kristinae','KOCKRI','113772007','Kocuria kristinae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2012,'Micrococcus luteus','MICLUT','48299003','Micrococcus luteus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2013,'Micrococcus lylae','MICLYL','61376003','Micrococcus lylae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2014,'Micrococcus lysodeikticus','MICLUT','48299003','Micrococcus luteus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2015,'Micrococcus melitensis','BRME','72829003','Brucella melitensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2016,'Micrococcus niger','PEPNI','112344007','Peptococcus niger (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2017,'Micrococcus nishinomiyaensis','MICNIS','67084000','Micrococcus nishinomiyaensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2018,'Micrococcus pyogenes var albus','SE','60875001','Staphylococcus epidermidis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2019,'Micrococcus pyogenes var aureus','SA','3092008','Staphylococcus aureus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2020,'Micrococcus roseus','KOCROS','113773002','Kocuria rosea (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2021,'Micrococcus sedentarius','KYSED','113775009','Kytococcus sedentarius (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2022,'Micrococcus subgroup 3','STASA','19743000','Staphylococcus saprophyticus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2023,'Micromonas micros','PPSMI','62890009','Peptostreptococcus micros (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2024,'Micropolyspora brevicatena','NOCBREV','70366009','Nocardia brevicatena (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2025,'Microsporidium','MICROSP','243662007','Microsporidium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2026,'Microsporum','MICRO','11983001','Microsporum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2027,'Microsporum brachytomum','SARINK','243547001','Sarcinosporon inkin (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2028,'Mima polymorpha','ACLW','83088009','Acinetobacter lwoffi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2029,'Mitsuokella','MITSP','24231001','Genus Mitsuokella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2030,'Mitsuokella dentalis','PREDEN','114137008','Prevotella dentalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2031,'Mitsuokella multacida','MITML','55553008','Mitsuokella multacida (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2032,'Mitsuokella multiacidus','MITML','55553008','Mitsuokella multacida (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2033,'Miyagawanella ornithosis virus','CHLPS','14590003','Chlamydophila psittaci (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2034,'Mobiluncus','MOBSP','8984004','Genus Mobiluncus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2035,'Mobiluncus curtisii','MOBCU','30224004','Mobiluncus curtisii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2036,'Mobiluncus mulieris','MOBMU','13716002','Mobiluncus mulieris (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2037,'Moellerella','MOESP','71655003','Genus Moellerella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2038,'Moellerella wisconsensis','MOEWI','37107002','Moellerella wisconsensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2039,'Mogibacterium','MOGSP','416887004','Genus Mogibacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2040,'Mogibacterium diversum','MOGDIVE','429898003','Mogibacterium diversum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2041,'Mogibacterium neglectum','MOGNEGL','429899006','Mogibacterium neglectum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2042,'Mogibacterium timidum','MOGTIM','417280000','Mogibacterium timidum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2043,'Mogibacterium vescum','MOGVESC','416225002','Mogibacterium vescum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2044,'Mold','MOLD','84489001','Mold (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2045,'Molluscum contagiosum virus','MCV','68855006','Molluscum contagiosum virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2046,'Monilia','CAS','3265006','Genus Candida (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2047,'Monilia albicans','CA','53326005','Candida albicans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2048,'Monkeypox virus','POXMO','59774002','Monkeypox virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2049,'Monosporium apiospermum','SCEDBOYD','24305000','Scedosporium boydii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2050,'Morax-Axenfeld bacillus','MORLA','84066001','Moraxella lacunata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2051,'Moraxella','MOS','36361003','Genus Moraxella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2052,'Moraxella anatipestifer','RIEMANAT','113658005','Riemerella anatipestifer (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2053,'Moraxella atlantae','MORAT','47491001','Moraxella atlantae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2054,'Moraxella boevrei','MORBOEV','113832008','Moraxella boevrei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2055,'Moraxella bovis','MORBO','19425003','Moraxella bovis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2056,'Moraxella canis','MORCANI','113833003','Moraxella canis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2057,'Moraxella caprae','MORCAPR','113834009','Moraxella caprae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2058,'Moraxella catarrhalis','MORCA','24226003','Moraxella catarrhalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2059,'Moraxella cuniculi','MORCUNI','46450008','Moraxella cuniculi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2060,'Moraxella kingae','KINKI','90422000','Kingella kingae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2061,'Moraxella kingii','KINKI','90422000','Kingella kingae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2062,'Moraxella lacunata','MORLA','84066001','Moraxella lacunata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2063,'Moraxella lincolnii','MORLINC','113836006','Moraxella lincolnii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2064,'Moraxella liquefaciens','MORLA','84066001','Moraxella lacunata (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2065,'Moraxella nonliquefaciens','MORNL','46455003','Moraxella nonliquefaciens (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2066,'Moraxella oblonga','MOROBLO','430486003','Moraxella oblonga (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2067,'Moraxella osloensis','MOROS','72401008','Moraxella osloensis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2068,'Moraxella ovis','MOROVIS','112332009','Moraxella ovis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2069,'Moraxella phenylpyruvica','PSYPHEN','113941002','Psychrobacter phenylpyruvicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2070,'Moraxella polymorpha','PSYPHEN','113941002','Psychrobacter phenylpyruvicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2071,'Moraxella urethralis','OLIUT','90341001','Oligella urethralis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2072,'Morbillivirus','MORBSP','83313003','Genus Morbillivirus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2073,'Morganella','MORSP','50713005','Genus Morganella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2074,'Morganella morganii','MORMO','243301005','Morganella morganii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2075,'Morganella morganii sibonii','MORSI','243303008','Morganella morganii subsp sibonii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2076,'Morganella morganii, biogroup 1','MORM1','114460006','Morganella morganii, biogroup 1 (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2077,'Mortierella','MORTSP','61016004','Mortierella (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2078,'Mortierella wolfii','MORTWOLF','63197001','Mortierella wolfii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2079,'Mucor','MUCSP','49782006','Mucor (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2080,'Mucor circinelloides','MUCCIRC','67625003','Mucor circinelloides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2081,'Mucor hiemalis','MUCHIEM','243423005','Mucor hiemalis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2082,'Mucor janssenii','MUCCIRC','67625003','Mucor circinelloides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2083,'Mucor javanicus','MUCCIRC','67625003','Mucor circinelloides (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2084,'Mucor pusillus','RHIZMPUS','70399006','Rhizomucor pusillus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2085,'Mucor racemosus','MUCRACE','29589005','Mucor racemosus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2086,'Mucor ramosissimus','MUCRA','79297004','Mucor ramosissimus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2087,'Mucor rouxians','MUCROUX','243425003','Mucor rouxianus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2088,'multidrug resistant Achromobacter xylosoxidans','ALCXYL','707330008','multidrug resistant Achromobacter xylosoxidans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2089,'multidrug resistant Acinetobacter','ACS','446157004','multidrug resistant Acinetobacter (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2090,'multidrug resistant Enterobacter asburiae','ENTAB','714316001','multidrug resistant Enterobacter asburiae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2091,'multidrug resistant Klebsiella pneumoniae','KP','714315002','multidrug resistant Klebsiella pneumoniae   (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2092,'multidrug resistant Morganella morganii','MORMO','707293009','multidrug resistant Morganella morganii  (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2093,'multidrug resistant Pseudomonas aeruginosa','PA','710332005','multidrug resistant Pseudomonas aeruginosa (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2094,'multiple drug-resistant Enterobacter cloacae','ENC','714317005','multiple drug-resistant Enterobacter cloacae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2095,'multiple drug-resistant Proteus mirabilis','PM','714314003','multiple drug-resistant Proteus mirabilis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2096,'Mumps virus','MUMPS','50384007','Mumps virus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2097,'Mycete','FUNG','23496000','Fungus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2098,'Mycobacterium','MYCSP','243368001','Genus Mycobacterium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2099,'Mycobacterium abscessus','MYCAB','113838007','Mycobacterium abscessus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2100,'Mycobacterium abscessus bolletii','MYCABSC','705094007','Mycobacterium abscessus subspecies bolletii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2101,'Mycobacterium africanum','MYCAF','51320008','Mycobacterium africanum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2102,'Mycobacterium agri','MYCAGRI','29111009','Mycobacterium agri (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2103,'Mycobacterium aichiense','MYCAICH','66940008','Mycobacterium aichiense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2104,'Mycobacterium alvei','MYCAL','113839004','Mycobacterium alvei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2105,'Mycobacterium aquae','MYCGO','24871004','Mycobacterium gordonae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2106,'Mycobacterium asiaticum','MYCAS','44760001','Mycobacterium asiaticum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2107,'Mycobacterium aurum','MYCAU','48134004','Mycobacterium aurum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2108,'Mycobacterium austroafricanum','MYCAUST','27365009','Mycobacterium austroafricanum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2109,'Mycobacterium avium','MYSCP','83723009','Mycobacterium avium (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2110,'Mycobacterium avium complex','MYCAV','58503001','Mycobacterium, avium-intracellulare group (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2111,'Mycobacterium balnei','MYCMA','58869008','Mycobacterium marinum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2112,'Mycobacterium boenickei','MYCBOEN','430995003','Mycobacterium boenickei (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2113,'Mycobacterium bohemicum','MYCBOHE','430996002','Mycobacterium bohemicum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2114,'Mycobacterium bolletii','MYCABSC','705094007','Mycobacterium abscessus subspecies bolletii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2115,'Mycobacterium bovis','MYCBO','27142009','Mycobacterium bovis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2116,'Mycobacterium branderi','MYCBRAN','113843000','Mycobacterium branderi (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2117,'Mycobacterium brisbanense','MYCBRIS','430998001','Mycobacterium brisbanense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2118,'Mycobacterium brumae','MYCBRUM','113844006','Mycobacterium brumae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2119,'Mycobacterium brunense','MYCIN','83841006','Mycobacterium intracellulare (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2120,'Mycobacterium buruli','MYCUL','40713003','Mycobacterium ulcerans (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2121,'Mycobacterium canariasense','MYCCANA','432476008','Mycobacterium canariasense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2122,'Mycobacterium canariense','MYCCANA','432476008','Mycobacterium canariasense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2123,'Mycobacterium canetti','MYCCAN','414789006','Mycobacterium canetti (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2124,'Mycobacterium caprae','MYCCAPR','430579009','Mycobacterium caprae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2125,'Mycobacterium celatum','MYCCELA','103475000','Mycobacterium celatum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2126,'Mycobacterium chelonae','MYCCH','243377008','Mycobacterium chelonae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2127,'Mycobacterium chelonae abscessus','MYCAB','113838007','Mycobacterium abscessus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2128,'Mycobacterium chelonae chelonae','MYCCH','243377008','Mycobacterium chelonae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2129,'Mycobacterium chelonei','MYCCH','243377008','Mycobacterium chelonae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2130,'Mycobacterium chesapeaki','MYCCHES','430667000','Mycobacterium chesapeaki (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2131,'Mycobacterium chitae','MYCCHIT','89896008','Mycobacterium chitae (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2132,'Mycobacterium chlorophenolicus','MYCCHLO','385505002','Mycobacterium chlorophenolicus (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2133,'Mycobacterium chubuense','MYCCHUB','20498000','Mycobacterium chubuense (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2134,'Mycobacterium confluentis','MYCCO','113845007','Mycobacterium confluentis (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2135,'Mycobacterium conspicuum','MYCCONS','113846008','Mycobacterium conspicuum (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2136,'Mycobacterium cookii','MYCCOOK','113847004','Mycobacterium cookii (organism)','2017-03-02 18:39:48','1',1,NULL,1),(2137,'Mycobacterium cosmeticum','MYCCOS','430580007','Mycobacterium cosmeticum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2138,'Mycobacterium diernhoferi','MYCDIER','6199007','Mycobacterium diernhoferi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2139,'Mycobacterium doricum','MYCDORI','430581006','Mycobacterium doricum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2140,'Mycobacterium duvalii','MYCDUVA','66838002','Mycobacterium duvalii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2141,'Mycobacterium elephantis','MYCELEP','385509008','Mycobacterium elephantis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2142,'Mycobacterium fallax','MYCFALL','9939008','Mycobacterium fallax (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2143,'Mycobacterium farcinogenes','MYCFARC','61708000','Mycobacterium farcinogenes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2144,'Mycobacterium flavescens','MYCFL','5885000','Mycobacterium flavescens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2145,'Mycobacterium fortuitum','MYCFOR','243378003','Mycobacterium fortuitum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2146,'Mycobacterium fortuitum complex','MYCFC','103474001','Mycobacterium fortuitum complex (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2147,'Mycobacterium fortuitum fortuitum','MYCFF','333873003','Mycobacterium fortuitum subsp fortuitum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2148,'Mycobacterium fortuitum-chelonae complex','MYCFC','103474001','Mycobacterium fortuitum complex (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2149,'Mycobacterium frederiksbergense','MYCFRED','429917008','Mycobacterium frederiksbergense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2150,'Mycobacterium gadium','MYCGADI','74917007','Mycobacterium gadium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2151,'Mycobacterium gastri','MYCGA','70463000','Mycobacterium gastri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2152,'Mycobacterium genavense','MYCGN','103476004','Mycobacterium genavense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2153,'Mycobacterium giae','MYCFOR','243378003','Mycobacterium fortuitum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2154,'Mycobacterium gilvum','MYCGILV','24618002','Mycobacterium gilvum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2155,'Mycobacterium goodii','MYCGOO','127522008','Mycobacterium goodii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2156,'Mycobacterium gordonae','MYCGO','24871004','Mycobacterium gordonae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2157,'Mycobacterium habana','MYCSI','84180005','Mycobacterium simiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2158,'Mycobacterium haemophilum','MYCHA','21996001','Mycobacterium haemophilum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2159,'Mycobacterium hassiacum','MYCHASS','113848009','Mycobacterium hassiacum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2160,'Mycobacterium heckeshornense','MYCHECK','429919006','Mycobacterium heckeshornense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2161,'Mycobacterium heidelbergense','MYCHEID','429920000','Mycobacterium heidelbergense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2162,'Mycobacterium hemophilum','MYCHA','21996001','Mycobacterium haemophilum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2163,'Mycobacterium hiberniae','MYCHIBE','113849001','Mycobacterium hiberniae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2164,'Mycobacterium hodleri','MYCHODL','113850001','Mycobacterium hodleri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2165,'Mycobacterium holsaticum','MYCHOLS','429946001','Mycobacterium holsaticum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2166,'Mycobacterium houstonense','MYCHOUS','429947005','Mycobacterium houstonense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2167,'Mycobacterium immunogenum','MYCIMMU','428319005','Mycobacterium immunogenum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2168,'Mycobacterium interjectum','MYCINTE','113851002','Mycobacterium interjectum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2169,'Mycobacterium intermedium','MYCBINTE','113852009','Mycobacterium intermedium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2170,'Mycobacterium intracellulare','MYCIN','83841006','Mycobacterium intracellulare (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2171,'Mycobacterium \'J\' group','MYCGA','70463000','Mycobacterium gastri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2172,'Mycobacterium johnei','MYCPARAT','74028009','Mycobacterium paratuberculosis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2173,'Mycobacterium kansasii','MYCKA','1507005','Mycobacterium kansasii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2174,'Mycobacterium komossence','MYCKOMO','36249008','Mycobacterium komossence (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2175,'Mycobacterium komossense','MYCKOMO','36249008','Mycobacterium komossence (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2176,'Mycobacterium kubicae','MYCKUBI','427768005','Mycobacterium kubicae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2177,'Mycobacterium lacticola','MYCLACT','429948000','Mycobacterium lacticola (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2178,'Mycobacterium lacus','MYCLACU','430014001','Mycobacterium lacus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2179,'Mycobacterium lentiflavum','MYCLENT','113853004','Mycobacterium lentiflavum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2180,'Mycobacterium leprae','MYCLE','58242002','Mycobacterium leprae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2181,'Mycobacterium littorale','MYCXE','58663006','Mycobacterium xenopi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2182,'Mycobacterium luciflavum','MYCKA','1507005','Mycobacterium kansasii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2183,'Mycobacterium madagascariense','MYCMADA','113854005','Mycobacterium madagascariense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2184,'Mycobacterium mageritense','MYCMAGE','385507005','Mycobacterium mageritense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2185,'Mycobacterium malmoense','MYCML','73576007','Mycobacterium malmoense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2186,'Mycobacterium margeritense','MYCMAR','113855006','Mycobacterium margeritense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2187,'Mycobacterium marianum','MYCSC','20141004','Mycobacterium scrofulaceum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2188,'Mycobacterium marinum','MYCMA','58869008','Mycobacterium marinum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2189,'Mycobacterium massiliense','MYCMAS','430739003','Mycobacterium massiliense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2190,'Mycobacterium microti','MYCMIC','70801007','Mycobacterium microti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2191,'Mycobacterium minetti','MYCFOR','243378003','Mycobacterium fortuitum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2192,'Mycobacterium montefiorense','MYCMONT','430740001','Mycobacterium montefiorense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2193,'Mycobacterium moriokaense','MYCMORI','9679001','Mycobacterium moriokaense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2194,'Mycobacterium mucogenicum','MYCMUC','113856007','Mycobacterium mucogenicum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2195,'Mycobacterium murale','MYCMURA','385506001','Mycobacterium murale (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2196,'Mycobacterium neoaurum','MYCNEOA','51459000','Mycobacterium neoaurum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2197,'Mycobacterium neworleansense','MYCNEWO','430911006','Mycobacterium neworleansense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2198,'Mycobacterium nonchromogenicum','MYCNO','21433000','Mycobacterium nonchromogenicum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2199,'Mycobacterium novocastrense','MYCNOVO','113857003','Mycobacterium novocastrense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2200,'Mycobacterium obuense','MYCOBUE','41304005','Mycobacterium obuense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2201,'Mycobacterium palustre','MYCPALU','430912004','Mycobacterium palustre (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2202,'Mycobacterium paraffinicum','MYCSC','20141004','Mycobacterium scrofulaceum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2203,'Mycobacterium parafortuitum','MYCPARA','909007','Mycobacterium parafortuitum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2204,'Mycobacterium parascrofulaceum','MYCPAR','428856007','Mycobacterium parascrofulaceum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2205,'Mycobacterium paratuberculosis','MYCPARAT','74028009','Mycobacterium paratuberculosis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2206,'Mycobacterium parmense','MYCPARM','430913009','Mycobacterium parmense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2207,'Mycobacterium peregrinum','MYCPERE','113859000','Mycobacterium peregrinum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2208,'Mycobacterium phlei','MYCPH','78112006','Mycobacterium phlei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2209,'Mycobacterium phocaicum','MYCPHO','432888001','Mycobacterium phocaicum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2210,'Mycobacterium pinnipedii','MYCPINN','430914003','Mycobacterium pinnipedii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2211,'Mycobacterium platypoecilus','MYCMA','58869008','Mycobacterium marinum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2212,'Mycobacterium porcinum','MYCPORC','91336002','Mycobacterium porcinum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2213,'Mycobacterium psychrotolerans','MYCPSYC','429901002','Mycobacterium psychrotolerans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2214,'Mycobacterium ranae','MYCFF','333873003','Mycobacterium fortuitum subsp fortuitum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2215,'Mycobacterium rhodesiae','MYCRHOD','72130005','Mycobacterium rhodesiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2216,'Mycobacterium scrofulaceum','MYCSC','20141004','Mycobacterium scrofulaceum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2217,'Mycobacterium senegalense','MYCSENE','74212009','Mycobacterium senegalense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2218,'Mycobacterium septicum','MYCSEPT','385508000','Mycobacterium septicum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2219,'Mycobacterium sherrisii','MYCSHER','429904005','Mycobacterium sherrisii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2220,'Mycobacterium shimoidei','MYCSH','79817008','Mycobacterium shimoidei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2221,'Mycobacterium shottsii','MYCSHOT','430487007','Mycobacterium shottsii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2222,'Mycobacterium simiae','MYCSI','84180005','Mycobacterium simiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2223,'Mycobacterium smegmatis','MYCSM','53114006','Mycobacterium smegmatis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2224,'Mycobacterium sphagni','MYCSPHA','78444002','Mycobacterium sphagni (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2225,'Mycobacterium szulgai','MYCSZ','65613000','Mycobacterium szulgai (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2226,'Mycobacterium terrae','MYCTE','45662006','Mycobacterium terrae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2227,'Mycobacterium terrae complex','MYCTERR','428765006','Mycobacterium terrae complex (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2228,'Mycobacterium thermoresistibile','MYCTH','20973006','Mycobacterium thermoresistibile (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2229,'Mycobacterium tokaiense','MYCTOKA','72477006','Mycobacterium tokaiense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2230,'Mycobacterium tokainse','MYCTOKA','72477006','Mycobacterium tokaiense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2231,'Mycobacterium triplex','MYCTRIP','113860005','Mycobacterium triplex (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2232,'Mycobacterium triviale','MYCTR','40333002','Mycobacterium triviale (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2233,'Mycobacterium tuberculosis','TB','113861009','Mycobacterium tuberculosis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2234,'Mycobacterium tuberculosis African variant','MYCAF','51320008','Mycobacterium africanum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2235,'Mycobacterium tuberculosis complex','TBCX','113858008','Mycobacterium tuberculosis complex (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2236,'Mycobacterium tuberculosis group','TBCX','113858008','Mycobacterium tuberculosis complex (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2237,'Mycobacterium tusciae','MYCTUSC','430489005','Mycobacterium tusciae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2238,'Mycobacterium ulcerans','MYCUL','40713003','Mycobacterium ulcerans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2239,'Mycobacterium vaccae','MYCVA','54925005','Mycobacterium vaccae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2240,'Mycobacterium vanbaalenii','MYCVANB','430490001','Mycobacterium vanbaalenii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2241,'Mycobacterium wolinskyi','MYCWOLI','127523003','Mycobacterium wolinskyi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2242,'Mycobacterium xenopei','MYCXE','58663006','Mycobacterium xenopi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2243,'Mycobacterium xenopi','MYCXE','58663006','Mycobacterium xenopi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2244,'Mycobacterium, avium-intracellulare group','MYCAV','58503001','Mycobacterium, avium-intracellulare group (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2245,'Mycoplasma','MYCS','78981005','Genus Mycoplasma (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2246,'Mycoplasma buccale','MYCBU','112338008','Mycoplasma buccale (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2247,'Mycoplasma faucium','MYCFA','76010005','Mycoplasma faucium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2248,'Mycoplasma fermentans','MYCFE','88263009','Mycoplasma fermentans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2249,'Mycoplasma genitalium','MYCGE','5056007','Mycoplasma genitalium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2250,'Mycoplasma hominis','MYCHO','1290001','Mycoplasma hominis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2251,'Mycoplasma incognitus','MYCFE','88263009','Mycoplasma fermentans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2252,'Mycoplasma laidlawii','ACHOLAID','89082003','Acholeplasma laidlawii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2253,'Mycoplasma lipophilum','MYCLI','11412008','Mycoplasma lipophilum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2254,'Mycoplasma orale','MYCOR','46705005','Mycoplasma orale (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2255,'Mycoplasma orale type 1','MYCOR','46705005','Mycoplasma orale (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2256,'Mycoplasma orale type 2','MYCBU','112338008','Mycoplasma buccale (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2257,'Mycoplasma orale type 3','MYCFA','76010005','Mycoplasma faucium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2258,'Mycoplasma penetrans','MYCPE','113884002','Mycoplasma penetrans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2259,'Mycoplasma pirum','MYCPIRU','81314002','Mycoplasma pirum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2260,'Mycoplasma pneumoniae','MP','58720004','Mycoplasma pneumoniae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2261,'Mycoplasma primatum','MYCPR','112337003','Mycoplasma primatum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2262,'Mycoplasma salivarium','MYCSA','2654003','Mycoplasma salivarium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2263,'Mycoplasma spermatophilum','MYCSR','113890003','Mycoplasma spermatophilum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2264,'Mycoplasma, T strains','URESP','29680004','Genus Ureaplasma (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2265,'Myroides','MRYSP','115127008','Genus Myroides (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2266,'Myroides odoratus','MYROD','113558001','Myroides odoratus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2267,'Myxovirus','ORTHO','55014007','Family Orthomyxoviridae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2268,'Naegleria','NAEGL','18441007','Naegleria (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2269,'Nannizzia','ARTHSP','11860003','Genus Arthroderma (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2270,'Necator','NECAT','46112007','Necator (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2271,'Neisseria','NS','59083001','Genus Neisseria (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2272,'Neisseria canis','NEICA','54978009','Neisseria canis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2273,'Neisseria catarrhalis','MORCA','24226003','Moraxella catarrhalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2274,'Neisseria cinerea','NEICI','69312007','Neisseria cinerea (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2275,'Neisseria cuniculi','MORCUNI','46450008','Moraxella cuniculi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2276,'Neisseria dentiae','NEIDENT','113896009','Neisseria dentiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2277,'Neisseria elongata','NEIEL','12638001','Neisseria elongata (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2278,'Neisseria elongata elongata','NEIELOELO','54127003','Neisseria elongata ss. elongata (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2279,'Neisseria elongata glycolytica','NEIELOGLY','35693009','Neisseria elongata ss. glycolytica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2280,'Neisseria elongata nitroreducens','NEINI','113895008','Neisseria elongata ss nitroreducens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2281,'Neisseria flavescens','NEIFL','75566007','Neisseria flavescens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2282,'Neisseria gonorrhoeae','GC','68704007','Neisseria gonorrhoeae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2283,'Neisseria iguanae','NEIIGUA','113897000','Neisseria iguanae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2284,'Neisseria intracellularis','NM','17872004','Neisseria meningitidis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2285,'Neisseria lactamica','NEILA','54915000','Neisseria lactamica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2286,'Neisseria macacae','NEIMACA','112341004','Neisseria macacae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2287,'Neisseria meningitidis','NM','17872004','Neisseria meningitidis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2288,'Neisseria meningitidis serogroup A','NMA','103479006','Neisseria meningitidis serogroup A (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2289,'Neisseria meningitidis serogroup B','NMB','103480009','Neisseria meningitidis serogroup B (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2290,'Neisseria meningitidis serogroup C','NMC','103481008','Neisseria meningitidis serogroup C (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2291,'Neisseria meningitidis serogroup W135','NMW135','103483006','Neisseria meningitidis serogroup W135 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2292,'Neisseria meningitidis serogroup Y','NMY','103482001','Neisseria meningitidis serogroup Y (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2293,'Neisseria mucosa','NEIMU','81795000','Neisseria mucosa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2294,'Neisseria ovis','MOROVIS','112332009','Moraxella ovis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2295,'Neisseria parelongata','NEIPA','113894007','Neisseria weaveri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2296,'Neisseria pharyngis','NEICI','69312007','Neisseria cinerea (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2297,'Neisseria polysaccharea','NEIPO','66768001','Neisseria polysaccharea (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2298,'Neisseria sicca','NEISI','49074002','Neisseria sicca (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2299,'Neisseria subflava','NEISU','77700001','Neisseria subflava (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2300,'Neisseria weaveri','NEIPA','113894007','Neisseria weaveri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2301,'Neorickettsia','NEORSP','58579003','Genus Neorickettsia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2302,'Neorickettsia sennetsu','NEORSENN','423477000','Neorickettsia sennetsu (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2303,'Nesterenkonia','NESTSP','414331003','Genus Nesterenkonia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2304,'Nesterenkonia halobia','NESTHALO','113770004','Nesterenkonia halobia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2305,'Nigrospora','NIGRSP','41278006','Genus Nigrospora (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2306,'Nocardia','NOCSP','59674005','Genus Nocardia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2307,'Nocardia abscessus','NOCABSC','414863003','Nocardia abscessus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2308,'Nocardia africana','NOCAFRI','417342004','Nocardia africana (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2309,'Nocardia anaemiae','NOCANAE','472230801000087102','Nocardia anaemiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2310,'Nocardia antarctica','NOCADASS','15526005','Nocardiopsis dassonvillei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2311,'Nocardia aobensis','NOCAOBE','444683006','Nocardia aobensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2312,'Nocardia araoensis','NOCARAO','430602008','Nocardia araoensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2313,'Nocardia arthritidis','NOCARTH','427275005','Nocardia arthritidis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2314,'Nocardia asiatica','NOCASIA','426054003','Nocardia asiatica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2315,'Nocardia asteroides','NOCAS','30092002','Nocardia asteroides (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2316,'Nocardia asteroides complex','NOCASTE','414864009','Nocardia asteroides complex (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2317,'Nocardia beijingensis','NOCBEIJ','430848001','Nocardia beijingensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2318,'Nocardia brasiliensis','NOCBR','58970008','Nocardia brasiliensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2319,'Nocardia brevicatena','NOCBREV','70366009','Nocardia brevicatena (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2320,'Nocardia carnea','NOCCARN','61208001','Nocardia carnea (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2321,'Nocardia caviae','NOCOC','63087008','Nocardia otitidiscaviarum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2322,'Nocardia cyriacigeorgica','NOCCYRI','414866006','Nocardia cyriacigeorgica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2323,'Nocardia cyriacigeorgici','NOCCYRI','414866006','Nocardia cyriacigeorgica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2324,'Nocardia dassonvillei','NOCADASS','15526005','Nocardiopsis dassonvillei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2325,'Nocardia elegans','NOCELEG','418717009','Nocardia elegans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2326,'Nocardia farcinica','NOCFARC','85516007','Nocardia farcinica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2327,'Nocardia higoensis','NOCHIGO','430654003','Nocardia higoensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2328,'Nocardia inohanensis','NOCINOH','430770006','Nocardia inohanensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2329,'Nocardia kruczakiae','NOCKRUC','450468006','Nocardia kruczakiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2330,'Nocardia madurae','ACTINMADU','90285002','Actinomadura madurae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2331,'Nocardia mexicana','NOCMEXI','855085291000087109','Nocardia mexicana (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2332,'Nocardia niigatensis','NOCNIIG','430772003','Nocardia niigatensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2333,'Nocardia nova','NOCNOVA','37621001','Nocardia nova (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2334,'Nocardia orientalis','AMYCORIE','427705005','Amycolatopsis orientalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2335,'Nocardia otitidiscaviarum','NOCOC','63087008','Nocardia otitidiscaviarum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2336,'Nocardia otitis caviarum','NOCOC','63087008','Nocardia otitidiscaviarum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2337,'Nocardia paucivorans','NOCPAUC','414867002','Nocardia paucivorans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2338,'Nocardia pneumoniae','NOCPNEU','431063007','Nocardia pneumoniae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2339,'Nocardia pseudobrasiliensis','NOCPSEU','414868007','Nocardia pseudobrasiliensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2340,'Nocardia sienata','NOCSIEN','430672009','Nocardia sienata (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2341,'Nocardia testacea','NOCTEST','430588000','Nocardia testacea (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2342,'Nocardia transvalensis','NOCTRAN','80379008','Nocardia transvalensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2343,'Nocardia veterana','NOCVETE','414869004','Nocardia veterana (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2344,'Nocardia yamanashiensis','NOCYAMA','430661004','Nocardia yamanashiensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2345,'Nocardiopsis','NOCASP','23593005','Genus Nocardiopsis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2346,'Nocardiopsis dassonvillei','NOCADASS','15526005','Nocardiopsis dassonvillei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2347,'Nocardiopsos synnemataformans','NOCASYNN','416314008','Nocardiopsis synnemataformans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2348,'nonagglutinating Vibrio','VCNO1','398506000','Vibrio cholerae, non-O1 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2349,'Non-hemolytic streptococcus','GS','22339002','gamma-hemolytic streptococcus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2350,'Norovirus','NORO','407359000','Genus Norovirus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2351,'Norwalk virus','PARNR','10514003','Norwalk virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2352,'Nuttallia','BABES','35029001','Babesia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2353,'Obesumbacterium','OBPSU','50732004','Genus Obesumbacterium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2354,'Obesumbacterium proteus','OBESPROT','28501001','Obesumbacterium proteus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2355,'Ochrobactrum','OCHSP','116423005','Genus Ochrobactrum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2356,'Ochrobactrum anthropi','OCHAN','116490002','Ochrobactrum anthropi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2357,'Ochrobactrum intermedium','OCHINTE','414926008','Ochrobactrum intermedium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2358,'Ochroconis','OCHRSP','116450000','Genus Ochroconis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2359,'Ochroconis constricta','OCHRCONS','116451001','Ochroconis constricta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2360,'Ochroconis gallopava','OCHRGALL','116453003','Ochroconis gallopava (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2361,'Ochroconis gallopavum','OCHRGALL','116453003','Ochroconis gallopava (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2362,'Ochroconis humicola','SCOLHUMI','47560005','Scolecobasidium humicola (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2363,'Odoribacter','BACSPP','418523002','Genus Odoribacter (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2364,'Odoribacter splanchnicus','BACSP','446487001','Odoribacter splanchnicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2365,'Oerskovia','OERSP','81194007','Genus Oerskovia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2366,'Oerskovia turbata','OERTU','10459009','Oerskovia turbata (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2367,'Ogataea','OGATSP','707829005','Ogataea (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2368,'Ogataea angusta','PICANGU','449402006','Pichia angusta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2369,'Ogataea polymorpha','OGATPOLY','707830000','Ogataea polymorpha (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2370,'Oidiodendron','ARTHRSP','112406004','Arthrographis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2371,'Oidium albicans','CA','53326005','Candida albicans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2372,'Oligella','OLISP','112343001','Genus Oligella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2373,'Oligella urealytica','OLIUR','11309009','Oligella ureolytica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2374,'Oligella ureilytica','OLIUR','11309009','Oligella ureolytica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2375,'Oligella ureolytica','OLIUR','11309009','Oligella ureolytica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2376,'Oligella urethralis','OLIUT','90341001','Oligella urethralis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2377,'Oospora lactis','GEOCAN','41625002','Geotrichum candidum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2378,'Orbivirus','ORBI','44725007','Genus Orbivirus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2379,'Orf virus','POXOR','64753004','Orf virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2380,'Orientia','ORISP','114232006','Genus Orientia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2381,'Orientia tsutsugamushi','ORTSU','114233001','Orientia tsutsugamushi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2382,'Ornithosis virus','CHLPS','14590003','Chlamydophila psittaci (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2383,'Orthomyxovirus group','ORTHO','55014007','Family Orthomyxoviridae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2384,'Paecilomyces','PAECSP','26001000','Paecilomyces (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2385,'Paecilomyces javanicus','PAECJAVA','51306001','Paecilomyces javanicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2386,'Paecilomyces lilacinus','PAECLILA','243514005','Paecilomyces lilacinus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2387,'Paecilomyces marquandii','PAECMARQ','88336005','Paecilomyces marquandii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2388,'Paecilomyces variotii','PAECVARI','20035009','Paecilomyces variotii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2389,'Paenibacillus','PAESP','114086007','Genus Paenibacillus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2390,'Paenibacillus alvei','PAEALV','114088008','Paenibacillus alvei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2391,'Paenibacillus gordonae','PAEVALI','114107004','Paenibacillus validus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2392,'Paenibacillus larvae','PAELARV','114098002','Paenibacillus larvae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2393,'Paenibacillus larvae larvae','PAELARV','114098002','Paenibacillus larvae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2394,'Paenibacillus lentimorbus','PAELENT','414989004','Paenibacillus lentimorbus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2395,'Paenibacillus macerans','PAEMAC','114101003','Paenibacillus macerans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2396,'Paenibacillus polymyxa','PAEPOL','114105007','Paenibacillus polymyxa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2397,'Paenibacillus popilliae','PAEPOPI','414990008','Paenibacillus popilliae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2398,'Paenibacillus thiaminolyticus','PAETHIA','114106008','Paenibacillus thiaminolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2399,'Paenibacillus urinalis','PAEURIN','445240003','Paenibacillus urinalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2400,'Paenibacillus validus','PAEVALI','114107004','Paenibacillus validus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2401,'Pandoraea','PANDSP','414998001','Genus Pandoraea (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2402,'Pandoraea apista','PANDAPIS','414999009','Pandoraea apista (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2403,'Pandoraea norimbergensis','PANDNORI','415000009','Pandoraea norimbergensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2404,'Pandoraea pnomenusa','PANDPNOM','415001008','Pandoraea pnomenusa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2405,'Pandoraea pulmonicola','PANDPULM','415002001','Pandoraea pulmonicola (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2406,'Pandoraea sputorum','PANDSPUT','415004000','Pandoraea sputorum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2407,'Pantoea','PANOT','115013001','Genus Pantoea (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2408,'Pantoea agglomerans','PANAG','115015008','Pantoea agglomerans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2409,'Pantoea ananas','PANANAN','115014007','Pantoea ananatis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2410,'Pantoea ananatis','PANANAN','115014007','Pantoea ananatis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2411,'Pantoea dispersa','PANDI','115017000','Pantoea dispersa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2412,'Papillomaviridae','PAPTUA','407453000','Family Papillomaviridae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2413,'Parabacteroides','PARASP','447036003','Genus Parabacteroides (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2414,'Parabacteroides distasonis','BACDT','447512008','Parabacteroides distasonis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2415,'Parabacteroides merdae','BACMR','447513003','Parabacteroides merdae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2416,'Paracoccus','PARSP','415013003','Genus Paracoccus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2417,'Paracoccus yeei','PARYEE','415033004','Paracoccus yeei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2418,'Paramyxoviridae','PARAMYXO','128354001','Family Paramyxoviridae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2419,'Parascardovia','PARASSP','431018006','Genus Parascardovia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2420,'Parascardovia denticolens','PARADENT','433344009','Parascardovia denticolens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2421,'Parasite','PARASITE','103535006','Life form of parasite (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2422,'Parvimonas','PARVSP','430005006','Genus Parvimonas (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2423,'Parvimonas micra','PARVMICR','434293007','Parvimonas micra (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2424,'Parvovirus','PARTU','11970002','Genus Parvovirus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2425,'Pasteurella','PASSP','87579009','Genus Pasteurella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2426,'Pasteurella aerogenes','PASAE','87075007','Pasteurella aerogenes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2427,'Pasteurella anatipestifer','RIEMANAT','113658005','Riemerella anatipestifer (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2428,'Pasteurella bettii','PASBE','113902004','Pasteurella bettyae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2429,'Pasteurella bettyae','PASBE','113902004','Pasteurella bettyae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2430,'Pasteurella caballi','PASCABA','113903009','Pasteurella caballi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2431,'Pasteurella canis','PASCA','7784009','Pasteurella canis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2432,'Pasteurella dagmatis','PASDA','80948000','Pasteurella dagmatis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2433,'Pasteurella enterocolitica','YEREN','65255000','Yersinia enterocolitica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2434,'Pasteurella gallinarum','PASGA','429076006','Avibacterium gallinarum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2435,'Pasteurella haemolytica','PASHE','128385005','Mannheimia haemolytica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2436,'Pasteurella multocida','PASMU','10879005','Pasteurella multocida (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2437,'Pasteurella multocida biotype 6','PASCA','7784009','Pasteurella canis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2438,'Pasteurella multocida gallicida','PASMG','1743002','Pasteurella multocida ss. gallicida (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2439,'Pasteurella multocida multocida','PASMM','71068007','Pasteurella multocida ss. multocida (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2440,'Pasteurella multocida septica','PASMS','14298009','Pasteurella multocida ss. septica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2441,'Pasteurella pestis','YERPE','54365000','Yersinia pestis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2442,'Pasteurella pneumotropica','PASPN','32562008','Pasteurella pneumotropica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2443,'Pasteurella pseudotuberculosis','YERPS','90530002','Yersinia pseudotuberculosis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2444,'Pasteurella stomatis','PASSTOM','46827009','Pasteurella stomatis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2445,'Pasteurella tularensis','FRATU','51526001','Francisella tularensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2446,'Pasteurella ureae','ACURE','1839009','Actinobacillus ureae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2447,'Pectobacterium','PECSP','422013009','Genus Pectobacterium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2448,'Pediculus humanus','LICE','84936006','Pediculus humanus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2449,'Pediococcus','PEDSP','243236007','Genus Pediococcus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2450,'Pediococcus acidilactici','PEDAC','243237003','Pediococcus acidilactici (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2451,'Pediococcus pentosaceus','PEDPE','243242006','Pediococcus pentosaceus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2452,'Pediococcus urinaeequi','AEURQ','430979003','Aerococcus urinaeequi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2453,'Pedobacter','PEDOSP','115128003','Genus Pedobacter (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2454,'Pedobacter heparinus','PEDOHEPA','113554004','Pedobacter heparinus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2455,'Pedobacter piscium','PEDOPISC','113555003','Pedobacter piscium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2456,'Penicillium','PENIC','42993004','Penicillium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2457,'Penicillium chrysogenum','PENICHRY','24406000','Penicillium chrysogenum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2458,'Penicillium citrinum','PENICITR','48370005','Penicillium citrinum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2459,'Penicillium commune','PENICOMM','67330005','Penicillium commune (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2460,'Penicillium decumbens','PENIDECU','415947003','Penicillium decumbens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2461,'Penicillium expansum','PENIEXPA','28266005','Penicillium expansum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2462,'Penicillium griseofulvum','PENIGRIS','75778008','Penicillium griseofulvum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2463,'Penicillium lilacinum','PAECLILA','243514005','Paecilomyces lilacinus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2464,'Penicillium marneffei','PENIMARN','71825007','Penicillium marneffei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2465,'Penicillium patulum','PENIGRIS','75778008','Penicillium griseofulvum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2466,'Penicillium puberulum','PENIPUBE','54269009','Penicillium puberulum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2467,'Penicillium purpurogenum','PENIPURP','52308002','Penicillium purpurogenum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2468,'Penicillium rubrum','PENIPURP','52308002','Penicillium purpurogenum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2469,'Penicillium spinulosum','PENISPIN','39115007','Penicillium spinulosum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2470,'Penicillium verruculosum','PENIVERR','82397008','Penicillium verruculosum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2471,'Penicillium viridicatum','PENIVIRI','34886002','Penicillium viridicatum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2472,'Peptococcus','PSU','20585006','Genus Peptococcus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2473,'Peptococcus asaccharolyticus','PPSAS','89268006','Peptostreptococcus asaccharolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2474,'Peptococcus glycinophilus','PPSMI','62890009','Peptostreptococcus micros (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2475,'Peptococcus indolicus','PPSIN','19204000','Peptostreptococcus indolicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2476,'Peptococcus niger','PEPNI','112344007','Peptococcus niger (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2477,'Peptococcus saccharolyticus','STASL','41103009','Staphylococcus saccharolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2478,'Peptoniphilus','PEPTSP','430742009','Genus Peptoniphilus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2479,'Peptoniphilus asaccharolyticus','PEPTASAC','433440001','Peptoniphilus asaccharolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2480,'Peptoniphilus harei','PEPTHARE','433373007','Peptoniphilus harei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2481,'Peptoniphilus ivorii','PEPTIVOR','433375000','Peptoniphilus ivorii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2482,'Peptoniphilus lacrimalis','PEPTLACR','433376004','Peptoniphilus lacrimalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2483,'Peptostreptococcus','PSS','243417000','Genus Peptostreptococcus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2484,'Peptostreptococcus anaerobius','PSA','19217002','Peptostreptococcus anaerobius (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2485,'Peptostreptococcus asaccharolyticus','PPSAS','89268006','Peptostreptococcus asaccharolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2486,'Peptostreptococcus elsdenii','MEGEL','26044001','Megasphaera elsdenii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2487,'Peptostreptococcus hydrogenalis','PPSHY','413519008','Anaerococcus hydrogenalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2488,'Peptostreptococcus indolicus','PPSIN','19204000','Peptostreptococcus indolicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2489,'Peptostreptococcus lacrimalis','PPSLA','113909008','Peptostreptococcus lacrimalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2490,'Peptostreptococcus lactolyticus','ANALAC','413520002','Anaerococcus lactolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2491,'Peptostreptococcus magnus','FINMAG','417469002','Finegoldia magna (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2492,'Peptostreptococcus micros','PPSMI','62890009','Peptostreptococcus micros (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2493,'Peptostreptococcus octavius','ANAOCTA','413521003','Anaerococcus octavius (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2494,'Peptostreptococcus parvulus','ATOPAR','113631003','Atopobium parvulum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2495,'Peptostreptococcus prevotii','ANAPRE','413522005','Anaerococcus prevotii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2496,'Peptostreptococcus productus','BLAUPROD','698205008','Blautia producta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2497,'Peptostreptococcus tetradius','ANATET','413524006','Anaerococcus tretradius (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2498,'Peptostreptococcus vaginalis','ANAVAG','413525007','Anaerococcus vaginalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2499,'Petriellidium boydii','PSEBOY','91088000','Pseudallescheria boydii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2500,'Petriellidum boydii','PSEBOY','91088000','Pseudallescheria boydii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2501,'Pfeiffer\'s bacillus','HIU','44470000','Haemophilus influenzae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2502,'Phaeoacremonium','PHAESP','415948008','Phaeoacremonium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2503,'Phaeoacremonium parasiticum','PHAEPARA','415950000','Phaeoacremonium parasiticum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2504,'Phaeoannellomyces','PHAEOSP','243541000','Genus Phaeoannellomyces (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2505,'Phaeoannellomyces werneckii','EXOPWERN','83801002','Exophiala werneckii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2506,'Phaeoannelomyces werneckii','EXOPWERN','83801002','Exophiala werneckii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2507,'Phaeococcomyces','PHASP','86327004','Genus Phaeococcomyces (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2508,'Phaeococcomyces exophialae','PHAEX','51929003','Phaeococcomyces exophialae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2509,'Phialemonium','PHIASP','84481003','Phialemonium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2510,'Phialemonium curvatum','PHIACURV','80571005','Phialemonium curvatum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2511,'Phialemonium dimorphosporum','PHIADIMO','419272001','Phialemonium dimorphosporum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2512,'Phialemonium obovatum','PHIAOBOV','4074005','Phialemonium obovatum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2513,'Phialophera mutabilis','LECYMUTA','38749003','Lecythophora mutabilis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2514,'Phialophora','PHIAL','41402008','Genus Phialophora (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2515,'Phialophora americana','PHIAAMER','145164301000087108','Phialophora americana (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2516,'Phialophora compacta','FONSECOM','76124007','Fonsecaea compacta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2517,'Phialophora compactum','FONSECOM','76124007','Fonsecaea compacta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2518,'Phialophora dermatitidis','WANGDERM','20586007','Wangiella dermatitidis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2519,'Phialophora europaea','PHIAEURO','346778401000087108','Phialophora europaea (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2520,'Phialophora gougerotii','EXOPJEAN','38224003','Exophiala jeanselmei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2521,'Phialophora hoffmannii','LECYHOFF','55153000','Lecythophora hoffmannii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2522,'Phialophora jeanselmei','EXOPJEAN','38224003','Exophiala jeanselmei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2523,'Phialophora pedrosoi','FONSEPED','69356007','Fonsecaea pedrosoi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2524,'Phialophora richardsiae','PLEURICH','698239007','Pleurostomophora richardsiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2525,'Phialophora spinifera','EXOPSPIN','66283007','Exophiala spinifera (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2526,'Phialophora verrucosa','PHIAVERR','67301003','Phialophora verrucosa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2527,'Phoma','PHOMA','61019006','Phoma (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2528,'Photobacterium','PHOSP','115046007','Genus Photobacterium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2529,'Photobacterium damselae damselae','PHODAM','387799003','Photobacterium damselae subsp damselae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2530,'Photorhabdus','PHOTSP','115022000','Genus Photorhabdus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2531,'Photorhabdus asymbiotica','PHOTASYM','415093002','Photorhabdus asymbiotica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2532,'Photorhabdus luminescens','XENLU','115023005','Photorhabdus luminescens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2533,'Photorhabdus temperata','PHOTTEMP','415094008','Photorhabdus temperata (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2534,'Pichia','PICSP','4163004','Genus Pichia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2535,'Pichia angusta','PICANGU','449402006','Pichia angusta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2536,'Pichia anomala','PICANA','427041001','Pichia anomala (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2537,'Pichia farinosa','PICFAR','243433002','Pichia farinosa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2538,'Pichia guilliermondii','PICGUIL','29812000','Pichia guilliermondii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2539,'Pichia ohmeri','PICOHM','447491002','Kodamaea ohmeri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2540,'Pichia polymorpha','PICPOL','427187009','Pichia polymorpha (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2541,'Picornavirus','PICTU','407345007','Genus Picornavirus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2542,'Piedraia','PIEDR','50411008','Genus Piedraia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2543,'Piedraia hortae','PIEDHORT','89782007','Piedraia hortae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2544,'Pithomyces','PITHSP','12760009','Genus Pithomyces (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2545,'Pityrosporum','MALAS','18097004','Malassezia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2546,'Pityrosporum canis','MALPAC','51257000','Malassezia pachydermatis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2547,'Pityrosporum furfur','MALFUR','29619007','Malassezia furfur (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2548,'Pityrosporum orbiculare','MALFUR','29619007','Malassezia furfur (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2549,'Pityrosporum ovale','MALFUR','29619007','Malassezia furfur (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2550,'Pityrosporum pachydermatis','MALPAC','51257000','Malassezia pachydermatis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2551,'Plasmodium','PLASP','34706006','Plasmodium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2552,'Plasmodium falciparum','PLAFA','30020004','Plasmodium falciparum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2553,'Plasmodium knowlesi','PLAKNOW','49918008','Plasmodium knowlesi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2554,'Plasmodium malariae','PLAMA','56395006','Plasmodium malariae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2555,'Plasmodium ovale','PLAOV','18508006','Plasmodium ovale (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2556,'Plasmodium vivax','PLAVI','74746009','Plasmodium vivax (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2557,'Plesiomonas','PLESP','42929008','Genus Plesiomonas (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2558,'Plesiomonas shigelloides','PLESH','38643006','Plesiomonas shigelloides (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2559,'Pleurostomophora','PLEUSP','698238004','Pleurostomophora (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2560,'Pleurostomophora richardsiae','PLEURICH','698239007','Pleurostomophora richardsiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2561,'Pneumococcus','SP','9861002','Streptococcus pneumoniae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2562,'Polyomaviridae','PAPTUO','407455007','Family Polyomaviridae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2563,'Polyomavirus','POLYOMA','407456008','Genus Polyomavirus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2564,'Porphyromonas','PORSP','114154000','Genus Porphyromonas (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2565,'Porphyromonas asaccharolyticus','PORAS','115950003','Porphyromonas asaccharolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2566,'Porphyromonas cangingivalis','PORCANG','114156003','Porphyromonas cangingivalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2567,'Porphyromonas canoris','PORCANO','114157007','Porphyromonas canoris (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2568,'Porphyromonas cansulci','PORCANS','114158002','Porphyromonas cansulci (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2569,'Porphyromonas catoniae','PORCATO','114159005','Porphyromonas catoniae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2570,'Porphyromonas circumdentaria','PORCIRC','114160000','Porphyromonas circumentaria (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2571,'Porphyromonas circumentaria','PORCIRC','114160000','Porphyromonas circumentaria (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2572,'Porphyromonas crevioricanis','PORCREV','114161001','Porphyromonas crevioricanis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2573,'Porphyromonas endodontalis','POREN','2401005','Bacteroides endodontalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2574,'Porphyromonas gingivalis','PORGI','114163003','Porphyromonas gingivalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2575,'Porphyromonas gingivicanis','PORGING','114164009','Porphyromonas gingivicanis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2576,'Porphyromonas gulae','PORGULA','433019007','Porphyromonas gulae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2577,'Porphyromonas levii','PORLE','114165005','Porphyromonas levii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2578,'Porphyromonas macacae','PORSA','114166006','Porphyromonas macacae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2579,'Porphyromonas salivosa','PORSA','114166006','Porphyromonas macacae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2580,'Porphyromonas somerae','PORSOME','450442004','Porphyromonas somerae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2581,'Poxviridae','POXTU','424976006','Family Poxviridae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2582,'Pragia','PRASP','115024004','Genus Pragia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2583,'Pragia fontium','PRAFO','115025003','Pragia fontium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2584,'Prevotella','PRESP','114129000','Genus Prevotella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2585,'Prevotella bivia','PREBI','114131009','Prevotella bivia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2586,'Prevotella buccae','PREBC','114134001','Prevotella buccae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2587,'Prevotella buccalis','PREBU','114135000','Prevotella buccalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2588,'Prevotella corporis','PRECO','114136004','Prevotella corporis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2589,'Prevotella dentalis','PREDEN','114137008','Prevotella dentalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2590,'Prevotella denticola','PREDE','114138003','Prevotella denticola (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2591,'Prevotella disiens','PREDI','114139006','Prevotella disiens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2592,'Prevotella enoeca','PREENOE','114140008','Prevotella enoeca (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2593,'Prevotella heparinolytica','PREHE','114141007','Prevotella heparinolytica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2594,'Prevotella intermedia','PREIN','114142000','Prevotella intermedia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2595,'Prevotella loescheii','PRELO','114143005','Prevotella loescheii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2596,'Prevotella marshii','PREMARS','417919003','Prevotella marshii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2597,'Prevotella melaninogenica','PREM','114144004','Prevotella melaninogenica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2598,'Prevotella multiformis','PREMULT','418615005','Prevotella multiformis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2599,'Prevotella multisaccharivorax','PREMULTI','418858007','Prevotella multisaccharivorax (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2600,'Prevotella nigrescens','PRENI','114145003','Prevotella nigrescens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2601,'Prevotella oralis','PREOR','114146002','Prevotella oralis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2602,'Prevotella oralis group','PREORAL','440091000124102','Prevotella oralis group (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2603,'Prevotella oris','PREOS','114147006','Prevotella oris (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2604,'Prevotella oulora','PREOU','419466004','Prevotella oulorum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2605,'Prevotella oulorum','PREOU','419466004','Prevotella oulorum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2606,'Prevotella pallens','PREPALL','114149009','Prevotella pallens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2607,'Prevotella ruminicola','PRERU','115949003','Prevotella ruminicola (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2608,'Prevotella ruminicola ruminicola','PRERU','115949003','Prevotella ruminicola (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2609,'Prevotella salivae','PRESALI','418278009','Prevotella salivae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2610,'Prevotella shahii','PRESHAH','419720005','Prevotella shahii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2611,'Prevotella tannerae','PRETANN','114151008','Prevotella tannerae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2612,'Prevotella veroralis','PREVE','114152001','Prevotella veroralis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2613,'Prevotella zoogleoformans','PREZO','425729002','Bacteroides zoogleoformans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2614,'Propionibacterium','PRPG','34844008','Genus Propionibacterium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2615,'Propionibacterium acidipropionici','PRPA','2379005','Propionibacterium acidipropionici (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2616,'Propionibacterium acidi-propionici','PRPA','2379005','Propionibacterium acidipropionici (organism','2017-03-02 18:39:49','1',1,NULL,1),(2617,'Propionibacterium acnes','PRPAC','39473003','Propionibacterium acnes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2618,'Propionibacterium arabinosum','PRPA','2379005','Propionibacterium acidipropionici (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2619,'Propionibacterium australiense','PRPAU','433037008','Propionibacterium australiense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2620,'Propionibacterium avidum','PROAV','47473006','Propionibacterium avidum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2621,'Propionibacterium cyclohexanicum','PRPCY','113916009','Propionibacterium cyclohexanicum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2622,'Propionibacterium freudenreichii','PRPF','23871008','Propionibacterium freudenreichii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2623,'Propionibacterium freudenreichii fredenreichii','PRPFF','113917000','Propionibacterium freudenreichii ss fredenreichii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2624,'Propionibacterium freudenreichii freudenreichii','PRPFF','113917000','Propionibacterium freudenreichii ss fredenreichii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2625,'Propionibacterium freudenreichii shermanii','PRPFS','113918005','Propionibacterium freudenreichii ss shermanii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2626,'Propionibacterium granulosum','PROGR','87755005','Propionibacterium granulosum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2627,'Propionibacterium granulosus','CORC','243274004','Centers for Disease Control and Prevention (CDC) Corynebacterium group C (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2628,'Propionibacterium innocuum','PFI','114056000','Propioniferax innocus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2629,'Propionibacterium jensenii','PRPJE','86720000','Propionibacterium jensenii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2630,'Propionibacterium lymphophilum','PRPLY','26102005','Propionibacterium lymphophilum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2631,'Propionibacterium microaerophilum','PRPMI','431383004','Propionibacterium microaerophilum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2632,'Propionibacterium pentosaceum','PRPA','2379005','Propionibacterium acidipropionici (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2633,'Propionibacterium petersonii','PRPJE','86720000','Propionibacterium jensenii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2634,'Propionibacterium prionicus','PRPPR','113919002','Propionibacterium prionicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2635,'Propionibacterium propionicum','PRPRO','427413007','Propionibacterium propionicum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2636,'Propionibacterium raffinosaceum','PRPJE','86720000','Propionibacterium jensenii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2637,'Propionibacterium rubrum','PRPTH','30087004','Propionibacterium thoenii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2638,'Propionibacterium technicum','PRPJE','86720000','Propionibacterium jensenii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2639,'Propionibacterium thoenii','PRPTH','30087004','Propionibacterium thoenii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2640,'Propionibacterium zeae','PRPJE','86720000','Propionibacterium jensenii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2641,'Propioniferax','PROPISP','114055001','Genus Propioniferax (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2642,'Propioniferax innocus','PFI','114056000','Propioniferax innocus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2643,'Propionimicrobium','PROPSP','429177000','Genus Propionimicrobium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2644,'Propionimicrobium lymphophilum','PROPLYMP','429395008','Propionimicrobium lymphophilum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2645,'Proteus','PTS','50517009','Genus Proteus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2646,'Proteus hauseri','PROTHAUS','417592004','Proteus hauseri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2647,'Proteus inconstans, subgroup A','PRVAL','46349009','Providencia alcalifaciens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2648,'Proteus inconstans, subgroup B','PRS','1445008','Providencia stuartii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2649,'Proteus mirabilis','PM','73457008','Proteus mirabilis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2650,'Proteus myxofaciens','PRTMY','86145008','Proteus myxofaciens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2651,'Proteus penneri','PRTPE','45298005','Proteus penneri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2652,'Proteus rettgeri','PR','14196002','Providencia rettgeri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2653,'Proteus vulgaris','PV','45834001','Proteus vulgaris (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2654,'Proteus vulgaris biogroup 1','PRTPE','45298005','Proteus penneri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2655,'Proteus vulgaris biogroup 3','PROTHAUS','417592004','Proteus hauseri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2656,'Proteus vulgaris indole negative','PRTPE','45298005','Proteus penneri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2657,'Protomonas','METSP','38395008','Genus Methylobacterium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2658,'Prototheca','PROTO','37563009','Prototheca (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2659,'Prototheca filamenta','SARINK','243547001','Sarcinosporon inkin (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2660,'Prototheca wickerhamii','PROWIC','70523003','Prototheca wickerhamii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2661,'Prototheca zopfii','PROZOP','32768009','Prototheca zopfii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2662,'Protozoan','PROTOZOAN','417396000','Kingdom Protozoa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2663,'Providencia','PRU','112284001','Genus Providencia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2664,'Providencia alcalifaciens','PRVAL','46349009','Providencia alcalifaciens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2665,'Providencia alcalifaciens biogroup 3','PRVRU','19196004','Providencia rustigianii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2666,'Providencia friedericiana','PRVRU','19196004','Providencia rustigianii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2667,'Providencia haimbachae','PRVHE','47300009','Providencia heimbachae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2668,'Providencia heimbachae','PRVHE','47300009','Providencia heimbachae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2669,'Providencia rettgeri','PR','14196002','Providencia rettgeri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2670,'Providencia rustigianii','PRVRU','19196004','Providencia rustigianii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2671,'Providencia stuartii','PRS','1445008','Providencia stuartii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2672,'Pseudallescheria','PSASP','54930009','Genus Pseudallescheria (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2673,'Pseudallescheria boydii','PSEBOY','91088000','Pseudallescheria boydii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2674,'Pseudoallescheria boydii','PSEBOY','91088000','Pseudallescheria boydii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2675,'Pseudoflavonifractor','PSEFSP','447037007','Genus Pseudoflavonifractor (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2676,'Pseudoflavonifractor capillosus','PSEFCAPI','447428000','Pseudoflavonifractor capillosus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2677,'Pseudomonas','PSP','57032008','Genus Pseudomonas (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2678,'Pseudomonas acidovorans','DELFAC','20432002','Delftia acidovorans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2679,'Pseudomonas aeruginosa','PA','52499004','Pseudomonas aeruginosa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2680,'Pseudomonas alcaligenes','PSEAL','46247008','Pseudomonas alcaligenes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2681,'Pseudomonas alcaligenes biotype B','PSEPS','30955004','Pseudomonas pseudoalcaligenes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2682,'Pseudomonas alliicola','BURGL','113671008','Burkholderia gladioli (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2683,'Pseudomonas antimicrobica','BURGL','113671008','Burkholderia gladioli (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2684,'Pseudomonas aureofaciens','PSECH','63949003','Pseudomonas chlororaphis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2685,'Pseudomonas beteli','STEMA','113697002','Stenotrophomonas maltophilia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2686,'Pseudomonas betle','STEMA','113697002','Stenotrophomonas maltophilia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2687,'Pseudomonas cepacia','BURCE','113669008','Burkholderia cepacia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2688,'Pseudomonas chloritidismutans','PST','58024003','Pseudomonas stutzeri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2689,'Pseudomonas chlororaphis','PSECH','63949003','Pseudomonas chlororaphis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2690,'Pseudomonas cocovenenans','BURGL','113671008','Burkholderia gladioli (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2691,'Pseudomonas delafieldii','ACDEL','113685003','Acidovorax delafieldii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2692,'Pseudomonas denitrificans','PSEG1','90187004','Pseudomonas, group VA-1 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2693,'Pseudomonas diminuta','BREDIM','113689009','Brevundimonas diminuta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2694,'Pseudomonas facilis','ACIDFACI','113686002','Acidovorax facilis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2695,'Pseudomonas fluorescens','PF','39289003','Pseudomonas fluorescens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2696,'Pseudomonas gladioli','BURGL','113671008','Burkholderia gladioli (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2697,'Pseudomonas hydrophila','AH','85823000','Aeromonas hydrophila (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2698,'Pseudomonas luteola','CHSLU','33919008','Chryseomonas luteola (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2699,'Pseudomonas mallei','BURMA','113674000','Burkholderia mallei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2700,'Pseudomonas maltophilia','STEMA','113697002','Stenotrophomonas maltophilia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2701,'Pseudomonas marginalis','PSEMARG','116414007','Pseudomonas marginalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2702,'Pseudomonas mendocina','PSEMEN','59419001','Pseudomonas mendocina (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2703,'Pseudomonas monteilii','PSEMONT','113930004','Pseudomonas monteilii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2704,'Pseudomonas mosselii','PSEMOSS','437937006','Pseudomonas mosselii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2705,'Pseudomonas multivorans','BURCE','113669008','Burkholderia cepacia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2706,'Pseudomonas odorans','ALFE','25223004','Alcaligenes fecalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2707,'Pseudomonas oryzihabitans','PSORY','113931000','Pseudomonas oryzihabitans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2708,'Pseudomonas paucimobilis','SPMPA','243350004','Sphingomonas paucimobilis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2709,'Pseudomonas perfectomarina','PST','58024003','Pseudomonas stutzeri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2710,'Pseudomonas perfectomarinus','PST','58024003','Pseudomonas stutzeri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2711,'Pseudomonas pertucinogena','PSEPE','17191002','Pseudomonas pertucinogena (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2712,'Pseudomonas pickettii','RALPIC','114053008','Ralstonia picketti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2713,'Pseudomonas pseudoalcaligenes','PSEPS','30955004','Pseudomonas pseudoalcaligenes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2714,'Pseudomonas pseudomallei','BURPM','116399000','Burkholderia pseudomallei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2715,'Pseudomonas putida','PP','68608003','Pseudomonas putida (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2716,'Pseudomonas putrefaciens','SHEPF','113700003','Shewanella putrefaciens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2717,'Pseudomonas pyocyaneus','PA','52499004','Pseudomonas aeruginosa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2718,'Pseudomonas pyrrocinia','BURPYRR','113677007','Burkholderia pyrrocinia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2719,'Pseudomonas shigelloides','PLESH','38643006','Plesiomonas shigelloides (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2720,'Pseudomonas stutzeri','PST','58024003','Pseudomonas stutzeri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2721,'Pseudomonas stutzeri-like','CDCVB3','413797008','Centers for Disease Control and Prevention (CDC) Group Vb-3 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2722,'Pseudomonas testosteroni','COMTE','43721005','Comamonas testosteroni (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2723,'Pseudomonas thomasii','RALMAN','415236004','Ralstonia mannitolilytica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2724,'Pseudomonas veronii','PSEVERO','113940001','Pseudomonas veronii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2725,'Pseudomonas vesicularis','BREVES','113690000','Brevundimonas vesicularis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2726,'Pseudomonas, group IIK-2','SPHST','61675006','Sphingobacterium spiritivorum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2727,'Pseudomonas, group VA-1','PSEG1','90187004','Pseudomonas, group VA-1 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2728,'Pseudoramibacter','PSEUSP','115131002','Genus Pseudoramibacter (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2729,'Pseudoramibacter alactolyticus','PSALA','113828002','Pseudoramibacter alactolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2730,'Pseudozyma','PSEUDSP','415958007','Pseudozyma (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2731,'Pseudozyma aphidids','PSEUAPHI','415959004','Pseudozyma aphidids (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2732,'Psychrobacter','PSYCH','34412002','Genus Psychrobacter (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2733,'Psychrobacter immobilis','PSYIM','70465007','Psychrobacter immobilis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2734,'Psychrobacter phenylpyruvicus','PSYPHEN','113941002','Psychrobacter phenylpyruvicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2735,'Pullularia','AURESP','34121008','Genus Aureobasidium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2736,'Pullularia pullulans','AUREPULL','39129008','Aureobasidium pullulans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2737,'Pustular dermatitis virus','POXOR','64753004','Orf virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2738,'Pyrenochaeta','PYREN','33478003','Pyrenochaeta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2739,'Pyrenochaeta romeroi','PYRENROM','79274002','Pyrenochaeta romeroi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2740,'Rabies virus','RAB','59881000','Rabies virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2741,'Radish bacillus','MYCTE','45662006','Mycobacterium terrae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2742,'Rahnella','RAHSP','48569008','Genus Rahnella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2743,'Rahnella aquatilis','RAHAQ','10021006','Rahnella aquatilis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2744,'Rahnella genomospecies 1','RAHAQ','10021006','Rahnella aquatilis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2745,'Ralstonia','RALSP','415234001','Genus Ralstonia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2746,'Ralstonia gilardii','CUPRGILA','416329005','Cupriavidus gilardii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2747,'Ralstonia insidiosa','RALINSI','415235000','Ralstonia insidiosa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2748,'Ralstonia mannitolilytica','RALMAN','415236004','Ralstonia mannitolilytica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2749,'Ralstonia paucula','RALPAU','116198003','Ralstonia paucula (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2750,'Ralstonia picketti','RALPIC','114053008','Ralstonia picketti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2751,'Ralstonia respiraculi','CUPRRESP','416495009','Cupriavidus respiraculi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2752,'Ralstonia thomasii','RALMAN','415236004','Ralstonia mannitolilytica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2753,'Ramibacterium ramosum','CLORA','42706008','Clostridium ramosum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2754,'Ramichloridium cerophilum','RHINAQUA','45462000','Rhinocladiella aquaspersa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2755,'Raoultella','RAOSP','417468005','Genus Raoultella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2756,'Raoultella ornithinolytica','RAOORN','416832000','Raoultella ornithinolytica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2757,'Raoultella planticola','RAOPLA','416264004','Raoultella planticola (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2758,'Raoultella terrigena','RAOTER','416096003','Raoultella terrigena (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2759,'Rapid growing mycobacteria','RGM','116494006','Rapid growing mycobacteria (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2760,'Reovirus group','REOTU','243591001','Genus Orthoreovirus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2761,'Respiratory syncytial virus','RSV','6415009','Human respiratory syncytial virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2762,'Respirovirus','RESPV','407487005','Genus Respirovirus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2763,'Rhabdovirus','RHATU','407327007','Genus Rhabdovirus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2764,'Rhinocladiella','RHINSP','21690009','Genus Rhinocladiella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2765,'Rhinocladiella aquaspersa','RHINAQUA','45462000','Rhinocladiella aquaspersa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2766,'Rhinocladiella atrovirens','RHINATRO','243545009','Rhinocladiella atrovirens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2767,'Rhinocladiella compacta','FONSECOM','76124007','Fonsecaea compacta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2768,'Rhinocladiella compactum','FONSECOM','76124007','Fonsecaea compacta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2769,'Rhinocladiella pedrosoi','FONSEPED','69356007','Fonsecaea pedrosoi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2770,'Rhinocladiella spinifera','EXOPSPIN','66283007','Exophiala spinifera (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2771,'Rhinosporidium','RHINO','65470001','Genus Rhinosporidium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2772,'Rhizobium','RHIZSP','415303003','Genus Rhizobium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2773,'Rhizobium radiobacter','RHIRAD','438107000','Rhizobium radiobacter (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2774,'Rhizobium rubi','RHIRUBI','438073004','Rhizobium rubi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2775,'Rhizobium vitis','RHIVITI','438218005','Rhizobium vitis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2776,'Rhizomucor','RHIZMSP','85711000','Rhizomucor (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2777,'Rhizomucor miehei','RHIZMMIE','61389009','Rhizomucor miehei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2778,'Rhizomucor pusillus','RHIZMPUS','70399006','Rhizomucor pusillus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2779,'Rhizopus','RHIZO','17683005','Rhizopus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2780,'Rhizopus arrhizus','RHIZARRH','87002009','Rhizopus arrhizus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2781,'Rhizopus microsporus','RHIZMICR','14504004','Rhizopus microsporus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2782,'Rhizopus nigricans','RHIZNIGR','37060000','Rhizopus stolonifer (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2783,'Rhizopus oryzae','RHIZARRH','87002009','Rhizopus arrhizus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2784,'Rhizopus stolonifer','RHIZSTOL','37060000','Rhizopus stolonifer (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2785,'Rhodococcus','RHOSP','34534002','Genus Rhodococcus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2786,'Rhodococcus aurantiacus','TSUKPAUR','113510005','Tsukamurella paurometabola (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2787,'Rhodococcus bronchialis','GORDBRON','113646005','Gordonia bronchialis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2788,'Rhodococcus chlorophenolicus','MYCCHLO','385505002','Mycobacterium chlorophenolicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2789,'Rhodococcus chubuensis','GORDSPUT','113648006','Gordonia sputi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2790,'Rhodococcus equi','RHOEQ','80771008','Rhodococcus equi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2791,'Rhodococcus erythropolis','RHOERYT','22478004','Rhodococcus erythropolis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2792,'Rhodococcus fascians','RHOFASC','28901005','Rhodococcus fascians (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2793,'Rhodococcus globerulus','RHOGLOB','44348004','Rhodococcus globerulus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2794,'Rhodococcus gordoniae','RHOGORD','430885009','Rhodococcus gordoniae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2795,'Rhodococcus luteus','RHOFASC','28901005','Rhodococcus fascians (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2796,'Rhodococcus obuensis','GORDSPUT','113648006','Gordonia sputi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2797,'Rhodococcus rhodochrous','RHORHOD','54379008','Rhodococcus rhodochrous (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2798,'Rhodococcus roseus','RHORHOD','54379008','Rhodococcus rhodochrous (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2799,'Rhodococcus rubropertinctus','GORDRUBR','113647001','Gordonia rubripertincta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2800,'Rhodococcus terrae','GORDTERR','113649003','Gordonia terrae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2801,'Rhodotorula','RHODO','51976007','Rhodotorula (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2802,'Rhodotorula glutinis','RHOGLU','69250004','Rhodotorula glutinis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2803,'Rhodotorula minuta','RHOMIN','416777007','Rhodotorula minuta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2804,'Rhodotorula mucilaginosa','RHORUB','86724009','Rhodotorula rubra (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2805,'Rhodotorula pilimanae','RHOPIL','243470006','Rhodotorula pilimanae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2806,'Rhodotorula rubra','RHORUB','86724009','Rhodotorula rubra (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2807,'Rickettsia','RICSP','62065006','Genus Rickettsia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2808,'Rickettsia akari','RICAK','30769009','Rickettsia akari (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2809,'Rickettsia conorii','RICCO','32691002','Rickettsia conorii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2810,'Rickettsia mooseri','RICTY','79284001','Rickettsia typhi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2811,'Rickettsia orientalis','ORTSU','114233001','Orientia tsutsugamushi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2812,'Rickettsia parkeri','RICPARK','85738007','Rickettsia parkeri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2813,'Rickettsia prowazekii','RICPR','28499009','Rickettsia prowazekii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2814,'Rickettsia quintana','BARQUI','103511001','Bartonella quintana (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2815,'Rickettsia rickettsii','RICRI','18054009','Rickettsia rickettsii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2816,'Rickettsia rickettsii, spotted fever group','RICRI','18054009','Rickettsia rickettsii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2817,'Rickettsia sibirica','RICSIBI','85288000','Rickettsia sibirica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2818,'Rickettsia tsutsugamushi','ORTSU','114233001','Orientia tsutsugamushi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2819,'Rickettsia typhi','RICTY','79284001','Rickettsia typhi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2820,'Riemerella','RIEMSP','115145008','Genus Riemerella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2821,'Riemerella anatipestifer','RIEMANAT','113658005','Riemerella anatipestifer (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2822,'Rift Valley fever virus','RVF','28335002','Rift Valley fever virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2823,'Rochalimaea','BARSP','62496009','Genus Bartonella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2824,'Rochalimaea elizabethae','BARELIZ','103513003','Bartonella elizabethae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2825,'Rochalimaea henselae','BARHEN','103510000','Bartonella henselae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2826,'Rochalimaea quintana','BARQUI','103511001','Bartonella quintana (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2827,'Rochalimaea vinsonii','BARVIN','103512008','Bartonella vinsonii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2828,'Rochalimea','BARSP','62496009','Genus Bartonella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2829,'Roseomonas','ROSE','115159001','Genus Roseomonas (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2830,'Roseomonas cervicalis','ROSECERV','113711006','Roseomonas cervicalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2831,'Roseomonas gilardii','ROSEGILA','113710007','Roseomonas gilardii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2832,'Roseomonas mucosa','ROSEMUCO','415351006','Roseomonas mucosa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2833,'Rotavirus','ROTA','417542000','Genus Rotavirus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2834,'Rothia','ROTSP','90163001','Genus Rothia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2835,'Rothia dentocariosa','ROTDE','35379007','Rothia dentocariosa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2836,'Rothia mucilaginosa','ROTHMU','416544005','Rothia mucilaginosa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2837,'Rubella virus','RUBEL','5210005','Rubella virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2838,'Rubeola virus','MEASL','52584002','Measles virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2839,'Rubivirus','RUBI','45156000','Rubivirus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2840,'Ruminococcus','RUMISP','28907009','Genus Ruminococcus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2841,'Ruminococcus hansenii','RUMHAN','449574005','Blautia hansenii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2842,'Ruminococcus productus','BLAUPROD','698205008','Blautia producta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2843,'Rummeliibacillus','RUMMSP','450458001','Genus Rummeliibacillus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2844,'Rummeliibacillus pycnus','RUMMPYCN','450459009','Rummeliibacillus pycnus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2845,'Saccharomonospora','SACCSP','103501008','Genus Saccharomonospora (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2846,'Saccharomonospora viridis','SACCVIRI','103505004','Saccharomonospora viridis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2847,'Saccharomyces','SACCH','27069008','Genus Saccharomyces (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2848,'Saccharomyces cerevisiae','SACCER','58296003','Saccharomyces cerevisiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2849,'Saccharopolyspora','SACCHSP','115144007','Genus Saccharopolyspora (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2850,'Saccharopolyspora rectivirgula','SACCHRECT','113657000','Saccharopolyspora rectivirgula (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2851,'Saksenaea','SAKSSP','71259001','Saksenaea (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2852,'Saksenaea vasiformis','SAKSVASI','58478009','Saksenaea vasiformis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2853,'Salivary gland virus','CMV','243579005','Human cytomegalovirus 5 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2854,'Salmonella','SAS','27268008','Genus Salmonella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2855,'Salmonella Agona','SALAG','80627004','Salmonella Agona (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2856,'Salmonella arizona','SALAR','397502001','Salmonella enterica subsp. arizonae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2857,'Salmonella bongori','SALBONG','398393000','Salmonella bongori (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2858,'Salmonella Choleraesuis','SALCS','80232006','Salmonella Choleraesuis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2859,'Salmonella diarizonae','SALDIA','398428002','Salmonella enterica subsp. diarizonae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2860,'Salmonella Dublin','SALDU','62136003','Salmonella Dublin (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2861,'Salmonella enterica','SALENT','110378009','Salmonella enterica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2862,'Salmonella enterica arizonae','SALAR','397502001','Salmonella enterica subsp. arizonae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2863,'Salmonella enterica diarizonae','SALDIA','398428002','Salmonella enterica subsp. diarizonae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2864,'Salmonella enterica enterica','SALENTENT','398508004','Salmonella enterica subsp. enterica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2865,'Salmonella enterica houtenae','SAL4','398371005','Salmonella enterica subsp. houtenae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2866,'Salmonella enterica indica','SALENTIND','398620001','Salmonella enterica subsp. indica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2867,'Salmonella enterica salamae','SAL2','398488004','Salmonella enterica subsp. salamae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2868,'Salmonella Enteritidis','SALEN','73525009','Salmonella Enteritidis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2869,'Salmonella Gallinarum','SALGALL','370576005','Salmonella Gallinarum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2870,'Salmonella group A','SAGA','398426003','Salmonella group O:2 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2871,'Salmonella group B','SAGB','398467008','Salmonella group O:4 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2872,'Salmonella group C1','SAGC1','398593004','Salmonella group O:7 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2873,'Salmonella group C2','SAGC2','398364000','Salmonella group O:8 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2874,'Salmonella group F','SAGO11','398429005','Salmonella group O:11 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2875,'Salmonella Heidelberg','SALHE','71865006','Salmonella Heidelberg (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2876,'Salmonella houtenae','SAL4','398371005','Salmonella enterica subsp. houtenae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2877,'Salmonella indica','SALENTIND','398620001','Salmonella enterica subsp. indica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2878,'Salmonella Infantis','SALIN','82071007','Salmonella Infantis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2879,'Salmonella Montevideo','SALMO','80268001','Salmonella Montevideo (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2880,'Salmonella Newport','SALNE','56077000','Salmonella Newport (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2881,'Salmonella Oranienburg','SALOR','46667007','Salmonella Oranienburg (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2882,'Salmonella Paratyphi A','SALPTA','79128009','Salmonella Paratyphi A (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2883,'Salmonella Paratyphi B','SALPTB','85908006','Salmonella Paratyphi B (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2884,'Salmonella Paratyphi C','SALPTC','32488009','Salmonella Paratyphi C (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2885,'Salmonella Saintpaul','SALSP','2820001','Salmonella Saintpaul (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2886,'Salmonella salamae','SAL2','398488004','Salmonella enterica subsp. salamae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2887,'Salmonella Typhi','SALTY','5595000','Salmonella Typhi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2888,'Salmonella Typhimurium','SALTM','50136005','Salmonella Typhimurium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2889,'Salmonella, serogroup D','SAGD','115408009','Salmonella, serogroup D (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2890,'Salmonella, serogroup E','SAGE','115409001','Salmonella, serogroup E (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2891,'Sapromyces','ACHOSP','84858009','Genus Acholeplasma (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2892,'Sapromyces laidlawii','ACHOLAID','89082003','Acholeplasma laidlawii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2893,'Sarcina','SARCISP','58039002','Genus Sarcina (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2894,'Sarcina luteus','MICLUT','48299003','Micrococcus luteus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2895,'Sarcina ventriculi','SARCIVENT','22267009','Sarcina ventriculi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2896,'Sarcinomyces inkin','SARINK','243547001','Sarcinosporon inkin (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2897,'Sarcinomyces werneckii','EXOPWERN','83801002','Exophiala werneckii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2898,'Sarcinosporon','SARCSP','243546005','Genus Sarcinosporon (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2899,'Sarcinosporon inkin','SARINK','243547001','Sarcinosporon inkin (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2900,'Sarcocystis','SARCO','34666003','Sarcocystis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2901,'Sarcocystis hominis','SARCHOMI','17696006','Sarcocystis hominis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2902,'Sarcocystis lindemanni','SARCLIND','71131007','Sarcocystis lindemanni (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2903,'Sarcocystis suihominis','SARCSUIH','35193008','Sarcocystis suihominis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2904,'Scabies mite','SCAB','67333007','Sarcoptes scabiei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2905,'Scardovia','SCARSP','438181001','Genus Scardovia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2906,'Scardovia inopinata','SCARINOP','441142005','Scardovia inopinata (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2907,'Scedosporium','SCEDSP','31901009','Genus Scedosporium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2908,'Scedosporium apiospermum','SCEDBOYD','24305000','Scedosporium boydii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2909,'Scedosporium boydii','SCEDBOYD','24305000','Scedosporium boydii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2910,'Scedosporium inflatum','SCEPRO','69564000','Scedosporium inflatum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2911,'Scedosporium prolificans','SCEPRO','69564000','Scedosporium inflatum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2912,'Schizophyllum','SCHISP','243444005','Schizophyllum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2913,'Schizophyllum commune','SCHICOMM','243445006','Schizophyllum commune (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2914,'Scolecobasidium','SCOLSP','14462004','Genus Scolecobasidium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2915,'Scolecobasidium constrictum','OCHRCONS','116451001','Ochroconis constricta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2916,'Scolecobasidium humicola','SCOLHUMI','47560005','Scolecobasidium humicola (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2917,'Scopulariopsis','SCOPSP','39949000','Scopulariopsis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2918,'Scopulariopsis acremonium','SCOPACRE','59520005','Scopulariopsis acremonium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2919,'Scopulariopsis brevicaulis','SCOPBREV','3245004','Scopulariopsis brevicaulis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2920,'Scopulariopsis brumptii','SCOPBRUM','243523008','Scopulariopsis brumptii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2921,'Scopulariopsis candida','SCOPCAND','243524002','Scopulariopsis candida (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2922,'Scrofula scotochromogen','MYCSC','20141004','Mycobacterium scrofulaceum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2923,'Scytalidium','SCYTSP','12678008','Genus Scytalidium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2924,'Scytalidium dimidiatum','SCYTDIMI','243548006','Scytalidium dimidiatum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2925,'Scytalidium hyalinum','SCYTHYAL','6430000','Scytalidium hyalinum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2926,'Scytalidium synanamorph of Hendersonula toruloidea','SCYTDIMI','243548006','Scytalidium dimidiatum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2927,'Scytalidium synanamorph of Nattrassia mangiferae','SCYTDIMI','243548006','Scytalidium dimidiatum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2928,'Selenomonas','SELSP','85986007','Genus Selenomonas (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2929,'Selenomonas artemidis','SELAR','6754006','Selenomonas artemidis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2930,'Selenomonas dianae','SELDI','86435000','Selenomonas dianae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2931,'Selenomonas flueggei','SELFL','27333006','Selenomonas flueggei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2932,'Selenomonas infelix','SELIN','43571005','Selenomonas infelix (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2933,'Selenomonas noxia','SELNO','70096005','Selenomonas noxia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2934,'Selenomonas sputigena','SELST','23595003','Selenomonas sputigena (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2935,'Sepedonium','SEPESP','17046009','Sepedonium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2936,'Serpula jonesii','SERJO','243385004','Serpulina jonesii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2937,'Serpulina','SERSP','115162003','Genus Serpulina (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2938,'Serpulina jonesii','SERJO','243385004','Serpulina jonesii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2939,'Serpulina pilosicoli','BRACPILO','113517008','Brachyspira pilosicoli (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2940,'Serratia','SSP','42025004','Genus Serratia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2941,'Serratia entomophila','SEREN','76656001','Serratia entomophila (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2942,'Serratia ficaria','SERFI','802004','Serratia ficaria (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2943,'Serratia fonticola','SERFO','112329006','Serratia fonticola (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2944,'Serratia grimesii','SERGR','115005002','Serratia grimesii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2945,'Serratia liquefaciens','SL','23787004','Serratia liquefaciens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2946,'Serratia marcescens','SM','33522002','Serratia marcescens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2947,'Serratia marcescens, Biogroup I','SERM1','115006001','Serratia marcescens, Biogroup I (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2948,'Serratia marinorubra','SR','55825002','Serratia rubidaea (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2949,'Serratia odorifera','SEROD','10413007','Serratia odorifera (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2950,'Serratia odorifera biogroup 1','SERO1','397075007','Serratia odorifera biogroup 1 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2951,'Serratia odorifera biogroup 2','SERO2','397076008','Serratia odorifera biogroup 2 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2952,'Serratia plymuthica','SERPL','28955009','Serratia plymuthica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2953,'Serratia proteamaculans','SERPS','116135003','Serratia proteamaculans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2954,'Serratia proteamaculans proteamaculans','SERPP','116136002','Serratia proteamaculans subsp proteamaculans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2955,'Serratia proteamaculans quinovora','SERPQ','115004003','Serratia proteamaculans subsp quinovora (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2956,'Serratia quinivorans','SERQUIN','438199009','Serratia quinivorans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2957,'Serratia rubidaea','SR','55825002','Serratia rubidaea (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2958,'Serratia ureilytica','SERUREI','450416004','Serratia ureilytica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2959,'Shewanella','SHESP','115158009','Genus Shewanella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2960,'Shewanella algae','SHEALGA','113702006','Shewanella algae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2961,'Shewanella putrefaciens','SHEPF','113700003','Shewanella putrefaciens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2962,'Shiga\'s bacillus','SHIGA','43612004','Shigella dysenteriae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2963,'Shigella','SHISP','77352002',')Genus Shigella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2964,'Shigella biogroup A','SHIGA','43612004','Shigella dysenteriae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2965,'Shigella biogroup B','SHIGB','85729005','Shigella flexneri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2966,'Shigella biogroup C','SHIGC','55462008','Shigella boydii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2967,'Shigella biogroup D','SHIGD','4298009','Shigella sonnei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2968,'Shigella boydii','SHIGC','55462008','Shigella boydii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2969,'Shigella dysenteriae','SHIGA','43612004','Shigella dysenteriae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2970,'Shigella flexneri','SHIGB','85729005','Shigella flexneri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2971,'Shigella sonnei','SHIGD','4298009','Shigella sonnei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2972,'Simian Virus 40','SIMIAN','38244009','Simian virus 40 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2973,'Simonsiella','SIMOSP','16344005','Genus Simonsiella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2974,'Simonsiella crassa','ALYSCRAS','444924000','Alysiella crassa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2975,'Simonsiella muelleri','SIMOMUEL','74269008','Simonsiella muelleri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2976,'Slackia','SLACSP','432913003','Genus Slackia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2977,'Slackia exigua','SLACEXIG','434236002','Slackia exigua (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2978,'Slackia heliotrinireducens','SLACHELI','437984006','Slackia heliotrinireducens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2982,'Smallpox virus','POXVR','243568000','Variola virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2983,'Smegma bacillus','MYCSM','53114006','Mycobacterium smegmatis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2985,'Sneathia','SNEASP','416469007','Genus Sneathia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2986,'Sneathia sanguinegens','SNEASANG','416737004','Sneathia sanguinegens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2987,'Solibacillus','SOLISP','699375003','Solibacillus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2988,'Solibacillus silvestris','BSILV','429471007','Solibacillus silvestris (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2989,'Sphaerophorus fusiformis','FUSNU','32763000','Fusobacterium nucleatum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2990,'Sphaerophorus necrophorus','FUSNE','27274008','Fusobacterium necrophorum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2991,'Sphingobacterium','SPHSP','43780008','Genus Sphingobacterium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2992,'Sphingobacterium antarcticum','SPHANTA','113952008','Sphingobacterium antarcticum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2993,'Sphingobacterium antarcticus','SPHANTA','113952008','Sphingobacterium antarcticum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2994,'Sphingobacterium faecium','SPHFAEC','113953003','Sphingobacterium faecium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2995,'Sphingobacterium heparinum','PEDOHEPA','113554004','Pedobacter heparinus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2996,'Sphingobacterium mizutae','SPHMI','113749005','Flavobacterium mitzutaii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2997,'Sphingobacterium multivorum','SPHMU','51595006','Sphingobacterium multivorum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2998,'Sphingobacterium piscium','PEDOPISC','113555003','Pedobacter piscium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(2999,'Sphingobacterium spiritivorum','SPHST','61675006','Sphingobacterium spiritivorum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3000,'Sphingobacterium thalpophilum','SPHTH','113954009','Sphingobacterium thalpophilum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3001,'Sphingobacterium versatilis','SPHST','61675006','Sphingobacterium spiritivorum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3002,'Sphingobacterium yabuuchiae','SPHYA','243347002','Sphingobacterium yabuuchiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3003,'Sphingomonas','SPMSP','115130001','Genus Sphingomonas (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3004,'Sphingomonas parapaucimobilis','SPMPARA','243349004','Sphingomonas parapaucimobilis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3005,'Sphingomonas paucimobilis','SPMPA','243350004','Sphingomonas paucimobilis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3006,'Spirilla morsus minus','SPIMI','35164008','Spirillum minus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3007,'Spirillum','SPISP','54700005','Genus Spirillum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3008,'Spirillum minor','SPIMI','35164008','Spirillum minus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3009,'Spirillum minus','SPIMI','35164008','Spirillum minus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3010,'Spirochaeta morsus minus','SPIMI','35164008','Spirillum minus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3011,'Spirochaeta muris','SPIMI','35164008','Spirillum minus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3012,'Spirochaeta pallida','TREPALL','72904005','Treponema pallidum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3013,'Sporobolomyces','SPORSP','112398006','Sporobolomyces (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3014,'Sporobolomyces roseus','SPOROSE','243481009','Sporobolomyces roseus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3015,'Sporobolomyces salmonicolor','SPOSAL','243446007','Sporobolomyces salmonicolor (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3016,'Sporothrix','SPOSP','63100009','Genus Sporothrix (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3017,'Sporothrix cyanescens','SPOCYAN','20302006','Sporothrix cyanescens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3018,'Sporothrix schenckii','SPOSC','32662000','Sporothrix schenkii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3019,'Sporothrix schenkii','SPOSC','32662000','Sporothrix schenkii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3020,'Sporotrichum','SPOROSP','415963006','Genus Sporotrichum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3021,'Sporotrichum beurmannii','SPOSC','32662000','Sporothrix schenkii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3022,'Sporotrichum pruinosum','SPOROPRUI','415964000','Sporotrichum pruinosum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3023,'Sporotrichum schenckii','SPOSC','32662000','Sporothrix schenkii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3024,'Sporotrichum schenkii','SPOSC','32662000','Sporothrix schenkii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3025,'St Louis encephalitis virus','SLE','58432001','Saint Louis encephalitis virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3026,'Stachybotrys','STACSP','61175005','Genus Stachybotrys (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3027,'Stachybotrys chartarum','STACCHAR','418469000','Stachybotrys chartarum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3028,'Staphylococcus','SS','65119002','Genus Staphylococcus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3029,'Staphylococcus albus','SE','60875001','Staphylococcus epidermidis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3030,'Staphylococcus arlettae','STAARL','72465001','Staphylococcus arlettae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3031,'Staphylococcus asaccharolyticus','PPSAS','89268006','Peptostreptococcus asaccharolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3032,'Staphylococcus aureus','SA','3092008','Staphylococcus aureus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3033,'Staphylococcus auricularis','STAAR','45654003','Staphylococcus auricularis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3034,'Staphylococcus capitis','STACS','40347003','Staphylococcus capitis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3035,'Staphylococcus capitis capitis','STACC','113962001','Staphylococcus capitis ss capitis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3036,'Staphylococcus capitis urealyticus','STACU','103492009','Staphylococcus capitis subspecies urealyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3037,'Staphylococcus caprae','STACAP','76969000','Staphylococcus caprae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3038,'Staphylococcus carnosus','STACAR','9784002','Staphylococcus carnosus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3039,'Staphylococcus carnosus carnosus','STACRC','438905007','Staphylococcus carnosus subspecies carnosus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3040,'Staphylococcus carnosus utilis','STACUT','438733001','Staphylococcus carnosus subspecies utilis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3041,'Staphylococcus caseolyticus','MACCAS','416613009','Macrococcus caseolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3042,'Staphylococcus chromogenes','STACHR','56629004','Staphylococcus chromogenes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3043,'Staphylococcus cohnii','STACO','66872005','Staphylococcus cohnii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3044,'Staphylococcus cohnii cohnii','STASCO','113963006','Staphylococcus cohnii ss cohnii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3045,'Staphylococcus cohnii urealyticus','STASUR','103493004','Staphylococcus cohnii subspecies urealyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3046,'Staphylococcus condimenti','STACON','439185000','Staphylococcus condimenti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3047,'Staphylococcus delphini','STADELP','113964000','Staphylococcus delphini (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3048,'Staphylococcus epidermidis','SE','60875001','Staphylococcus epidermidis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3049,'Staphylococcus epidermidis albus','SE','60875001','Staphylococcus epidermidis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3050,'Staphylococcus equorum','STAEQ','28217008','Staphylococcus equorum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3051,'Staphylococcus equorum equorum','STAEE','438005005','Staphylococcus equorum subspecies equorum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3052,'Staphylococcus equorum linens','STAEL','438164005','Staphylococcus equorum subspecies linens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3053,'Staphylococcus felis','STAFE','113965004','Staphylococcus felis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3054,'Staphylococcus fleurettii','STAFL','438257002','Staphylococcus fleurettii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3055,'Staphylococcus gallinarum','STAGA','8056006','Staphylococcus gallinarum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3056,'Staphylococcus haemolyticus','STAHA','83452006','Staphylococcus haemolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3057,'Staphylococcus hemolyticus','STAHA','83452006','Staphylococcus haemolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3058,'Staphylococcus hominis','STAHO','44827007','Staphylococcus hominis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3059,'Staphylococcus hominis hominis','STAHOM','432505008','Staphylococcus hominis subspecies hominis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3060,'Staphylococcus hominis novobiosepticus','STANOV','438202004','Staphylococcus hominis subspecies novobiosepticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3061,'Staphylococcus hyicus','STAHYI','19683001','Staphylococcus hyicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3062,'Staphylococcus hyicus chromogenes','STACHR','56629004','Staphylococcus chromogenes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3063,'Staphylococcus hyicus hyicus','STAHYI','19683001','Staphylococcus hyicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3064,'Staphylococcus intermedius','STAIN','34605002','Staphylococcus intermedius (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3065,'Staphylococcus kloosii','STAKLO','53227003','Staphylococcus kloosii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3066,'Staphylococcus lentus','STALE','40253001','Staphylococcus lentus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3067,'Staphylococcus lugdunensis','STALU','103494005','Staphylococcus lugdunensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3068,'Staphylococcus lutrae','STALUTR','113968002','Staphylococcus lutrae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3069,'Staphylococcus muscae','STAMUS','113969005','Staphylococcus muscae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3070,'Staphylococcus nepalensis','STANEP','438681002','Staphylococcus nepalensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3071,'Staphylococcus parvulus','VEIPA','90435009','Veillonella parvula (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3072,'Staphylococcus pasteuri','STAPAS','103495006','Staphylococcus pasteuri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3073,'Staphylococcus pettenkoferi','STAPETT','428731005','Staphylococcus pettenkoferi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3074,'Staphylococcus piscifermentans','STAPIS','113970006','Staphylococcus piscifermentans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3075,'Staphylococcus pseudintermedius','STAPSEU','427316000','Staphylococcus pseudintermedius (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3076,'Staphylococcus pulvereri','STAVIT','440569005','Staphylococcus vitulinus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3077,'Staphylococcus pyogenes aureus','SA','3092008','Staphylococcus aureus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3078,'Staphylococcus pyogenes citreus','SA','3092008','Staphylococcus aureus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3079,'Staphylococcus saccharolyticus','STASL','41103009','Staphylococcus saccharolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3080,'Staphylococcus saprophyticus','STASA','19743000','Staphylococcus saprophyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3081,'Staphylococcus saprophyticus bovis','STASB','113972003','Staphylococcus saprophyticus ss bovis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3082,'Staphylococcus saprophyticus saprophyticus','STASAP','113973008','Staphylococcus saprophyticus ss saprophyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3083,'Staphylococcus schleiferi','STASH','131360000','Staphylococcus schleiferi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3084,'Staphylococcus schleiferi coagulans','STACOA','113974002','Staphylococcus schleiferi ss coagulans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3085,'Staphylococcus schleiferi schleiferi','STASCH','103496007','Staphylococcus schleiferi ss. schleiferi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3086,'Staphylococcus sciuri','STASC','70806002','Staphylococcus sciuri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3087,'Staphylococcus sciuri carnaticus','STASCN','113975001','Staphylococcus sciuri subspecies carnaticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3088,'Staphylococcus sciuri lentus','STALE','40253001','Staphylococcus lentus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3089,'Staphylococcus sciuri rodentium','STASRO','113976000','Staphylococcus sciuri subspecies rodentium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3090,'Staphylococcus scuiri scuiri','STASCU','113977009','Staphylococcus scuiri subspecies scuiri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3091,'Staphylococcus simulans','STASI','52122005','Staphylococcus simulans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3092,'Staphylococcus simulans biovar staphylolyticus','STASBS','243228003','Staphylococcus simulans biovar staphylolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3093,'Staphylococcus succinus','STASU','438729008','Staphylococcus succinus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3094,'Staphylococcus succinus casei','STASUC','440815004','Staphylococcus succinus subspecies casei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3095,'Staphylococcus succinus succinus','STASUS','441130000','Staphylococcus succinus subspecies succinus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3096,'Staphylococcus vitulinus','STAVIT','440569005','Staphylococcus vitulinus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3097,'Staphylococcus vitulus','STAVT','113978004','Staphylococcus vitulus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3098,'Staphylococcus warneri','STAWA','63550006','Staphylococcus warneri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3099,'Staphylococcus xylosus','STAXY','32737005','Staphylococcus xylosus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3100,'Staphylococcus, coagulase negative','CNS','116197008','Staphylococcus, coagulase negative (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3101,'Staphylococcus, coagulase positive','CPS','127535004','Staphylococcus, coagulase positive (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3102,'Stemphylium','STEMSP','90824006','Genus Stemphylium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3103,'Stenotrophomonas','STESP','115656007','Genus Stenotrophomonas (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3104,'Stenotrophomonas maltophilia','STEMA','113697002','Stenotrophomonas maltophilia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3105,'Stephanoascus','STEPSP','415965004','Stephanoascus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3106,'Stephanoascus ciferrii','STEPCIFE','415966003','Stephanoascus ciferrii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3107,'Stomatococcus mucilaginosus','ROTHMU','416544005','Rothia mucilaginosa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3108,'Streptobacillus','STRBS','29295005','Genus Streptobacillus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3109,'Streptobacillus moniliformis','STRBM','16372003','Streptobacillus moniliformis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3110,'Streptococcus','STR','58800005','Genus Streptococcus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3111,'Streptococcus acidominimus','STRVA','51182006','Streptococcus acidominimus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3112,'Streptococcus adjacens','GRADJ','113713009','Granulicatella adiacens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3113,'Streptococcus agalactiae','GBS','43492007','Streptococcus agalactiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3114,'Streptococcus alactolyticus','STRALAC','34228005','Streptococcus alactolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3115,'Streptococcus anaerobius micros','PPSMI','62890009','Peptostreptococcus micros (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3116,'Streptococcus anginosis milleri group','STRANG','415597009','Streptococcus anginosis group (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3117,'Streptococcus anginosus','STRVN','44304009','Streptococcus anginosus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3118,'Streptococcus anginosus group','STRANG','415597009','Streptococcus anginosus group (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3119,'Streptococcus anginosus-constellatus','STRAC','70160008','Streptococcus anginosus-constellatus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3120,'Streptococcus australis','STRAUS','415598004','Streptococcus australis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3121,'Streptococcus avium','ENTA','87875008','Enterococcus avium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3122,'Streptococcus bovis biovar II2','STRGALPAS','421253004','Streptococcus gallolyticus subspecies pasteurianus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3123,'Streptococcus bovis group','STRBOVI','415599007','Streptococcus bovis group (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3124,'Streptococcus canis','STRCANI','88231003','Streptococcus canis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3125,'Streptococcus caprinus','STRGALL','113985000','Streptococcus gallolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3126,'Streptococcus casseliflavus','ENTCA','30949009','Enterococcus casseliflavus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3127,'Streptococcus cecorum','ENTECECO','113722005','Enterococcus cecorum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3128,'Streptococcus constellatus','STRVC','76199005','Streptococcus constellatus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3129,'Streptococcus constellatus constellatus','STRCC','415601009','Streptococcus constellatus subspecies constellatus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3130,'Streptococcus constellatus pharyngis','STRCP','415602002','Streptococcus constellatus subspecies pharyngis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3131,'Streptococcus criceti','STRCRC','34838009','Streptococcus criceti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3132,'Streptococcus crista','STRCR','113980005','Streptococcus cristatus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3133,'Streptococcus cristatus','STRCR','113980005','Streptococcus cristatus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3134,'Streptococcus defectivus','STRDF','113714003','Abiotrophia defectiva (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3135,'Streptococcus dentisani','STRDENT','708952006','Streptococcus dentisani (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3136,'Streptococcus difficilis','GBS','43492007','Streptococcus agalactiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3137,'Streptococcus dolonei','STRD','12704003','Streptococcus dolonei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3138,'Streptococcus downei','STRD','12704003','Streptococcus dolonei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3139,'Streptococcus durans','ENTD','46464008','Enterococcus durans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3140,'Streptococcus dysgalactiae','STRDYS','40812000','Streptococcus dysgalactiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3141,'Streptococcus dysgalactiae dysgalactiae','STRDEG','113982002','Streptococcus dysgalactiae subspecies dysgalactiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3142,'Streptococcus dysgalactiae equisimilis','STRDEQ','128338004','Streptococcus dysgalactiae subspecies equisimilis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3143,'Streptococcus elegans','GRANELEG','115944008','Granulicatella elegans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3144,'Streptococcus entericus','STRENT','437956001','Streptococcus entericus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3145,'Streptococcus equi','STREG','12447002','Streptococcus equi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3146,'Streptococcus equi equi','STREQ','113984001','Streptococcus equi subspecies equi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3147,'Streptococcus equi zooepidemicus','STRZOO','33708000','Streptococcus equi subspecies zooepidemicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3148,'Streptococcus equinus','STRDE','72646003','Streptococcus equinus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3149,'Streptococcus faecalis','ENTFS','78065002','Enterococcus faecalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3150,'Streptococcus faecium','ENTFM','90272000','Enterococcus faecium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3151,'Streptococcus fecalis malodoratus','ENTMA','10262005','Enterococcus malodoratus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3152,'Streptococcus ferus','STRF','10049004','Streptococcus ferus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3153,'Streptococcus gallinarum','ENTGA','53233007','Enterococcus gallinarum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3154,'Streptococcus gallolyticus','STRGALL','113985000','Streptococcus gallolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3155,'Streptococcus gallolyticus gallolyticus','STRGALGAL','421544007','Streptococcus gallolyticus subspecies gallolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3156,'Streptococcus gallolyticus macedonicus','STRGALMAC','421004005','Streptococcus gallolyticus subspecies macedonicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3157,'Streptococcus gallolyticus pasteurianus','STRGALPAS','421253004','Streptococcus gallolyticus subspecies pasteurianus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3158,'Streptococcus garviae','LACTGARV','27716002','Lactococcus garvieae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3159,'Streptococcus gordonii','STRVG','113986004','Streptococcus gordonii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3160,'Streptococcus group D, Enterococcus','ENTSP','2785000','Genus Enterococcus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3161,'Streptococcus hansenii','RUMHAN','449574005','Blautia hansenii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3162,'Streptococcus hyovaginalis','STRHYOV','113988003','Streptococcus hyovaginalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3163,'Streptococcus infantarius','STRINFA','415603007','Streptococcus infantarius (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3164,'Streptococcus infantarius coli','STRLUTE','415605000','Streptococcus lutetiensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3165,'Streptococcus infantarius infantarius','STRINFINF','432506009','Streptococcus infantarius subspecies infantarius (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3166,'Streptococcus infantis','STRINF','415604001','Streptococcus infantis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3167,'Streptococcus iniae','STRINI','79050007','Streptococcus iniae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3168,'Streptococcus intermedius','SVI','62170002','Streptococcus intermedius (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3169,'Streptococcus intestinalis','STRALAC','34228005','Streptococcus alactolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3170,'Streptococcus lactis','LACTLACT','62079003','Lactococcus lactis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3171,'Streptococcus lutetiensis','STRLUTE','415605000','Streptococcus lutetiensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3172,'Streptococcus macacae','STRMACA','59717000','Streptococcus macacae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3173,'Streptococcus micros','PPSMI','62890009','Peptostreptococcus micros (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3174,'Streptococcus milleri group','STRANG','415597009','Streptococcus anginosis group (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3175,'Streptococcus milleri group A','STRBA','415534000','Small-colony-forming beta-hemolytic group A streptococci (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3176,'Streptococcus milleri group C','STRBC','415535004','Small-colony-forming beta-hemolytic group C streptococci (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3177,'Streptococcus milleri group F','GFS','83503005','Streptococcus, group F (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3178,'Streptococcus milleri group G','STRBG','415536003','Small-colony-forming beta-hemolytic group G streptococci (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3179,'Streptococcus mitior','STRVM','57997003','Streptococcus mitis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3180,'Streptococcus mitis','STRVM','57997003','Streptococcus mitis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3181,'Streptococcus mitis group','STRMIT','127539005','Streptococcus mitis group (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3182,'Streptococcus morbillorum','GEMMO','113765006','Gemella morbillorum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3183,'Streptococcus mutans','STRVT','214001','Streptococcus mutans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3184,'Streptococcus mutans aggregate','STRVT','214001','Streptococcus mutans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3185,'Streptococcus mutans ferus','STRF','10049004','Streptococcus ferus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3186,'Streptococcus mutans group','STRMUG','127536003','Streptococcus mutans group (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3187,'Streptococcus mutans serotype a','STRCRC','34838009','Streptococcus criceti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3188,'Streptococcus mutans serotype b','STRRT','10667007','Streptococcus ratti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3189,'Streptococcus mutans serotype h','STRD','12704003','Streptococcus dolonei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3190,'Streptococcus mutans sobrinus','STRSO','43777007','Streptococcus sobrinus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3191,'Streptococcus oligofermentans','STROLIG','440296007','Streptococcus oligofermentans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3192,'Streptococcus oralis','STROR','19870004','Streptococcus oralis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3193,'Streptococcus parasanguinis','STRPA','113990002','Streptococcus parasanguinis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3194,'Streptococcus parasanguis','STRPA','113990002','Streptococcus parasanguinis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3195,'Streptococcus parvulus','ATOPAR','113631003','Atopobium parvulum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3196,'Streptococcus pasteurianus','STRGALPAS','421253004','Streptococcus gallolyticus subspecies pasteurianus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3197,'Streptococcus peroris','STRPER','416347004','Streptococcus peroris (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3198,'Streptococcus pleomorphus','STRPL','32134008','Streptococcus pleomorphus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3199,'Streptococcus pneumoniae','SP','9861002','Streptococcus pneumoniae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3200,'Streptococcus porcinus','STRPORC','59512008','Streptococcus porcinus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3201,'Streptococcus productus','BLAUPROD','698205008','Blautia producta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3202,'Streptococcus pseudopneumoniae','STRPSEU','420470004','Streptococcus pseudopneumoniae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3203,'Streptococcus pyogenes','GAS','80166006','Streptococcus pyogenes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3204,'Streptococcus pyogenes animalis','STRZOO','33708000','Streptococcus equi subspecies zooepidemicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3205,'Streptococcus ratti','STRRT','10667007','Streptococcus ratti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3206,'Streptococcus rattus','STRRT','10667007','Streptococcus ratti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3207,'Streptococcus saccharolyticus','ENTESACC','103438005','Enterococcus saccharolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3208,'Streptococcus salivarius','STRVS','39888004','Streptococcus salivarius (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3209,'Streptococcus salivarius group','STRSAG','127537007','Streptococcus salivarius group (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3210,'Streptococcus salivarius salivarius','STRSLV','84684000','Streptococcus salivarius subspecies salivarius (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3211,'Streptococcus salivarius thermophilus','STRSAL','23310006','Streptococcus salivarius subspecies thermophilus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3212,'Streptococcus sanguinis','SVS','113993000','Streptococcus sanguinis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3213,'Streptococcus sanguinis group','STRSG','115658008','Streptococcus sanguis group (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3214,'Streptococcus sanguis','SVS','113993000','Streptococcus sanguinis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3215,'Streptococcus sanguis group','STRSG','115658008','Streptococcus sanguis group (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3216,'Streptococcus sanguis II','STRSAN','42985004','Streptococcus sanguis II (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3217,'Streptococcus sanguis type II','STRSAN','42985004','Streptococcus sanguis II (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3218,'Streptococcus shiloi','STRINI','79050007','Streptococcus iniae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3219,'Streptococcus sinensis','STRSINE','438909001','Streptococcus sinensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3220,'Streptococcus sobrinus','STRSO','43777007','Streptococcus sobrinus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3221,'Streptococcus suis','STRSUIS','7912006','Streptococcus suis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3222,'Streptococcus thermophilus','STRSAL','23310006','Streptococcus salivarius subspecies thermophilus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3223,'Streptococcus tigurinus','STRTIGU','699479005','Streptococcus tigurinus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3224,'Streptococcus uberis','STRVU','13250005','Streptococcus uberis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3225,'Streptococcus vestibularis','STRVE','113998009','Streptococcus vestibularis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3226,'Streptococcus viridans','SVU','31703004','Streptococcus, viridans group (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3227,'Streptococcus zooepidemicus','STRZOO','33708000','Streptococcus equi subspecies zooepidemicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3228,'Streptococcus, group A','GAS','80166006','Streptococcus pyogenes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3229,'Streptococcus, group C','SC','89181007','Streptococcus, group C (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3230,'Streptococcus, group D','GDS','55547008','Streptococcus, group D (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3231,'Streptococcus, group E','STRGE','37916002','Streptococcus, group E (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3232,'Streptococcus, group F','GFS','83503005','Streptococcus, group F (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3233,'Streptococcus, group G','GGS','75012005','Streptococcus, group G (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3234,'Streptococcus, group L','GLS','61056002','Streptococcus, group L (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3235,'Streptococcus, viridans group','SVU','31703004','Streptococcus, viridans group (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3236,'Streptomyces','STRESP','47304000','Genus Streptomyces (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3237,'Streptomyces albus','STREALBU','114001000','Streptomyces albus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3238,'Streptomyces bikiniensis','STREBIKI','438930005','Streptomyces bikiniensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3239,'Streptomyces candidus','STRECAND','438237001','Streptomyces candidus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3240,'Streptomyces caviscabies','STREGRIS','114000004','Streptomyces griseus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3241,'Streptomyces clavuligerus','STRECLAV','438736009','Streptomyces clavuligerus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3242,'Streptomyces erumpens','STREGRIS','114000004','Streptomyces griseus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3243,'Streptomyces filamentosus','STREFILA','438231000','Streptomyces filamentosus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3244,'Streptomyces griseus','STREGRIS','114000004','Streptomyces griseus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3245,'Streptomyces lincolnensis','STRELINC','437827000','Streptomyces lincolnensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3246,'Streptomyces roseosporus','STREFILA','438231000','Streptomyces filamentosus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3247,'Streptomyces setonii','STREGRIS','114000004','Streptomyces griseus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3248,'Streptomyces somaliensis','STRESOMA','11007001','Streptomyces somaliensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3249,'Streptomyces spectabilis','STRESPEC','438852000','Streptomyces spectabilis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3250,'Streptomyces thermovulgaris','STRETHER','437780007','Streptomyces thermovulgaris (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3251,'Streptomyces venezuelae','STREVENE','66591004','Streptomyces venezuelae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3252,'Streptothrix dassonvillei','NOCADASS','15526005','Nocardiopsis dassonvillei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3253,'Strongyloides','STRON','10823008','Strongyloides (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3254,'Succinivibrio','SUCCSP','66866005','Genus Succinivibrio (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3255,'Succinivibrio dextrinosolvens','SUCCDEXT','63902002','Succinivibrio dextrinosolvens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3256,'Sutterella','SUTTSP','417407002','Genus Sutterella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3257,'Sutterella wadsworthensis','SUTTWADS','417645005','Sutterella wadsworthensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3258,'Suttonella','SUTSP','116391002','Genus Suttonella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3259,'Suttonella indologenes','SUTIND','116392009','Suttonella indologenes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3260,'Syncephalastrum','SYNCSP','62678005','Syncephalastrum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3261,'Syncephalastrum racemosum','SYNCRACE','243426002','Syncephalastrum racemosum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3262,'Taenia','TAENI','28625000','Taenia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3263,'Tanapox virus','POXTA','69683003','Tanapox virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3264,'Tannerella','TANNSP','419107003','Genus Tannerella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3265,'Tannerella forsythensis','TANNFORS','420048009','Tannerella forsythia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3266,'Tannerella forsythia','TANNFORS','420048009','Tannerella forsythia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3267,'Tatlockia','TATLSP','116378003','Genus Tatlockia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3268,'Tatlockia macaechernii','TATMAC','116379006','Legionella maceachernii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3269,'Tatlockia micdadei','TATMIC','116380009','Legionella micdadei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3270,'Tatumella','TATSP','12162005','Genus Tatumella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3271,'Tatumella ptyseos','TATPT','1546007','Tatumella ptyseos (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3272,'Teichococcus','ROSE','115159001','Genus Roseomonas (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3273,'Tetragenococcus','TETRSP','417005000','Genus Tetragenococcus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3274,'Tetragenococcus halophilus','TETRHALO','438324001','Tetragenococcus halophilus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3275,'Tetragenococcus solitarius','TETRSOLI','431990001','Tetragenococcus solitarius (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3276,'Theileria tsutsugamushi','ORTSU','114233001','Orientia tsutsugamushi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3277,'Thermoactinomyces','THERSP','28042005','Genus Thermoactinomyces (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3278,'Tick-borne encephalitis virus','TBE','32323003','Tick-borne encephalitis virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3279,'Timothy grass bacillus','MYCPH','78112006','Mycobacterium phlei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3280,'Tissierella','TISSP','37421007','Genus Tissierella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3281,'Tissierella praeacuta','TISPR','75376009','Tissierella praeacuta (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3282,'T-mycoplasma','UREUR','12006007','Ureaplasma urealyticum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3283,'Togavirus','TOGTU','129231002','Togaviridae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3284,'Torulopsis','CAS','3265006','Genus Candida (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3285,'Torulopsis aggregata','CANPARA','702328004','Candida pararugosa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3286,'Torulopsis candida','TORCAN','47931009','Torulopsis candida (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3287,'Torulopsis famata','TORCAN','47931009','Torulopsis candida (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3288,'Torulopsis glabrata','CG','444877006','Candida glabrata (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3289,'Torulopsis haemulonii','CANHAE','243452008','Candida haemulonii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3290,'Torulopsis inconspicua','CANINC','283871001','Candida inconspicua (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3291,'Torulopsis pintolopesii','CANPIN','283870000','Candida pintolopesii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3292,'Toxocara','TOXOC','39091000','Toxocara (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3293,'Toxoplasma','TOXO','61949005','Toxoplasma (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3294,'Toxoplasma gondii','TOXOGOND','4649006','Toxoplasma gondii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3295,'Trabulsiella','TRASP','243308004','Genus Trabulsiella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3296,'Trabulsiella guamensis','TRAGU','243309007','Trabulsiella guamensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3297,'Treponema','TRESP','30345008','Genus Treponema (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3298,'Treponema carateum','TRECA','14562002','Treponema carateum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3299,'Treponema jonesii','SERJO','243385004','Serpulina jonesii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3300,'Treponema pallidum','TREPALL','72904005','Treponema pallidum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3301,'Treponema pallidum endemicum','TREEN','44106000','Treponema pallidum ss. endemicum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3302,'Treponema pallidum pallidum','TREPA','43454006','Treponema pallidum ss. pallidum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3303,'Treponema pallidum pertenue','TREPE','6246005','Treponema pallidum ss. pertenue (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3304,'Treponema pertenue','TREPE','6246005','Treponema pallidum ss. pertenue (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3305,'TRIC agent','CHLPS','14590003','Chlamydophila psittaci (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3306,'Trichinella','TRICN','37900004','Trichinella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3307,'Trichoderma','TRICSP','83597000','Trichoderma (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3308,'Trichoderma viride','TRICVIRI','61143007','Trichoderma viride (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3309,'Trichomonas','TRICH','3764006','Trichomonas (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3310,'Trichophyton','TRICP','88578003','Genus Trichophyton (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3311,'Trichosporon','TRICS','62289009','Trichosporon (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3312,'Trichosporon asahii','TRIASA','243475001','Trichosporon asahii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3313,'Trichosporon beigelii','TRIBEI','39268007','Trichosporon beigelii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3314,'Trichosporon capitatum','BLACAP','67999003','Blastoschizomyces pseudotrichosporon (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3315,'Trichosporon capitum','BLACAP','67999003','Blastoschizomyces pseudotrichosporon (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3316,'Trichosporon cutaneum','TRIBEI','39268007','Trichosporon beigelii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3317,'Trichosporon giganteum','TRIBEI','39268007','Trichosporon beigelii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3318,'Trichosporon inkin','SARINK','243547001','Sarcinosporon inkin (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3319,'Trichosporon loubieri','TRILOUB','415972003','Trichosporon loubieri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3320,'Trichosporon mucoides','TRIMUC','243478004','Trichosporon mucoides (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3321,'Trichosporon mycotoxinivorans','TRIMYCO','415973008','Trichosporon mycotoxinivorans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3322,'Trichosporon ovoides','TRIOVOI','243479007','Trichosporon ovoides (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3323,'Trichosporon pullulans','TRIPUL','25783003','Trichosporon pullulans (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3324,'Trichostrongylus','TRICHSP','20065004','Trichostrongylus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3325,'Trichothecium','TRICHOSP','70034005','Trichothecium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3326,'Trichuris','TRICU','2572000','Trichuris (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3327,'Tropheryma','TROPSP','417733009','Genus Tropheryma (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3328,'Tropheryma whipplei','TROPWHIP','417060007','Tropheryma whipplei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3329,'Trueperella','TRUESP','704974007','Trueperella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3330,'Trueperella bernardiae','TRUEBERN','704975008','Trueperella bernardiae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3331,'Trueperella pyogenes','ARCPY','258933002','Trueperella pyogenes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3332,'Trypanosoma','TRYSP','40740003','Genus Trypanosoma (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3333,'Trypanosoma brucei','TRYBRU','243659009','Trypanosoma brucei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3334,'Trypanosoma brucei rhodesiense','TRYBRURHO','79513002','Trypanosoma brucei rhodesiense (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3335,'Trypanosoma cruzi','TRYCR','88274000','Trypanosoma cruzi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3336,'Trypanosoma escomelis','TRYCR','88274000','Trypanosoma cruzi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3337,'Trypanosoma rangeli','TRYRANG','72637009','Trypanosoma rangeli (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3338,'Trypanosoma triatomae','TRYCR','88274000','Trypanosoma cruzi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3339,'Tsukamurella','TSUKSP','115135006','Genus Tsukamurella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3340,'Tsukamurella inchonensis','TSUKINCH','113509000','Tsukamurella inchonensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3341,'Tsukamurella paurometabola','TSUKPAUR','113510005','Tsukamurella paurometabola (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3342,'Tsukamurella pulmonis','TSUKPULM','113511009','Tsukamurella pulmonis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3343,'Tsukamurella strandjordii','TSUKSTRA','417316004','Tsukamurella strandjordii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3344,'Tsukamurella tyrosinosolvens','TSUKTYRO','113512002','Tsukamurella tyrosinosolvens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3345,'Tufted fibril group streptococcus','STRCR','113980005','Streptococcus cristatus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3346,'tufted mitior','STRSAN','42985004','Streptococcus sanguis II (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3347,'Turicella','TURISP','415762009','Genus Turicella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3348,'Turicella otitidis','TURIOTIT','415763004','Turicella otitidis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3349,'Turicibacter','TURICSP','438726001','Genus Turicibacter (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3350,'Turicibacter sanguinis','TURISANG','440839009','Turicibacter sanguinis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3351,'Typhoid bacillus','SALTY','5595000','Salmonella Typhi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3352,'Ulocladium','ULOCSP','65789000','Genus Ulocladium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3353,'Ureaplasma','URESP','29680004','Genus Ureaplasma (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3354,'Ureaplasma parvum','UREPARV','438391000','Ureaplasma parvum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3355,'Ureaplasma urealyticum','UREUR','12006007','Ureaplasma urealyticum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3356,'Ustilago','USTISP','49086004','Ustilago (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3357,'Vaccinia virus','POXVC','13126002','Vaccinia virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3358,'Vagococcus','VAGOSP','116416009','Genus Vagococcus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3359,'Vagococcus fluvialis','VAGOFLUV','116418005','Vagococcus fluvialis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3360,'Vancomycin resistant Enterococcus','ENTSP','113727004','Vancomycin resistant Enterococcus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3361,'Vancomycin resistant Enterococcus faecalis','ENTFS','712663006','Vancomycin resistant Enterococcus faecalis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3362,'Vancomycin resistant Enterococcus faecium','ENTFM','712665004','Vancomycin resistant Enterococcus faecium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3363,'Varicellavirus','VARICELLO','80298008','Genus Varicellovirus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3364,'Varicella-zoster virus','VZ','19551004','Human herpesvirus 3 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3365,'Varicellovirus','VARICELLO','80298008','Genus Varicellovirus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3366,'Variola virus','POXVR','243568000','Variola virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3367,'Veillonella','VEISP','29875005','Genus Veillonella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3368,'Veillonella alcalescens','VEIPA','90435009','Veillonella parvula (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3369,'Veillonella alcalescens criceti','VEICRIC','77243008','Veillonella criceti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3370,'Veillonella alcalescens ratii','VEIRATT','4427009','Veillonella ratti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3371,'Veillonella atypica','VEIATYP','21633009','Veillonella atypica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3372,'Veillonella caviae','VEICAVI','63486005','Veillonella caviae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3373,'Veillonella criceti','VEICRIC','77243008','Veillonella criceti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3374,'Veillonella dispar','VEIDISP','29564004','Veillonella dispar (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3375,'Veillonella montpellierensis','VEIMONT','438330001','Veillonella montpellierensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3376,'Veillonella parvula','VEIPA','90435009','Veillonella parvula (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3377,'Veillonella ratti','VEIRATT','4427009','Veillonella ratti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3378,'Veillonella rodentium','VEIRODE','78654008','Veillonella rodentium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3379,'Venezuelan equine encephalitis virus','VEE','62958000','Venezuelan equine encephalomyelitis virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3380,'Venezuelan equine encephalomyelitis virus','VEE','62958000','Venezuelan equine encephalomyelitis virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3381,'Verticillium','VERTSP','50734003','Verticillium (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3382,'Vibrio','VIBSP','34872001','Genus Vibrio (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3383,'Vibrio albensis','VCUN','75953000','Vibrio cholerae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3384,'Vibrio alginolyticus','VIBAL','45749000','Vibrio alginolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3385,'Vibrio carchariae','VIBHAR','84003007','Vibrio harveyi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3386,'Vibrio cholerae','VCUN','75953000','Vibrio cholerae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3387,'Vibrio cholerae biovar proteus','VIBME','28382009','Vibrio metschnikovii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3388,'Vibrio cholerae serogroup O1','VCO1','62987004','Vibrio cholerae, O1 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3389,'Vibrio cholerae, non-O1','VCNO1','398506000','Vibrio cholerae, non-O1 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3390,'Vibrio cholerae, O1','VCO1','62987004','Vibrio cholerae, O1 (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3391,'Vibrio cincinnatiensis','VIBCI','36764009','Vibrio cincinnatiensis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3392,'Vibrio comma','VCUN','75953000','Vibrio cholerae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3393,'Vibrio damsela','PHODAM','387799003','Photobacterium damselae subsp damselae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3394,'Vibrio fetus','CAMFU','84210007','Campylobacter fetus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3395,'Vibrio fluvialis','VIBFL','43199008','Vibrio fluvialis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3396,'Vibrio furnissii','VIBFU','6387008','Vibrio furnissii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3397,'Vibrio harveyi','VIBHAR','84003007','Vibrio harveyi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3398,'Vibrio metschnikovii','VIBME','28382009','Vibrio metschnikovii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3399,'Vibrio mimicus','VIBMI','11776003','Vibrio mimicus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3400,'Vibrio parahaemolyticus','VIBPA','11736008','Vibrio parahaemolyticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3401,'Vibrio sputorum','CAMSPUT','91524009','Campylobacter sputorum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3402,'Vibrio succinogenes','WOLSU','32360004','Wolinella succinogenes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3403,'Vibrio trachuri','VIBHAR','84003007','Vibrio harveyi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3404,'Vibrio vulnificus','VIBVU','55905000','Vibrio vulnificus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3405,'Virgibacillus','VIRSP','114108009','Genus Virgibacillus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3406,'Virgibacillus pantothenticus','VIRPAN','114109001','Virgibacillus pantothenticus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3407,'Virus','VIRUS','49872002','Virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3408,'Vole bacillus','MYCMIC','70801007','Mycobacterium microti (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3409,'Wangiella','WANGSP','70200002','Genus Wangiella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3410,'Wangiella dermatitidis','WANGDERM','20586007','Wangiella dermatitidis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3411,'Wart virus','PAPHW','9482002','Human papillomavirus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3412,'Wautersia','WAUTSP','415834009','Genus Wautersia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3413,'Wautersia gilardii','CUPRGILA','416329005','Cupriavidus gilardii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3414,'Wautersia respiaculi','CUPRRESP','416495009','Cupriavidus respiraculi (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3415,'Weeksella','WEESP','28853003','Genus Weeksella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3416,'Weeksella virosa','WEEVI','83326004','Weeksella virosa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3417,'Weeksella zoohelcum','BERZOO','113718000','Bergeyella zoohelcum (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3418,'Weissella','WEISSP','118293006','Genus Weissella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3419,'Weissella confusa','WEISCONF','113639001','Weissella confusa (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3420,'Welchia perfringens','CLP','8331005','Clostridium perfringens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3421,'West Nile virus','WNV','57311007','West Nile virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3422,'Western equine encephalitis virus','WEE','11428003','Western equine encephalomyelitis virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3423,'Western equine encephalomyelitis virus','WEE','11428003','Western equine encephalomyelitis virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3424,'Whitmore\'s bacillus','BURPM','116399000','Burkholderia pseudomallei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3425,'Wolinella','WOLSP','84909009','Genus Wolinella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3426,'Wolinella curva','CAMCU','116037008','Campylobacter curvus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3427,'Wolinella recta','CAMRE','113525005','Campylobacter rectus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3428,'Wolinella succinogenes','WOLSU','32360004','Wolinella succinogenes (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3429,'Xanthomonas','XANSP','21544006','Genus Xanthomonas (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3430,'Xanthomonas maltophilia','STEMA','113697002','Stenotrophomonas maltophilia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3431,'Xenorhabdus','XENSP','22423005','Genus Xenorhabdus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3432,'Xenorhabdus luminescens','XENLU','115023005','Photorhabdus luminescens (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3433,'Xenorhabdus nematophila','XENNU','57111002','Xenorhabdus nematophila (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3434,'Xenotropic murine leukemia virus-related virus','XMRV','445325002','Xenotropic murine leukemia virus-related virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3435,'Yeast','YEAST','62093005','Yeast (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3436,'Yellow fever virus','TOGYF','26630006','Yellow fever virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3437,'Yersinia','YERSP','4668009','Genus Yersinia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3438,'Yersinia aldovae','YERAL','91246002','Yersinia aldovae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3439,'Yersinia aleksiciae','YERALEK','450391006','Yersinia aleksiciae (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3440,'Yersinia bercovieri','YERBE','103434007','Yersinia bercovieri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3441,'Yersinia enterocolitica','YEREN','65255000','Yersinia enterocolitica (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3442,'Yersinia enterocolitica biogroup 3a','YERBE','103434007','Yersinia bercovieri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3443,'Yersinia enterocolitica biogroup 3b','YERMO','103435008','Yersinia mollaretii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3444,'Yersinia frederiksenii','YERFR','85159008','Yersinia frederiksenii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3445,'Yersinia intermedia','YERIN','10334001','Yersinia intermedia (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3446,'Yersinia kristensenii','YERKR','91042006','Yersinia kristensenii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3447,'Yersinia mollareti','YERMO','103435008','Yersinia mollaretii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3448,'Yersinia mollaretii','YERMO','103435008','Yersinia mollaretii (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3449,'Yersinia pestis','YERPE','54365000','Yersinia pestis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3450,'Yersinia pseudotuberculosis','YERPS','90530002','Yersinia pseudotuberculosis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3451,'Yersinia pseudotuberculosis pestis','YERPE','54365000','Yersinia pestis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3452,'Yersinia pseudotuberculosis pseudotuberculosis','YERPS','90530002','Yersinia pseudotuberculosis (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3453,'Yersinia rohdei','YERRO','87145000','Yersinia rohdei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3454,'Yersinia ruckeri','YERRU','64125009','Yersinia ruckeri (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3455,'Yokenella','YOKSP','14943005','Genus Yokenella (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3456,'Yokenella regensburgei','YOKRE','89477001','Yokenella regensburgei (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3457,'Zika virus','ZIKAVI','50471002','Zika virus (organism)','2017-03-02 18:39:49','1',1,NULL,1),(3458,'Zymobacterium oroticum','CLOOR','29280008','Clostridium oroticum (organism)','2017-03-02 18:39:49','1',1,NULL,1);
/*!40000 ALTER TABLE `tbl_bac_bacteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_bacteria_csv`
--

DROP TABLE IF EXISTS `tbl_bac_bacteria_csv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_bacteria_csv` (
  `Organism Name` text,
  `NHSN Organism Code` text,
  `SNOMED Concept Code` int(11) DEFAULT NULL,
  `SNOMED Fully Specified Name` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_bacteria_csv`
--

LOCK TABLES `tbl_bac_bacteria_csv` WRITE;
/*!40000 ALTER TABLE `tbl_bac_bacteria_csv` DISABLE KEYS */;
INSERT INTO `tbl_bac_bacteria_csv` VALUES ('Abiotrophia','ABISP',115161005,'Genus Abiotrophia (organism)'),('Abiotrophia adiacens','GRADJ',113713009,'Granulicatella adiacens (organism)'),('Abiotrophia adjacens','GRADJ',113713009,'Granulicatella adiacens (organism)'),('Abiotrophia defectiva','STRDF',113714003,'Abiotrophia defectiva (organism)'),('Abiotrophia elegans','GRANELEG',115944008,'Granulicatella elegans (organism)'),('Acanthamoeba','ACANT',50875003,'Acanthamoeba (organism)'),('Acholeplasma','ACHOSP',84858009,'Genus Acholeplasma (organism)'),('Acholeplasma laidlawii','ACHOLAID',89082003,'Acholeplasma laidlawii (organism)'),('Acholeplasma oculi','ACHOOCUL',86450009,'Acholeplasma oculi (organism)'),('Achromobacter','ACHSP',91620006,'Genus Achromobacter (organism)'),('Achromobacter denitrificans','ACHDENI',413414001,'Achromobacter denitrificans (organism)'),('Achromobacter piechaudii','ACHPIEC',413420000,'Achromobacter piechaudii (organism)'),('Achromobacter ruhlandii','ACHRUHL',413421001,'Achromobacter ruhlandii (organism)'),('Achromobacter xylosoxidans','ALCXYL',413424009,'Achromobacter xylosoxidans (organism)'),('Achromobacter xylosoxidans xylosoxidans','ACHXYL',423897003,'Achromobacter xylosoxidans xylosoxidans (organism)'),('Achromobacter, group Vd biotype 1','ACHVD1',59995003,'Achromobacter, group Vd biotype 1 (organism)'),('Achromobacter, group Vd biotype 2','ACHVD2',55156008,'Achromobacter, group Vd biotype 2 (organism)'),('Acidaminococcus','ACISP',28207003,'Genus Acidaminococcus (organism)'),('Acidaminococcus fermentans','ACIFE',63005002,'Acidaminococcus fermentans (organism)'),('Acid-fast bacillus','AFB',243365003,'Acid-fast bacillus (organism)'),('Acidovorax','ACIDSP',115153000,'Genus Acidovorax  (organism)'),('Acidovorax delafieldii','ACDEL',113685003,'Acidovorax delafieldii (organism)'),('Acidovorax facilis','ACIDFACI',113686002,'Acidovorax facilis (organism)'),('Acidovorax temperans','ACIDTEMP',113687006,'Acidovorax temperans (organism)'),('Acinetobacter','ACS',7757008,'Genus Acinetobacter (organism)'),('Acinetobacter anitratus','ACICBA',82550008,'Acinetobacter calcoaceticus (organism)'),('Acinetobacter baumannii','ACBA',91288006,'Acinetobacter baumannii (organism)'),('Acinetobacter calcoaceticus','ACICBA',82550008,'Acinetobacter calcoaceticus (organism)'),('Acinetobacter calcoaceticus anitratus','ACICBA',82550008,'Acinetobacter calcoaceticus (organism)');
/*!40000 ALTER TABLE `tbl_bac_bacteria_csv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_couriers`
--

DROP TABLE IF EXISTS `tbl_bac_couriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_couriers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courierName` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `physicalAddress` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(45) DEFAULT NULL,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT NULL,
  `tbl_bac_courierscol` varchar(45) DEFAULT NULL,
  `contactPerson` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courierName_UNIQUE` (`courierName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_couriers`
--

LOCK TABLES `tbl_bac_couriers` WRITE;
/*!40000 ALTER TABLE `tbl_bac_couriers` DISABLE KEYS */;
INSERT INTO `tbl_bac_couriers` VALUES (1,'G4S','175','0711560619','help@g4s.com','254222488852','westlands','1','2017-02-14 17:20:14','1','1','0000-00-00 00:00:00','','Omollo'),(2,'SECURICOR','145','0715228896','help@fargo.com','2547893214','PARKLANDS','1','2017-02-14 17:30:38','1','1','0000-00-00 00:00:00','','omondi Johnstone');
/*!40000 ALTER TABLE `tbl_bac_couriers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_expected_micro_bacterial_agents`
--

DROP TABLE IF EXISTS `tbl_bac_expected_micro_bacterial_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_expected_micro_bacterial_agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sampleId` varchar(45) DEFAULT NULL,
  `antiMicroAgent` varchar(45) DEFAULT NULL,
  `reportedToStatus` varchar(45) DEFAULT NULL,
  `diskContent` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `createdBy` int(11) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `finalScore` varchar(45) DEFAULT NULL,
  `roundId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `SAMPLE_ANTI_UK` (`sampleId`,`antiMicroAgent`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_expected_micro_bacterial_agents`
--

LOCK TABLES `tbl_bac_expected_micro_bacterial_agents` WRITE;
/*!40000 ALTER TABLE `tbl_bac_expected_micro_bacterial_agents` DISABLE KEYS */;
INSERT INTO `tbl_bac_expected_micro_bacterial_agents` VALUES (37,'26','amikacin','yes',10,1,1,NULL,NULL,NULL,'10',NULL),(38,'26','amoxicilin','yes',10,1,1,NULL,NULL,NULL,'4',NULL),(39,'32','amikacin','yes',10,1,1,NULL,NULL,NULL,'10',NULL),(40,'32','amoxicilin','yes',10,1,1,NULL,NULL,NULL,'4',NULL),(41,'27','amikacin','yes',10,1,1,NULL,NULL,NULL,'10',NULL);
/*!40000 ALTER TABLE `tbl_bac_expected_micro_bacterial_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_expected_results`
--

DROP TABLE IF EXISTS `tbl_bac_expected_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_expected_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sampleId` varchar(45) DEFAULT NULL,
  `roundId` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `grainStainReaction` varchar(105) DEFAULT NULL,
  `grainStainReactionScore` int(11) DEFAULT NULL,
  `primaryMedia` varchar(105) DEFAULT NULL,
  `primaryMediaScore` int(11) DEFAULT NULL,
  `incubationConditions` varchar(105) DEFAULT NULL,
  `incubationConditionsScore` int(11) DEFAULT NULL,
  `colonialMorphology` varchar(45) DEFAULT NULL,
  `colonialMorphologyScore` int(11) DEFAULT NULL,
  `bacterialQualification` varchar(105) DEFAULT NULL,
  `bacterialQualificationScore` int(11) DEFAULT NULL,
  `bacterialReagents` varchar(105) DEFAULT NULL,
  `bacterialReagentsScore` int(11) DEFAULT NULL,
  `isolateProcessing` varchar(105) DEFAULT NULL,
  `isolateProcessingScore` int(11) DEFAULT NULL,
  `finalIdentification` varchar(105) DEFAULT NULL,
  `finalIdentificationScore` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sampleId_UNIQUE` (`sampleId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_expected_results`
--

LOCK TABLES `tbl_bac_expected_results` WRITE;
/*!40000 ALTER TABLE `tbl_bac_expected_results` DISABLE KEYS */;
INSERT INTO `tbl_bac_expected_results` VALUES (1,'26','','2017-03-03 09:59:52',1,1,'0000-00-00 00:00:00','amikacin',4,'12',4,'12',4,'12',4,'12',4,'12',4,'12',4,'amoxicilin',4,'1'),(3,'27','','2017-03-03 10:38:24',1,1,'0000-00-00 00:00:00','amoxicilin',4,'0',4,'9',4,'9',4,'9',4,'9',4,'9',4,'amikacin',4,'1');
/*!40000 ALTER TABLE `tbl_bac_expected_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_grades`
--

DROP TABLE IF EXISTS `tbl_bac_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(45) DEFAULT NULL,
  `lowerMark` int(11) DEFAULT NULL,
  `upperMark` int(11) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `G_UK` (`grade`),
  UNIQUE KEY `L_UK` (`lowerMark`),
  UNIQUE KEY `U_UK` (`upperMark`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_grades`
--

LOCK TABLES `tbl_bac_grades` WRITE;
/*!40000 ALTER TABLE `tbl_bac_grades` DISABLE KEYS */;
INSERT INTO `tbl_bac_grades` VALUES (1,'Fail',10,12,'Failed please repeat',1,'2017-03-10 09:42:20','1','0000-00-00 00:00:00','1'),(6,'pass',11,20,'Failed please repeat',1,'2017-03-10 09:46:37','1','0000-00-00 00:00:00','1'),(8,'excellent',20,30,'Totally accurate',1,'2017-03-10 11:36:40',NULL,NULL,'1');
/*!40000 ALTER TABLE `tbl_bac_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_micro_bacterial_agents`
--

DROP TABLE IF EXISTS `tbl_bac_micro_bacterial_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_micro_bacterial_agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `antiMicroAgent` varchar(105) DEFAULT NULL,
  `reportedToStatus` varchar(45) DEFAULT NULL,
  `diskContent` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `sampleId` int(11) DEFAULT NULL,
  `roundId` int(11) DEFAULT NULL,
  `participantId` int(11) DEFAULT NULL,
  `panelToSampleId` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT '0',
  `markedStatus` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_sample_round_lab` (`roundId`,`sampleId`,`antiMicroAgent`,`participantId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_micro_bacterial_agents`
--

LOCK TABLES `tbl_bac_micro_bacterial_agents` WRITE;
/*!40000 ALTER TABLE `tbl_bac_micro_bacterial_agents` DISABLE KEYS */;
INSERT INTO `tbl_bac_micro_bacterial_agents` VALUES (7,'amikacin','yes',10,1,26,33,1,378,'1','2017-03-07 09:24:30','1',NULL,'1',1,10,'1'),(8,'amoxicilin','yes',10,1,26,33,1,378,'1','2017-03-07 09:24:30','1',NULL,'1',1,4,'1');
/*!40000 ALTER TABLE `tbl_bac_micro_bacterial_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_panel_mst`
--

DROP TABLE IF EXISTS `tbl_bac_panel_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_panel_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panelName` varchar(45) NOT NULL,
  `panelType` varchar(45) DEFAULT NULL,
  `dateDelivered` date DEFAULT NULL,
  `panelLabel` varchar(45) DEFAULT NULL,
  `panelDateOfDelivery` date DEFAULT NULL,
  `panelDatePrepared` date DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `totalSamples` int(11) DEFAULT '0',
  `numberOfSamples` int(11) DEFAULT NULL,
  `preparedBy` varchar(45) DEFAULT NULL,
  `panelStatus` varchar(45) DEFAULT '0',
  `shipmentNumber` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  `participantId` int(11) DEFAULT NULL,
  `barcode` varchar(20) DEFAULT NULL,
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) DEFAULT NULL,
  `totalSamplesAdded` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`panelName`),
  UNIQUE KEY `uk_panel_name` (`panelName`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1 COMMENT='Host panels names without the samples attached to them';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_panel_mst`
--

LOCK TABLES `tbl_bac_panel_mst` WRITE;
/*!40000 ALTER TABLE `tbl_bac_panel_mst` DISABLE KEYS */;
INSERT INTO `tbl_bac_panel_mst` VALUES (55,'p0001','23423',NULL,'234','2017-02-28','2017-02-28','1','2017-02-28 16:53:38',0,23,'','2',0,0,'',0,'10301655382584562',1,'2017-02-28 16:53:38',1,3),(56,'sdf','sdfsdf',NULL,'sdfsdf','2017-03-07','2017-03-07','1','2017-03-07 14:45:00',0,10,NULL,'0',NULL,NULL,NULL,NULL,'2620283776909831',NULL,'2017-03-07 14:45:00',1,NULL),(57,'weqwe','qweqwe',NULL,'qweqwe','2017-03-07','2017-03-07','1','2017-03-07 14:46:26',0,NULL,NULL,'0',NULL,NULL,NULL,NULL,'9037190231789285',NULL,'2017-03-07 14:46:26',1,NULL),(58,'sdfsd','sdf',NULL,'fsdf','2017-03-06','2017-02-27','1','2017-03-07 14:47:00',0,NULL,NULL,'0',NULL,NULL,NULL,NULL,'28480011108971004',NULL,'2017-03-07 14:47:00',1,NULL),(59,'234234','24323',NULL,'234234','2017-03-07','2017-03-07','1','2017-03-07 14:49:14',0,NULL,NULL,'0',NULL,NULL,NULL,NULL,'2102887338557935',NULL,'2017-03-07 14:49:14',1,NULL),(60,'xcvxcv','xcvxcv',NULL,'xcvxcv','2017-03-07','2017-03-07','1','2017-03-07 14:50:02',0,NULL,NULL,'0',NULL,NULL,NULL,NULL,'13718345404961352',NULL,'2017-03-07 14:50:02',1,NULL),(62,'sdfsdsdfsdf','sdf',NULL,'sdf','2017-03-07','2017-02-26','1','2017-03-07 14:51:38',0,NULL,NULL,'0',NULL,NULL,NULL,NULL,'3240765032324584',NULL,'2017-03-07 14:51:38',1,NULL);
/*!40000 ALTER TABLE `tbl_bac_panel_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_panels_shipments`
--

DROP TABLE IF EXISTS `tbl_bac_panels_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_panels_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panelId` int(11) DEFAULT NULL,
  `shipmentId` int(11) DEFAULT NULL,
  `datecreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(45) DEFAULT NULL,
  `deliveryStatus` varchar(45) DEFAULT '0',
  `status` varchar(45) DEFAULT '1',
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `conditionStatus` varchar(45) DEFAULT NULL,
  `comments` varchar(105) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `dateDelivered` datetime DEFAULT NULL,
  `storageMeans` varchar(105) DEFAULT NULL,
  `panelsReceived` int(11) DEFAULT NULL,
  `tempOfSamples` varchar(45) DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  `participantId` varchar(45) DEFAULT NULL,
  `receiveComment` varchar(200) DEFAULT NULL,
  `roundId` int(11) DEFAULT NULL,
  `startRoundFlag` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_ship_panel_lab` (`panelId`,`shipmentId`,`participantId`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_panels_shipments`
--

LOCK TABLES `tbl_bac_panels_shipments` WRITE;
/*!40000 ALTER TABLE `tbl_bac_panels_shipments` DISABLE KEYS */;
INSERT INTO `tbl_bac_panels_shipments` VALUES (107,55,115,'2017-02-28 16:56:04','1','2','1',NULL,'2017-02-28 16:56:04',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0'),(110,55,115,'2017-02-28 17:31:41','1','2','1',1,'2017-02-28 17:31:41','23',NULL,1,NULL,NULL,NULL,NULL,NULL,'1','reasons',33,'1'),(111,55,115,'2017-02-28 17:31:41','1','2','1',1,'2017-02-28 17:31:41',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'2',NULL,33,'1');
/*!40000 ALTER TABLE `tbl_bac_panels_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_programs`
--

DROP TABLE IF EXISTS `tbl_bac_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `programCode` varchar(50) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `currentRoundId` int(11) DEFAULT NULL,
  `updateDate` date DEFAULT NULL,
  `programDesc` varchar(90) DEFAULT NULL,
  `programName` varchar(90) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbl_bac_programs__pk_code` (`programName`,`programCode`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_programs`
--

LOCK TABLES `tbl_bac_programs` WRITE;
/*!40000 ALTER TABLE `tbl_bac_programs` DISABLE KEYS */;
INSERT INTO `tbl_bac_programs` VALUES (1,'p001','2017-03-01 09:33:50',1,1,NULL,NULL,'Malaria program','Malaria',1),(5,'tuberclosis','2017-03-01 09:39:46',1,1,0,'0000-00-00','TB test','TB',1);
/*!40000 ALTER TABLE `tbl_bac_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_ready_labs`
--

DROP TABLE IF EXISTS `tbl_bac_ready_labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_ready_labs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `labId` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(45) DEFAULT NULL,
  `updateDate` varchar(45) DEFAULT NULL,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `roundId` int(11) DEFAULT NULL,
  `totalParticipants` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_ready_labs`
--

LOCK TABLES `tbl_bac_ready_labs` WRITE;
/*!40000 ALTER TABLE `tbl_bac_ready_labs` DISABLE KEYS */;
INSERT INTO `tbl_bac_ready_labs` VALUES (1,'1','2017-02-22 11:45:33',NULL,NULL,'1','2',33,0),(2,'2','2017-02-22 11:45:33',NULL,NULL,'1','2',33,0),(3,'1','2017-02-22 11:45:33',NULL,NULL,'1','1',3,0),(4,'2','2017-02-22 11:45:33',NULL,NULL,'1','1',2,0);
/*!40000 ALTER TABLE `tbl_bac_ready_labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_response_results`
--

DROP TABLE IF EXISTS `tbl_bac_response_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_response_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sampleId` varchar(45) DEFAULT NULL,
  `roundId` varchar(45) DEFAULT NULL,
  `participantId` varchar(45) DEFAULT NULL,
  `userId` varchar(45) DEFAULT '1',
  `panelToSampleId` varchar(45) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `grainStainReaction` varchar(105) DEFAULT NULL,
  `grainStainReactionScore` int(11) DEFAULT NULL,
  `primaryMedia` varchar(105) DEFAULT NULL,
  `primaryMediaScore` int(11) DEFAULT NULL,
  `incubationConditions` varchar(105) DEFAULT NULL,
  `incubationConditionsScore` int(11) DEFAULT NULL,
  `colonialMorphology` varchar(45) DEFAULT NULL,
  `colonialMorphologyScore` int(11) DEFAULT NULL,
  `bacterialQualification` varchar(105) DEFAULT NULL,
  `bacterialQualificationScore` int(11) DEFAULT NULL,
  `bacterialReagents` varchar(105) DEFAULT NULL,
  `bacterialReagentsScore` int(11) DEFAULT NULL,
  `isolateProcessing` varchar(105) DEFAULT NULL,
  `isolateProcessingScore` int(11) DEFAULT NULL,
  `finalIdentification` varchar(105) DEFAULT NULL,
  `finalIdentificationScore` int(11) DEFAULT NULL,
  `finalScore` int(11) DEFAULT '0',
  `status` varchar(45) DEFAULT '1',
  `changedStatus` varchar(45) DEFAULT '1',
  `markedStatus` varchar(45) DEFAULT '0',
  `feedback` int(11) DEFAULT '0',
  `publish` int(11) DEFAULT '0',
  `totalMicroAgentsScore` int(11) DEFAULT '0',
  `grade` varchar(45) DEFAULT NULL,
  `remarks` varchar(105) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sampleId_UNIQUE` (`sampleId`,`roundId`,`participantId`,`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_response_results`
--

LOCK TABLES `tbl_bac_response_results` WRITE;
/*!40000 ALTER TABLE `tbl_bac_response_results` DISABLE KEYS */;
INSERT INTO `tbl_bac_response_results` VALUES (9,'26','33','1','1','378','2017-03-06 10:17:51',1,1,NULL,'amikacin',4,'dfgfg',0,'dfgdf',0,'dfgdfg',0,'dfg',0,'dfg',0,'dfgdfg',0,'amoxicilin',4,8,'1','1','1',0,0,14,'excellent','Totally accurate');
/*!40000 ALTER TABLE `tbl_bac_response_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_rounds`
--

DROP TABLE IF EXISTS `tbl_bac_rounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_rounds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roundName` varchar(45) DEFAULT NULL,
  `roundCode` varchar(45) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `roundStatus` int(11) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `updateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `roundDesc` varchar(200) DEFAULT NULL,
  `totalSamplesAdded` int(11) DEFAULT '0',
  `daysLeft` int(11) DEFAULT '0',
  `totalShipmentsAdded` int(11) DEFAULT '0',
  `tbl_bac_roundscol` varchar(45) DEFAULT '0',
  `startRoundFlag` varchar(45) DEFAULT '0',
  `dateStarted` datetime DEFAULT NULL,
  `evaluated` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roundName_UNIQUE` (`roundName`),
  UNIQUE KEY `roundCode_UNIQUE` (`roundCode`),
  UNIQUE KEY `uk_round_roundname` (`roundName`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_rounds`
--

LOCK TABLES `tbl_bac_rounds` WRITE;
/*!40000 ALTER TABLE `tbl_bac_rounds` DISABLE KEYS */;
INSERT INTO `tbl_bac_rounds` VALUES (33,'round0001','r0001','2017-02-28','2017-03-08',1,1,1,'2017-02-28 16:55:05',1,'2017-02-28 16:55:05','23',0,0,0,'0','1',NULL,1),(35,'round 002','round 002','2017-03-06','2017-03-23',1,1,1,'2017-03-07 14:34:44',NULL,'2017-03-07 14:34:44','round 002',0,0,0,'0','0',NULL,0),(36,'round 003','round 003','2017-03-06','2017-03-23',1,1,1,'2017-03-07 14:35:19',NULL,'2017-03-07 14:35:19','round 003',0,0,0,'0','0',NULL,0),(37,'r0003','r0003','2017-03-06','2017-03-06',1,1,1,'2017-03-07 14:44:34',NULL,'2017-03-07 14:44:34','sdfsd',0,0,0,'0','0',NULL,0);
/*!40000 ALTER TABLE `tbl_bac_rounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_rounds_labs`
--

DROP TABLE IF EXISTS `tbl_bac_rounds_labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_rounds_labs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roundId` varchar(45) DEFAULT NULL,
  `labId` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(45) DEFAULT NULL,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `dateUpdate` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_LAB_ROUND` (`roundId`,`labId`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_rounds_labs`
--

LOCK TABLES `tbl_bac_rounds_labs` WRITE;
/*!40000 ALTER TABLE `tbl_bac_rounds_labs` DISABLE KEYS */;
INSERT INTO `tbl_bac_rounds_labs` VALUES (239,'33','1','2017-02-28 17:31:41','1',NULL,NULL,NULL),(240,'33','2','2017-02-28 17:31:41','1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_bac_rounds_labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_sample_to_panel`
--

DROP TABLE IF EXISTS `tbl_bac_sample_to_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_sample_to_panel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sampleId` int(11) DEFAULT NULL,
  `panelId` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(15) DEFAULT '1',
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `deliveryStatus` int(11) DEFAULT '0',
  `deliveryCondition` varchar(45) DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  `dateDelivered` date DEFAULT NULL,
  `participantId` int(11) DEFAULT NULL,
  `issuedStatus` int(11) DEFAULT '0',
  `roundId` int(11) DEFAULT NULL,
  `totalAddedSamples` int(11) DEFAULT NULL,
  `shipmentId` int(11) DEFAULT NULL,
  `startRoundFlag` int(11) DEFAULT '0',
  `conditionStatus` varchar(105) DEFAULT NULL,
  `sampleComment` varchar(300) DEFAULT NULL,
  `responseStatus` varchar(45) DEFAULT 'null',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_sample_to_panel`
--

LOCK TABLES `tbl_bac_sample_to_panel` WRITE;
/*!40000 ALTER TABLE `tbl_bac_sample_to_panel` DISABLE KEYS */;
INSERT INTO `tbl_bac_sample_to_panel` VALUES (377,26,'55','1','2017-02-28 16:55:49','1',NULL,'2017-02-28 16:55:49',NULL,NULL,NULL,1,NULL,NULL,0,NULL,100,115,0,NULL,NULL,'null'),(378,26,'55','1','2017-02-28 17:31:41','1',1,'2017-02-28 17:31:41',NULL,NULL,'reasons',1,NULL,1,0,33,100,115,1,'23','received okay','null'),(379,26,'55','1','2017-02-28 17:31:41','1',1,'2017-02-28 17:31:41',NULL,NULL,NULL,1,NULL,2,0,33,100,115,1,NULL,NULL,'null');
/*!40000 ALTER TABLE `tbl_bac_sample_to_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_samples`
--

DROP TABLE IF EXISTS `tbl_bac_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_samples` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batchName` varchar(45) DEFAULT NULL,
  `datePrepared` date DEFAULT NULL,
  `manOrigin` varchar(45) DEFAULT NULL,
  `bloodPackNo` varchar(45) DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `preparedBy` varchar(45) DEFAULT NULL,
  `materialOrigin` varchar(45) DEFAULT NULL,
  `materialType` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `expiryStatus` varchar(45) DEFAULT '0',
  `collectionDate` date DEFAULT NULL,
  `dispatchable` varchar(45) DEFAULT '1',
  `preparedAt` varchar(105) DEFAULT NULL,
  `lifespan` varchar(45) DEFAULT NULL,
  `originExtraInfo` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sampleStatus` varchar(45) DEFAULT '5',
  `participantId` varchar(45) DEFAULT 'null',
  `dateDelivered` date DEFAULT NULL,
  `barcode` varchar(45) DEFAULT 'null',
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) DEFAULT NULL,
  `issuedStatus` int(11) DEFAULT '0',
  `totalSamplesAdded` int(11) DEFAULT NULL,
  `materialSource` varchar(100) DEFAULT NULL,
  `sampleDetails` varchar(100) DEFAULT NULL,
  `sampleType` varchar(10) DEFAULT NULL,
  `sampleInstructions` varchar(100) DEFAULT NULL,
  `expectedResults` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_sample_batcname` (`batchName`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_samples`
--

LOCK TABLES `tbl_bac_samples` WRITE;
/*!40000 ALTER TABLE `tbl_bac_samples` DISABLE KEYS */;
INSERT INTO `tbl_bac_samples` VALUES (26,'NMRL/EQA/A/17','2017-02-28','','23','0000-00-00','uiyiu','NPHL','iuyiuy',1,'2017-02-28 16:53:25','0','0000-00-00','1','234','32','',0,'5','null','0000-00-00','49737297715739115',1,'2017-02-28 16:53:25',1,0,0,'standard organisms','SAMPLE TEST FOR THIS ROUND','2','please examine sample and give conclusions',0),(27,'eqa/2017/A/17','2017-03-02','','','0000-00-00','Osoro Michael','NPHL','fungal',1,'2017-03-02 14:51:04','0','0000-00-00','1','KNH','10','',0,'5','null','0000-00-00','9337802303440859',1,'2017-03-02 14:51:04',1,0,0,'sample isolates','include bacterial elements','2','test for the bacteria',1),(28,'sdfsdf','2017-03-07',NULL,NULL,NULL,'sdf','NPHL','sdf',1,'2017-03-07 14:37:13','0',NULL,'0','sdf','2',NULL,NULL,'5','null',NULL,'07660394687794492',NULL,'2017-03-07 14:37:13',1,0,NULL,'standard organisms','sdfsd','2','sdfsdf',0),(31,'sample 003','2017-03-07','','','0000-00-00','sadfsd','NPHL','sdfsdf',1,'2017-03-07 14:43:43','0','0000-00-00','1','sdf','12','',0,'5','null','0000-00-00','6044913045985087',1,'2017-03-07 14:43:43',1,0,0,'sample isolates','sdfsf','2','sdfsdf',1),(32,'asdfasdf','2017-03-07',NULL,NULL,NULL,'safsdf','NPHL','sadfsdf',1,'2017-03-07 14:54:48','0',NULL,'0','asdfsdf','2',NULL,NULL,'5','null',NULL,'044358388831293505',NULL,'2017-03-07 14:54:48',1,0,NULL,'sample isolates','sdfsdf','3','sdfasdf',0);
/*!40000 ALTER TABLE `tbl_bac_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_samples_to_users`
--

DROP TABLE IF EXISTS `tbl_bac_samples_to_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_samples_to_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `sampleId` int(11) DEFAULT NULL,
  `panelToSampleId` int(11) DEFAULT NULL,
  `dateAllocated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) NOT NULL DEFAULT '1',
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT NULL,
  `receiveStatus` varchar(45) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `responseStatus` varchar(45) DEFAULT '0',
  `feedBack` varchar(45) DEFAULT '0',
  `sampleStatus` varchar(45) DEFAULT NULL,
  `dateReturned` datetime DEFAULT NULL,
  `roundId` int(11) DEFAULT NULL,
  `participantId` int(11) DEFAULT NULL,
  `totalCorrectScore` int(11) DEFAULT '0',
  `totalMicroAgentsScore` int(11) DEFAULT '0',
  `remarks` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_samples_to_users`
--

LOCK TABLES `tbl_bac_samples_to_users` WRITE;
/*!40000 ALTER TABLE `tbl_bac_samples_to_users` DISABLE KEYS */;
INSERT INTO `tbl_bac_samples_to_users` VALUES (17,1,26,378,'2017-03-02 14:01:50','2017-03-02 14:01:50','1','1',NULL,NULL,1,'1','1',NULL,NULL,33,1,8,14,'Totally accurate','excellent');
/*!40000 ALTER TABLE `tbl_bac_samples_to_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_saved_email_notifications`
--

DROP TABLE IF EXISTS `tbl_bac_saved_email_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_saved_email_notifications` (
  `id` int(11) NOT NULL,
  `recepientEmail` varchar(45) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime DEFAULT NULL,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `sendStatus` varchar(45) DEFAULT '1',
  `dateEmailSent` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_saved_email_notifications`
--

LOCK TABLES `tbl_bac_saved_email_notifications` WRITE;
/*!40000 ALTER TABLE `tbl_bac_saved_email_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bac_saved_email_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_shipment_logs`
--

DROP TABLE IF EXISTS `tbl_bac_shipment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_shipment_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateReceived` date DEFAULT NULL,
  `panelsReceived` varchar(45) DEFAULT NULL,
  `shipmentStatus` varchar(45) DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `shipmentId` varchar(45) DEFAULT NULL,
  `addressedTo` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `participantId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_shipment_logs`
--

LOCK TABLES `tbl_bac_shipment_logs` WRITE;
/*!40000 ALTER TABLE `tbl_bac_shipment_logs` DISABLE KEYS */;
INSERT INTO `tbl_bac_shipment_logs` VALUES (311,NULL,NULL,'0',NULL,NULL,'115',NULL,'1','2017-02-28 16:56:55',NULL),(312,NULL,NULL,'2',NULL,NULL,'115','Osor Michael','1','2017-02-28 17:17:00',NULL),(313,NULL,NULL,'0',NULL,NULL,'115','Osor Michael','1','2017-02-28 17:31:19',NULL),(314,NULL,NULL,'0',NULL,NULL,'115','Osor Michael','1','2017-02-28 17:31:21',NULL),(315,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-02-28 17:34:32',NULL),(316,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-02 20:51:58',NULL),(317,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 13:20:53',NULL),(318,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 14:38:01',NULL),(319,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 14:40:43',NULL),(320,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 14:46:11',NULL),(321,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 14:46:20',NULL),(322,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 14:47:01',NULL),(323,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 14:47:18',NULL),(324,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 14:47:24',NULL),(325,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 14:47:31',NULL),(326,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 14:51:01',NULL),(327,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 14:51:05',NULL),(328,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 14:51:12',NULL),(329,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 14:51:16',NULL),(330,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 15:26:59',NULL),(331,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 15:28:47',NULL),(332,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 15:29:10',NULL),(333,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 15:30:09',NULL),(334,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 15:30:29',NULL),(335,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 15:33:31',NULL),(336,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 15:45:16',NULL),(337,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 15:45:27',NULL),(338,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 15:50:54',NULL),(339,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 15:53:49',NULL),(340,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 15:54:53',NULL),(341,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:01:56',NULL),(342,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:02:49',NULL),(343,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:03:42',NULL),(344,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:04:36',NULL),(345,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:04:55',NULL),(346,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:06:01',NULL),(347,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:06:17',NULL),(348,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:06:31',NULL),(349,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:07:06',NULL),(350,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:07:22',NULL),(351,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:07:38',NULL),(352,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:07:56',NULL),(353,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:08:10',NULL),(354,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:08:22',NULL),(355,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:09:01',NULL),(356,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:09:18',NULL),(357,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:09:48',NULL),(358,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:10:05',NULL),(359,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:10:20',NULL),(360,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:10:44',NULL),(361,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:10:53',NULL),(362,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:11:20',NULL),(363,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:11:29',NULL),(364,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:13:18',NULL),(365,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 16:13:48',NULL),(366,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 17:06:32',NULL),(367,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-09 17:08:45',NULL),(368,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-10 00:22:23',NULL),(369,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-10 00:22:31',NULL),(370,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-10 00:22:39',NULL),(371,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-10 00:24:23',NULL),(372,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-10 08:55:02',NULL),(373,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-10 10:39:01',NULL),(374,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-10 10:58:56',NULL),(375,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-10 10:59:11',NULL),(376,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-10 10:59:56',NULL),(377,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-10 11:00:19',NULL),(378,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-10 11:02:14',NULL),(379,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-10 11:04:20',NULL),(380,NULL,NULL,'2',NULL,NULL,'115','asd','1','2017-03-10 11:37:00',NULL);
/*!40000 ALTER TABLE `tbl_bac_shipment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_shipments`
--

DROP TABLE IF EXISTS `tbl_bac_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipmentName` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `numberOfSamples` int(11) DEFAULT NULL,
  `numberOfPanels` varchar(45) DEFAULT NULL,
  `courier` varchar(45) DEFAULT NULL,
  `deliveryStatus` varchar(45) DEFAULT NULL,
  `dateDelivered` date DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `dispatchedBy` varchar(45) DEFAULT NULL,
  `shipmentDsc` varchar(100) DEFAULT NULL,
  `conditionDispatch` varchar(45) DEFAULT NULL,
  `conditionReceived` varchar(45) DEFAULT NULL,
  `receiveComments` varchar(105) DEFAULT NULL,
  `shipmentLabel` varchar(100) DEFAULT NULL,
  `roundId` varchar(20) DEFAULT NULL,
  `datePrepared` date DEFAULT NULL,
  `preparedBy` varchar(45) DEFAULT NULL,
  `shipmentStatus` varchar(45) DEFAULT '0',
  `panelsReceived` int(11) DEFAULT NULL,
  `dateReceived` date DEFAULT NULL,
  `tempAtReceiving` varchar(45) DEFAULT NULL,
  `storage` varchar(45) DEFAULT NULL,
  `dateDispatched` date DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL,
  `dispatchComments` varchar(45) DEFAULT NULL,
  `dispatchCourier` varchar(45) DEFAULT NULL,
  `addressedTo` varchar(45) DEFAULT NULL,
  `shippingMethod` varchar(45) DEFAULT NULL,
  `totalPanelsAdded` int(11) DEFAULT '0',
  `labId` int(11) DEFAULT NULL,
  `startRoundFlag` varchar(10) DEFAULT '0',
  `evaluated` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_shipment_name` (`shipmentName`),
  KEY `shipmentIndexKey` (`id`,`shipmentName`,`addressedTo`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_shipments`
--

LOCK TABLES `tbl_bac_shipments` WRITE;
/*!40000 ALTER TABLE `tbl_bac_shipments` DISABLE KEYS */;
INSERT INTO `tbl_bac_shipments` VALUES (115,'s0001','2017-02-28 16:53:58',1,1,'2017-02-28 16:53:58',NULL,'23',NULL,NULL,NULL,NULL,'1',NULL,'234',NULL,NULL,NULL,'ss0001','33','2017-02-28','23','2',NULL,NULL,NULL,NULL,'2017-02-27','12','asd','G4S','asd','asd',0,NULL,'1',1);
/*!40000 ALTER TABLE `tbl_bac_shipments` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER updatePanelAndSamples
AFTER UPDATE
   ON tbl_bac_shipments FOR EACH ROW
BEGIN

	update tbl_bac_panels_shipments 
	   set 
	   deliveryStatus=new.shipmentStatus,
	   quantity='1',
	   receivedBy=new.receivedBy
   where shipmentId=new.id;


  update tbl_bac_panel_mst 
   set 
	   dateDelivered=new.dateReceived,
	   panelStatus=new.shipmentStatus,
	   shipmentNumber=concat('S-0',new.id)
   where tbl_bac_panel_mst.id in
  (select panelId from  tbl_bac_panels_shipments where  tbl_bac_panels_shipments.shipmentId=new.id);

 update tbl_bac_panels_shipments 
   set 
	   
       deliveryStatus=new.shipmentStatus
       
   where tbl_bac_panels_shipments.shipmentId=new.id;
  


	update tbl_bac_sample_to_panel set 
    deliveryStatus =new.deliveryStatus,
    dateDelivered=new.dateReceived,
    shipmentId=new.id
    where panelId in(	
	select panelId from  tbl_bac_panels_shipments where  tbl_bac_panels_shipments.shipmentId=new.id	
	);
  


   -- Insert record into audit table
   INSERT INTO tbl_bac_shipment_logs
		   ( dateReceived,
			panelsReceived,
			shipmentStatus,
			receivedBy,
			addressedTo,
			status,
			shipmentId
			)
   VALUES
	   ( new.dateReceived,
		new.panelsReceived,
		new.shipmentStatus,
		new.receivedBy,
		new.addressedTo,
		'1',
		new.id
		 );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbl_bac_suscepitibility`
--

DROP TABLE IF EXISTS `tbl_bac_suscepitibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_suscepitibility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `participantId` int(11) DEFAULT NULL,
  `sampleId` int(11) DEFAULT NULL,
  `panelToSampleId` int(11) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(45) DEFAULT NULL,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `isolateIdentification` varchar(105) DEFAULT NULL,
  `methodUsed` varchar(105) DEFAULT NULL,
  `mediaUsed` varchar(105) DEFAULT NULL,
  `mediaManufacturer` varchar(105) DEFAULT NULL,
  `discManufacturer` varchar(100) DEFAULT NULL,
  `guidelines` varchar(105) DEFAULT NULL,
  `roundId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_lab_sample_round_uk` (`participantId`,`sampleId`,`roundId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_suscepitibility`
--

LOCK TABLES `tbl_bac_suscepitibility` WRITE;
/*!40000 ALTER TABLE `tbl_bac_suscepitibility` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bac_suscepitibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_test_agents`
--

DROP TABLE IF EXISTS `tbl_bac_test_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_test_agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testAgentName` varchar(45) DEFAULT NULL,
  `testAgentCode` varchar(45) DEFAULT NULL,
  `testAgentType` varchar(45) DEFAULT NULL,
  `fewRange` int(11) DEFAULT NULL,
  `modRange` int(11) DEFAULT NULL,
  `manyRange` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `createdBy` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_test_agents`
--

LOCK TABLES `tbl_bac_test_agents` WRITE;
/*!40000 ALTER TABLE `tbl_bac_test_agents` DISABLE KEYS */;
INSERT INTO `tbl_bac_test_agents` VALUES (1,'amikacin','201','3',15,30,45,'1','1','2017-03-03 15:33:50','1','0000-00-00 00:00:00'),(2,'amoxicilin','100','3',10,100,150,'1','1','2017-03-03 15:35:19','1','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tbl_bac_test_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_mail`
--

DROP TABLE IF EXISTS `temp_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_mail` (
  `temp_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `from_mail` varchar(255) DEFAULT NULL,
  `to_email` varchar(255) NOT NULL,
  `bcc` text,
  `cc` text,
  `subject` text,
  `from_full_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`temp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_mail`
--

LOCK TABLES `temp_mail` WRITE;
/*!40000 ALTER TABLE `temp_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'eptnew'
--

--
-- Dumping routines for database 'eptnew'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-10 18:02:14
