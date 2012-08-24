-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.9-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4170
-- Date/time:                    2012-08-24 15:21:36
-- --------------------------------------------------------

-- SELECT AUTH / ACCOUNT DATABASE WHEN APPLY THIS SQL


CREATE TABLE IF NOT EXISTS `vip_access` (
  `acc_id` int(10) unsigned NOT NULL,
  `vip_level` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL DEFAULT '-1' COMMENT 'use -1 for all realms',
  `comment` varchar(1000) DEFAULT NULL COMMENT 'use -1 for all realms',
  PRIMARY KEY (`acc_id`,`RealmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

