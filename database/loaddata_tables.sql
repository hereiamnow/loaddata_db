-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: loaddata_db
-- ------------------------------------------------------
-- Server version	5.5.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `bullet`
--

DROP TABLE IF EXISTS `bullet`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bullet` (
	`pkid`              INT(11)       NOT NULL AUTO_INCREMENT,
	`item_number`       VARCHAR(25)            DEFAULT NULL,
	`company`           VARCHAR(45)            DEFAULT NULL,
	`product`           VARCHAR(45)   NOT NULL,
	`cartridge_pkid`    INT(11)       NOT NULL,
	`cartridge`         VARCHAR(100)           DEFAULT NULL,
	`caliber`           DECIMAL(4, 3) NOT NULL,
	`weight`            DECIMAL(4, 1) NOT NULL,
	`c_o_l`             DECIMAL(4, 3)          DEFAULT NULL,
	`bc_g1`             DECIMAL(4, 3)          DEFAULT NULL
	COMMENT 'Ballistic Coefficient (G1)',
	`bc_g7`             DECIMAL(4, 3)          DEFAULT NULL
	COMMENT 'Ballistic Coefficient (G7)',
	`sectional_density` DECIMAL(4, 3)          DEFAULT NULL,
	`description`       VARCHAR(555)           DEFAULT NULL,
	`lastupdate`        TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`, `cartridge_pkid`),
	UNIQUE KEY `pkid_UNIQUE` (`pkid`),
	UNIQUE KEY `item_number_UNIQUE` (`item_number`),
	KEY `fk_bullet_cartridge1_idx` (`cartridge_pkid`),
	CONSTRAINT `fk_bullet_cartridge1` FOREIGN KEY (`cartridge_pkid`) REFERENCES `cartridge` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 26
	DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cartridge`
--

DROP TABLE IF EXISTS `cartridge`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartridge` (
	`pkid`           INT(11) NOT NULL AUTO_INCREMENT,
	`cartridge_name` VARCHAR(45)      DEFAULT NULL,
	`cartridge_type` VARCHAR(45)      DEFAULT NULL,
	PRIMARY KEY (`pkid`),
	UNIQUE KEY `pkid_UNIQUE` (`pkid`)
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 10
	DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `case`
--

DROP TABLE IF EXISTS `case`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case` (
	`pkid`         INT(11)   NOT NULL AUTO_INCREMENT,
	`caliber`      VARCHAR(45)        DEFAULT NULL,
	`make`         VARCHAR(45)        DEFAULT NULL,
	`lot`          VARCHAR(45)        DEFAULT NULL,
	`name`         VARCHAR(45)        DEFAULT NULL,
	`description`  VARCHAR(45)        DEFAULT NULL,
	`finish`       VARCHAR(45)        DEFAULT NULL,
	`condition`    VARCHAR(45)        DEFAULT NULL,
	`trim_length`  VARCHAR(45)        DEFAULT NULL,
	`isFireformed` TINYINT(1)         DEFAULT NULL,
	`isPrimed`     TINYINT(1)         DEFAULT NULL,
	`count`        INT(11)            DEFAULT NULL,
	`lastupdate`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`),
	UNIQUE KEY `pkid_UNIQUE` (`pkid`)
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 3
	DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `load_data`
--

DROP TABLE IF EXISTS `load_data`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `load_data` (
	`pkid`           INT(11)   NOT NULL AUTO_INCREMENT,
	`cartridge`      VARCHAR(100)       DEFAULT NULL,
	`cartridge_pkid` INT(11)   NOT NULL,
	`bullet_pkid`    INT(11)   NOT NULL,
	`powder_pkid`    INT(11)   NOT NULL,
	`2350`           DECIMAL(3, 1)      DEFAULT NULL,
	`2450`           DECIMAL(3, 1)      DEFAULT NULL,
	`2550`           DECIMAL(3, 1)      DEFAULT NULL,
	`2600`           DECIMAL(3, 1)      DEFAULT NULL,
	`2650`           DECIMAL(3, 1)      DEFAULT NULL,
	`2700`           DECIMAL(3, 1)      DEFAULT NULL,
	`2750`           DECIMAL(3, 1)      DEFAULT NULL,
	`2800`           DECIMAL(3, 1)      DEFAULT NULL,
	`2850`           DECIMAL(3, 1)      DEFAULT NULL,
	`2900`           DECIMAL(3, 1)      DEFAULT NULL,
	`2950`           DECIMAL(3, 1)      DEFAULT NULL,
	`3000`           DECIMAL(3, 1)      DEFAULT NULL,
	`3050`           DECIMAL(3, 1)      DEFAULT NULL,
	`3100`           DECIMAL(3, 1)      DEFAULT NULL,
	`3150`           DECIMAL(3, 1)      DEFAULT NULL,
	`3200`           DECIMAL(3, 1)      DEFAULT NULL,
	`3250`           DECIMAL(3, 1)      DEFAULT NULL,
	`3300`           DECIMAL(3, 1)      DEFAULT NULL,
	`lastupdate`     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`, `cartridge_pkid`, `bullet_pkid`, `powder_pkid`),
	KEY `fk_load_data_bullet1_idx` (`bullet_pkid`),
	KEY `fk_load_data_powder1_idx` (`powder_pkid`),
	KEY `fk_load_data_cartridge1_idx` (`cartridge_pkid`),
	CONSTRAINT `fk_load_data_bullet1` FOREIGN KEY (`bullet_pkid`) REFERENCES `bullet` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_data_cartridge1` FOREIGN KEY (`cartridge_pkid`) REFERENCES `cartridge` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_data_powder1` FOREIGN KEY (`powder_pkid`) REFERENCES `powder` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 14
	DEFAULT CHARSET = utf8
	COMMENT = 'data taken from bullet manual';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `load_sheet`
--

DROP TABLE IF EXISTS `load_sheet`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `load_sheet` (
	`pkid`            INT(11)       NOT NULL AUTO_INCREMENT,
	`load_date`       VARCHAR(45)            DEFAULT NULL
	COMMENT 'Date of Task',
	`load_name`       VARCHAR(155)           DEFAULT NULL
	COMMENT 'Name of Load',
	`rifle_pkid`      INT(11)       NOT NULL,
	`bullet_pkid`     INT(11)       NOT NULL,
	`powder_pkid`     INT(11)       NOT NULL,
	`powder_weight`   DECIMAL(3, 1) NOT NULL,
	`primer_pkid`     INT(11)       NOT NULL,
	`case_pkid`       INT(11)       NOT NULL,
	`case_type`       VARCHAR(45)            DEFAULT NULL
	COMMENT 'Brand or Type of Brass',
	`case_sizing`     VARCHAR(45)   NOT NULL
	COMMENT 'Full Length, Neck,etc',
	`case_trimlength` DECIMAL(4, 3) NOT NULL
	COMMENT ' length of the case only',
	`coal_max`        DECIMAL(4, 3) NOT NULL
	COMMENT 'come from load data?',
	`coal_new`        DECIMAL(4, 3) NOT NULL,
	`headspace`       DECIMAL(4, 3)          DEFAULT NULL,
	`lastupdate`      TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`cartridge_pkid`  INT(11)       NOT NULL,
	PRIMARY KEY (`pkid`, `rifle_pkid`, `bullet_pkid`, `powder_pkid`, `primer_pkid`, `case_pkid`, `cartridge_pkid`),
	KEY `fk_load_sheet_rifle1_idx` (`rifle_pkid`),
	KEY `fk_load_sheet_primer1_idx` (`primer_pkid`),
	KEY `fk_load_sheet_powder1_idx` (`powder_pkid`),
	KEY `fk_load_sheet_case1_idx` (`case_pkid`),
	KEY `fk_load_sheet_bullet1_idx` (`bullet_pkid`),
	KEY `fk_load_sheet_cartridge1_idx` (`cartridge_pkid`),
	CONSTRAINT `fk_load_sheet_bullet1` FOREIGN KEY (`bullet_pkid`) REFERENCES `bullet` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_sheet_cartridge1` FOREIGN KEY (`cartridge_pkid`) REFERENCES `cartridge` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_sheet_case1` FOREIGN KEY (`case_pkid`) REFERENCES `case` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_sheet_powder1` FOREIGN KEY (`powder_pkid`) REFERENCES `powder` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_sheet_primer1` FOREIGN KEY (`primer_pkid`) REFERENCES `primer` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_sheet_rifle1` FOREIGN KEY (`rifle_pkid`) REFERENCES `rifle` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 3
	DEFAULT CHARSET = utf8
	COMMENT = 'Contains data for a loading task\nrecords date, name , count of task, \nreferencs rifle, primer, bullet tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `load_sheet_results`
--

DROP TABLE IF EXISTS `load_sheet_results`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `load_sheet_results` (
	`pkid`                INT(11)   NOT NULL,
	`result_date`         TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`result_time`         TIME               DEFAULT NULL,
	`result_outside_temp` DECIMAL(2, 0)      DEFAULT NULL,
	`lastupdate`          TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
	PRIMARY KEY (`pkid`)
)
	ENGINE = InnoDB
	DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `load_task`
--

DROP TABLE IF EXISTS `load_task`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `load_task` (
	`pkid`            INT(11)   NOT NULL AUTO_INCREMENT,
	`task_date`       DATE               DEFAULT NULL,
	`task_count`      INT(11)            DEFAULT '0',
	`load_sheet_pkid` INT(11)   NOT NULL,
	`isComplete`      TINYINT(1)         DEFAULT '0',
	`lastupdate`      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`, `load_sheet_pkid`),
	KEY `fk_load_task_load_sheet1_idx` (`load_sheet_pkid`)
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 3
	DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `powder`
--

DROP TABLE IF EXISTS `powder`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powder` (
	`pkid`        INT(11)   NOT NULL AUTO_INCREMENT,
	`manufacture` VARCHAR(55)        DEFAULT NULL,
	`name`        VARCHAR(55)        DEFAULT NULL,
	`type`        VARCHAR(55)        DEFAULT NULL,
	`pounds`      DECIMAL(4, 1)      DEFAULT NULL,
	`cp_pd`       DECIMAL(5, 2)      DEFAULT NULL
	COMMENT 'Cost Per Pound',
	`description` LONGTEXT,
	`lastupdate`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`),
	UNIQUE KEY `pkid_UNIQUE` (`pkid`)
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 33
	DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `primer`
--

DROP TABLE IF EXISTS `primer`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `primer` (
	`pkid`        INT(11)   NOT NULL AUTO_INCREMENT,
	`item_number` VARCHAR(255)       DEFAULT NULL,
	`type`        VARCHAR(100)       DEFAULT NULL,
	`manufacture` VARCHAR(255)       DEFAULT NULL,
	`name`        VARCHAR(255)       DEFAULT NULL,
	`description` LONGTEXT,
	`count`       INT(11)            DEFAULT NULL,
	`cp_hundred`  DECIMAL(5, 2)      DEFAULT NULL
	COMMENT 'Cost Per Hundred',
	`cp_thousand` DECIMAL(5, 2)      DEFAULT NULL
	COMMENT 'Cost Per Thousand',
	`lastupdate`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`),
	UNIQUE KEY `pkid_UNIQUE` (`pkid`)
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 50
	DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rifle`
--

DROP TABLE IF EXISTS `rifle`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rifle` (
	`pkid`           INT(11)   NOT NULL AUTO_INCREMENT,
	`cartridge_pkid` INT(11)   NOT NULL,
	`cartridge`      VARCHAR(100)       DEFAULT NULL,
	`make`           VARCHAR(45)        DEFAULT NULL,
	`model`          VARCHAR(45)        DEFAULT NULL,
	`name`           VARCHAR(45)        DEFAULT NULL,
	`description`    VARCHAR(45)        DEFAULT NULL,
	`length`         VARCHAR(45)        DEFAULT NULL,
	`twist`          VARCHAR(45)        DEFAULT NULL,
	`caliber`        VARCHAR(45)        DEFAULT NULL,
	`weight`         VARCHAR(45)        DEFAULT NULL,
	`feed`           VARCHAR(45)        DEFAULT NULL,
	`lastupdate`     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`, `cartridge_pkid`),
	UNIQUE KEY `pkid_UNIQUE` (`pkid`),
	KEY `fk_rifle_cartridge1_idx` (`cartridge_pkid`),
	CONSTRAINT `fk_rifle_cartridge1` FOREIGN KEY (`cartridge_pkid`) REFERENCES `cartridge` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 3
	DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `running_tasks`
--

DROP TABLE IF EXISTS `running_tasks`;
/*!50001 DROP VIEW IF EXISTS `running_tasks`*/;
SET @saved_cs_client = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `running_tasks` AS
	SELECT
		1 AS `Task Date`,
		1 AS `Cartrage Count`,
		1 AS `Rifle`,
		1 AS `Bullet`,
		1 AS `Powder`,
		1 AS `Powder Weight`,
		1 AS `Primer`,
		1 AS `Case`,
		1 AS `Case Type`,
		1 AS `Sizing Type`,
		1 AS `Trim Length`,
		1 AS `C.O.A.L. Max`,
		1 AS `C.O.A.L. New`,
		1 AS `Headspace`,
		1 AS `Is Complete`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_556_loaddata`
--

DROP TABLE IF EXISTS `view_556_loaddata`;
/*!50001 DROP VIEW IF EXISTS `view_556_loaddata`*/;
SET @saved_cs_client = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_556_loaddata` AS
	SELECT
		1 AS `Cartrage`,
		1 AS `Bullet Weight`,
		1 AS `Bullet`,
		1 AS `Powder`,
		1 AS `2700`,
		1 AS `2750`,
		1 AS `2800`,
		1 AS `2850`,
		1 AS `2900`,
		1 AS `2950`,
		1 AS `3000`,
		1 AS `3050`,
		1 AS `3100`,
		1 AS `3150`,
		1 AS `3200`,
		1 AS `3300`,
		1 AS `3250`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_65_loaddata`
--

DROP TABLE IF EXISTS `view_65_loaddata`;
/*!50001 DROP VIEW IF EXISTS `view_65_loaddata`*/;
SET @saved_cs_client = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_65_loaddata` AS
	SELECT
		1 AS `Cartrage`,
		1 AS `Bullet Weight`,
		1 AS `Bullet`,
		1 AS `Powder`,
		1 AS `2700`,
		1 AS `2750`,
		1 AS `2800`,
		1 AS `2850`,
		1 AS `2900`,
		1 AS `2950`,
		1 AS `3000`,
		1 AS `3050`,
		1 AS `3100`,
		1 AS `3150`,
		1 AS `3200`,
		1 AS `3300`,
		1 AS `3250`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_bullets`
--

DROP TABLE IF EXISTS `view_bullets`;
/*!50001 DROP VIEW IF EXISTS `view_bullets`*/;
SET @saved_cs_client = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_bullets` AS
	SELECT
		1 AS `Cartridge`,
		1 AS `Manufacture`,
		1 AS `Product`,
		1 AS `Caliber`,
		1 AS `Bullet Weight`,
		1 AS `C.O.L.`,
		1 AS `bc_g1`,
		1 AS `Sectional Density`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_creedmoor_loaddata`
--

DROP TABLE IF EXISTS `view_creedmoor_loaddata`;
/*!50001 DROP VIEW IF EXISTS `view_creedmoor_loaddata`*/;
SET @saved_cs_client = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_creedmoor_loaddata` AS
	SELECT
		1 AS `Cartrage`,
		1 AS `Bullet Weight`,
		1 AS `Bullet`,
		1 AS `Powder`,
		1 AS `2700`,
		1 AS `2750`,
		1 AS `2800`,
		1 AS `2850`,
		1 AS `2900`,
		1 AS `2950`,
		1 AS `3000`,
		1 AS `3050`,
		1 AS `3100`,
		1 AS `3150`,
		1 AS `3200`,
		1 AS `3300`,
		1 AS `3250`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_firearms`
--

DROP TABLE IF EXISTS `view_firearms`;
/*!50001 DROP VIEW IF EXISTS `view_firearms`*/;
SET @saved_cs_client = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_firearms` AS
	SELECT
		1 AS `Make`,
		1 AS `Model`,
		1 AS `Name`,
		1 AS `Cartridge`,
		1 AS `Cal.`,
		1 AS `Barrel Length`,
		1 AS `Twist`,
		1 AS `Rifle Weight`,
		1 AS `Feed`,
		1 AS `Description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_running_tasks`
--

DROP TABLE IF EXISTS `view_running_tasks`;
/*!50001 DROP VIEW IF EXISTS `view_running_tasks`*/;
SET @saved_cs_client = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_running_tasks` AS
	SELECT
		1 AS `Task Date`,
		1 AS `Cartrage Count`,
		1 AS `Rifle`,
		1 AS `Bullet`,
		1 AS `Powder`,
		1 AS `Powder Weight`,
		1 AS `Primer`,
		1 AS `Case`,
		1 AS `Case Type`,
		1 AS `Sizing Type`,
		1 AS `Trim Length`,
		1 AS `C.O.A.L. Max`,
		1 AS `C.O.A.L. New`,
		1 AS `Headspace`,
		1 AS `Is Complete`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `running_tasks`
--

/*!50001 DROP VIEW IF EXISTS `running_tasks`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8 */;
/*!50001 SET character_set_results = utf8 */;
/*!50001 SET collation_connection = utf8_general_ci */;
/*!50001 CREATE ALGORITHM = UNDEFINED */
	/*!50013 DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER */
	/*!50001 VIEW `running_tasks` AS
	SELECT
		`load_task`.`task_date`                                        AS `Task Date`,
		`load_task`.`task_count`                                       AS `Cartrage Count`,
		concat_ws(' ', `rifle`.`name`, `rifle`.`caliber`)              AS `Rifle`,
		`bullet`.`product`                                             AS `Bullet`,
		`powder`.`name`                                                AS `Powder`,
		`load_sheet`.`powder_weight`                                   AS `Powder Weight`,
		concat_ws(' ', `primer`.`manufacture`, `primer`.`item_number`) AS `Primer`,
		`case`.`description`                                           AS `Case`,
		`load_sheet`.`case_type`                                       AS `Case Type`,
		`load_sheet`.`case_sizing`                                     AS `Sizing Type`,
		`load_sheet`.`case_trimlength`                                 AS `Trim Length`,
		`load_sheet`.`coal_max`                                        AS `C.O.A.L. Max`,
		`load_sheet`.`coal_new`                                        AS `C.O.A.L. New`,
		`load_sheet`.`headspace`                                       AS `Headspace`,
		`load_task`.`isComplete`                                       AS `Is Complete`
	FROM ((((((`load_sheet`
		JOIN `load_task` ON ((`load_sheet`.`pkid` = `load_task`.`load_sheet_pkid`))) JOIN `rifle` ON ((`load_sheet`.`rifle_pkid` = `rifle`.`pkid`))) JOIN `bullet` ON ((`load_sheet`.`bullet_pkid` = `bullet`.`pkid`))) JOIN `powder` ON ((`load_sheet`.`powder_pkid` = `powder`.`pkid`))) JOIN `case` ON ((`load_sheet`.`case_pkid` = `case`.`pkid`))) JOIN `primer` ON ((`load_sheet`.`primer_pkid` = `primer`.`pkid`))) */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;

--
-- Final view structure for view `view_556_loaddata`
--

/*!50001 DROP VIEW IF EXISTS `view_556_loaddata`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8 */;
/*!50001 SET character_set_results = utf8 */;
/*!50001 SET collation_connection = utf8_general_ci */;
/*!50001 CREATE ALGORITHM = UNDEFINED */
	/*!50013 DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER */
	/*!50001 VIEW `view_556_loaddata` AS
	SELECT
		`cartridge`.`cartridge_name`                             AS `Cartrage`,
		`bullet`.`weight`                                        AS `Bullet Weight`,
		concat_ws(', ', `bullet`.`product`, `bullet`.`company`)  AS `Bullet`,
		concat_ws(', ', `powder`.`name`, `powder`.`manufacture`) AS `Powder`,
		`load_data`.`2700`                                       AS `2700`,
		`load_data`.`2750`                                       AS `2750`,
		`load_data`.`2800`                                       AS `2800`,
		`load_data`.`2850`                                       AS `2850`,
		`load_data`.`2900`                                       AS `2900`,
		`load_data`.`2950`                                       AS `2950`,
		`load_data`.`3000`                                       AS `3000`,
		`load_data`.`3050`                                       AS `3050`,
		`load_data`.`3100`                                       AS `3100`,
		`load_data`.`3150`                                       AS `3150`,
		`load_data`.`3200`                                       AS `3200`,
		`load_data`.`3300`                                       AS `3300`,
		`load_data`.`3250`                                       AS `3250`
	FROM (((`load_data`
		JOIN `bullet` ON ((`load_data`.`bullet_pkid` = `bullet`.`pkid`))) JOIN `powder` ON ((`load_data`.`powder_pkid` = `powder`.`pkid`))) JOIN `cartridge` ON (((`load_data`.`cartridge_pkid` = `cartridge`.`pkid`) AND (`bullet`.`cartridge_pkid` = `cartridge`.`pkid`))))
	WHERE (`cartridge`.`cartridge_name` = 5.56)
	ORDER BY `cartridge`.`cartridge_name`, `bullet`.`company`, `bullet`.`weight` */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;

--
-- Final view structure for view `view_65_loaddata`
--

/*!50001 DROP VIEW IF EXISTS `view_65_loaddata`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8 */;
/*!50001 SET character_set_results = utf8 */;
/*!50001 SET collation_connection = utf8_general_ci */;
/*!50001 CREATE ALGORITHM = UNDEFINED */
	/*!50013 DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER */
	/*!50001 VIEW `view_65_loaddata` AS
	SELECT
		`cartridge`.`cartridge_name`                             AS `Cartrage`,
		`bullet`.`weight`                                        AS `Bullet Weight`,
		concat_ws(', ', `bullet`.`product`, `bullet`.`company`)  AS `Bullet`,
		concat_ws(', ', `powder`.`name`, `powder`.`manufacture`) AS `Powder`,
		`load_data`.`2700`                                       AS `2700`,
		`load_data`.`2750`                                       AS `2750`,
		`load_data`.`2800`                                       AS `2800`,
		`load_data`.`2850`                                       AS `2850`,
		`load_data`.`2900`                                       AS `2900`,
		`load_data`.`2950`                                       AS `2950`,
		`load_data`.`3000`                                       AS `3000`,
		`load_data`.`3050`                                       AS `3050`,
		`load_data`.`3100`                                       AS `3100`,
		`load_data`.`3150`                                       AS `3150`,
		`load_data`.`3200`                                       AS `3200`,
		`load_data`.`3300`                                       AS `3300`,
		`load_data`.`3250`                                       AS `3250`
	FROM (((`load_data`
		JOIN `bullet` ON ((`load_data`.`bullet_pkid` = `bullet`.`pkid`))) JOIN `powder` ON ((`load_data`.`powder_pkid` = `powder`.`pkid`))) JOIN `cartridge` ON (((`load_data`.`cartridge_pkid` = `cartridge`.`pkid`) AND (`bullet`.`cartridge_pkid` = `cartridge`.`pkid`))))
	WHERE (`cartridge`.`cartridge_name` = 6.5)
	ORDER BY `cartridge`.`cartridge_name`, `bullet`.`company`, `bullet`.`weight` */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;

--
-- Final view structure for view `view_bullets`
--

/*!50001 DROP VIEW IF EXISTS `view_bullets`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8 */;
/*!50001 SET character_set_results = utf8 */;
/*!50001 SET collation_connection = utf8_general_ci */;
/*!50001 CREATE ALGORITHM = UNDEFINED */
	/*!50013 DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER */
	/*!50001 VIEW `view_bullets` AS
	SELECT
		`cartridge`.`cartridge_name` AS `Cartridge`,
		`bullet`.`company`           AS `Manufacture`,
		`bullet`.`product`           AS `Product`,
		`bullet`.`caliber`           AS `Caliber`,
		`bullet`.`weight`            AS `Bullet Weight`,
		`bullet`.`c_o_l`             AS `C.O.L.`,
		`bullet`.`bc_g1`             AS `bc_g1`,
		`bullet`.`sectional_density` AS `Sectional Density`
	FROM (`bullet`
		JOIN `cartridge` ON ((`bullet`.`cartridge_pkid` = `cartridge`.`pkid`)))
	ORDER BY `cartridge`.`cartridge_name`, `bullet`.`company`, `bullet`.`weight` */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;

--
-- Final view structure for view `view_creedmoor_loaddata`
--

/*!50001 DROP VIEW IF EXISTS `view_creedmoor_loaddata`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8 */;
/*!50001 SET character_set_results = utf8 */;
/*!50001 SET collation_connection = utf8_general_ci */;
/*!50001 CREATE ALGORITHM = UNDEFINED */
	/*!50013 DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER */
	/*!50001 VIEW `view_creedmoor_loaddata` AS
	SELECT
		`cartridge`.`cartridge_name`                             AS `Cartrage`,
		`bullet`.`weight`                                        AS `Bullet Weight`,
		concat_ws(', ', `bullet`.`product`, `bullet`.`company`)  AS `Bullet`,
		concat_ws(', ', `powder`.`name`, `powder`.`manufacture`) AS `Powder`,
		`load_data`.`2700`                                       AS `2700`,
		`load_data`.`2750`                                       AS `2750`,
		`load_data`.`2800`                                       AS `2800`,
		`load_data`.`2850`                                       AS `2850`,
		`load_data`.`2900`                                       AS `2900`,
		`load_data`.`2950`                                       AS `2950`,
		`load_data`.`3000`                                       AS `3000`,
		`load_data`.`3050`                                       AS `3050`,
		`load_data`.`3100`                                       AS `3100`,
		`load_data`.`3150`                                       AS `3150`,
		`load_data`.`3200`                                       AS `3200`,
		`load_data`.`3300`                                       AS `3300`,
		`load_data`.`3250`                                       AS `3250`
	FROM (((`load_data`
		JOIN `bullet` ON ((`load_data`.`bullet_pkid` = `bullet`.`pkid`))) JOIN `powder` ON ((`load_data`.`powder_pkid` = `powder`.`pkid`))) JOIN `cartridge` ON (((`load_data`.`cartridge_pkid` = `cartridge`.`pkid`) AND (`bullet`.`cartridge_pkid` = `cartridge`.`pkid`))))
	WHERE (`cartridge`.`cartridge_name` = 6.5)
	ORDER BY `cartridge`.`cartridge_name`, `bullet`.`company`, `bullet`.`weight` */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;

--
-- Final view structure for view `view_firearms`
--

/*!50001 DROP VIEW IF EXISTS `view_firearms`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8 */;
/*!50001 SET character_set_results = utf8 */;
/*!50001 SET collation_connection = utf8_general_ci */;
/*!50001 CREATE ALGORITHM = UNDEFINED */
	/*!50013 DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER */
	/*!50001 VIEW `view_firearms` AS
	SELECT
		`rifle`.`make`               AS `Make`,
		`rifle`.`model`              AS `Model`,
		`rifle`.`name`               AS `Name`,
		`cartridge`.`cartridge_name` AS `Cartridge`,
		`rifle`.`caliber`            AS `Cal.`,
		`rifle`.`length`             AS `Barrel Length`,
		`rifle`.`twist`              AS `Twist`,
		`rifle`.`weight`             AS `Rifle Weight`,
		`rifle`.`feed`               AS `Feed`,
		`rifle`.`description`        AS `Description`
	FROM (`rifle`
		JOIN `cartridge` ON ((`rifle`.`cartridge_pkid` = `cartridge`.`pkid`)))
	ORDER BY `cartridge`.`cartridge_name`, `rifle`.`make` */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;

--
-- Final view structure for view `view_running_tasks`
--

/*!50001 DROP VIEW IF EXISTS `view_running_tasks`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8 */;
/*!50001 SET character_set_results = utf8 */;
/*!50001 SET collation_connection = utf8_general_ci */;
/*!50001 CREATE ALGORITHM = UNDEFINED */
	/*!50013 DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER */
	/*!50001 VIEW `view_running_tasks` AS
	SELECT
		`load_task`.`task_date`                                        AS `Task Date`,
		`load_task`.`task_count`                                       AS `Cartrage Count`,
		concat_ws(' ', `rifle`.`name`, `rifle`.`caliber`)              AS `Rifle`,
		`bullet`.`product`                                             AS `Bullet`,
		`powder`.`name`                                                AS `Powder`,
		`load_sheet`.`powder_weight`                                   AS `Powder Weight`,
		concat_ws(' ', `primer`.`manufacture`, `primer`.`item_number`) AS `Primer`,
		`case`.`description`                                           AS `Case`,
		`load_sheet`.`case_type`                                       AS `Case Type`,
		`load_sheet`.`case_sizing`                                     AS `Sizing Type`,
		`load_sheet`.`case_trimlength`                                 AS `Trim Length`,
		`load_sheet`.`coal_max`                                        AS `C.O.A.L. Max`,
		`load_sheet`.`coal_new`                                        AS `C.O.A.L. New`,
		`load_sheet`.`headspace`                                       AS `Headspace`,
		`load_task`.`isComplete`                                       AS `Is Complete`
	FROM ((((((`load_sheet`
		JOIN `load_task` ON ((`load_sheet`.`pkid` = `load_task`.`load_sheet_pkid`))) JOIN `rifle` ON ((`load_sheet`.`rifle_pkid` = `rifle`.`pkid`))) JOIN `bullet` ON ((`load_sheet`.`bullet_pkid` = `bullet`.`pkid`))) JOIN `powder` ON ((`load_sheet`.`powder_pkid` = `powder`.`pkid`))) JOIN `case` ON ((`load_sheet`.`case_pkid` = `case`.`pkid`))) JOIN `primer` ON ((`load_sheet`.`primer_pkid` = `primer`.`pkid`))) */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2017-07-11 17:53:24
