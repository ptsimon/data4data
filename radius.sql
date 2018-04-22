-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2018 at 10:43 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radius`
--

-- --------------------------------------------------------

--
-- Table structure for table `nas`
--

CREATE TABLE `nas` (
  `id` int(10) NOT NULL,
  `nasname` varchar(128) NOT NULL,
  `shortname` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT 'other',
  `ports` int(5) DEFAULT NULL,
  `secret` varchar(60) NOT NULL DEFAULT 'secret',
  `server` varchar(64) DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT 'RADIUS Client'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nas`
--

INSERT INTO `nas` (`id`, `nasname`, `shortname`, `type`, `ports`, `secret`, `server`, `community`, `description`) VALUES
(4, '10.100.0.1', 'Mikrotik', 'other', NULL, '12345', NULL, NULL, 'Router IP?'),
(5, '10.147.4.51', 'Mikrotik', 'other', NULL, '12345', NULL, NULL, 'Router IP?'),
(6, '192.168.88.1', 'Mikrotik', 'other', NULL, '12345', NULL, NULL, 'Direct Connection (NAS to Server)'),
(7, '192.168.1.3', 'Mikrotik', 'other', 1812, '12345', NULL, NULL, 'connection to isp');

-- --------------------------------------------------------

--
-- Table structure for table `radacct`
--

CREATE TABLE `radacct` (
  `radacctid` bigint(21) NOT NULL,
  `acctsessionid` varchar(64) NOT NULL DEFAULT '',
  `acctuniqueid` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `realm` varchar(64) DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `nasportid` varchar(15) DEFAULT NULL,
  `nasporttype` varchar(32) DEFAULT NULL,
  `acctstarttime` datetime DEFAULT NULL,
  `acctstoptime` datetime DEFAULT NULL,
  `acctsessiontime` int(12) UNSIGNED DEFAULT NULL,
  `acctauthentic` varchar(32) DEFAULT NULL,
  `connectinfo_start` varchar(50) DEFAULT NULL,
  `connectinfo_stop` varchar(50) DEFAULT NULL,
  `acctinputoctets` bigint(20) DEFAULT NULL,
  `acctoutputoctets` bigint(20) DEFAULT NULL,
  `calledstationid` varchar(50) NOT NULL DEFAULT '',
  `callingstationid` varchar(50) NOT NULL DEFAULT '',
  `acctterminatecause` varchar(32) NOT NULL DEFAULT '',
  `servicetype` varchar(32) DEFAULT NULL,
  `framedprotocol` varchar(32) DEFAULT NULL,
  `framedipaddress` varchar(15) NOT NULL DEFAULT '',
  `acctstartdelay` int(12) UNSIGNED DEFAULT NULL,
  `acctstopdelay` int(12) UNSIGNED DEFAULT NULL,
  `xascendsessionsvrkey` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radacct`
--

INSERT INTO `radacct` (`radacctid`, `acctsessionid`, `acctuniqueid`, `username`, `groupname`, `realm`, `nasipaddress`, `nasportid`, `nasporttype`, `acctstarttime`, `acctstoptime`, `acctsessiontime`, `acctauthentic`, `connectinfo_start`, `connectinfo_stop`, `acctinputoctets`, `acctoutputoctets`, `calledstationid`, `callingstationid`, `acctterminatecause`, `servicetype`, `framedprotocol`, `framedipaddress`, `acctstartdelay`, `acctstopdelay`, `xascendsessionsvrkey`) VALUES
(62, '80100002', '4e480436efa1cde5', 'polabells', '', '', '10.100.0.1', '2148532226', 'Wireless-802.11', '2018-04-02 15:39:05', '2018-04-05 10:59:55', 242450, '', '', '', 190457, 329940, 'hotspot1', 'C0:9F:05:28:D7:85', '', '', '', '10.101.0.100', 0, 0, ''),
(63, '80100005', 'b85aa42d9869a6ef', 'tamibells', '', '', '10.100.0.1', '2148532229', 'Wireless-802.11', '2018-04-02 15:40:42', '2018-04-02 16:04:04', 1403, '', '', '', 806483, 4771675, 'hotspot1', '34:FC:EF:AD:D5:60', 'Lost-Service', '', '', '10.101.0.99', 0, 0, ''),
(64, '80100009', '0db50621d09bcaf8', 'tamibells', '', '', '10.100.0.1', '2148532233', 'Wireless-802.11', '2018-04-02 16:13:30', '2018-04-02 16:16:06', 156, '', '', '', 20632, 13630, 'hotspot1', '34:FC:EF:AD:D5:60', 'Lost-Service', '', '', '10.101.0.99', 0, 0, ''),
(65, '80200002', '6157c7fdac92364c', 'tamibells', '', '', '10.100.0.1', '2149580802', 'Wireless-802.11', '2018-04-05 11:02:24', '2018-04-05 11:04:31', 126, '', '', '', 584758, 10806728, 'hotspot1', '34:FC:EF:AD:D5:60', 'Admin-Reset', '', '', '10.101.0.99', 0, 0, ''),
(66, '8020000b', '1b903eb02dc91b0c', 'polabells', '', '', '10.100.0.1', '2149580811', 'Wireless-802.11', '2018-04-05 12:34:49', '2018-04-05 12:44:18', 569, '', '', '', 124398, 217663, 'hotspot1', '34:FC:EF:AD:D5:60', 'Lost-Service', '', '', '10.101.0.99', 0, 0, ''),
(67, '80200014', 'f79bd6873f5eeddc', 'polabells', '', '', '10.100.0.1', '2149580820', 'Wireless-802.11', '2018-04-05 16:07:15', '2018-04-05 16:18:25', 670, '', '', '', 117431, 213257, 'hotspot1', 'C0:9F:05:28:D7:85', 'Admin-Reset', '', '', '10.101.0.100', 0, 0, ''),
(68, '80200015', 'c584f6a0edd5e324', 'zaib', '', '', '10.100.0.1', '2149580821', 'Wireless-802.11', '2018-04-05 16:08:32', '2018-04-05 17:28:56', 4824, '', '', '', 2188308, 2634698, 'hotspot1', '34:FC:EF:AD:D5:60', 'Lost-Service', '', '', '10.101.0.99', 0, 0, ''),
(69, '80200016', '853d21a9e399280e', 'polabells', '', '', '10.100.0.1', '2149580822', 'Wireless-802.11', '2018-04-05 16:18:39', '2018-04-05 17:31:21', 4362, '', '', '', 5571521, 1343287, 'hotspot1', 'C0:9F:05:28:D7:85', 'Lost-Service', '', '', '10.101.0.100', 0, 0, ''),
(70, '80300002', '9a849907d7372a20', 'zaib', '', '', '10.100.0.1', '2150629378', 'Wireless-802.11', '2018-04-05 17:35:01', '2018-04-10 13:42:02', 418021, '', '', '', 426898, 754713, 'hotspot1', '34:FC:EF:AD:D5:60', '', '', '', '10.101.0.99', 0, 0, ''),
(71, '80400001', 'd506ae0881ab7014', 'tamibells', '', '', '10.100.0.1', '2151677953', 'Wireless-802.11', '2018-04-10 13:42:02', '2018-04-10 14:20:56', 2334, '', '', '', 1067050, 2750886, 'hotspot1', 'C0:9F:05:28:D7:85', 'Lost-Service', '', '', '10.101.0.97', 0, 0, ''),
(72, '80400003', '1dff3d5035fabf5c', 'zaib', '', '', '10.100.0.1', '2151677955', 'Wireless-802.11', '2018-04-10 14:13:26', '2018-04-10 14:26:27', 781, '', '', '', 146904, 163263, 'hotspot1', '34:FC:EF:AD:D5:60', 'User-Request', '', '', '10.101.0.96', 0, 0, ''),
(73, '80400005', '881cf3ff16536ec1', 'zaib', '', '', '10.100.0.1', '2151677957', 'Wireless-802.11', '2018-04-10 14:27:16', '2018-04-10 14:37:41', 624, '', '', '', 148266, 278399, 'hotspot1', '34:FC:EF:AD:D5:60', 'Lost-Service', '', '', '10.101.0.96', 0, 0, ''),
(74, '80500003', '0bae7ce5532ef5bc', 'polabells', '', '', '10.100.0.1', '2152726531', 'Wireless-802.11', '2018-04-14 02:21:20', '2018-04-14 02:23:54', 154, '', '', '', 166531, 503036, 'hotspot1', 'C0:9F:05:28:D7:85', '', '', '', '10.101.0.98', 0, 0, ''),
(75, '80400001', '18794d8d1332c94d', 'polabells', '', '', '10.100.0.1', '2151677953', 'Wireless-802.11', '2018-04-14 02:25:23', '2018-04-14 08:03:41', 20298, '', '', '', 33638, 34314, 'hotspot1', 'C0:9F:05:28:D7:85', '', '', '', '10.101.0.99', 0, 0, ''),
(76, '80500007', 'b3acf0bf8d782af5', 'polabells', '', '', '10.100.0.1', '2152726535', 'Wireless-802.11', '2018-04-14 03:31:51', '2018-04-14 04:46:21', 4471, '', '', '', 671484, 928468, 'hotspot1', 'C0:9F:05:28:D7:85', 'User-Request', '', '', '10.101.0.98', 0, 0, ''),
(77, '8050000a', '47810729f622a607', 'tamibells', '', '', '10.100.0.1', '2152726538', 'Wireless-802.11', '2018-04-14 03:35:56', '2018-04-14 04:48:33', 4356, '', '', '', 805373, 5856021, 'hotspot1', '8C:F5:A3:10:4D:09', 'User-Request', '', '', '10.101.0.97', 0, 0, ''),
(78, '8050000d', 'e41df06b1546334f', 'zaib', '', '', '10.100.0.1', '2152726541', 'Wireless-802.11', '2018-04-14 04:27:08', '2018-04-14 04:32:09', 302, '', '', '', 474634, 566896, 'hotspot1', '54:8C:A0:0F:90:D8', 'Lost-Service', '', '', '10.101.0.99', 0, 0, ''),
(79, '8050000f', '896151376c1e47a4', 'polabells', '', '', '10.100.0.1', '2152726543', 'Wireless-802.11', '2018-04-14 04:49:21', '2018-04-14 08:03:41', 11660, '', '', '', 829551, 955449, 'hotspot1', '8C:F5:A3:10:4D:09', '', '', '', '10.101.0.97', 0, 0, ''),
(80, '80500010', '13f30d04168e9b1f', 'tamibells', '', '', '10.100.0.1', '2152726544', 'Wireless-802.11', '2018-04-14 04:50:34', '2018-04-14 04:53:02', 147, '', '', '', 5630, 8564, 'hotspot1', 'C0:9F:05:28:D7:85', 'Lost-Service', '', '', '10.101.0.98', 0, 0, ''),
(81, '80500012', '481b99246ddf64ae', 'tamibells', '', '', '10.100.0.1', '2152726546', 'Wireless-802.11', '2018-04-14 04:55:54', '2018-04-14 06:53:57', 7083, '', '', '', 844120, 2211996, 'hotspot1', 'C0:9F:05:28:D7:85', 'Lost-Service', '', '', '10.101.0.98', 0, 0, ''),
(82, '8050000f', '845d577872f0a406', 'polabells', '', '', '10.147.4.51', '2152726543', 'Wireless-802.11', '2018-04-14 04:49:28', '2018-04-14 08:05:33', 11766, '', '', '', 1088223, 2574772, 'hotspot1', '8C:F5:A3:10:4D:09', 'User-Request', '', '', '10.101.0.97', 0, 0, ''),
(83, '80600002', '87d1e77b59827545', 'polabells', '', '', '10.100.0.1', '2153775106', 'Wireless-802.11', '2018-04-17 11:00:38', '2018-04-17 11:05:45', 307, '', '', '', 83945, 132002, 'hotspot1', 'C0:9F:05:28:D7:85', 'User-Request', '', '', '10.101.0.96', 4, 4, ''),
(86, '80600017', '8c50701501cda249', 'polabells', '', '', '10.147.4.51', '2153775127', 'Wireless-802.11', '2018-04-17 13:49:21', NULL, 599, '', '', '', 123780, 98942, 'hotspot1', 'C0:9F:05:28:D7:85', '', '', '', '10.101.0.94', 0, 0, ''),
(87, '80600017', 'bc80e15606a905ba', 'polabells', '', '', '10.100.0.1', '2153775127', 'Wireless-802.11', '2018-04-17 13:49:15', '2018-04-17 14:00:18', 663, '', '', '', 133948, 119109, 'hotspot1', 'C0:9F:05:28:D7:85', 'User-Request', '', '', '10.101.0.94', 0, 0, ''),
(88, '80600018', '0c53c3c544dd51a5', 'polabells', '', '', '10.100.0.1', '2153775128', 'Wireless-802.11', '2018-04-17 14:05:11', '2018-04-18 14:27:06', 87715, '', '', '', 349498, 556511, 'hotspot1', 'C0:9F:05:28:D7:85', '', '', '', '10.101.0.94', 0, 0, ''),
(89, '80700007', 'a8caeb78a3e554e2', 'zaib', '', '', '10.100.0.1', '2154823687', 'Wireless-802.11', '2018-04-18 14:27:07', '2018-04-19 11:08:50', 74503, '', '', '', 2482329, 2590056, 'hotspot1', '34:FC:EF:AD:D5:60', '', '', '', '10.101.0.90', 0, 0, ''),
(90, '80800015', 'c2f8cac0fa878e9a', 'tamibells', '', '', '10.100.0.1', '2155872277', 'Wireless-802.11', '2018-04-19 16:01:30', '2018-04-19 16:09:57', 508, '', '', '', 57346, 81353, 'hotspot1', 'C0:9F:05:28:D7:85', 'Lost-Service', '', '', '10.101.0.88', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `radcheck`
--

CREATE TABLE `radcheck` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radcheck`
--

INSERT INTO `radcheck` (`id`, `username`, `attribute`, `op`, `value`) VALUES
(3, 'mockinqjaye', 'Cleartext-Password', ':=', 'beepboop'),
(4, 'zaib', 'Mikrotik-Recv-Limit', ':=', '100000'),
(7, 'zaib', 'Cleartext-Password', ':=', 'tammy'),
(8, 'mockinqjaye', 'Mikrotik-Recv-Limit', ':=', '100000'),
(9, 'henlo', 'Cleartext-Password', ':=', 'henloberb'),
(10, 'henlo', 'Mikrotik-Recv-Limit', ':=', '100000'),
(11, 'polabells', 'Cleartext-Password', ':=', 'pwet'),
(13, 'polabells', 'Mikrotik-Recv-Limit', ':=', '100000'),
(14, 'tamibells', 'Cleartext-Password', ':=', 'pikachu'),
(15, 'tamibells', 'Mikrotik-Recv-Limit', ':=', '751000000');

-- --------------------------------------------------------

--
-- Table structure for table `radgroupcheck`
--

CREATE TABLE `radgroupcheck` (
  `id` int(11) UNSIGNED NOT NULL,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radgroupreply`
--

CREATE TABLE `radgroupreply` (
  `id` int(11) UNSIGNED NOT NULL,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radgroupreply`
--

INSERT INTO `radgroupreply` (`id`, `groupname`, `attribute`, `op`, `value`) VALUES
(1, 'mamon', 'Acct-Interim-Interval', '=\n', '61');

-- --------------------------------------------------------

--
-- Table structure for table `radpostauth`
--

CREATE TABLE `radpostauth` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `pass` varchar(64) NOT NULL DEFAULT '',
  `reply` varchar(32) NOT NULL DEFAULT '',
  `authdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radpostauth`
--

INSERT INTO `radpostauth` (`id`, `username`, `pass`, `reply`, `authdate`) VALUES
(1, 'zaib', 'zaib', 'Access-Accept', '2017-11-27 06:18:20'),
(2, 'zaib', 'zaib', 'Access-Accept', '2017-11-27 06:19:41'),
(3, 'zaib', 'zaib', 'Access-Accept', '2017-11-27 07:00:41'),
(4, 'zaib', 'zaib', 'Access-Accept', '2017-12-04 03:46:41'),
(5, 'zaib', '0x90aa091c3489f2ebbf8fda4c60d596a935', 'Access-Accept', '2017-12-04 06:34:23'),
(6, 'zaib', '0x04c84cb2b4f36399c82d39a073db5cfb4e', 'Access-Accept', '2017-12-04 06:38:25'),
(7, 'zaib', '0x04c84cb2b4f36399c82d39a073db5cfb4e', 'Access-Accept', '2017-12-04 06:40:20'),
(8, 'zaib', '0x04c84cb2b4f36399c82d39a073db5cfb4e', 'Access-Accept', '2017-12-04 06:40:30'),
(9, 'zaib', '0x04c84cb2b4f36399c82d39a073db5cfb4e', 'Access-Accept', '2017-12-04 06:40:38'),
(10, 'zaib', '0x04c84cb2b4f36399c82d39a073db5cfb4e', 'Access-Accept', '2017-12-04 06:41:10'),
(11, 'zaib', '0x04c84cb2b4f36399c82d39a073db5cfb4e', 'Access-Accept', '2017-12-04 06:41:23'),
(12, 'zaib', '0x04c84cb2b4f36399c82d39a073db5cfb4e', 'Access-Accept', '2017-12-04 06:41:40'),
(13, 'zaib', '0x04c84cb2b4f36399c82d39a073db5cfb4e', 'Access-Accept', '2017-12-04 06:41:42'),
(14, 'zaib', '0x04c84cb2b4f36399c82d39a073db5cfb4e', 'Access-Accept', '2017-12-04 06:41:45'),
(15, 'zaib', '0x04c84cb2b4f36399c82d39a073db5cfb4e', 'Access-Accept', '2017-12-04 06:41:48'),
(16, 'zaib', '0x04c84cb2b4f36399c82d39a073db5cfb4e', 'Access-Accept', '2017-12-04 06:43:36'),
(17, 'zaib', '0x04c84cb2b4f36399c82d39a073db5cfb4e', 'Access-Accept', '2017-12-04 06:44:15'),
(18, 'zaib', '0x324a4784530262b0ac95f5694018bf75a7', 'Access-Accept', '2017-12-04 06:51:39'),
(19, 'zaib', '0x4c8a8a35a41efa547713469c65a86579bf', 'Access-Accept', '2017-12-04 06:55:22'),
(20, 'zaib', '0x7cd0de80dd6cab08fc7bf85043e13ef1a4', 'Access-Accept', '2017-12-04 06:56:43'),
(21, 'zaib', '0xcd342bfd8e3d6093a7b21af484787b51cc', 'Access-Accept', '2017-12-04 06:58:41'),
(22, 'zaib', '0x88aabbcbefd124f4adaf37327aa80d49a0', 'Access-Accept', '2017-12-07 05:32:07'),
(23, 'zaib', '0xfb6c32542e725f98e0bdcf494a26fd72b2', 'Access-Accept', '2017-12-07 05:55:00'),
(24, 'zaib', '0xba6f45bdd261a53eaf6296890b7694acd1', 'Access-Accept', '2017-12-07 06:18:12'),
(25, 'zaib', '0xfa87a4ac5a6ecb1688fd0cac8350401b20', 'Access-Accept', '2018-01-11 03:41:32'),
(26, 'zaib', '0xfa87a4ac5a6ecb1688fd0cac8350401b20', 'Access-Accept', '2018-01-11 03:42:05'),
(27, 'zaib', '0x809dae6d186ae2be58f53bad48072658a3', 'Access-Accept', '2018-01-11 04:04:58'),
(28, 'zaib', '0x41613b1601acbc94d36e6520aeb49548de', 'Access-Accept', '2018-01-11 04:32:44'),
(29, 'zaib', 'zaib', 'Access-Accept', '2018-01-16 11:48:23'),
(30, 'zaib', 'zaib', 'Access-Accept', '2018-01-16 11:50:11'),
(31, 'zaib', '0x39bb4409d2e3f8ef6556cbb5272a3d6aa5', 'Access-Accept', '2018-01-16 03:51:42'),
(32, 'zaib', '0xd18db4b181c1cf9583089ed281529857b4', 'Access-Accept', '2018-01-16 03:52:32'),
(33, 'zaib', '0x2dc98228c4c0400319344ae58da84d0d4b', 'Access-Accept', '2018-01-16 03:55:28'),
(34, 'zaib', '0xe852a2bcea0e70a6f9e43ba31d4d6f42dd', 'Access-Accept', '2018-01-16 03:56:24'),
(35, 'zaib', '0x3faf1e487abc4174517efd73a18e8006be', 'Access-Accept', '2018-01-16 03:58:15'),
(36, 'zaib', 'zaib', 'Access-Accept', '2018-01-16 03:58:17'),
(37, 'zaib', 'zaib', 'Access-Accept', '2018-01-16 04:03:23'),
(38, 'zaib', 'zaib', 'Access-Accept', '2018-01-16 04:06:08'),
(39, 'zaib', '0x18893213a542bb3e70a8d8bb21a09cf0d4', 'Access-Accept', '2018-01-16 04:07:32'),
(40, 'zaib', '0x52712364b1c48e69883857e0fb9eeee8b8', 'Access-Accept', '2018-01-16 04:08:00'),
(41, 'zaib', '0xb5cda684ed6f7c5e9de2c108a8b897d1d4', 'Access-Accept', '2018-01-16 04:13:21'),
(42, 'zaib', '0x4646258466916583e17acc179ea28b9ac9', 'Access-Accept', '2018-01-16 05:39:11'),
(43, 'zaib', 'zaib', 'Access-Accept', '2018-01-16 05:39:15'),
(44, 'zaib', '0x1e54775045e1a8628b7fa784324d0b98ed', 'Access-Accept', '2018-01-16 05:40:14'),
(45, 'zaib', '0xf800d404cdcebb8827cca237ec6c62de15', 'Access-Accept', '2018-01-16 05:40:21'),
(46, 'zaib', '0x76d1f7df53707f8d92352c020ef72bcf72', 'Access-Accept', '2018-01-16 05:41:58'),
(47, 'zaib', 'zaib', 'Access-Accept', '2018-01-16 05:42:13'),
(48, 'zaib', '0xb875293b42743abfedc9418f35b6fa0208', 'Access-Accept', '2018-01-16 05:43:13'),
(49, 'zaib', '0xc2d13180bcf050461729f959dc47654af2', 'Access-Accept', '2018-01-16 05:47:56'),
(50, 'zaib', '0x828b2b3545cf736feaf62393b4e15ec230', 'Access-Accept', '2018-01-16 05:48:22'),
(51, 'zaib', '0x6d3ce3952b4f5e1c32c0626d5f13b2abe3', 'Access-Accept', '2018-01-16 05:55:25'),
(52, 'zaib', '0xeca6152ec02a17fc57905c02fdd9950517', 'Access-Accept', '2018-01-16 06:01:38'),
(53, 'zaib', '0x7fc61b6059e279e9b07408f717f3569e56', 'Access-Accept', '2018-01-16 06:02:12'),
(54, 'zaib', '0x463d3a219faf5e56e2457d20b82f9d110e', 'Access-Accept', '2018-01-16 06:20:34'),
(55, 'zaib', '0xe0ab9dc5e2f299a3408422a4cfa2f097ad', 'Access-Accept', '2018-01-16 06:20:47'),
(56, 'zaib', '0xc407638b069ea77912a2074a47461b0724', 'Access-Accept', '2018-01-16 06:21:51'),
(57, 'zaib', '0xb8166866ca0f39b8ff2dc92d4d86e9ac65', 'Access-Accept', '2018-01-16 06:23:07'),
(58, 'zaib', '0xb05f637ad70f277a8f256d562915563acb', 'Access-Accept', '2018-01-16 06:25:39'),
(59, 'zaib', '0x84c1760a4218bad5e731c94182ec92cffb', 'Access-Accept', '2018-01-16 06:32:25'),
(60, 'zaib', '0xe0d33e438e8f451dd2a936977934907468', 'Access-Accept', '2018-01-16 06:33:03'),
(61, 'zaib', 'tammy', 'Access-Accept', '2018-01-16 06:34:56'),
(62, 'zaib', '0x44f8d9af1a9ddf5c89c34f4dfee52d7912', 'Access-Accept', '2018-01-16 06:35:08'),
(63, 'zaib', 'tammy', 'Access-Accept', '2018-01-16 08:03:38'),
(64, 'zaib', '0xe60046d12aec89db68e70b4e7c061e0a7c', 'Access-Accept', '2018-01-16 08:05:36'),
(65, 'zaib', '0xee001637135c27819b9a1694c33d06dc30', 'Access-Accept', '2018-01-16 08:18:11'),
(66, 'zaib', '0x554629ee092792509b503c37a05d215f14', 'Access-Accept', '2018-01-16 08:23:51'),
(67, 'mockinqjaye', '0x7f997d6f7112cbe0acdcb27a00120b635d', 'Access-Accept', '2018-01-16 08:29:21'),
(68, 'zaib', '0x2d9b12316dcd19901c046a7908b98edd61', 'Access-Accept', '2018-01-16 09:21:00'),
(69, 'zaib', '0xa2d88677757563dd8ccd89597ed5310161', 'Access-Accept', '2018-01-16 09:31:32'),
(70, 'zaib', '0x23ea56efde100a3fdb5de337c29293ed21', 'Access-Accept', '2018-01-16 09:32:28'),
(71, 'zaib', '0xef3d38b8a69d6ff7deb0376b5347862274', 'Access-Accept', '2018-01-16 09:38:03'),
(72, 'zaib', '0x20bddd1f70c6e7b843ac6f37712ffc974a', 'Access-Accept', '2018-01-16 09:39:55'),
(73, 'zaib', '0x8868a1f9cc61c5d040f98765e3b04c503d', 'Access-Accept', '2018-01-16 10:30:32'),
(74, 'zaib', '0xfbd46c2d49b039a3cf0392c7aa6e685c75', 'Access-Accept', '2018-01-16 10:30:59'),
(75, 'zaib', '0xb6f4edf57f80fd8a8e310f9f2e7589b860', 'Access-Accept', '2018-01-16 10:48:49'),
(76, 'zaib', '0x5b1d72d3b1a040fcf11bd95766ef7cff8a', 'Access-Accept', '2018-01-17 04:56:51'),
(77, 'zaib', '0x18ee777c8ce75239dcd679e6180bf07654', 'Access-Accept', '2018-01-17 04:56:55'),
(78, 'mockinqjaye', '0x88a4c04f3f56cc19f8c7ad83f1d5a99641', 'Access-Accept', '2018-01-17 04:57:01'),
(79, 'zaib', '0x806f233b84b8ce475a8a7d8c3cc12a780f', 'Access-Accept', '2018-01-17 05:03:16'),
(80, 'zaib', '0x1e00dfe5b756d58096190201e6e899f95c', 'Access-Accept', '2018-01-17 05:04:50'),
(81, 'zaib', '0x725ad1d81a136006436c2234da9b5a11a5', 'Access-Accept', '2018-01-17 05:07:28'),
(82, 'zaib', '0xe9bc1d7223145088510e73a6addfedbfd7', 'Access-Accept', '2018-01-17 05:09:51'),
(83, 'zaib', '0x9c0e66426b07c739b4482fab6b0d08d350', 'Access-Accept', '2018-01-17 05:12:50'),
(84, 'mockinqjaye', '0x804c36fbaa8ac17d9abc18f24fdc8ba0e7', 'Access-Accept', '2018-01-17 05:22:48'),
(85, 'mockinqjaye', '0x110e511d0d742ba9eb988abadc9a32c35f', 'Access-Accept', '2018-01-17 05:24:30'),
(86, 'mockinqjaye', '0x8bcf99668d961c5be3e668488300b59cf5', 'Access-Accept', '2018-01-17 05:29:25'),
(87, 'mockinqjaye', '0x40767352060f38ac5c6bed56ae1d286e51', 'Access-Accept', '2018-01-17 05:38:58'),
(88, 'zaib', '0x77fa64ed0691cee581f7270e57721dbbed', 'Access-Accept', '2018-01-17 05:48:45'),
(89, 'mockinqjaye', '0xa11f846eef0145b5328d01f02a70c602df', 'Access-Accept', '2018-01-17 05:50:44'),
(90, 'zaib', '0x71ebca062115e39437b69f46e3d078d8d3', 'Access-Accept', '2018-01-17 05:58:21'),
(91, 'zaib', '0xd0137afa6c830146868eaaad0e04b43e5a', 'Access-Accept', '2018-01-17 06:10:10'),
(92, 'zaib', '0x3d8c64d676552c483616e17f876b3596cc', 'Access-Accept', '2018-01-17 06:20:09'),
(93, 'zaib', 'tammy', 'Access-Accept', '2018-01-17 06:25:51'),
(94, 'zaib', '0x8b4a22940b22909f88c12c431965a699e3', 'Access-Accept', '2018-01-17 06:28:44'),
(95, 'zaib', '0x6974b007ad18a1de87d7cbad751e3df628', 'Access-Accept', '2018-01-17 06:37:44'),
(96, 'zaib', '0x3fd1bf705d992fac5b44575c85eb8cf66c', 'Access-Accept', '2018-01-17 06:45:05'),
(97, 'zaib', '0x0c4476bb97d056f797aa22cf10e5e8de5a', 'Access-Accept', '2018-01-17 06:52:32'),
(98, 'zaib', '0x9daf5b4ec4aa74a52410352b6d31e59537', 'Access-Accept', '2018-01-17 06:52:53'),
(99, 'zaib', '0x76b2f75cd2e31f0240a6442e080e3a971b', 'Access-Accept', '2018-01-17 07:11:25'),
(100, 'zaib', '0x3d397a491bd2cafb85453630cf3140c594', 'Access-Accept', '2018-01-17 07:13:08'),
(101, 'zaib', '0x83f9e606dd746b601f55d4510125167b96', 'Access-Accept', '2018-01-17 07:19:47'),
(102, 'zaib', '0xee120c367ba956bd7cc24ab24b3f333e32', 'Access-Accept', '2018-01-17 07:31:27'),
(103, 'zaib', '0xabb3eb87e07831620209eca404764e6799', 'Access-Accept', '2018-01-17 07:51:17'),
(104, 'zaib', '0x36c6be0a3273fa7dfe446ed17fdb7f13d9', 'Access-Accept', '2018-01-17 08:03:52'),
(105, 'zaib', '0xa73adcdbca671467c2f2f4854f9ea7c943', 'Access-Accept', '2018-01-17 08:04:59'),
(106, 'zaib', '0xfeea13e59ee9fe0a2a8a164b2a00f48eb3', 'Access-Accept', '2018-01-17 08:05:13'),
(107, 'zaib', '0x2243302f2d6d8c923fa6e0428474a8fb5a', 'Access-Accept', '2018-01-17 08:06:11'),
(108, 'zaib', '0xb918eaa5938f9643f8b8071951ed0e201d', 'Access-Accept', '2018-01-17 08:07:34'),
(109, 'zaib', '0xab9c78965cc85d095e8c5e905eb3cfa7d4', 'Access-Accept', '2018-01-18 03:35:21'),
(110, 'zaib', '0x3ac3a6f1533162f2b041b25172cc695a54', 'Access-Accept', '2018-01-18 03:37:15'),
(111, 'zaib', '0x30301c802e5732b154b2f7bca76a7fec33', 'Access-Accept', '2018-01-18 03:45:18'),
(112, 'zaib', '0x55d7b9666db7512bb94c28ac58b331f684', 'Access-Accept', '2018-01-18 03:47:18'),
(113, 'zaib', '0x8c467c376a3d65c59b7534d5c78847ec03', 'Access-Accept', '2018-01-18 04:36:20'),
(114, 'zaib', 'tammy', 'Access-Accept', '2018-01-18 05:26:28'),
(115, 'zaib', '0x828f3165c65df20a19d6f8fbd71db1745d', 'Access-Accept', '2018-01-18 05:35:18'),
(116, 'zaib', '0x230976c05534446e1ef9504bb89289d190', 'Access-Accept', '2018-01-18 05:38:01'),
(117, 'zaib', '0x53c2ee08653c8ff0c194809fa44045a492', 'Access-Accept', '2018-01-18 05:52:25'),
(118, 'zaib', '0xc20c68070b6f09aa68989e72854ad669e5', 'Access-Accept', '2018-01-18 05:55:18'),
(119, 'zaib', '0xdd5c6fd0c7d7208b2e5117007079331bc1', 'Access-Accept', '2018-01-19 05:59:32'),
(120, 'zaib', '0x7d7f46e0001121a7b4ee7ca75a8831c65c', 'Access-Accept', '2018-01-19 06:00:29'),
(121, 'zaib', '0xfe63d7a5fbc55dd94657241543a560198c', 'Access-Accept', '2018-01-19 06:03:26'),
(122, 'zaib', '0x908d817670e190c6157509be2a0b82827e', 'Access-Accept', '2018-01-19 06:13:52'),
(123, 'mockinqjaye', '0xe3dbb99f35bdd3b383dd353ea942692c81', 'Access-Accept', '2018-01-19 06:50:20'),
(124, 'mockinqjaye', '0xc00cd3fe6f8277e2b20fc32bd0b2181eb2', 'Access-Accept', '2018-01-19 06:58:02'),
(125, 'mockinqjaye', '0x8990e3341196727cdadbf8f781fce11de7', 'Access-Accept', '2018-01-19 06:59:24'),
(126, 'mockinqjaye', '0x33335473cf8a99670866a349b56bb524e9', 'Access-Accept', '2018-01-19 07:01:32'),
(127, 'mockinqjaye', '0x1e085dea22d714c59775e91aa4b230b62a', 'Access-Accept', '2018-01-19 07:18:39'),
(128, 'mockinqjaye', '0x5bc289747963f8a0520df8366d8f4350b2', 'Access-Accept', '2018-01-19 07:22:28'),
(129, 'mockinqjaye', '0x156953fa4193cab17ac6022ce78e530410', 'Access-Accept', '2018-01-19 07:31:49'),
(130, 'mockinqjaye', '0x681fc264650f8928829c304ce653802708', 'Access-Accept', '2018-01-19 07:36:35'),
(131, 'mockinqjaye', '0x3a1fec2cdf70c8a616e0b4226d4558624a', 'Access-Accept', '2018-01-19 07:37:41'),
(132, 'mockinqjaye', '0xa9ef73b78dd1289ce675c9a7bc6fc8cd49', 'Access-Accept', '2018-01-19 07:50:14'),
(133, 'mockinqjaye', '0xcb7628865aa3a7b9eebe25b2c7dae66eb7', 'Access-Accept', '2018-01-19 07:51:57'),
(134, 'mockinqjaye', '0x0cecf78bc9f78c5fc26ac9853986ab30d7', 'Access-Accept', '2018-01-19 07:55:28'),
(135, 'mockinqjaye', '0x46c5bc8b5490b9d3cb554e4fe1bbac2315', 'Access-Accept', '2018-01-19 08:00:17'),
(136, 'mockinqjaye', '0xf21c5af82372f06e06f82b6d03571ec5ad', 'Access-Accept', '2018-01-19 08:02:18'),
(137, 'zaib', '0xee22e5f7736e1e1a3cbba5065c26c9d0fb', 'Access-Accept', '2018-01-19 08:08:33'),
(138, 'zaib', '0xd5c932ca74819416c7a43af0a88fd60757', 'Access-Accept', '2018-01-19 08:10:43'),
(139, 'zaib', '0xaf8e642b5424702fcbdc3be6bf1f5999b6', 'Access-Accept', '2018-01-20 06:00:26'),
(140, 'mockinqjaye', '0x920804222c3fa14e44b4ec33cbf352e03f', 'Access-Accept', '2018-01-20 06:38:10'),
(141, 'zaib', '0x0f3c592a2d3236971aa5976d039d603778', 'Access-Accept', '2018-01-21 03:02:00'),
(142, 'zaib', 'tammy', 'Access-Accept', '2018-01-21 03:23:36'),
(143, 'mockinqjaye', '0x5cdc75b2ae696fd69fa4155ecf0bfffe0a', 'Access-Accept', '2018-01-21 04:10:38'),
(144, 'zaib', '0x354cb983964ab059b2db9497b10afd26a3', 'Access-Accept', '2018-01-21 05:22:57'),
(145, 'zaib', '0x1346e2572c7141cca49bcaa3f8e1decfc1', 'Access-Accept', '2018-01-21 05:31:27'),
(146, 'zaib', '0x2b57de2ec80058cfd127a3e422d2b1a3d2', 'Access-Accept', '2018-01-21 05:33:17'),
(147, 'mockinqjaye', '0xb89e98d89a4c46d24229fc74613467f040', 'Access-Accept', '2018-01-21 05:34:19'),
(148, 'mockinqjaye', '0x087439da0f4699403d3c318fcb4a683641', 'Access-Accept', '2018-01-21 05:37:47'),
(149, 'mockinqjaye', '0x6b673036b362c3087deaf90e4645a24c5c', 'Access-Accept', '2018-01-21 05:48:29'),
(150, 'mockinqjaye', '0xd1f4ab77aad62d043657856c54c5ce53b2', 'Access-Accept', '2018-01-21 05:49:22'),
(151, 'mockinqjaye', '0x0ee40db1865bf87a22f966cfcd3ffc69ef', 'Access-Accept', '2018-01-21 05:54:52'),
(152, 'mockinqjaye', '0xa198fd70330077932221172470e9956170', 'Access-Accept', '2018-01-21 06:02:13'),
(153, 'mockinqjaye', '0x49ff5ef9c890c53159eb0296a78a1fee27', 'Access-Accept', '2018-01-21 06:05:29'),
(154, 'zaib', '0x96551b9415bae49f2c11238db4b1d091d8', 'Access-Accept', '2018-01-21 09:46:03'),
(155, 'zaib', '0xea698e9277d40938468ab54611f7ad755d', 'Access-Accept', '2018-01-21 09:48:23'),
(156, 'mockinqjaye', '0x9d5ba73962317d9bf0af60b742684c8a68', 'Access-Accept', '2018-01-21 09:51:22'),
(157, 'zaib', '0xbffa5844869b3a7381af2c55cba288b1be', 'Access-Accept', '2018-01-21 10:24:09'),
(158, 'zaib', '0x91b7bc9d5d9992884c5923bd4af332d71a', 'Access-Accept', '2018-01-21 10:26:25'),
(159, 'zaib', '0xcb028c037834fc1e3eee5348f7237f7b3d', 'Access-Accept', '2018-01-21 10:29:16'),
(160, 'zaib', '0x9928bed07c5199bb4bd8623552524923d8', 'Access-Accept', '2018-01-21 10:30:43'),
(161, 'zaib', '0x9a2d81634fe317b60d3eb44646959cac50', 'Access-Accept', '2018-01-21 10:47:23'),
(162, 'zaib', '0x2f56ee1c16fac20f26b5b38d7553e1fb76', 'Access-Accept', '2018-01-21 10:56:42'),
(163, 'zaib', '0xba20ccf5014ed5509a190d12fd7eb3e5ee', 'Access-Accept', '2018-01-23 03:54:11'),
(164, 'zaib', '0xc11a4535670114e5863c7fb89af64f829a', 'Access-Accept', '2018-01-24 05:40:00'),
(165, 'zaib', '0x0361fb01363153e60a1a145379e9e1a3b2', 'Access-Accept', '2018-01-24 05:53:18'),
(166, 'zaib', '0xc885326fc9e7a34692b158c6965f998445', 'Access-Accept', '2018-01-24 06:08:41'),
(167, 'zaib', '0xad1c7d96606d7172911438997732fefdbc', 'Access-Accept', '2018-01-29 05:14:51'),
(168, 'zaib', '0x30d0116f7e166e336b1fe08477c994353e', 'Access-Accept', '2018-01-29 05:15:59'),
(169, 'zaib', '0x87b3732e3eea27327fdfa38ea99d96628c', 'Access-Accept', '2018-01-30 08:30:47'),
(170, 'zaib', '0xed03e35e9c362a00d81f03bca207db6092', 'Access-Accept', '2018-01-31 07:13:18'),
(171, 'mockinqjaye', '0x0d394066539725f4391130d03cb9a3f6c7', 'Access-Accept', '2018-01-31 08:09:19'),
(172, 'mockinqjaye', '0x92a8b6f9198fccea0ec945f8fe01d189db', 'Access-Accept', '2018-02-01 04:59:16'),
(173, 'zaib', '0x290ea7fca8a6933dbe4b845a5c7bcc98e7', 'Access-Accept', '2018-02-03 02:34:30'),
(174, 'zaib', '0xd7669732c57426638ae572c65aeae1c280', 'Access-Accept', '2018-02-07 11:04:26'),
(175, 'henlo', '0x94f9d9df050a60aa7ee206a03ba311e717', 'Access-Accept', '2018-02-08 06:11:32'),
(176, 'zaib', '0x3ecafa18ca6917f0dd27b460cb7b0dc684', 'Access-Accept', '2018-02-08 06:12:19'),
(177, 'mockinqjaye', '0xf224a1f9f2a6c063d2608d0bce9b3cdc98', 'Access-Accept', '2018-02-08 06:17:27'),
(178, 'henlo', '0x7dbd56b5e37c9c1ee9dfcb0e4341236b64', 'Access-Accept', '2018-02-08 08:49:41'),
(179, 'henlo', '0x6ab1493468215b2b91cf7f8a30ef467274', 'Access-Accept', '2018-02-08 09:00:37'),
(180, 'zaib', '0xfff62177e07e579f237cf95857fa2c9da5', 'Access-Accept', '2018-02-08 09:11:24'),
(181, 'henlo', '0xe43734cd20503f3ad22da2ee88749e8407', 'Access-Accept', '2018-02-08 09:14:12'),
(182, 'henlo', '0x72652471b56b2656644c7373279f9eb52f', 'Access-Accept', '2018-02-08 09:17:57'),
(183, 'zaib', '0xe2aead15e68ff959abe932f82a2256294f', 'Access-Accept', '2018-02-08 09:59:25'),
(184, 'zaib', '0xf56892150bec1907fb97e502272f088942', 'Access-Accept', '2018-02-12 00:09:37'),
(185, 'mockinqjaye', '0x00d71665f60c7e18ad7110cf13a5b3e40d', 'Access-Accept', '2018-02-12 01:28:19'),
(186, 'henlo', '0x0b3bb618adfa910785548712da6d3d5fd7', 'Access-Accept', '2018-02-12 01:55:21'),
(187, 'zaib', '0xddcdc6d46bcf5db818898fb0a417a001fc', 'Access-Accept', '2018-02-12 01:56:36'),
(188, 'zaib', '0x99c70a976057c56a3f13dc28fecc567eb7', 'Access-Accept', '2018-02-12 02:43:49'),
(189, 'zaib', '0xa112851d23363d0a05bd0a448ab5c06d75', 'Access-Accept', '2018-02-12 05:02:07'),
(190, 'zaib', '0x84d6f079adb84478c706107b6df85c611d', 'Access-Accept', '2018-02-12 05:05:59'),
(191, 'mockinqjaye', '0x68af92df23dc6a9df9a3e45261aec69c11', 'Access-Accept', '2018-02-12 05:09:44'),
(192, 'zaib', '0x0f2b5eea49049fc6cbca9ae015575b7577', 'Access-Accept', '2018-02-12 05:11:26'),
(193, 'mockinqjaye', '0x7c2c8c1c46d5426764856a69378c13a394', 'Access-Accept', '2018-02-15 05:03:19'),
(194, 'mockinqjaye', '0x65136925c1527c2e46d5176e6789e6c8ce', 'Access-Accept', '2018-02-15 06:31:10'),
(195, 'mockinqjaye', '0x23ac8dab000c705558408f2e62878ae9fe', 'Access-Accept', '2018-02-15 07:59:38'),
(196, 'mockinqjaye', '0x722c05ab65cde3801456e4e1cce736e567', 'Access-Accept', '2018-02-15 08:05:09'),
(197, 'zaib', '0xcb3a1735dec2eb1ada3985b73e677e2ddc', 'Access-Accept', '2018-02-15 08:05:29'),
(198, 'mockinqjaye', '0xb5437491e0e3e30a9d236039986674e62f', 'Access-Accept', '2018-02-15 08:07:41'),
(199, 'mockinqjaye', '0xb853e47dde2a15a0e58b8c63e2538d4b80', 'Access-Accept', '2018-02-15 08:25:47'),
(200, 'zaib', '0x14b3430a3d5f969d61301dc609798a10c9', 'Access-Accept', '2018-02-15 08:39:45'),
(201, 'zaib', '0x54e514bba60920f9f9cb97fe63f974b789', 'Access-Accept', '2018-02-20 04:05:26'),
(202, 'mockinqjaye', '0x44f5ce307cc7884b262954477c662eb9e3', 'Access-Accept', '2018-02-20 04:08:32'),
(203, 'henlo', '0x979f3969c688b14632b7c35d9c7b270129', 'Access-Accept', '2018-02-20 04:10:06'),
(204, 'zaib', '0x1087080a619c1b72c7cdc40c457eeaa40e', 'Access-Accept', '2018-02-20 04:28:18'),
(205, 'zaib', '0x41f7e2a3e2a5ff8a4a52628c499d98499d', 'Access-Accept', '2018-02-20 05:45:17'),
(206, 'zaib', '0xf7d19d1b0f77f717885ec3e300a5c98277', 'Access-Accept', '2018-02-20 05:53:30'),
(207, 'zaib', '0x342fd6e2f29d1fb100bf087ba18f120205', 'Access-Accept', '2018-02-20 08:06:02'),
(208, 'henlo', '0x689d811526a348588e13327f498d14f6b3', 'Access-Accept', '2018-02-20 08:09:26'),
(209, 'henlo', '0x05d5794c058b3170b8058a537d56aadfc2', 'Access-Accept', '2018-02-20 08:37:03'),
(210, 'zaib', '0xa7135590f5757214eed514bd0d04c8ff8c', 'Access-Accept', '2018-02-20 09:14:31'),
(211, 'henlo', '0x58e0e2180ac7ef10217dffa55562c1327e', 'Access-Accept', '2018-02-20 10:16:43'),
(212, 'mockinqjaye', '0xdd7b45e14bf341db5446970aea234a7deb', 'Access-Accept', '2018-02-20 10:16:52'),
(213, 'zaib', '0x78e1cf2414d7a7aa26129f9963118e2164', 'Access-Accept', '2018-02-20 10:20:08'),
(214, 'zaib', '0xc775b8a44320c6c64a490bb0739040600d', 'Access-Accept', '2018-02-20 11:03:51'),
(215, 'henlo', '0x2c4f0cf09fd108e85d2e0f8a38d3ee18d5', 'Access-Accept', '2018-02-21 05:44:04'),
(216, 'mockinqjaye', '0x55f7d2f92c3bd67c20e9027b690bf3a89e', 'Access-Accept', '2018-02-21 05:45:10'),
(217, 'zaib', '0x2036d1a5090bcd021f57b7d50fda8d34be', 'Access-Accept', '2018-02-21 05:46:25'),
(218, 'henlo', '0xc91a46263e220b15ad5728c0dc09b92134', 'Access-Accept', '2018-02-21 05:56:15'),
(219, 'zaib', '0xaebdeab6f11d72252ced1c1307fc62a99f', 'Access-Accept', '2018-02-21 05:56:31'),
(220, 'mockinqjaye', '0x550d3b58e3d5dcb4898fb26ee959502356', 'Access-Accept', '2018-02-21 05:56:38'),
(221, 'zaib', '0x8ab69c8d5eba9cb0350a0b3653cf360cdf', 'Access-Accept', '2018-02-21 06:06:32'),
(222, 'polabells', '0x2734cfb419638bb6059aae77eaa0f88ed1', 'Access-Accept', '2018-02-21 06:12:13'),
(223, 'tamibells', '0xcea023cda178b5fe5890ee541b3006dbd8', 'Access-Accept', '2018-02-21 06:20:23'),
(224, 'mockinqjaye', '0xb72a6aca1ac1509caa2e3b0df474df8bad', 'Access-Accept', '2018-02-21 06:44:53'),
(225, 'polabells', '0x5893d80ba441bbb24ee523a456db5fbe7e', 'Access-Accept', '2018-02-22 01:57:22'),
(226, 'polabells', '0x5e60c33386c3862084111cbe98db711e8d', 'Access-Accept', '2018-02-22 02:22:02'),
(227, 'zaib', '0x181b853bb688d15427dd45e672653a4d1a', 'Access-Accept', '2018-02-22 02:35:26'),
(228, 'henlo', '0xc7464d0a1bbf411834602c28a7e1f24573', 'Access-Accept', '2018-02-22 03:03:38'),
(229, 'henlo', '0xc7464d0a1bbf411834602c28a7e1f24573', 'Access-Accept', '2018-02-22 03:03:55'),
(230, 'henlo', '0xd6368ff09e902c4db5e026f915f7d44eff', 'Access-Accept', '2018-02-22 03:06:52'),
(231, 'tamibells', '0x537fd47c5e88bede4c4acd59ef913c8987', 'Access-Accept', '2018-02-22 03:19:49'),
(232, 'mockinqjaye', '0xd98a5ab616d1e9213abab42b7439b10227', 'Access-Accept', '2018-02-22 03:19:58'),
(233, 'tamibells', '0xf701062fcac47b4eafc30bdfff8c2c05d1', 'Access-Accept', '2018-02-22 04:32:41'),
(234, 'tamibells', '0x1ecf89519db2949fad56dba9a85a5fe564', 'Access-Accept', '2018-02-22 04:51:35'),
(235, 'polabells', '0x711140f8617db736f34565587dbfb77aa9', 'Access-Accept', '2018-02-27 04:04:45'),
(236, 'polabells', '0x1b49c3031d8b3f63226ddca0939fdaa09d', 'Access-Accept', '2018-02-28 06:47:24'),
(237, 'polabells', '0x3d5596446d8644a5c977fd6d8496641334', 'Access-Accept', '2018-03-01 08:39:36'),
(238, 'tamibells', '0x392b97c4524ca36782e522ed574a5979e9', 'Access-Accept', '2018-03-12 12:15:49'),
(239, 'polabells', '0x71a6b0a955bb0ab1c2f10a4441b3cbd43c', 'Access-Accept', '2018-03-12 12:18:50'),
(240, 'tamibells', '0xbb4dc39d0f05e638448137fd749d63b659', 'Access-Accept', '2018-03-12 12:20:10'),
(241, 'tamibells', '0xadea64a39beb4925c364d0ebb831649911', 'Access-Accept', '2018-03-12 12:25:15'),
(242, 'polabells', '0xeadca0f2358578cf2509e3d4d2db0c9f57', 'Access-Accept', '2018-03-12 13:22:03'),
(243, 'polabells', '0x79fbe555f2b76e29f7bed9ff8c25de2837', 'Access-Accept', '2018-03-12 13:23:09'),
(244, 'polabells', '0x1e5d4eb371065e8b0024d81bfce2f4cadf', 'Access-Accept', '2018-03-12 13:27:29'),
(245, 'tamibells', '0xa7a4963e020492d5d82ad614c88a1643fe', 'Access-Accept', '2018-03-12 13:27:47'),
(246, 'tamibells', '0x93522d8763efc5a7fb9aafd61de0252575', 'Access-Accept', '2018-03-12 13:31:20'),
(247, 'tamibells', '0x95e2a954fe8fabc7ee8e56e99e4abb6f60', 'Access-Accept', '2018-03-12 13:32:17'),
(248, 'polabells', '0x48a7591775b2d29bf6317f976d824f9768', 'Access-Accept', '2018-03-12 13:41:20'),
(249, 'tamibells', '0x0e1623a29595ceafc8f8deb4f875037fef', 'Access-Accept', '2018-03-12 13:43:20'),
(250, 'polabells', '0xd4a2cf09ad7fcc237cb2ba7da18f45e32b', 'Access-Accept', '2018-03-12 13:43:49'),
(251, 'henlo', '0x1dfd5c9382eb26b11fa079b52da8366622', 'Access-Accept', '2018-03-12 14:00:43'),
(252, 'tamibells', '0x53736a9f983f2c04eb6dce26dcb9f2045c', 'Access-Accept', '2018-03-15 04:47:09'),
(253, 'tamibells', '0x6db39754edb224c6b3dfaeb0c12f483bdd', 'Access-Accept', '2018-03-15 05:28:34'),
(254, 'tamibells', '0xa138f83d11850cf77b3ec40215b75f76a8', 'Access-Accept', '2018-03-15 06:10:34'),
(255, 'tamibells', '0x858a8c64aafacd91013aa3559142298659', 'Access-Accept', '2018-03-15 06:56:47'),
(256, 'tamibells', '0x325c0451e026eaf870399345e0a5c8cb21', 'Access-Accept', '2018-03-15 06:59:06'),
(257, 'tamibells', '0xcb8f0181e8e3effaebf1693830adebb0c3', 'Access-Accept', '2018-03-15 07:24:49'),
(258, 'tamibells', '0xf299dab94054906315d4ca9fef9a4a08d4', 'Access-Accept', '2018-03-15 08:44:10'),
(259, 'POLABELLS', '0x0d66f5659540f53aab2ef79241322961af', 'Access-Accept', '2018-03-15 08:57:50'),
(260, 'henlo', '0x99b8ffc65a957fb83466963c70ea1ae3c6', 'Access-Accept', '2018-03-15 09:30:23'),
(261, 'henlo', '0x43a55b0f42c587ff95a9dfa102cab29453', 'Access-Accept', '2018-03-15 09:33:20'),
(262, 'mockinqjaye', '0x6b42d63dfd85ac97173ed884249866da20', 'Access-Accept', '2018-03-15 09:49:58'),
(263, 'polabells', '0x90c8fba4e28d3b5f847270bd7e1b36de5e', 'Access-Accept', '2018-03-17 04:06:56'),
(264, 'polabells', '0xfb6e23ee9690d7825f60eb9f0f6f280835', 'Access-Accept', '2018-03-17 05:54:57'),
(265, 'polabells', '0x8589ec12409e611b2307a85d3ac295a0d5', 'Access-Accept', '2018-03-17 06:13:36'),
(266, 'polabells', '0xcf0fe8fa7491b2b8e0c5e3bfb2c2b65daf', 'Access-Accept', '2018-03-17 08:20:31'),
(267, 'polabells', '0xf77ff4c78640804472d72826451c619f6a', 'Access-Accept', '2018-03-17 08:36:02'),
(268, 'polabells', '0xb21f56442faaaafa6040add41e2a31ba2d', 'Access-Accept', '2018-03-17 08:57:26'),
(269, 'polabells', '0xb86f90f5d791d2bc8ca81c69e5ba7d8a09', 'Access-Accept', '2018-03-18 08:28:40'),
(270, 'polabells', '0xa4597875efba65ee7ef6fe7ff1d2e66ce8', 'Access-Accept', '2018-03-18 08:31:23'),
(271, 'polabells', '0xc90248d3884b21f0c5da6a729ef2136940', 'Access-Accept', '2018-03-18 08:46:53'),
(272, 'polabells', '0x24cb7616434f75983a9b79b674e406fa9c', 'Access-Accept', '2018-03-18 09:24:51'),
(273, 'polabells', '0xda40852502e97fd2c153df9234e458fa46', 'Access-Accept', '2018-03-18 09:27:40'),
(274, 'polabells', '0x4c43ef3945238a04ce62ba9d5130d9cc3b', 'Access-Accept', '2018-03-18 10:09:01'),
(275, 'polabells', '0x37c180efcb3af63e34b79ee261e6f73912', 'Access-Accept', '2018-03-18 11:31:07'),
(276, 'polabells', '0xd8b0923aab943d2914513e2e6290a8f135', 'Access-Accept', '2018-03-18 14:56:29'),
(277, 'polabells', '0x97d86dc8dd29340e20bb35c3bb9479fbfd', 'Access-Accept', '2018-03-18 14:58:00'),
(278, 'polabells', '0x91580f8bb7b96c8762599bef04bb41f112', 'Access-Accept', '2018-03-18 15:04:06'),
(279, 'polabells', '0xd83a59d4624a8e623013718998ef631029', 'Access-Accept', '2018-03-18 15:04:57'),
(280, 'polabells', '0x67cd4fc1b4c19ac1adae06b902a5be100b', 'Access-Accept', '2018-03-18 15:06:40'),
(281, 'polabells', '0x95814f0d5bb153c66ac70e77458c6af6f8', 'Access-Accept', '2018-03-18 15:16:19'),
(282, 'polabells', '0x127c0a655056e6d2bd7a68c3e5e4ea250f', 'Access-Accept', '2018-03-18 15:17:04'),
(283, 'polabells', '0x70a44c2240f49f6b4a0392c0f599cbf288', 'Access-Accept', '2018-03-18 15:19:31'),
(284, 'polabells', '0xbb296e5e74ebaec92f261edb2160f36544', 'Access-Accept', '2018-03-18 15:53:20'),
(285, 'tamibells', '0x51eab23f42956348594b0c51266f4ca2ee', 'Access-Accept', '2018-03-22 09:28:05'),
(286, 'polabells', '0x9a4d13a3aa1ace2ac1188759421f39186b', 'Access-Accept', '2018-03-22 09:35:01'),
(287, 'polabells', '0xea5b918f769a95815dd6ee7199866175d1', 'Access-Accept', '2018-03-22 09:37:15'),
(288, 'polabells', '0x644949bbf2825496b0e1a7c94f405c7111', 'Access-Accept', '2018-04-02 06:12:21'),
(289, 'polabells', '0xc26046a622e43a8da48252dd30b8031d71', 'Access-Accept', '2018-04-02 07:39:04'),
(290, 'polabells', '0xfc0ee02d4ae6be2524cbefa28897894d01', 'Access-Accept', '2018-04-02 07:40:24'),
(291, 'tamibells', '0x0fcddb4429a85e4a2263331320951f3a74', 'Access-Accept', '2018-04-02 07:40:42'),
(292, 'tamibells', '0x201fb25252c1fa0f60f7cd2d93888fc414', 'Access-Accept', '2018-04-02 08:13:30'),
(293, 'tamibells', '0x682454e385cfa7b37335f3c01e2ec4b460', 'Access-Accept', '2018-04-05 03:02:24'),
(294, 'polabells', '0x29ca70b80673955f26a250918df96e4861', 'Access-Accept', '2018-04-05 04:34:49'),
(295, 'polabells', '0x99dcf0442a0a24c82bdace9c2ebb7c12a2', 'Access-Accept', '2018-04-05 08:07:14'),
(296, 'zaib', '0xfaf1071632c83a80b9906fd3260dda9cd7', 'Access-Accept', '2018-04-05 08:08:32'),
(297, 'polabells', '0xaec9793cb0d9bc43075f0a314ad03dba1d', 'Access-Accept', '2018-04-05 08:18:39'),
(298, 'zaib', '0x76c29c05f291088b51c75d45ebeac60b6c', 'Access-Accept', '2018-04-05 09:35:01'),
(299, 'tamibells', '0x88885dd9c6440b0d713722d36b809e2193', 'Access-Accept', '2018-04-10 05:42:02'),
(300, 'zaib', '0xfd9c3f28040ea7d4e0d8c42ce9be7ba304', 'Access-Accept', '2018-04-10 06:13:26'),
(301, 'zaib', '0xbf68b7dc842e347592ac21eda04e707422', 'Access-Accept', '2018-04-10 06:27:16'),
(302, 'polabells', '0xd29b15f09c2456f5f0ce80adb6d026d984', 'Access-Accept', '2018-04-13 18:21:20'),
(303, 'polabells', '0x31bfe2649d0c844be0380a519a8cc6e798', 'Access-Accept', '2018-04-13 18:25:23'),
(304, 'polabells', '0xa860b7a4b2d4aa5589b8a3f7eec74c5ca4', 'Access-Accept', '2018-04-13 19:31:51'),
(305, 'tamibells', '0x94dc0674fee926e883439eecd63f33c702', 'Access-Accept', '2018-04-13 19:35:56'),
(306, 'zaib', '0x6c1e1ce3c0ea72aba0a4e0f17b87886d53', 'Access-Accept', '2018-04-13 20:27:08'),
(307, 'tamibells', '0x4d153a02aa4a311d7c57dff20e63785e32', 'Access-Accept', '2018-04-13 20:47:01'),
(308, 'polabells', '0xbc6dda3839d6a13e5f9c82887e24393cc7', 'Access-Accept', '2018-04-13 20:49:21'),
(309, 'tamibells', '0x6b2f914d0f4a1dc77639eaed16f74dec7c', 'Access-Accept', '2018-04-13 20:50:34'),
(310, 'tamibells', '0x32c612633ba1f5a0a68d1a277d5cf829d2', 'Access-Accept', '2018-04-13 20:55:54'),
(311, 'polabells', '0x121da8bac5af78640dee321f54aae23824', 'Access-Accept', '2018-04-17 03:00:27'),
(312, 'polabells', '0xbf5a2818b79e495845fe7c9e12991eec1e', 'Access-Accept', '2018-04-17 05:49:15'),
(313, 'polabells', '0xd89aa166563600d72232c1a6cd1e36ecae', 'Access-Accept', '2018-04-17 06:05:11'),
(314, 'zaib', '0x4d45ae6a8485ab5d727b7f9b5d1ba92460', 'Access-Accept', '2018-04-18 06:27:06'),
(315, 'tamibells', '0xf045ff1918a4c422aa4d7220bc933ad3c0', 'Access-Accept', '2018-04-19 08:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `radreply`
--

CREATE TABLE `radreply` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radreply`
--

INSERT INTO `radreply` (`id`, `username`, `attribute`, `op`, `value`) VALUES
(3, 'zaib', 'Mikrotik-Rate-Limit', '=', '0k/1k'),
(4, 'mockinqjaye', 'Mikrotik-Rate-Limit', '=', '0k/1k'),
(5, 'henlo', 'Mikrotik-Rate-Limit', '=', '0k/1k'),
(6, 'polabells', 'Mikrotik-Rate-Limit', '=', '0k/1k'),
(8, 'tamibells', 'Mikrotik-Rate-Limit', '=', '0k/0k');

-- --------------------------------------------------------

--
-- Table structure for table `radusergroup`
--

CREATE TABLE `radusergroup` (
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radusergroup`
--

INSERT INTO `radusergroup` (`username`, `groupname`, `priority`) VALUES
('zaib', 'mamon', 1),
('mockinqjaye', 'mamon', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nas`
--
ALTER TABLE `nas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nasname` (`nasname`);

--
-- Indexes for table `radacct`
--
ALTER TABLE `radacct`
  ADD PRIMARY KEY (`radacctid`),
  ADD UNIQUE KEY `acctuniqueid` (`acctuniqueid`),
  ADD KEY `username` (`username`),
  ADD KEY `framedipaddress` (`framedipaddress`),
  ADD KEY `acctsessionid` (`acctsessionid`),
  ADD KEY `acctsessiontime` (`acctsessiontime`),
  ADD KEY `acctstarttime` (`acctstarttime`),
  ADD KEY `acctstoptime` (`acctstoptime`),
  ADD KEY `nasipaddress` (`nasipaddress`);

--
-- Indexes for table `radcheck`
--
ALTER TABLE `radcheck`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`(32));

--
-- Indexes for table `radgroupcheck`
--
ALTER TABLE `radgroupcheck`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupname` (`groupname`(32));

--
-- Indexes for table `radgroupreply`
--
ALTER TABLE `radgroupreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupname` (`groupname`(32));

--
-- Indexes for table `radpostauth`
--
ALTER TABLE `radpostauth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radreply`
--
ALTER TABLE `radreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`(32));

--
-- Indexes for table `radusergroup`
--
ALTER TABLE `radusergroup`
  ADD KEY `username` (`username`(32));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nas`
--
ALTER TABLE `nas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `radacct`
--
ALTER TABLE `radacct`
  MODIFY `radacctid` bigint(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `radcheck`
--
ALTER TABLE `radcheck`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `radgroupcheck`
--
ALTER TABLE `radgroupcheck`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `radgroupreply`
--
ALTER TABLE `radgroupreply`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `radpostauth`
--
ALTER TABLE `radpostauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;
--
-- AUTO_INCREMENT for table `radreply`
--
ALTER TABLE `radreply`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
