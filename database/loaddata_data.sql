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
-- Dumping data for table `bullet`
--

LOCK TABLES `bullet` WRITE;
/*!40000 ALTER TABLE `bullet`
	DISABLE KEYS */;
INSERT INTO `bullet`
VALUES
	(1, '26100', 'HORNADY', '100 GR ELD MATCH', 5, NULL, 0.264, 100.0, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:04:53'),
	(2, '26175', 'HORNADY', '120 GR ELD MATCH', 5, NULL, 0.264, 120.0, NULL, 0.490, 0.250, 0.246, NULL, '2017-06-26 15:04:53'),
	(3, '26176', 'HORNADY', '123 GR ELD MATCH', 5, NULL, 0.264, 123.0, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:04:53'),
	(4, '26177', 'HORNADY', '130 GR ELD MATCH', 5, NULL, 0.264, 130.0, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:04:53'),
	(5, '26331', 'HORNADY', '140 GR ELD MATCH', 5, NULL, 0.264, 140.0, NULL, 0.650, 0.330, 0.287, NULL, '2017-06-26 15:04:53'),
	(6, '2635', 'HORNADY', '143 GR ELD-X', 5, NULL, 0.264, 143.0, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:04:53'),
	(7, '26333', 'HORNADY', '147 GR ELD MATCH', 5, NULL, 0.264, 147.0, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:04:53'),
	(8, '22601', 'HORNADY', ' 95 GR V-MAX', 5, NULL, 0.264, 95.0, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:04:53'),
	(9, '26302', 'HORNADY', '40 GR SST', 5, NULL, 0.264, 140.0, NULL, 0.520, NULL, 0.287, 'Super Shock Tip. whitetails, as well as most North American game animals from antelope to moose and similar-sized African plains game', '2017-06-26 15:04:53'),
	(12, '2640', 'HORNADY', '160 GR INTERLOCK RN', 5, NULL, 0.264, 160.0, NULL, 0.280, NULL, 0.328, NULL, '2017-06-26 15:04:53'),
	(13, '22271', 'HORNADY', '55 GR V-MAX', 3, NULL, 0.224, 55.0, NULL, 0.260, NULL, 0.157, 'Red Tip', '2017-06-26 15:04:53'),
	(14, '22281', 'HORNADY', '60 GR V-MAX', 3, NULL, 0.224, 60.0, 2.250, 0.265, 0.000, 0.171, NULL, '2017-06-26 15:04:53'),
	(15, '22791', 'HORNADY', '75 GR ELD MATCH', 3, NULL, 0.224, 75.0, NULL, 0.470, 0.240, 0.214, NULL, '2017-06-26 15:04:53'),
	(16, '22796', 'HORNADY', '75 GR BTHP', 3, NULL, 0.224, 75.0, NULL, 0.400, NULL, 0.214, NULL, '2017-06-26 15:04:53'),
	(17, '2279', 'HORNADY', '75 GR BTHP', 3, NULL, 0.224, 75.0, NULL, 0.400, NULL, 0.214, NULL, '2017-06-26 15:04:53'),
	(18, '22242', 'HORNADY', '40 GR Z-MAX BOX OF 500', 3, NULL, 0.224, 40.0, NULL, 0.200, NULL, 0.114, 'Zombie Max Green Tip', '2017-06-26 15:04:53'),
	(19, '22262', 'HORNADY', '50 GR Z-MAX BOX OF 500', 3, NULL, 0.224, 50.0, NULL, 0.240, NULL, 0.142, 'Zombie Max Green Tip', '2017-06-26 15:04:53'),
	(20, '2229', 'HORNADY', '45 GR HP BEE', 3, NULL, 0.224, 45.0, NULL, 0.110, NULL, 0.128, NULL, '2017-06-26 15:04:53'),
	(21, NULL, 'BARNES', 'RRLP', 3, NULL, 0.224, 55.0, 2.240, 0.225, NULL, 0.157, 'LC Brass', '2017-06-26 15:04:53'),
	(22, NULL, 'NOSLER', '60 GR SPITZER', 1, NULL, 0.224, 60.0, 2.260, 0.270, NULL, 0.171, '(FAST TWIST)', '2017-06-26 15:04:53'),
	(23, NULL, 'NOSLER', '77/80 GR CUSTOM COMPETITION', 3, NULL, 0.224, 77.0, 2.260, 0.340, NULL, 0.219, NULL, '2017-06-26 15:04:53'),
	(24, '	22424', 'BERGER BULLETS', '82 gr Long Range BT Target', 3, NULL, 0.224, 82.0, NULL, 0.440, 0.225, 0.233, NULL, '2017-06-26 15:04:53'),
	(25, '1375', 'SIERRA', '60 GR HP', 1, NULL, 0.224, 60.0, 2.250, NULL, NULL, NULL, NULL, '2017-06-26 15:04:53');
/*!40000 ALTER TABLE `bullet`
	ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cartridge`
--

LOCK TABLES `cartridge` WRITE;
/*!40000 ALTER TABLE `cartridge`
	DISABLE KEYS */;
INSERT INTO `cartridge`
VALUES
	(1, '223 Remington', 'Rifle'),
	(2, '223 Remington Service Rifle Data', 'Rifle'),
	(3, '5.56mm NATO', 'Rifle'),
	(4, '243 Winchester', 'Rifle'),
	(5, '6.5 Creedmoor', 'Rifle'),
	(6, '308 Winchester ', 'Rifle'),
	(7, '308 Winchester Service Rifle', 'Rifle'),
	(8, '6mm Remington', 'Rifle'),
	(9, '257 Roberts', 'Rifle');
/*!40000 ALTER TABLE `cartridge`
	ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `case`
--

LOCK TABLES `case` WRITE;
/*!40000 ALTER TABLE `case`
	DISABLE KEYS */;
INSERT INTO `case`
VALUES
	(1, '.264', 'HORNADY', NULL, 'BRASS', 'HORNADY BRASS', 'BRASS', 'NEW', '1.915', 1, 0, 200, '2017-06-24 18:03:38'),
	(2, '.264', 'HORNADY', NULL, 'BRASS', 'HORNADY BRASS', 'BRASS', 'NEW', '1.910', 0, 0, 200, '2017-06-24 18:03:38');
/*!40000 ALTER TABLE `case`
	ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `load_data`
--

LOCK TABLES `load_data` WRITE;
/*!40000 ALTER TABLE `load_data`
	DISABLE KEYS */;
INSERT INTO `load_data`
VALUES
	(0, NULL, 5, 5, 7, NULL, NULL, NULL, NULL, NULL, 36.0, 36.8, 37.6, 38.4, 39.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, '2017-06-26 15:06:51'),
	(1, NULL, 5, 5, 7, NULL, NULL, NULL, NULL, NULL, 37.0, 37.9, 38.7, 39.6, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, NULL, '2017-06-26 15:06:51'),
	(6, NULL, 3, 14, 20, NULL, NULL, NULL, NULL, NULL, 17.6, NULL, 19.3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:06:51'),
	(7, NULL, 3, 21, 9, 22.4, NULL, NULL, NULL, NULL, NULL, 24.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:06:51'),
	(8, NULL, 1, 22, 7, NULL, NULL, NULL, NULL, NULL, NULL, 22.5, NULL, 23.5, NULL, NULL, 24.5, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:06:51'),
	(9, NULL, 3, 23, 7, NULL, 22.0, 23.0, NULL, 24.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:06:51'),
	(10, NULL, 3, 23, 26, NULL, 21.5, NULL, 22.5, 23.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:06:51'),
	(11, NULL, 1, 25, 9, NULL, NULL, NULL, 23.5, NULL, 24.1, NULL, 24.7, NULL, 25.3, 25.6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:06:51'),
	(12, NULL, 1, 25, 26, NULL, NULL, NULL, 23.9, NULL, 24.6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:06:51'),
	(13, NULL, 1, 25, 7, NULL, NULL, NULL, 24.3, NULL, 25.0, NULL, 25.7, NULL, 26.4, 26.7, 27.1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-26 15:06:52');
/*!40000 ALTER TABLE `load_data`
	ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `load_sheet`
--

LOCK TABLES `load_sheet` WRITE;
/*!40000 ALTER TABLE `load_sheet`
	DISABLE KEYS */;
INSERT INTO `load_sheet`
VALUES
	(1, '06/24/2017', '6.5 Creedmoor 140gr Match', 2, 5, 22, 40.2, 45, 1, 'FF', 'NECK', 1.790, 1.800, 1.815, 1.643, '2017-06-26 16:27:29', 5),
	(2, '06/24/2017', '6.5 Creedmoor 140gr Match', 2, 3, 22, 40.3, 45, 1, 'FF', 'NECK', 1.790, 1.800, 1.810, 1.643, '2017-06-26 16:27:29', 5);
/*!40000 ALTER TABLE `load_sheet`
	ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `load_sheet_results`
--

LOCK TABLES `load_sheet_results` WRITE;
/*!40000 ALTER TABLE `load_sheet_results`
	DISABLE KEYS */;
/*!40000 ALTER TABLE `load_sheet_results`
	ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `load_task`
--

LOCK TABLES `load_task` WRITE;
/*!40000 ALTER TABLE `load_task`
	DISABLE KEYS */;
INSERT INTO `load_task`
VALUES
	(1, '2017-06-24', 10, 1, 0, '2017-06-24 20:27:14'),
	(2, '2017-06-24', 20, 2, 0, '2017-06-24 22:09:26');
/*!40000 ALTER TABLE `load_task`
	ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `powder`
--

LOCK TABLES `powder` WRITE;
/*!40000 ALTER TABLE `powder`
	DISABLE KEYS */;
INSERT INTO `powder`
VALUES
	(7, 'HODGDON POWDER CO., INC.', 'VARGET', NULL, 3.0, 29.00, 'VARGET features small extruded grains for uniform metering, insensitivity to hot/cold temperatures and higher energy for improved velocities over other powders in its burning speed class. Easy ignition and clean burning characterize other features that translate into superb accuracy, higher scores and more clean, one shot kills. The perfect powder for competitive Match shooting 223 Remington and Heavy bullets. Outstanding performance and velocity can be obtained in such popular cartridges as the 223 Remington, 22-250 Remington, 308 Winchester, 30-06, 375 H&H and many more. ', '2017-06-25 18:38:14'),
	(9, 'HODGDON POWDER CO., INC.', 'H335', NULL, 1.0, 25.00, 'Hodgdon H335 originated as a military powder, used for the 5.56 NATO, or 223 Remington as handloaders know it. Obviously, it sees endless use in the 222 Remington, 223 Remington and other small cartridges. In particular, prairie dog shooters will find this a favorite small rifle powder. ', '2017-06-25 18:37:23'),
	(20, 'ALLIANT POWDER', 'AR-Comp', NULL, 1.0, 27.00, 'When it comes to reloading AR-style rifles as well as other rifles, there\'s a new powder choice on the market AR-Comp from Alliant Powder. Alliant\'s new AR-Comp is the ideal powder for fast action, high volume AR shooters as well as those who enjoy shooting traditional rifles. Developed specifically for AR-style rifles and ideally suited for heavy 223 and 308 match bullets, AR-Comp delivers high performance ignition each and every time. ', '2017-06-25 18:36:55'),
	(22, 'ALLIANT POWDER', 'RELOADER 17', NULL, 1.0, 27.00, 'With a similar burn speed to IMR\'s 4350 powder, Reloder 17 was designed for short magnum cases but can also be used in medium rifle loads. With Reloder 17 reloaders have a powder that meters easy and consistently while providing maximum velocity even in extreme weather', '2017-06-25 18:36:55'),
	(26, 'IMR POWDERS', 'IMR 4064', NULL, 1.0, 28.00, 'IMR 4064 is one of the most versatile propellant in the IMR line, used for 223 Remington, 22-250 Remington, 220 Swift, 6mm Remington, 243 Winchester Super Short Magnum, 308 Winchester, 338 Winchester Magnum, and the list goes on and on. Versatility with uniformity and accuracy. ', '2017-06-25 18:35:24'),
	(32, 'WINCHESTER', '748', 'Ball Powder', 1.0, 28.00, 'The low flame temperature of 748 helps extend barrel life and can be used in a wide variety of centerfire rifle loads including 223 Remington, 30-30 Winchester and 308 Winchester.', '2017-06-25 18:35:24');
/*!40000 ALTER TABLE `powder`
	ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `primer`
--

LOCK TABLES `primer` WRITE;
/*!40000 ALTER TABLE `primer`
	DISABLE KEYS */;
INSERT INTO `primer`
VALUES
	(31, '22606', 'SMALL RIFLE', 'REMINGTON', 'Remington 6 1/2 Small Rifle Primer', 'Within every Remington primer is a group of subcomponents assembled to exceptionally tight tolerances. Primer cup dimensions are controlled to .0001\", and the priming mix is specially formulated for consistent ignition with a wide variety of powder types. Primers are tested for reliability from -20 degrees F to +150 degrees F. The unique tripod anvil design creates a larger strike area with maximum sensitivity, even with off center firing pin strikes. ', 0, NULL, 36.50, '2017-06-25 19:14:49'),
	(34, '205', 'SMALL RIFLE', 'FEDERAL', 'Federal Small Rifle Primers #205', NULL, 0, NULL, 36.00, '2017-06-25 19:01:17'),
	(35, '210', 'LARGE RIFLE', 'FEDERAL', '210 Large Rifle Primers', NULL, 0, NULL, NULL, '0000-00-00 00:00:00'),
	(36, '215', 'MAGINUM LARGE RIFLE', 'FEDERAL', 'Federal Large Rifle Magnum Primers #215', 'The same primers that Federal uses in their high-quality ammunition. Made to exacting standards for dependable ignition.', 0, NULL, 38.00, '2017-06-25 19:09:06'),
	(37, '0017', 'SMALL RIFLE', 'CCI', '#450 Small Rifle Magnum Primers', NULL, 0, NULL, 36.00, '2017-06-25 19:01:17'),
	(38, '13', 'SMALL RIFLE', 'CCI', '#400 Small Rifle Primers ', NULL, 0, NULL, 35.00, '2017-06-25 18:58:22'),
	(39, '0011', 'LARGE RIFLE', 'CCI', '#200 Large Rifle Primers ', '', 100, 4.00, 35.00, '2017-06-25 19:11:23'),
	(40, '0015', 'MAGINUM LARGE RIFLE', 'CCI', 'CCI #250 Large Rifle Magnum Primers', 'CCI Primers are continuously tested and improved. As a result today\'s CCI primers are more sensitive, easier to seat and more compatible with progressive and automated loading equipment than ever before. They utilize modern non-corrosive and non-mercuric initiator mixes for the cleanest burn possible.', 0, NULL, 37.00, '2017-06-25 19:09:06'),
	(41, '0010', 'LARGE RIFLE', 'CCI', '#BR2 Large Rifle Benchrest Primers ', NULL, 0, NULL, 60.00, '2017-06-25 18:56:43'),
	(42, '0019', 'SMALL RIFLE', 'CCI', '#BR4 Small Rifle Benchrest Primers ', NULL, 0, NULL, 57.00, '2017-06-25 18:56:43'),
	(43, '1', 'SMALL RIFLE - MILITARY', 'CCI', 'No.41 5.56mm NATO-Spec Small Rifle Primers ', NULL, 800, NULL, 43.00, '2017-06-25 19:11:23'),
	(44, 'WSR', 'SMALL RIFLE', 'WINCHESTER', 'Winchester Small Rifle Primers #6-1/2', NULL, 0, NULL, 33.50, '2017-06-25 18:58:22'),
	(45, 'WLR', 'LARGE RIFLE', 'WINCHESTER', 'Winchester Large Rifle Primers', '', 100, 4.00, 33.50, '2017-06-25 19:11:23'),
	(46, 'WLRM', 'MAGINUM LARGE RIFLE', 'WINCHESTER', 'Winchester Large Magnum Rifle Primers #8-1/2M', 'These non-corrosive, all weather primers deliver fast, dependable ignition under any shooting condition. Primers are constantly and rigorously tested for consistency and sensitivity at temperatures and conditions far beyond the range of normal usage. Winchester guarantees better sensitivity for more positive firing in all guns, carefully-controlled weights of primer mixtures, consistency in size and quality, precise measurements and tolerances for anvil heights and stability in extremes of temperatures and humidity.', 0, NULL, 38.50, '2017-06-25 19:09:06'),
	(47, '22628', 'SMALL RIFLE', 'REMINGTON', 'Remington 7 1/2 Small Rifle Bench Rest Primers', NULL, 0, NULL, 36.50, '2017-06-25 19:01:17'),
	(48, '22608', 'LARGE RIFLE', 'REMINGTON', 'Remington 9 1/2 Large Rifle Primers', NULL, 0, 4.00, 36.50, '2017-06-25 18:56:43'),
	(49, '22622', 'MAGINUM LARGE RIFLE', 'REMINGTON', 'Remington Large Rifle Magnum Primers #9-1/2M', 'Within every Remington primer is a group of subcomponents assembled to exceptionally tight tolerances. Primer cup dimensions are controlled to .0001\", and the priming mix is specially formulated for consistent ignition with a wide variety of powder types. Primers are tested for reliability from -20 degrees F to +150 degrees F. The unique tripod anvil design creates a larger strike area with maximum sensitivity, even with off center firing pin strikes.', 0, NULL, 36.50, '2017-06-25 19:09:06');
/*!40000 ALTER TABLE `primer`
	ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `rifle`
--

LOCK TABLES `rifle` WRITE;
/*!40000 ALTER TABLE `rifle`
	DISABLE KEYS */;
INSERT INTO `rifle`
VALUES
	(1, 3, NULL, 'POF', 'POF 145', 'POF 415', '5.65 NATO', '14.5', '1/8', '.223', '10', 'SEMI-AUTO', '2017-06-26 15:05:46'),
	(2, 5, NULL, 'RUGER', 'RPR', 'RUGER PERSISION RIFLE', '6.5 CREEDMOOR', '24', '1/8', '.264', '10.5', 'BOLT', '2017-06-26 15:05:46');
/*!40000 ALTER TABLE `rifle`
	ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2017-07-11 17:58:30
