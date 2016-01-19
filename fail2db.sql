CREATE TABLE `fail2ban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `protocol` varchar(20) NOT NULL DEFAULT '',
  `port` varchar(20) NOT NULL DEFAULT '',
  `ip` varchar(30) NOT NULL DEFAULT '',
  `count` int(11) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `country` varchar(5) DEFAULT NULL,
  `geo` varchar(255) DEFAULT NULL,
  `added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;