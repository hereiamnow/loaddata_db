-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0;
SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;
SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema loaddata_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `loaddata_db`;

-- -----------------------------------------------------
-- Schema loaddata_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `loaddata_db`
	DEFAULT CHARACTER SET utf8;
USE `loaddata_db`;

-- -----------------------------------------------------
-- Table `loaddata_db`.`cartridge`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loaddata_db`.`cartridge` (
	`pkid`           INT(11)     NOT NULL AUTO_INCREMENT,
	`cartridge_name` VARCHAR(45) NULL     DEFAULT NULL,
	`cartridge_type` VARCHAR(45) NULL     DEFAULT NULL,
	PRIMARY KEY (`pkid`),
	UNIQUE INDEX `pkid_UNIQUE` (`pkid` ASC)
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 10
	DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `loaddata_db`.`bullet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loaddata_db`.`bullet` (
	`pkid`              INT(11)       NOT NULL AUTO_INCREMENT,
	`item_number`       VARCHAR(25)   NULL     DEFAULT NULL,
	`company`           VARCHAR(45)   NULL     DEFAULT NULL,
	`product`           VARCHAR(45)   NOT NULL,
	`cartridge_pkid`    INT(11)       NOT NULL,
	`cartridge`         VARCHAR(100)  NULL     DEFAULT NULL,
	`caliber`           DECIMAL(4, 3) NOT NULL,
	`weight`            DECIMAL(4, 1) NOT NULL,
	`c_o_l`             DECIMAL(4, 3) NULL     DEFAULT NULL,
	`bc_g1`             DECIMAL(4, 3) NULL     DEFAULT NULL
	COMMENT 'Ballistic Coefficient (G1)',
	`bc_g7`             DECIMAL(4, 3) NULL     DEFAULT NULL
	COMMENT 'Ballistic Coefficient (G7)',
	`sectional_density` DECIMAL(4, 3) NULL     DEFAULT NULL,
	`description`       VARCHAR(555)  NULL     DEFAULT NULL,
	`lastupdate`        TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`, `cartridge_pkid`),
	UNIQUE INDEX `pkid_UNIQUE` (`pkid` ASC),
	UNIQUE INDEX `item_number_UNIQUE` (`item_number` ASC),
	INDEX `fk_bullet_cartridge1_idx` (`cartridge_pkid` ASC),
	CONSTRAINT `fk_bullet_cartridge1`
	FOREIGN KEY (`cartridge_pkid`)
	REFERENCES `loaddata_db`.`cartridge` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 26
	DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `loaddata_db`.`case`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loaddata_db`.`case` (
	`pkid`         INT(11)     NOT NULL AUTO_INCREMENT,
	`caliber`      VARCHAR(45) NULL     DEFAULT NULL,
	`make`         VARCHAR(45) NULL     DEFAULT NULL,
	`lot`          VARCHAR(45) NULL     DEFAULT NULL,
	`name`         VARCHAR(45) NULL     DEFAULT NULL,
	`description`  VARCHAR(45) NULL     DEFAULT NULL,
	`finish`       VARCHAR(45) NULL     DEFAULT NULL,
	`condition`    VARCHAR(45) NULL     DEFAULT NULL,
	`trim_length`  VARCHAR(45) NULL     DEFAULT NULL,
	`isFireformed` TINYINT(1)  NULL     DEFAULT NULL,
	`isPrimed`     TINYINT(1)  NULL     DEFAULT NULL,
	`count`        INT(11)     NULL     DEFAULT NULL,
	`lastupdate`   TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`),
	UNIQUE INDEX `pkid_UNIQUE` (`pkid` ASC)
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 3
	DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `loaddata_db`.`powder`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loaddata_db`.`powder` (
	`pkid`        INT(11)       NOT NULL AUTO_INCREMENT,
	`manufacture` VARCHAR(55)   NULL     DEFAULT NULL,
	`name`        VARCHAR(55)   NULL     DEFAULT NULL,
	`type`        VARCHAR(55)   NULL     DEFAULT NULL,
	`pounds`      DECIMAL(4, 1) NULL     DEFAULT NULL,
	`cp_pd`       DECIMAL(5, 2) NULL     DEFAULT NULL
	COMMENT 'Cost Per Pound',
	`description` LONGTEXT      NULL     DEFAULT NULL,
	`lastupdate`  TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`),
	UNIQUE INDEX `pkid_UNIQUE` (`pkid` ASC)
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 33
	DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `loaddata_db`.`load_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loaddata_db`.`load_data` (
	`pkid`           INT(11)       NOT NULL AUTO_INCREMENT,
	`cartridge`      VARCHAR(100)  NULL     DEFAULT NULL,
	`cartridge_pkid` INT(11)       NOT NULL,
	`bullet_pkid`    INT(11)       NOT NULL,
	`powder_pkid`    INT(11)       NOT NULL,
	`2350`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`2450`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`2550`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`2600`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`2650`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`2700`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`2750`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`2800`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`2850`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`2900`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`2950`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`3000`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`3050`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`3100`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`3150`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`3200`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`3250`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`3300`           DECIMAL(3, 1) NULL     DEFAULT NULL,
	`lastupdate`     TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`, `cartridge_pkid`, `bullet_pkid`, `powder_pkid`),
	INDEX `fk_load_data_bullet1_idx` (`bullet_pkid` ASC),
	INDEX `fk_load_data_powder1_idx` (`powder_pkid` ASC),
	INDEX `fk_load_data_cartridge1_idx` (`cartridge_pkid` ASC),
	CONSTRAINT `fk_load_data_bullet1`
	FOREIGN KEY (`bullet_pkid`)
	REFERENCES `loaddata_db`.`bullet` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_data_cartridge1`
	FOREIGN KEY (`cartridge_pkid`)
	REFERENCES `loaddata_db`.`cartridge` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_data_powder1`
	FOREIGN KEY (`powder_pkid`)
	REFERENCES `loaddata_db`.`powder` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 14
	DEFAULT CHARACTER SET = utf8
	COMMENT = 'data taken from bullet manual';

-- -----------------------------------------------------
-- Table `loaddata_db`.`primer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loaddata_db`.`primer` (
	`pkid`        INT(11)       NOT NULL AUTO_INCREMENT,
	`item_number` VARCHAR(255)  NULL     DEFAULT NULL,
	`type`        VARCHAR(100)  NULL     DEFAULT NULL,
	`manufacture` VARCHAR(255)  NULL     DEFAULT NULL,
	`name`        VARCHAR(255)  NULL     DEFAULT NULL,
	`description` LONGTEXT      NULL     DEFAULT NULL,
	`count`       INT(11)       NULL     DEFAULT NULL,
	`cp_hundred`  DECIMAL(5, 2) NULL     DEFAULT NULL
	COMMENT 'Cost Per Hundred',
	`cp_thousand` DECIMAL(5, 2) NULL     DEFAULT NULL
	COMMENT 'Cost Per Thousand',
	`lastupdate`  TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`),
	UNIQUE INDEX `pkid_UNIQUE` (`pkid` ASC)
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 50
	DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `loaddata_db`.`rifle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loaddata_db`.`rifle` (
	`pkid`           INT(11)      NOT NULL AUTO_INCREMENT,
	`cartridge_pkid` INT(11)      NOT NULL,
	`cartridge`      VARCHAR(100) NULL     DEFAULT NULL,
	`make`           VARCHAR(45)  NULL     DEFAULT NULL,
	`model`          VARCHAR(45)  NULL     DEFAULT NULL,
	`name`           VARCHAR(45)  NULL     DEFAULT NULL,
	`description`    VARCHAR(45)  NULL     DEFAULT NULL,
	`length`         VARCHAR(45)  NULL     DEFAULT NULL,
	`twist`          VARCHAR(45)  NULL     DEFAULT NULL,
	`caliber`        VARCHAR(45)  NULL     DEFAULT NULL,
	`weight`         VARCHAR(45)  NULL     DEFAULT NULL,
	`feed`           VARCHAR(45)  NULL     DEFAULT NULL,
	`lastupdate`     TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`, `cartridge_pkid`),
	UNIQUE INDEX `pkid_UNIQUE` (`pkid` ASC),
	INDEX `fk_rifle_cartridge1_idx` (`cartridge_pkid` ASC),
	CONSTRAINT `fk_rifle_cartridge1`
	FOREIGN KEY (`cartridge_pkid`)
	REFERENCES `loaddata_db`.`cartridge` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 5
	DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `loaddata_db`.`load_sheet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loaddata_db`.`load_sheet` (
	`pkid`            INT(11)       NOT NULL AUTO_INCREMENT,
	`load_date`       VARCHAR(45)   NULL     DEFAULT NULL
	COMMENT 'Date of Task',
	`load_name`       VARCHAR(155)  NULL     DEFAULT NULL
	COMMENT 'Name of Load',
	`rifle_pkid`      INT(11)       NOT NULL,
	`bullet_pkid`     INT(11)       NOT NULL,
	`powder_pkid`     INT(11)       NOT NULL,
	`powder_weight`   DECIMAL(3, 1) NOT NULL,
	`primer_pkid`     INT(11)       NOT NULL,
	`case_pkid`       INT(11)       NOT NULL,
	`case_type`       VARCHAR(45)   NULL     DEFAULT NULL
	COMMENT 'Brand or Type of Brass',
	`case_sizing`     VARCHAR(45)   NOT NULL
	COMMENT 'Full Length, Neck,etc',
	`case_trimlength` DECIMAL(4, 3) NOT NULL
	COMMENT ' length of the case only',
	`coal_max`        DECIMAL(4, 3) NOT NULL
	COMMENT 'come from load data?',
	`coal_new`        DECIMAL(4, 3) NOT NULL,
	`headspace`       DECIMAL(4, 3) NULL     DEFAULT NULL,
	`lastupdate`      TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`cartridge_pkid`  INT(11)       NOT NULL,
	PRIMARY KEY (`pkid`, `rifle_pkid`, `bullet_pkid`, `powder_pkid`, `primer_pkid`, `case_pkid`, `cartridge_pkid`),
	INDEX `fk_load_sheet_rifle1_idx` (`rifle_pkid` ASC),
	INDEX `fk_load_sheet_primer1_idx` (`primer_pkid` ASC),
	INDEX `fk_load_sheet_powder1_idx` (`powder_pkid` ASC),
	INDEX `fk_load_sheet_case1_idx` (`case_pkid` ASC),
	INDEX `fk_load_sheet_bullet1_idx` (`bullet_pkid` ASC),
	INDEX `fk_load_sheet_cartridge1_idx` (`cartridge_pkid` ASC),
	CONSTRAINT `fk_load_sheet_bullet1`
	FOREIGN KEY (`bullet_pkid`)
	REFERENCES `loaddata_db`.`bullet` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_sheet_cartridge1`
	FOREIGN KEY (`cartridge_pkid`)
	REFERENCES `loaddata_db`.`cartridge` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_sheet_case1`
	FOREIGN KEY (`case_pkid`)
	REFERENCES `loaddata_db`.`case` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_sheet_powder1`
	FOREIGN KEY (`powder_pkid`)
	REFERENCES `loaddata_db`.`powder` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_sheet_primer1`
	FOREIGN KEY (`primer_pkid`)
	REFERENCES `loaddata_db`.`primer` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT `fk_load_sheet_rifle1`
	FOREIGN KEY (`rifle_pkid`)
	REFERENCES `loaddata_db`.`rifle` (`pkid`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 4
	DEFAULT CHARACTER SET = utf8
	COMMENT = 'Contains data for a loading task\nrecords date, name , count of task, \nreferencs rifle, primer, bullet tables';

-- -----------------------------------------------------
-- Table `loaddata_db`.`load_sheet_results`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loaddata_db`.`load_sheet_results` (
    `pkid` INT(11) NOT NULL,
    `result_date` TIME NULL DEFAULT NULL,
    `result_time` TIME NULL DEFAULT NULL,
    `result_outside_temp` DECIMAL(2 , 0 ) NULL DEFAULT NULL,
    `lastupdate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`pkid`)
)  ENGINE=INNODB DEFAULT CHARACTER SET=UTF8;

-- -----------------------------------------------------
-- Table `loaddata_db`.`load_task`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loaddata_db`.`load_task` (
	`pkid`            INT(11)    NOT NULL AUTO_INCREMENT,
	`task_date`       DATE       NULL     DEFAULT NULL,
	`task_count`      INT(11)    NULL     DEFAULT '0',
	`load_sheet_pkid` INT(11)    NOT NULL,
	`isComplete`      TINYINT(1) NULL     DEFAULT '0',
	`lastupdate`      TIMESTAMP  NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`pkid`, `load_sheet_pkid`),
	INDEX `fk_load_task_load_sheet1_idx` (`load_sheet_pkid` ASC)
)
	ENGINE = InnoDB
	AUTO_INCREMENT = 3
	DEFAULT CHARACTER SET = utf8;

USE `loaddata_db`;

-- -----------------------------------------------------
-- View `loaddata_db`.`running_tasks`
-- -----------------------------------------------------
USE `loaddata_db`;
CREATE OR REPLACE ALGORITHM = UNDEFINED
	DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER VIEW `loaddata_db`.`running_tasks` AS
	SELECT
		`loaddata_db`.`load_task`.`task_date`                                                        AS `Task Date`,
		`loaddata_db`.`load_task`.`task_count`                                                       AS `Cartrage Count`,
		concat_ws(' ', `loaddata_db`.`rifle`.`name`, `loaddata_db`.`rifle`.`caliber`)              AS `Rifle`,
		`loaddata_db`.`bullet`.`product`                                                             AS `Bullet`,
		`loaddata_db`.`powder`.`name`                                                                AS `Powder`,
		`loaddata_db`.`load_sheet`.`powder_weight`                                                   AS `Powder Weight`,
		concat_ws(' ', `loaddata_db`.`primer`.`manufacture`, `loaddata_db`.`primer`.`item_number`) AS `Primer`,
		`loaddata_db`.`case`.`description`                                                           AS `Case`,
		`loaddata_db`.`load_sheet`.`case_type`                                                       AS `Case Type`,
		`loaddata_db`.`load_sheet`.`case_sizing`                                                     AS `Sizing Type`,
		`loaddata_db`.`load_sheet`.`case_trimlength`                                                 AS `Trim Length`,
		`loaddata_db`.`load_sheet`.`coal_max`                                                        AS `C.O.A.L. Max`,
		`loaddata_db`.`load_sheet`.`coal_new`                                                        AS `C.O.A.L. New`,
		`loaddata_db`.`load_sheet`.`headspace`                                                       AS `Headspace`,
		`loaddata_db`.`load_task`.`isComplete`                                                       AS `Is Complete`
	FROM ((((((`loaddata_db`.`load_sheet`
		JOIN `loaddata_db`.`load_task` ON ((`loaddata_db`.`load_sheet`.`pkid` = `loaddata_db`.`load_task`.`load_sheet_pkid`))) JOIN `loaddata_db`.`rifle` ON ((`loaddata_db`.`load_sheet`.`rifle_pkid` = `loaddata_db`.`rifle`.`pkid`))) JOIN `loaddata_db`.`bullet` ON ((`loaddata_db`.`load_sheet`.`bullet_pkid` = `loaddata_db`.`bullet`.`pkid`))) JOIN `loaddata_db`.`powder` ON ((`loaddata_db`.`load_sheet`.`powder_pkid` = `loaddata_db`.`powder`.`pkid`))) JOIN `loaddata_db`.`case` ON ((`loaddata_db`.`load_sheet`.`case_pkid` = `loaddata_db`.`case`.`pkid`))) JOIN `loaddata_db`.`primer` ON ((`loaddata_db`.`load_sheet`.`primer_pkid` = `loaddata_db`.`primer`.`pkid`)));

-- -----------------------------------------------------
-- View `loaddata_db`.`view_556_loaddata`
-- -----------------------------------------------------
USE `loaddata_db`;
CREATE OR REPLACE ALGORITHM = UNDEFINED
	DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER VIEW `loaddata_db`.`view_556_loaddata` AS
	SELECT
		`loaddata_db`.`cartridge`.`cartridge_name`                                             AS `Cartrage`,
		`loaddata_db`.`bullet`.`weight`                                                        AS `Bullet Weight`,
		concat_ws(', ', `loaddata_db`.`bullet`.`product`, `loaddata_db`.`bullet`.`company`)  AS `Bullet`,
		concat_ws(', ', `loaddata_db`.`powder`.`name`, `loaddata_db`.`powder`.`manufacture`) AS `Powder`,
		`loaddata_db`.`load_data`.`2700`                                                       AS `2700`,
		`loaddata_db`.`load_data`.`2750`                                                       AS `2750`,
		`loaddata_db`.`load_data`.`2800`                                                       AS `2800`,
		`loaddata_db`.`load_data`.`2850`                                                       AS `2850`,
		`loaddata_db`.`load_data`.`2900`                                                       AS `2900`,
		`loaddata_db`.`load_data`.`2950`                                                       AS `2950`,
		`loaddata_db`.`load_data`.`3000`                                                       AS `3000`,
		`loaddata_db`.`load_data`.`3050`                                                       AS `3050`,
		`loaddata_db`.`load_data`.`3100`                                                       AS `3100`,
		`loaddata_db`.`load_data`.`3150`                                                       AS `3150`,
		`loaddata_db`.`load_data`.`3200`                                                       AS `3200`,
		`loaddata_db`.`load_data`.`3300`                                                       AS `3300`,
		`loaddata_db`.`load_data`.`3250`                                                       AS `3250`
	FROM (((`loaddata_db`.`load_data`
		JOIN `loaddata_db`.`bullet` ON ((`loaddata_db`.`load_data`.`bullet_pkid` = `loaddata_db`.`bullet`.`pkid`))) JOIN `loaddata_db`.`powder` ON ((`loaddata_db`.`load_data`.`powder_pkid` = `loaddata_db`.`powder`.`pkid`))) JOIN `loaddata_db`.`cartridge` ON (((`loaddata_db`.`load_data`.`cartridge_pkid` = `loaddata_db`.`cartridge`.`pkid`) AND (`loaddata_db`.`bullet`.`cartridge_pkid` = `loaddata_db`.`cartridge`.`pkid`))))
	WHERE (`loaddata_db`.`cartridge`.`cartridge_name` = 5.56)
	ORDER BY `loaddata_db`.`cartridge`.`cartridge_name`, `loaddata_db`.`bullet`.`company`, `loaddata_db`.`bullet`.`weight`;

-- -----------------------------------------------------
-- View `loaddata_db`.`view_65_loaddata`
-- -----------------------------------------------------
USE `loaddata_db`;
CREATE OR REPLACE ALGORITHM = UNDEFINED
	DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER VIEW `loaddata_db`.`view_65_loaddata` AS
	SELECT
		`loaddata_db`.`cartridge`.`cartridge_name`                                             AS `Cartrage`,
		`loaddata_db`.`bullet`.`weight`                                                        AS `Bullet Weight`,
		concat_ws(', ', `loaddata_db`.`bullet`.`product`, `loaddata_db`.`bullet`.`company`)  AS `Bullet`,
		concat_ws(', ', `loaddata_db`.`powder`.`name`, `loaddata_db`.`powder`.`manufacture`) AS `Powder`,
		`loaddata_db`.`load_data`.`2700`                                                       AS `2700`,
		`loaddata_db`.`load_data`.`2750`                                                       AS `2750`,
		`loaddata_db`.`load_data`.`2800`                                                       AS `2800`,
		`loaddata_db`.`load_data`.`2850`                                                       AS `2850`,
		`loaddata_db`.`load_data`.`2900`                                                       AS `2900`,
		`loaddata_db`.`load_data`.`2950`                                                       AS `2950`,
		`loaddata_db`.`load_data`.`3000`                                                       AS `3000`,
		`loaddata_db`.`load_data`.`3050`                                                       AS `3050`,
		`loaddata_db`.`load_data`.`3100`                                                       AS `3100`,
		`loaddata_db`.`load_data`.`3150`                                                       AS `3150`,
		`loaddata_db`.`load_data`.`3200`                                                       AS `3200`,
		`loaddata_db`.`load_data`.`3300`                                                       AS `3300`,
		`loaddata_db`.`load_data`.`3250`                                                       AS `3250`
	FROM (((`loaddata_db`.`load_data`
		JOIN `loaddata_db`.`bullet` ON ((`loaddata_db`.`load_data`.`bullet_pkid` = `loaddata_db`.`bullet`.`pkid`))) JOIN `loaddata_db`.`powder` ON ((`loaddata_db`.`load_data`.`powder_pkid` = `loaddata_db`.`powder`.`pkid`))) JOIN `loaddata_db`.`cartridge` ON (((`loaddata_db`.`load_data`.`cartridge_pkid` = `loaddata_db`.`cartridge`.`pkid`) AND (`loaddata_db`.`bullet`.`cartridge_pkid` = `loaddata_db`.`cartridge`.`pkid`))))
	WHERE (`loaddata_db`.`cartridge`.`cartridge_name` = 6.5)
	ORDER BY `loaddata_db`.`cartridge`.`cartridge_name`, `loaddata_db`.`bullet`.`company`, `loaddata_db`.`bullet`.`weight`;

-- -----------------------------------------------------
-- View `loaddata_db`.`view_bullets`
-- -----------------------------------------------------
USE `loaddata_db`;
CREATE OR REPLACE ALGORITHM = UNDEFINED
	DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER VIEW `loaddata_db`.`view_bullets` AS
	SELECT
		`loaddata_db`.`cartridge`.`cartridge_name` AS `Cartridge`,
		`loaddata_db`.`bullet`.`company`           AS `Manufacture`,
		`loaddata_db`.`bullet`.`product`           AS `Product`,
		`loaddata_db`.`bullet`.`caliber`           AS `Caliber`,
		`loaddata_db`.`bullet`.`weight`            AS `Bullet Weight`,
		`loaddata_db`.`bullet`.`c_o_l`             AS `C.O.L.`,
		`loaddata_db`.`bullet`.`bc_g1`             AS `bc_g1`,
		`loaddata_db`.`bullet`.`sectional_density` AS `Sectional Density`
	FROM (`loaddata_db`.`bullet`
		JOIN `loaddata_db`.`cartridge` ON ((`loaddata_db`.`bullet`.`cartridge_pkid` = `loaddata_db`.`cartridge`.`pkid`)))
	ORDER BY `loaddata_db`.`cartridge`.`cartridge_name`, `loaddata_db`.`bullet`.`company`, `loaddata_db`.`bullet`.`weight`;

-- -----------------------------------------------------
-- View `loaddata_db`.`view_creedmoor_loaddata`
-- -----------------------------------------------------
USE `loaddata_db`;
CREATE OR REPLACE ALGORITHM = UNDEFINED
	DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER VIEW `loaddata_db`.`view_creedmoor_loaddata` AS
	SELECT
		`loaddata_db`.`cartridge`.`cartridge_name`                                             AS `Cartrage`,
		`loaddata_db`.`bullet`.`weight`                                                        AS `Bullet Weight`,
		concat_ws(', ', `loaddata_db`.`bullet`.`product`, `loaddata_db`.`bullet`.`company`)  AS `Bullet`,
		concat_ws(', ', `loaddata_db`.`powder`.`name`, `loaddata_db`.`powder`.`manufacture`) AS `Powder`,
		`loaddata_db`.`load_data`.`2700`                                                       AS `2700`,
		`loaddata_db`.`load_data`.`2750`                                                       AS `2750`,
		`loaddata_db`.`load_data`.`2800`                                                       AS `2800`,
		`loaddata_db`.`load_data`.`2850`                                                       AS `2850`,
		`loaddata_db`.`load_data`.`2900`                                                       AS `2900`,
		`loaddata_db`.`load_data`.`2950`                                                       AS `2950`,
		`loaddata_db`.`load_data`.`3000`                                                       AS `3000`,
		`loaddata_db`.`load_data`.`3050`                                                       AS `3050`,
		`loaddata_db`.`load_data`.`3100`                                                       AS `3100`,
		`loaddata_db`.`load_data`.`3150`                                                       AS `3150`,
		`loaddata_db`.`load_data`.`3200`                                                       AS `3200`,
		`loaddata_db`.`load_data`.`3300`                                                       AS `3300`,
		`loaddata_db`.`load_data`.`3250`                                                       AS `3250`
	FROM (((`loaddata_db`.`load_data`
		JOIN `loaddata_db`.`bullet` ON ((`loaddata_db`.`load_data`.`bullet_pkid` = `loaddata_db`.`bullet`.`pkid`))) JOIN `loaddata_db`.`powder` ON ((`loaddata_db`.`load_data`.`powder_pkid` = `loaddata_db`.`powder`.`pkid`))) JOIN `loaddata_db`.`cartridge` ON (((`loaddata_db`.`load_data`.`cartridge_pkid` = `loaddata_db`.`cartridge`.`pkid`) AND (`loaddata_db`.`bullet`.`cartridge_pkid` = `loaddata_db`.`cartridge`.`pkid`))))
	WHERE (`loaddata_db`.`cartridge`.`cartridge_name` = 6.5)
	ORDER BY `loaddata_db`.`cartridge`.`cartridge_name`, `loaddata_db`.`bullet`.`company`, `loaddata_db`.`bullet`.`weight`;

-- -----------------------------------------------------
-- View `loaddata_db`.`view_firearms`
-- -----------------------------------------------------
USE `loaddata_db`;
CREATE OR REPLACE ALGORITHM = UNDEFINED
	DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER VIEW `loaddata_db`.`view_firearms` AS
	SELECT
		`loaddata_db`.`rifle`.`make`               AS `Make`,
		`loaddata_db`.`rifle`.`model`              AS `Model`,
		`loaddata_db`.`rifle`.`name`               AS `Name`,
		`loaddata_db`.`cartridge`.`cartridge_name` AS `Cartridge`,
		`loaddata_db`.`rifle`.`caliber`            AS `Cal.`,
		`loaddata_db`.`rifle`.`length`             AS `Barrel Length`,
		`loaddata_db`.`rifle`.`twist`              AS `Twist`,
		`loaddata_db`.`rifle`.`weight`             AS `Rifle Weight`,
		`loaddata_db`.`rifle`.`feed`               AS `Feed`,
		`loaddata_db`.`rifle`.`description`        AS `Description`
	FROM (`loaddata_db`.`rifle`
		JOIN `loaddata_db`.`cartridge` ON ((`loaddata_db`.`rifle`.`cartridge_pkid` = `loaddata_db`.`cartridge`.`pkid`)))
	ORDER BY `loaddata_db`.`cartridge`.`cartridge_name`, `loaddata_db`.`rifle`.`make`;

-- -----------------------------------------------------
-- View `loaddata_db`.`view_running_tasks`
-- -----------------------------------------------------
USE `loaddata_db`;
CREATE OR REPLACE ALGORITHM = UNDEFINED
	DEFINER =`root`@`localhost`
	SQL SECURITY DEFINER VIEW `loaddata_db`.`view_running_tasks` AS
	SELECT
		`loaddata_db`.`load_task`.`task_date`                                                        AS `Task Date`,
		`loaddata_db`.`load_task`.`task_count`                                                       AS `Cartrage Count`,
		concat_ws(' ', `loaddata_db`.`rifle`.`name`, `loaddata_db`.`rifle`.`caliber`)              AS `Rifle`,
		`loaddata_db`.`bullet`.`product`                                                             AS `Bullet`,
		`loaddata_db`.`powder`.`name`                                                                AS `Powder`,
		`loaddata_db`.`load_sheet`.`powder_weight`                                                   AS `Powder Weight`,
		concat_ws(' ', `loaddata_db`.`primer`.`manufacture`, `loaddata_db`.`primer`.`item_number`) AS `Primer`,
		`loaddata_db`.`case`.`description`                                                           AS `Case`,
		`loaddata_db`.`load_sheet`.`case_type`                                                       AS `Case Type`,
		`loaddata_db`.`load_sheet`.`case_sizing`                                                     AS `Sizing Type`,
		`loaddata_db`.`load_sheet`.`case_trimlength`                                                 AS `Trim Length`,
		`loaddata_db`.`load_sheet`.`coal_max`                                                        AS `C.O.A.L. Max`,
		`loaddata_db`.`load_sheet`.`coal_new`                                                        AS `C.O.A.L. New`,
		`loaddata_db`.`load_sheet`.`headspace`                                                       AS `Headspace`,
		`loaddata_db`.`load_task`.`isComplete`                                                       AS `Is Complete`
	FROM ((((((`loaddata_db`.`load_sheet`
		JOIN `loaddata_db`.`load_task` ON ((`loaddata_db`.`load_sheet`.`pkid` = `loaddata_db`.`load_task`.`load_sheet_pkid`))) JOIN `loaddata_db`.`rifle` ON ((`loaddata_db`.`load_sheet`.`rifle_pkid` = `loaddata_db`.`rifle`.`pkid`))) JOIN `loaddata_db`.`bullet` ON ((`loaddata_db`.`load_sheet`.`bullet_pkid` = `loaddata_db`.`bullet`.`pkid`))) JOIN `loaddata_db`.`powder` ON ((`loaddata_db`.`load_sheet`.`powder_pkid` = `loaddata_db`.`powder`.`pkid`))) JOIN `loaddata_db`.`case` ON ((`loaddata_db`.`load_sheet`.`case_pkid` = `loaddata_db`.`case`.`pkid`))) JOIN `loaddata_db`.`primer` ON ((`loaddata_db`.`load_sheet`.`primer_pkid` = `loaddata_db`.`primer`.`pkid`)));

SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;
