-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 05, 2023 at 02:50 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkisiler`
--

-- --------------------------------------------------------

--
-- Table structure for table `kisi`
--

DROP TABLE IF EXISTS `kisi`;
CREATE TABLE IF NOT EXISTS `kisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adsoyad` varchar(100) CHARACTER SET latin1 NOT NULL,
  `uyruk` varchar(100) CHARACTER SET latin1 NOT NULL,
  `annead` text CHARACTER SET latin1 NOT NULL,
  `dg` varchar(100) CHARACTER SET latin1 NOT NULL,
  `boy` varchar(50) CHARACTER SET latin1 NOT NULL,
  `kilo` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tckn` varchar(11) CHARACTER SET latin1 NOT NULL,
  `adres` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `kisi`
--

INSERT INTO `kisi` (`id`, `adsoyad`, `uyruk`, `annead`, `dg`, `boy`, `kilo`, `tckn`, `adres`) VALUES
(1, 'mervenuryenice', 'turkiye', 'aliogul', '27062003', '190', '110', '50845046664', 'ali sokak'),
(2, 'Özhany?ld?r?m', 'tr', 'deliogul', '27062003', '190', '110', '50845046664', 'veli sokak'),
(3, 'Özhany?ld?r?m', 'Türkiye', 'deliogul', '27062003', '190', '110', '50845046664', 'veli sokak'),
(4, 'Ece Özberk', 'Türkiye', 'deliogul', '27062003', '190', '110', '50845046664', 'veli sokak'),
(5, 'Emirhan Ta?l?', 'Türkiye', 'deliogul', '27062003', '190', '110', '50845046664', 'veli sokak'),
(6, 'Doç. Dr. Ebru Ar?can', 'Türkiye', '{anaad}', '27062003', '190', '110', '50845046664', 'veli sokak'),
(7, 'Doruk Atan', 'Türkiye', 'alal', '27062003', '184', '110', '50845046664', 'veli sokak'),
(8, '?rem Demirba?', 'Türkiye', 'alal', '27062003', '184', '110', '50845046664', 'veli sokak'),
(9, 'Burcu Polat', 'Türkiye', 'alal', '27062003', '190', '110', '50845046664', 'veli sokak'),
(10, 'Dr. ?ahnur Ertep?nar', 'Türkiye', 'alal', '27062003', '190', '110', '50845046664', 'veli sokak'),
(11, 'Emir Özkök', 'Türkiye', 'alal', '27062003', '', '110', '50845046664', 'veli sokak'),
(12, 'Onur Kuday', 'Türkiye', 'alal', '27062003', '190', '110', '50845046664', '?ahnur Caddesi 0\n58119 Bayburt\nDo?um günü: 1971-06-15\nKan grubu: B?\nBoy: 157\nKilo: 50.2\nIp: 124.94.84.110\nphone: 05577361841\nServer IP: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 OPR/93.0.0.0\nTCKN: 25156261198'),
(13, 'Doç. Dr. Ebru Ekici', 'Türkiye', 'alal', '27062003', '190', '110', '82002808570', 'Ebru Sokak 70\n93292 Siirt\nDo?um günü: 1968-11-27\nKan grubu: O+\nBoy: 176\nKilo: 77.5\nIp: 150.180.212.232\nphone: +90 531 16 08 256\nServer IP: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 OPR/93.0.0.0\nTCKN: 82002808570'),
(14, 'Türker Egeli', 'Türkiye', 'alal', '{dg}', '190', '110', '17741581026', 'Burcu Mevkii 1\n52964 Nev?ehir\nDo?um günü: 1984-08-17\nKan grubu: O?\nBoy: 204\nKilo: 70\nIp: 51.86.248.213\nphone: +905461653784\nServer IP: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 OPR/93.0.0.0\nTCKN: 17741581026'),
(15, 'Ebru Ak?it', 'Türkiye', 'alal', '{dg}', '190', '110', '65692414580', '?rem Dura?? 63\n38467 Amasya\nDo?um günü: 1969-12-31\nKan grubu: A?\nBoy: 184\nKilo: 76\nIp: 142.147.233.178\nphone: 0 (504) 92 62 018\nServer IP: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 OPR/93.0.0.0\nTCKN: 65692414580'),
(16, 'Ça?an Karabulut', 'Türkiye', 'alal', '{dg}', '190', '110', '42608676638', 'Esma Caddesi 2\n91488 Nev?ehir\nDo?um günü: 1968-01-26\nKan grubu: B?\nBoy: 182\nKilo: 53.3\nIp: 75.244.57.246\nphone: 0 533 86 94 436\nServer IP: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 OPR/93.0.0.0\nTCKN: 42608676638'),
(17, 'Emel Uluhan', 'Türkiye', 'alal', '{dg}', '190', '110', '56232068394', 'Adal Mevkii 6\n28742 ?anl?urfa\nDo?um günü: 1964-06-26\nKan grubu: B+\nBoy: 150\nKilo: 106.8\nIp: 255.86.170.8\nphone: 0 557 19 84 952\nServer IP: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 OPR/93.0.0.0\nTCKN: 56232068394'),
(18, '?rem Ayverdi', 'Türkiye', '{anad}', '27062004', '190', '110', '13823054174', 'Körmükçü Mevkii 90\n20041 A?r?\nDo?um günü: 1960-09-16\nKan grubu: O?\nBoy: 162\nKilo: 45.9\nIp: 154.123.33.244\nphone: +905357529588\nServer IP: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 OPR/93.0.0.0\nTCKN: 13823054174'),
(19, 'Doç. Dr. Cem Erbay', 'Türkiye', 'Topçuo?lu\nAdres: Efe Sokak 758\n30530 Karaman\nDo?um günü: 1998-04-17\nKan grubu: O+\nBoy: 206\nKilo: 64.2\nIp: 154.204.124.153\nphone: 0 559 98 14 950\nServer IP: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 OPR/93.0.0.0\nTCKN: 89639855328', '27062004', '190', '110', '89639855328', 'Efe Sokak 758\n30530 Karaman\nDo?um günü: 1998-04-17\nKan grubu: O+\nBoy: 206\nKilo: 64.2\nIp: 154.204.124.153\nphone: 0 559 98 14 950\nServer IP: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 OPR/93.0.0.0\nTCKN: 89639855328'),
(20, 'Berke Kutlay', 'Türkiye', 'Kesero?lu', '27062004', '190', '110', '36815663468', '?ahnur Kav?a?? 2\n26720 Bilecik'),
(21, '?rem Karaböcek', 'Türkiye', 'Ça??ran', '27062004', '190', '110', '14360705130', 'Emel Caddesi 98\n29812 Eski?ehir'),
(22, '?ahnur Türky?lmaz', 'Türkiye', 'Oralo?lu', '27062004', '190', '110', '22640442194', 'Özdenak ?? Han? 0\n34055 Sinop'),
(23, 'Prof. Dr. Ümran Ak???k', 'Türkiye', 'Tu?luk', '1970-08-18', '206', '65.4', '38789197710', 'Ada Mevkii 1\n50734 Ankara'),
(24, 'Barlas Çapano?lu', 'Türkiye', 'Biçer', '2004-07-06', '159', '59.6', '82819922674', 'Burcu Kav?a?? 48\n93591 Denizli'),
(25, 'Atakan Ta?ç?', 'Türkiye', 'Ayayd?n', '1994-12-06', '191', '91.7', '57154388270', 'Yaz?c? ?? Han? 376\n25090 Erzincan'),
(26, 'Ada Köylüo?lu', 'Türkiye', 'Berbero?lu', '1996-02-08', '172', '59.9', '64396278498', 'Burcu Dura?? 76\n07131 Burdur'),
(27, 'Dr. Rüya Tokgöz', 'Türkiye', 'Tu?luk', '1980-10-21', '150', '49.2', '96244155118', 'Ogün Dura?? 80\n25028 Gaziantep'),
(28, 'Emirhan Dalk?ran', 'Türkiye', 'Egeli', '1968-10-30', '204', '48', '73564977828', 'Ta?ç? Kav?a?? 76\n67630 Bursa'),
(29, 'Ece Akan', 'Türkiye', 'Tazegül', '1965-06-25', '152', '71', '92170735790', 'Berke ?? Han? 6\n86715 Siirt'),
(30, 'Burcu Çörekçi', 'Türkiye', 'Koç', '1993-10-01', '149', '64.6', '79455219978', 'Kumcuo?lu Sokak 506\n89531 Tunceli'),
(31, 'Ada Numano?lu', 'Türkiye', 'Ertürk', '1983-04-16', '193', '72.1', '69405028576', 'Keçeci Caddesi 210\n83547 Manisa'),
(32, 'Ada Denkel', 'Türkiye', 'Körmükçü', '2003-09-26', '167', '92.1', '56033596300', 'Çapano?lu Mevkii 927\n45894 Burdur'),
(33, '', '', '', '', '', '', '', ''),
(34, 'Sinem Uluhan', 'Türkiye', 'Evliyao?lu', '2000-07-30', '203', '99.7', '64183750688', 'Karaduman ?? Han? 27\n70968 Bal?kesir'),
(35, 'Ümran Öztuna', 'Türkiye', 'Özkara', '1958-05-23', '178', '64.6', '26050232178', 'Ümran ?? Han? 6\n18252 Düzce'),
(36, 'Doç. Dr. Emel Kurutluo?lu', 'Türkiye', 'Kocab?y?k', '1994-03-11', '206', '64.5', '42972144610', 'Köyba?? Sokak 2\n97726 Sivas'),
(37, '', '', '', '', '', '', '', ''),
(38, '', '', '', '', '', '', '', ''),
(39, '', '', '', '', '', '', '', ''),
(40, '', '', '', '', '', '', '', ''),
(41, 'Burcu Küçükler', 'Türkiye', 'Demirba?', '1979-12-15', '196', '64.1', '14950012754', 'Bora Caddesi 513\n22127 Adana'),
(42, 'Dr. ?rem Özkök', 'Türkiye', 'Numano?lu', '1974-04-22', '184', '86', '59731955790', 'Canberk Kav?a?? 26\n37503 Malatya'),
(43, '?rem Nebio?lu', 'Türkiye', 'Akyüz', '1964-12-05', '156', '56.7', '71497721884', 'Meriç Kav?a?? 720\n55605 Adana'),
(44, 'Ece Aclan', 'Türkiye', 'Sar?o?lu', '1985-10-01', '203', '85.3', '28710272470', 'Akyüz Caddesi 640\n38456 Manisa'),
(45, 'Efe Velio?lu', 'Türkiye', 'Yorulmaz', '1994-04-28', '147', '48.4', '35559849558', 'Rüya Mevkii 5\n86075 Isparta');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
