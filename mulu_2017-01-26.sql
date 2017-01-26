# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.16-0ubuntu0.16.04.1)
# Base de datos: mulu
# Tiempo de Generación: 2017-01-26 18:19:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla contacts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agent` varchar(11) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `zip_code` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;

INSERT INTO `contacts` (`id`, `agent`, `contact`, `zip_code`, `created_at`, `updated_at`)
VALUES
	(1,'1','dan','10021','2017-01-26 18:00:03','2017-01-26 18:00:03'),
	(2,'2','juan','89145','2017-01-26 18:07:30','2017-01-26 18:07:30'),
	(3,'1','andreu','12550','2017-01-26 18:12:17','2017-01-26 18:12:17'),
	(4,'1','martha','12550','2017-01-26 18:17:22','2017-01-26 18:17:22'),
	(5,'1','martha','12550','2017-01-26 18:18:06','2017-01-26 18:18:06');

/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla state
# ------------------------------------------------------------

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `occupied` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `fips_state` varchar(255) DEFAULT NULL,
  `assoc_press` varchar(255) DEFAULT NULL,
  `standard_federal_region` varchar(255) DEFAULT NULL,
  `census_region` varchar(255) DEFAULT NULL,
  `census_region_name` varchar(255) DEFAULT NULL,
  `census_division` varchar(255) DEFAULT NULL,
  `census_division_name` varchar(255) DEFAULT NULL,
  `circuit_court` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;

INSERT INTO `state` (`id`, `name`, `abbreviation`, `country`, `type`, `sort`, `status`, `occupied`, `notes`, `fips_state`, `assoc_press`, `standard_federal_region`, `census_region`, `census_region_name`, `census_division`, `census_division_name`, `circuit_court`)
VALUES
	(1,'Alabama','AL','USA','state',10,'current','occupied','','1','Ala.','IV','3','South','6','East South Central','11'),
	(2,'Alaska','AK','USA','state',10,'current','occupied','','2','Alaska','X','4','West','9','Pacific','9'),
	(3,'Arizona','AZ','USA','state',10,'current','occupied','','4','Ariz.','IX','4','West','8','Mountain','9'),
	(4,'Arkansas','AR','USA','state',10,'current','occupied','','5','Ark.','VI','3','South','7','West South Central','8'),
	(5,'California','CA','USA','state',10,'current','occupied','','6','Calif.','IX','4','West','9','Pacific','9'),
	(6,'Colorado','CO','USA','state',10,'current','occupied','','8','Colo.','VIII','4','West','8','Mountain','10'),
	(7,'Connecticut','CT','USA','state',10,'current','occupied','','9','Conn.','I','1','Northeast','1','New England','2'),
	(8,'Delaware','DE','USA','state',10,'current','occupied','','10','Del.','III','3','South','5','South Atlantic','3'),
	(9,'Florida','FL','USA','state',10,'current','occupied','','12','Fla.','IV','3','South','5','South Atlantic','11'),
	(10,'Georgia','GA','USA','state',10,'current','occupied','','13','Ga.','IV','3','South','5','South Atlantic','11'),
	(11,'Hawaii','HI','USA','state',10,'current','occupied','','15','Hawaii','IX','4','West','9','Pacific','9'),
	(12,'Idaho','ID','USA','state',10,'current','occupied','','16','Idaho','X','4','West','8','Mountain','9'),
	(13,'Illinois','IL','USA','state',10,'current','occupied','','17','Ill.','V','2','Midwest','3','East North Central','7'),
	(14,'Indiana','IN','USA','state',10,'current','occupied','','18','Ind.','V','2','Midwest','3','East North Central','7'),
	(15,'Iowa','IA','USA','state',10,'current','occupied','','19','Iowa','VII','2','Midwest','4','West North Central','8'),
	(16,'Kansas','KS','USA','state',10,'current','occupied','','20','Kan.','VII','2','Midwest','4','West North Central','10'),
	(17,'Kentucky','KY','USA','state',10,'current','occupied','','21','Ky.','IV','3','South','6','East South Central','6'),
	(18,'Louisiana','LA','USA','state',10,'current','occupied','','22','La.','VI','3','South','7','West South Central','5'),
	(19,'Maine','ME','USA','state',10,'current','occupied','','23','Maine','I','1','Northeast','1','New England','1'),
	(20,'Maryland','MD','USA','state',10,'current','occupied','','24','Md.','III','3','South','5','South Atlantic','4'),
	(21,'Massachusetts','MA','USA','state',10,'current','occupied','','25','Mass.','I','1','Northeast','1','New England','1'),
	(22,'Michigan','MI','USA','state',10,'current','occupied','','26','Mich.','V','2','Midwest','3','East North Central','6'),
	(23,'Minnesota','MN','USA','state',10,'current','occupied','','27','Minn.','V','2','Midwest','4','West North Central','8'),
	(24,'Mississippi','MS','USA','state',10,'current','occupied','','28','Miss.','IV','3','South','6','East South Central','5'),
	(25,'Missouri','MO','USA','state',10,'current','occupied','','29','Mo.','VII','2','Midwest','4','West North Central','8'),
	(26,'Montana','MT','USA','state',10,'current','occupied','','30','Mont.','VIII','4','West','8','Mountain','9'),
	(27,'Nebraska','NE','USA','state',10,'current','occupied','','31','Neb.','VII','2','Midwest','4','West North Central','8'),
	(28,'Nevada','NV','USA','state',10,'current','occupied','','32','Nev.','IX','4','West','8','Mountain','9'),
	(29,'New Hampshire','NH','USA','state',10,'current','occupied','','33','N.H.','I','1','Northeast','1','New England','1'),
	(30,'New Jersey','NJ','USA','state',10,'current','occupied','','34','N.J.','II','1','Northeast','2','Mid-Atlantic','3'),
	(31,'New Mexico','NM','USA','state',10,'current','occupied','','35','N.M.','VI','4','West','8','Mountain','10'),
	(32,'New York','NY','USA','state',10,'current','occupied','','36','N.Y.','II','1','Northeast','2','Mid-Atlantic','2'),
	(33,'North Carolina','NC','USA','state',10,'current','occupied','','37','N.C.','IV','3','South','5','South Atlantic','4'),
	(34,'North Dakota','ND','USA','state',10,'current','occupied','','38','N.D.','VIII','2','Midwest','4','West North Central','8'),
	(35,'Ohio','OH','USA','state',10,'current','occupied','','39','Ohio','V','2','Midwest','3','East North Central','6'),
	(36,'Oklahoma','OK','USA','state',10,'current','occupied','','40','Okla.','VI','3','South','7','West South Central','10'),
	(37,'Oregon','OR','USA','state',10,'current','occupied','','41','Ore.','X','4','West','9','Pacific','9'),
	(38,'Pennsylvania','PA','USA','state',10,'current','occupied','','42','Pa.','III','1','Northeast','2','Mid-Atlantic','3'),
	(39,'Rhode Island','RI','USA','state',10,'current','occupied','','44','R.I.','I','1','Northeast','1','New England','1'),
	(40,'South Carolina','SC','USA','state',10,'current','occupied','','45','S.C.','IV','3','South','5','South Atlantic','4'),
	(41,'South Dakota','SD','USA','state',10,'current','occupied','','46','S.D.','VIII','2','Midwest','4','West North Central','8'),
	(42,'Tennessee','TN','USA','state',10,'current','occupied','','47','Tenn.','IV','3','South','6','East South Central','6'),
	(43,'Texas','TX','USA','state',10,'current','occupied','','48','Texas','VI','3','South','7','West South Central','5'),
	(44,'Utah','UT','USA','state',10,'current','occupied','','49','Utah','VIII','4','West','8','Mountain','10'),
	(45,'Vermont','VT','USA','state',10,'current','occupied','','50','Vt.','I','1','Northeast','1','New England','2'),
	(46,'Virginia','VA','USA','state',10,'current','occupied','','51','Va.','III','3','South','5','South Atlantic','4'),
	(47,'Washington','WA','USA','state',10,'current','occupied','','53','Wash.','X','4','West','9','Pacific','9'),
	(48,'West Virginia','WV','USA','state',10,'current','occupied','','54','W.Va.','III','3','South','5','South Atlantic','4'),
	(49,'Wisconsin','WI','USA','state',10,'current','occupied','','55','Wis.','V','2','Midwest','3','East North Central','7'),
	(50,'Wyoming','WY','USA','state',10,'current','occupied','','56','Wyo.','VIII','4','West','8','Mountain','10'),
	(51,'Washington DC','DC','USA','capitol',10,'current','occupied','','11','','III','3','South','5','South Atlantic','D.C.');

/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla agents_zones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `agents_zones`;

CREATE TABLE `agents_zones` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(11) DEFAULT NULL,
  `zone_agent` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `agents_zones` WRITE;
/*!40000 ALTER TABLE `agents_zones` DISABLE KEYS */;

INSERT INTO `agents_zones` (`id`, `zone_name`, `zone_agent`)
VALUES
	(1,'Northeast',1),
	(2,'Midwest',2),
	(3,'South',1),
	(4,'West',2);

/*!40000 ALTER TABLE `agents_zones` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
