/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.10-MariaDB : Database - test_developer
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test_developer` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test_developer`;

/*Table structure for table `jenis_senjata` */

DROP TABLE IF EXISTS `jenis_senjata`;

CREATE TABLE `jenis_senjata` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `jenis_senjata` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `jenis_senjata` */

insert  into `jenis_senjata`(`id`,`jenis_senjata`) values 
(1,'Kapak'),
(2,'Pedang'),
(3,'Machine Gun'),
(4,'AK-47'),
(5,'Sniper'),
(6,'Senapan Laser'),
(7,'Keris');

/*Table structure for table `pahlawan_super` */

DROP TABLE IF EXISTS `pahlawan_super`;

CREATE TABLE `pahlawan_super` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `nama_pahlawan` varchar(100) DEFAULT NULL,
  `nama_asli` varchar(100) DEFAULT NULL,
  `tempat_tinggal` varchar(20) DEFAULT NULL,
  `kekuatan_super` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `pahlawan_super` */

insert  into `pahlawan_super`(`id`,`nama_pahlawan`,`nama_asli`,`tempat_tinggal`,`kekuatan_super`) values 
(1,'Gatot Kaca','Raden Rahmat','Jawa','Otot kawat tulang besi'),
(2,'Baron Perompak','Andre','Makasar','Otot sekuat baja'),
(3,'Kesatria Kampak','Sultan','Bandung','Kapak super'),
(4,'Pahlawan Kapak Merah','Sunan Abang','Bandung','Kapak Merah Api'),
(5,'Wiro Sableng','Aji Pan','Probolinggo','Kapak 212'),
(6,'Sinto Gendeng','Mak Lampir','Probolinggo','Kapak Laser'),
(7,'Pentolan','Makan Aja','Tasik','Kapak Jingga'),
(8,'Preman Pensiun','Kang Mus','Tasik','Kapak Hitam Naga');

/*Table structure for table `pasangan` */

DROP TABLE IF EXISTS `pasangan`;

CREATE TABLE `pasangan` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `penduduk_id` bigint(11) DEFAULT NULL,
  `pasangan_id` bigint(11) DEFAULT NULL,
  `tgl_jadian` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `pasangan` */

insert  into `pasangan`(`id`,`penduduk_id`,`pasangan_id`,`tgl_jadian`) values 
(1,1,1,'2020-07-01'),
(2,2,1,'2020-07-01'),
(3,3,2,'2020-07-05'),
(4,4,2,'2020-07-05');

/*Table structure for table `penduduk` */

DROP TABLE IF EXISTS `penduduk`;

CREATE TABLE `penduduk` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `tmpt_tinggal` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `penduduk` */

insert  into `penduduk`(`id`,`nama`,`tmpt_tinggal`,`tgl_lahir`) values 
(1,'Ci ele','Condet','1959-05-05'),
(2,'Arham','Ciliwung','1991-03-04'),
(3,'Shafa','Condet','1996-10-17'),
(4,'Edi Sugandi','Cililitan','1980-04-04');

/*Table structure for table `perpisahan` */

DROP TABLE IF EXISTS `perpisahan`;

CREATE TABLE `perpisahan` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `pasangan_id` bigint(11) DEFAULT NULL,
  `tgl_pisah` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `perpisahan` */

insert  into `perpisahan`(`id`,`pasangan_id`,`tgl_pisah`) values 
(1,1,'2020-07-15'),
(2,2,'2020-07-31');

/*Table structure for table `ponsel` */

DROP TABLE IF EXISTS `ponsel`;

CREATE TABLE `ponsel` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `merek` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `jaringan` char(2) DEFAULT NULL,
  `dualsim` tinyint(1) DEFAULT NULL,
  `ram` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `ponsel` */

insert  into `ponsel`(`id`,`merek`,`model`,`jaringan`,`dualsim`,`ram`) values 
(1,'Sonny','Xperia 1','4G',0,8),
(2,'Samsung','Galaxy S10','4G',1,8),
(3,'Samsung','Galaxy Note 10','5G',1,12),
(4,'Apple iPhone','XR','4G',0,4);

/*Table structure for table `senjata` */

DROP TABLE IF EXISTS `senjata`;

CREATE TABLE `senjata` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `jenis_senjata_id` bigint(11) DEFAULT NULL,
  `pahlawan_super_id` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `senjata` */

insert  into `senjata`(`id`,`jenis_senjata_id`,`pahlawan_super_id`) values 
(1,7,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,1,7),
(8,1,8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
