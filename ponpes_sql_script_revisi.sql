/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/* membuat database untuk sistem database ponpes */
DROP DATABASE IF EXISTS `database_ponpes`;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `database_ponpes`;

/* use databasse_ponpes*/;
USE `database_ponpes`;


DROP TABLE IF EXISTS `PondokPesantren`;
/* membuat table pertama dalam database ponpes */;
CREATE TABLE IF NOT EXISTS `PondokPesantren`(
    `id_pondok` INT(11) NOT NULL,
    `nama_ponpes` VARCHAR(255) NOT NULL,
    `namaPendiri_ponpes` VARCHAR(255) NOT NULL,
    `namaPemimpin_ponpes` VARCHAR(255) NOT NULL,
    `tahun_berdiri` YEAR NOT NULL,
    `jenis_ponpes` VARCHAR(255) NOT NULL,
    PRIMARY KEY `pondokpesantren_id_pondok_primary`(`id_pondok`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/* isi tabel ponpoes */;
INSERT INTO `PondokPesantren`(`id_pondok`,`nama_ponpes`,`namaPendiri_ponpes`,`namaPemimpin_ponpes`,`tahun_berdiri`,`jenis_ponpes`) values
(12912,'Pondok Pesantren Astra','KH.AchmadShiddiq','KH.Firjaun Barlaman','1968','klasik');

DROP TABLE IF EXISTS `santri`;
/* tabel santri */;
CREATE TABLE IF NOT EXISTS `santri`(
    `santri_id` INT NOT NULL,
    `nama_santri` VARCHAR(255) NOT NULL,
    `umur_santri` SMALLINT(6) NOT NULL,
    `tahun_masuk` YEAR NOT NULL,
    `nama_orangtua` VARCHAR(255) NOT NULL,
    `no_hp_ortu` VARCHAR(255) NOT NULL,
    `alamat_ortu` VARCHAR(255) NOT NULL,
    `tahunForeign` INT DEFAULT NULL,
    PRIMARY KEY (`santri_id`),
    KEY `tahunForeign` (`tahunForeign`),
    CONSTRAINT `santri_blfk`FOREIGN KEY (`tahunForeign`) REFERENCES `angkata_santri` (`santri_angkata_id`)
) ENGINE=INNODB;

/* mengisi data pada database santri */;
insert into `santri`(`santri_id`,`nama_santri`,`umur_santri`,`tahun_masuk`,`nama_orangtua`,`no_hp_ortu`,`alamat_ortu`,`tahunForeign`) values
(1101,'Puti Hana Adriansyah', 18, '2020', 'Iriana Wasita, S.I.Kom', '(077) 286 8335', 'Jalan Wonoayu No. 123Banjarbaru, Nusa Tenggara Timur 25586',1),
(1102,'Jelita Sudiati', 18, '2020', 'Cut Kamila Gunarto, S.H.', '62 (50) 977-9975', 'Gg. Kutisari Selatan No. 120Bau-Bau, SG 30673',1),
(1103,'Bakda Maheswara', 18, '2020', 'Paramita Ardianto', '62 (000) 822 0164', 'Gg. Pasteur No. 4Palangkaraya, BT 88972',1),
(1104,'R. Ika Kurniawan, S.I.Kom', 18, '2020', 'Virman Megantara', '62 (0082) 822 2573', 'Jalan Wonoayu No. 860Subulussalam, Sulawesi Utara 11753',1),
(1105,'Puti Hafshah Budiyanto', 18, '2020', 'Tania Wahyuni', '62 (0568) 580-6088', 'Gg. Raya Setiabudhi No. 4Bau-Bau, JA 29140',1),
(1106,'Kasiyah Mustofa', 18, '2020', 'Vera Farida, M.Farm', '62 (0209) 587-0595', 'Gang PHH. Mustofa No. 378Jayapura, KR 42857',1),
(1107,'Asmianto Uwais', 18, '2020', 'Dr. Almira Widiastuti, S.H.', '62-016-425-8812', 'Gang Rajawali Timur No. 52Metro, LA 45088',1),
(1108,'KH. Dipa Zulaika, M.Farm', 18, '2020', 'Aditya Nababan, S.Farm', '62-03-361-7732', 'Gg. Indragiri No. 566Ambon, JB 21353',1),
(1109,'Tedi Mayasari', 18, '2020', 'Nasab Marpaung', '(0830) 710-3275', 'Gg. Pacuan Kuda No. 36Depok, SN 52612',1),
(1110,'drg. Emin Pradipta', 18, '2020', 'Paris Tampubolon', '(0158) 354 1831', 'Jalan S. Parman No. 411Subulussalam, Jambi 94400', 1),
(1111,'R.A. Ifa Wahyuni, S.H.', 18, '2020', 'KH. Kenzie Aryani, M.M.', '62-28-573-6779', 'Gg. Rungkut Industri No. 088Dumai, Lampung 50221', 1),
(1112,'Vicky Hastuti', 18, '2020', 'Kasiran Sudiati', '62 (041) 623-4152', 'Gg. R.E Martadinata No. 10Parepare, KI 00106', 1),
(1113,'Yunita Kuswoyo', 18, '2020', 'Jasmani Prastuti, S.IP', '62 (0861) 331-0434', 'Gang Cikapayang No. 9Singkawang, JT 49804', 1),
(1114,'Drs. Kayla Haryanto', 18, '2020', 'Zulaikha Anggriawan', '62-306-309-9907', 'Jalan Rumah Sakit No. 20Cilegon, KB 87255', 1),
(1116,'drg. Betania Prakasa, S.Farm', 18, '2020', 'Intan Hidayanto', '087 195 0934', 'Jalan Gardujati No. 466Banjarmasin, PA 05065', 1),
(1117,'Tgk. Gambira Saputra, S.H.', 18, '2020', 'Daru Nugroho, S.Ked', '(045) 351 1834', 'Gang Gegerkalong Hilir No. 90Pariaman, JT 28153', 1),
(1118,'Hamzah Wahyuni', 18, '2020', 'Siti Winarsih', '62 (0942) 667-4829', 'Jl. Antapani Lama No. 1Payakumbuh, Jawa Barat 86736', 1),
(1119,'Icha Wibowo', 18, '2020', 'Alika Pertiwi', '62-024-276-0408', 'Jalan Pasir Koja No. 105Pariaman, MU 98274', 1),
(1120,'Hamima Lestari', 18, '2020', 'Dr. Lutfan Wacana', '62 (536) 711 4832', 'Gg. Kutai No. 892Banjarmasin, SS 54531', 1),
(1121,'Drs. Salsabila Waluyo', 18, '2020', 'Edi Putra, M.Kom.', '62-66-968-9522', 'Gang Gardujati No. 1Bengkulu, Sulawesi Barat 13675', 1),
(1122,'Puti Budiyanto', 18, '2020', 'Karsa Maryadi', '62-76-888-0536', 'Gg. HOS. Cokroaminoto No. 68Mataram, DKI Jakarta 57843', 1),
(1123,'Tgk. Damu Anggriawan', 18, '2020', 'Titi Mardhiyah, S.Pt', '62 (068) 275-8569', 'Gg. M.H Thamrin No. 509Serang, Jawa Barat 56695', 1),
(1124,'Cinthia Winarno', 18, '2020', 'Kani Gunarto', '62 (114) 443 6482', 'Jl. Sadang Serang No. 62Solok, NT 90882', 1),
(1125,'Cinta Rahimah', 18, '2020', 'Tgk. Samiah Firmansyah, S.IP', '62 (082) 761-7303', 'Gang Pasir Koja No. 2Purwokerto, Kepulauan Riau 02459', 1),
(1126,'Hartaka Saputra', 18, '2020', 'Vicky Irawan', '62-048-794-9817', 'Jl. Dr. Djunjunan No. 630Malang, BA 90688', 1),
(1127,'Reza Zulkarnain', 18, '2020', 'H. Simon Simbolon', '62-0060-122-3419', 'Jalan R.E Martadinata No. 965Medan, SB 86934', 1),
(1128,'Arsipatra Budiyanto', 18, '2020', 'Dwi Mandasari', '(0068) 353-3754', 'Jl. KH Amin Jasuta No. 81Banjarbaru, Nusa Tenggara Barat 98002', 1),
(1129,'R.M. Karsa Oktaviani, S.Kom', 18, '2020', 'Mustofa Najmudin', '085 966 8335', 'Jalan Pasir Koja No. 00Kota Administrasi Jakarta Barat, LA 91868', 1),
(1130,'Hari Wastuti, S.Pd', 18, '2020', 'Ratna Utama', '62 (593) 890 3259', 'Jl. Gedebage Selatan No. 359Ternate, Sumatera Selatan 48488', 1),
(1131,'Reza Thamrin', 18, '2020', 'Tantri Prakasa', '62 (730) 336-6538', 'Jl. Pasir Koja No. 716Tual, ST 45664', 1),
(1132,'R. Reza Maryadi, S.IP', 18, '2020', 'KH. Liman Farida', '(092) 591-0400', 'Jl. Setiabudhi No. 923Tomohon, SR 30048', 1),
(1133,'Tami Firmansyah, M.Pd', 18, '2020', 'Safina Hariyah, S.Psi', '(080) 217-9507', 'Jalan S. Parman No. 7Cirebon, JA 98150', 1),
(1134,'Cindy Wijaya', 18, '2020', 'Citra Hutasoit', '62-073-421-2974', 'Jalan Cikapayang No. 92Makassar, LA 94356', 1),
(1135,'Putri Zulaika', 18, '2020', 'Jamil Palastri', '62 (091) 748 7146', 'Gg. Kendalsari No. 183Tual, Banten 94107', 1),
(1136,'Ir. Azalea Januar, S.E.I', 18, '2020', 'H. Viman Sitompul', '62 (733) 740 7917', 'Gg. Jakarta No. 1Salatiga, Bali 20351', 1),
(1137,'Dr. Lintang Prakasa, S.E.I', 18, '2020', 'Virman Habibi', '62 (67) 588 8494', 'Jalan W.R. Supratman No. 7Bima, JI 46942', 1),
(1138,'Dr. Karimah Melani', 18, '2020', 'Umar Hutapea', '0859016754', 'Gang Cihampelas No. 6Palopo, NB 75085', 1),
(1139,'Atma Wibowo, M.Farm', 18, '2020', 'Dian Samosir', '0881709708', 'Gang Joyoboyo No. 419Lubuklinggau, Jawa Timur 51635', 1),
(1140,'Irma Uyainah', 18, '2020', 'Raisa Andriani', '(0932) 072 0405', 'Gg. Suniaraja No. 2Surakarta, YO 74047', 1),
(1141,'Cornelia Nurdiyanti', 18, '2020', 'Sutan Warji Wijaya, S.I.Kom', '(030) 050 2343', 'Gang Otto Iskandardinata No. 414Purwokerto, Sumatera Utara 21195', 1),
(1142,'Shakila Wibisono', 18, '2020', 'Zulaikha Hastuti, M.TI.', '62 (0274) 677 5839', 'Gang Monginsidi No. 97Pangkalpinang, Maluku Utara 54343', 1),
(1143,'R.M. Galak Prastuti', 18, '2020', 'Ulya Usada', '62 (060) 786 9621', 'Gg. Asia Afrika No. 248Sukabumi, Papua Barat 58212', 1),
(1144,'Drs. Tari Yulianti, S.IP', 18, '2020', 'dr. Jarwa Lailasari, M.M.', '(028) 044-0145', 'Jl. Kapten Muslihat No. 8Pasuruan, Papua 22354', 1),
(1145,'Lili Aryani', 18, '2020', 'Gaiman Yolanda', '62 (0899) 164-4685', 'Jalan Wonoayu No. 823Dumai, Sulawesi Selatan 93753', 1),
(1146,'Harto Situmorang', 18, '2020', 'Mala Nasyidah', '(008) 632 3933', 'Jalan Merdeka No. 4Pematangsiantar, DI Yogyakarta 35613', 1),
(1147,'Zamira Hardiansyah, S.Gz', 18, '2020', 'R.M. Rahmat Pertiwi, S.Psi', '62-57-001-7114', 'Jl. Erlangga No. 872Gorontalo, KI 83472', 1),
(1148,'Bakijan Salahudin', 18, '2020', 'Yunita Hutasoit', '62-383-004-3232', 'Gang Moch. Ramdan No. 77Bekasi, JT 55836', 1),
(1149,'Hamima Wasita', 18, '2020', 'Bakiono Winarno, S.E.I', '62 (0410) 399-5471', 'Jalan Pasirkoja No. 204Magelang, Papua 42005', 1),
(1150,'Hj. Tira Uwais', 18, '2020', 'Ghaliyati Suartini', '62 (253) 837 9941', 'Jl. Abdul Muis No. 358Sungai Penuh, Sumatera Barat 74875', 1),
(1151,'Emin Maulana', 18, '2020', 'Bambang Latupono', '62-040-233-2640', 'Gg. Jayawijaya No. 1Dumai, Kepulauan Riau 49994', 1),
(1152,'Hendra Novitasari', 18, '2020', 'Jasmin Waskita', '62-079-108-5183', 'Jl. Pelajar Pejuang No. 052Metro, Kalimantan Barat 77951', 1),
(1153,'Agnes Saptono', 18, '2020', 'Siska Wahyudin', '62-013-222-7601', 'Gg. M.H Thamrin No. 009Denpasar, DI Yogyakarta 17463', 1),
(1154,'Maman Nurdiyanti', 18, '2020', 'T. Embuh Permadi', '62 (902) 521 2382', 'Jalan Ciumbuleuit No. 3Pekanbaru, Sumatera Selatan 88640', 1),
(1155,'Dr. Kamaria Siregar', 18, '2020', 'Raihan Napitupulu', '081 444 8293', 'Jl. Asia Afrika No. 626Sukabumi, Sumatera Utara 62452', 1),
(1156,'Wawan Halimah', 18, '2020', 'Gambira Laksmiwati, M.M.', '0813171561', 'Gang Cempaka No. 002Padangpanjang, SR 07574', 1),
(1157,'Praba Sudiati', 18, '2020', 'Balidin Kusmawati, S.I.Kom', '(082) 659-8115', 'Gg. Cihampelas No. 90Makassar, SN 86455', 1),
(1158,'Gilang Safitri', 18, '2020', 'R.A. Ani Widodo', '62 (012) 600-0310', 'Jalan M.T Haryono No. 477Depok, KB 41985', 1),
(1159,'Uli Samosir', 18, '2020', 'Vanya Hutapea', '62-0783-589-5670', 'Jalan Joyoboyo No. 775Gorontalo, BE 44886', 1),
(1160,'H. Heru Oktaviani', 18, '2020', 'Jaga Sihombing', '62 (086) 575-1750', 'Gg. Dipenogoro No. 44Yogyakarta, LA 21167', 1),
(1161,'Aslijan Puspasari', 18, '2020', 'R. Uli Mahendra', '62-0051-996-5035', 'Gang Soekarno Hatta No. 601Sorong, Sulawesi Utara 03726', 1),
(1162,'Restu Wijaya', 18, '2020', 'Bella Wasita', '089 890 3676', 'Gg. Rajiman No. 87Jambi, Papua 38372', 1),
(1163,'Damu Saputra, M.Ak', 18, '2020', 'Yahya Wasita', '(030) 809-0482', 'Jl. Gardujati No. 2Tangerang, Aceh 29232', 1),
(1164,'T. Lamar Marbun, M.Pd', 18, '2020', 'Ir. Winda Salahudin', '62 (061) 009-3842', 'Gang Erlangga No. 1Pasuruan, SB 56009', 1),
(1165,'Cahyono Nugroho', 18, '2020', 'Cengkal Novitasari', '(0806) 917 2851', 'Gang Merdeka No. 2Kotamobagu, NB 91307', 1),
(1166,'Ajeng Mandasari, S.Ked', 18, '2020', 'dr. Dariati Nasyidah, M.Kom.', '62-0462-866-4857', 'Gang Cihampelas No. 0Madiun, Maluku Utara 03331', 1),
(1167,'Mumpuni Rahayu, S.Kom', 18, '2020', 'Kartika Tarihoran', '(007) 815 4806', 'Gg. Sukajadi No. 1Tomohon, JA 41622', 1),
(1168,'Dr. Zalindra Nasyidah, S.Pt', 18, '2020', 'Tgk. Dinda Yulianti, S.IP', '62 (015) 570 4837', 'Gg. HOS. Cokroaminoto No. 15Kota Administrasi Jakarta Timur, ST 27497', 1),
(1169,'Drs. Lasmono Rahmawati, S.E.', 18, '2020', 'Galuh Budiyanto', '(066) 691 9857', 'Gg. Yos Sudarso No. 89Depok, Sumatera Selatan 59424', 1),
(1170,'Fitriani Dongoran, S.E.', 18, '2020', 'Kiandra Prakasa, M.Ak', '62 (038) 484-1670', 'Gg. PHH. Mustofa No. 1Batu, LA 09115', 1),
(1171,'Anita Adriansyah', 18, '2020', 'Artawan Waskita', '62 (0305) 406-8336', 'Gg. H.J Maemunah No. 02Bandar Lampung, Sumatera Barat 23644', 1),
(1172,'Novi Gunawan', 18, '2020', 'H. Naradi Maryadi', '62-0761-797-4122', 'Jalan Sukajadi No. 055Tangerang, Riau 62461', 1),
(1173,'Gangsa Siregar, S.Pd', 18, '2020', 'Puti Aurora Novitasari, M.Farm', '62 (0265) 750 4743', 'Jl. Suryakencana No. 772Kota Administrasi Jakarta Barat, KT 70218', 1),
(1174,'Ifa Nasyidah, M.M.', 18, '2020', 'Mutia Tampubolon', '(064) 769 1904', 'Gang Pasir Koja No. 30Payakumbuh, BB 82963', 1),
(1175,'Drs. Siti Saragih', 18, '2020', 'Lala Sudiati', '62 (301) 292 3257', 'Gg. Pelajar Pejuang No. 34Lhokseumawe, MU 43179', 1),
(1176,'Kasiyah Waskita', 18, '2020', 'Dr. Fathonah Laksmiwati', '62 (0819) 514-7410', 'Gang Setiabudhi No. 8Sabang, NB 89508', 1),
(1177,'Puspa Latupono', 18, '2020', 'H. Prayogo Prastuti, S.E.', '(032) 310 7025', 'Gang Ciumbuleuit No. 994Pangkalpinang, Sulawesi Utara 52584', 1),
(1178,'Rina Mandasari', 18, '2020', 'Puji Saputra, S.E.', '62-028-848-0583', 'Jl. Ciwastra No. 503Kendari, Nusa Tenggara Timur 03223', 1),
(1179,'Dr. Sabrina Iswahyudi, S.Ked', 18, '2020', 'Tgk. Shakila Yulianti, M.Farm', '(0303) 347 2300', 'Gg. Astana Anyar No. 82Prabumulih, Kalimantan Timur 37056', 1),
(1180,'Purwanto Suartini', 18, '2020', 'Rina Januar', '0879631906', 'Jl. Veteran No. 0Payakumbuh, BE 81485', 1),
(1181,'Parman Anggriawan', 18, '2020', 'Drs. Warji Najmudin', '62 (0688) 156-4010', 'Jl. Pasir Koja No. 907Mojokerto, Riau 80122', 1),
(1182,'Ikhsan Anggraini', 18, '2020', 'Raharja Iswahyudi', '62 (863) 491-2923', 'Jalan Rajiman No. 311Semarang, MU 02551', 1),
(1183,'Gading Irawan', 18, '2020', 'Zaenab Salahudin', '62 (0578) 929 6935', 'Gang Cikapayang No. 522Kota Administrasi Jakarta Barat, JA 91983', 1),
(1184,'Ina Dongoran', 18, '2020', 'Gina Ardianto, S.I.Kom', '62-0389-963-8485', 'Gang Rajiman No. 9Semarang, Kepulauan Bangka Belitung 75481', 1),
(1185,'Zamira Hutapea', 18, '2020', 'Drs. Pardi Wacana', '(0633) 857-7831', 'Jl. Erlangga No. 68Pekalongan, Banten 34498', 1),
(1186,'Umi Dabukke', 18, '2020', 'Gilda Hastuti', '62 (0842) 286-7160', 'Gg. Waringin No. 636Kendari, Kalimantan Utara 32029', 1),
(1187,'Uli Pradipta', 18, '2020', 'dr. Jessica Manullang', '62 (52) 347 4726', 'Gg. Joyoboyo No. 08Depok, Nusa Tenggara Barat 01301', 1),
(1188,'R.A. Natalia Lestari', 18, '2020', 'Puti Ida Handayani', '087 310 8543', 'Gang Sadang Serang No. 27Gorontalo, JA 09101', 1),
(1189,'Laras Hastuti', 18, '2020', 'Dinda Latupono', '62 (924) 895-8618', 'Gg. Rumah Sakit No. 10Kota Administrasi Jakarta Utara, Aceh 44592', 1),
(1190,'Umi Utami', 18, '2020', 'Viktor Fujiati', '082 843 2456', 'Jalan Raya Setiabudhi No. 865Sabang, LA 90489', 1),
(1191,'Lili Dabukke, S.Kom', 18, '2020', 'Cahyadi Purwanti', '62 (97) 728 9659', 'Gg. W.R. Supratman No. 603Padangpanjang, Sumatera Selatan 09353', 1),
(1192,'Puti Puti Irawan, S.Farm', 18, '2020', 'Dian Andriani', '082 095 4466', 'Jalan Indragiri No. 839Lubuklinggau, KU 70082', 1),
(1193,'Ganep Iswahyudi', 18, '2020', 'Virman Nasyiah, S.Pt', '62 (033) 895-7618', 'Jalan Rumah Sakit No. 94Mojokerto, Maluku Utara 55782', 1),
(1194,'Ibrahim Laksita', 18, '2020', 'Puti Juli Mandala', '036-477-1541', 'Gg. Kiaracondong No. 771Pariaman, Lampung 21079', 1),
(1195,'Kasiyah Setiawan', 18, '2020', 'KH. Cemplunk Rajata', '(052) 080-1329', 'Jl. S. Parman No. 744Bandung, Papua 54715', 1),
(1196,'Luwes Nashiruddin', 18, '2020', 'Genta Suryono', '62-853-879-5210', 'Gang M.T Haryono No. 636Blitar, KU 99759', 1),
(1197,'Carub Mayasari, S.Gz', 18, '2020', 'Puti Ulva Hutasoit, S.Sos', '(0212) 867-5761', 'Gg. Dipenogoro No. 5Makassar, PA 67165', 1),
(1198,'Raina Wijayanti', 18, '2020', 'Cindy Rahimah', '62-25-420-5707', 'Gang Laswi No. 47Salatiga, SB 01450', 1),
(1199,'Titin Prasasta', 18, '2020', 'Jefri Aryani, S.Psi', '(009) 931-2253', 'Gg. Moch. Toha No. 313Mojokerto, PA 91060', 1),
(1200,'Umi Rajata', 18, '2020', 'Utama Habibi', '62-203-511-5367', 'Gg. Pasteur No. 63Samarinda, BE 71571', 1);


DROP TABLE IF EXISTS `angkata_santri`;
/* tabel angkatan santri */;
CREATE TABLE IF NOT EXISTS `angkata_santri`(
    `angkatan_santri_id` INT(11) NOT NULL,
    `santri_angkata_id` INT(11) NOT NULL,
    PRIMARY KEY (`angkatan_santri_id`,`santri_angkata_id`),
    KEY `santri_angkata_id` (`santri_angkata_id`)
) ENGINE=INNODB;

insert into `angkata_santri`(`angkatan_santri_id`,`santri_angkata_id`) values (1,1);


DROP TABLE IF EXISTS `angkatanAjar`;
/* tabel angkataAjar */;
CREATE TABLE IF NOT EXISTS `angkatanAjar`(
    `angkatan_id` INT(11) NOT NULL,
    `pelajaranforeign_id` INT(11) DEFAULT NULL,
    `tahun_id` INT(11) NOT NULL,
    `tahun_ajar_santri` YEAR NOT NULL,
    `keterangan_angkatan` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`angkatan_id`),
    KEY `pelajaranforeign_id` (`pelajaranforeign_id`),
    KEY `tahun_id` (`tahun_id`),
    CONSTRAINT `angkatanajar_ibfk1` FOREIGN KEY (`tahun_id`) REFERENCES `angkata_santri` (`angkatan_santri_id`),
    CONSTRAINT `angkatanajar_ibfk2` FOREIGN KEY (`pelajaranforeign_id`) REFERENCES `pelajaran` (`pelajaran_id`)
) ENGINE=INNODB;

/* mengisi data pada tabel angkatanAjar */;
insert into `angkatanAjar`(`angkatan_id`,`pelajaranforeign_id`,`tahun_id`,`tahun_ajar_santri`,`keterangan_angkatan`) values
(1, 1, 1, '2020', 'madrasah aliyah'),
(2, 2, 1, '2020', 'madrasah aliyah'),
(3, 3, 1, '2020', 'madrasah aliyah'),
(4, 4, 1, '2020', 'madrasah aliyah'),
(5, 5, 1, '2020', 'madrasah aliyah'),
(6, 6, 1, '2020', 'madrasah aliyah'),
(7, 7, 1, '2020', 'madrasah aliyah'),
(8, 8, 1, '2020', 'madrasah aliyah'),
(9, 9, 1, '2020', 'madrasah aliyah'),
(10, 10, 1, '2020', 'madrasah aliyah'),
(11, 11, 1, '2020', 'madrasah aliyah');


DROP TABLE IF EXISTS `pengajar`;
/* tabel pengajar */;
CREATE TABLE IF NOT EXISTS `pengajar`(
    `pengajar_id` INT(11) NOT NULL,
    `matkul_id` INT(11) NOT NULL,
    `nama_pengajar` VARCHAR(255) NOT NULL,
    `umur_pengajar` TINYINT NOT NULL,
    `no_hp_pengajar` VARCHAR(40) NOT NULL,
    `alamat_pengajar` VARCHAR(255) NOT NULL,
    `keterangan_pengajar` TEXT NOT NULL,
    PRIMARY KEY (`pengajar_id`)
) ENGINE=INNODB;

/* isi tabel pengajar */;
insert into `pengajar`(`pengajar_id`,`matkul_id`,`nama_pengajar`,`umur_pengajar`,`no_hp_pengajar`,`alamat_pengajar`,`keterangan_pengajar`) values
(1, 1, 'Yuni Winarno', 30, '(0999) 168 5753', 'Jl. Surapati No. 156Kotamobagu, Jawa Barat 79818', 'Recusandae debitis quis culpa. Enim totam officiis sunt mollitia.'),
(2, 2, 'Balapati Mayasari', 30, '62 (74) 204-4952', 'Jalan Gardujati No. 185Cimahi, SB 68172', 'Quaerat eveniet iste nihil. Molestiae reiciendis debitis quas nulla ad officiis.'),
(3, 3, 'dr. Novi Wastuti, S.IP', 30, '(0755) 926-3612', 'Gg. Medokan Ayu No. 008Tomohon, Kepulauan Riau 53036', 'Sapiente aperiam distinctio doloribus dignissimos. Omnis asperiores asperiores quibusdam.'),
(4, 4, 'Qori Mangunsong, S.I.Kom', 30, '62-044-641-2886', 'Jl. Cikapayang No. 7Batu, Sumatera Barat 43844', 'Magni corporis commodi vitae. Similique fuga delectus blanditiis.'),
(5, 5, 'Vinsen Wijayanti', 30, '(0835) 316-2806', 'Jl. Monginsidi No. 0Cilegon, KT 91759', 'Modi alias ea fugiat tempora. Esse expedita maxime accusamus beatae vel magni.'),
(6, 6, 'Vivi Marpaung', 30, '62-000-627-9759', 'Gang Sentot Alibasa No. 926Tanjungbalai, SG 60569', 'Ab assumenda harum id voluptates.Impedit dignissimos natus odio eaque.'),
(7, 7, 'KH. Capa Dabukke', 30, '(0389) 230-4295', 'Jalan Pasirkoja No. 80Cilegon, Sulawesi Tengah 87446', 'Velit ab labore velit provident. Quisquam labore delectus molestias doloribus quis.'),
(8, 8, 'Dr. Melinda Maryati, S.H.', 30, '62 (0792) 791 0052', 'Jl. Jamika No. 1Pontianak, SG 57132', 'Veritatis cum impedit facilis. Porro accusantium perferendis voluptas.'),
(9, 9, 'Hafshah Marbun', 30, '62-045-699-1731', 'Gg. Cikutra Timur No. 048Palopo, Banten 23251', 'Expedita et odio accusantium animi natus. Earum odit voluptatibus architecto. Aliquid ab voluptate.'),
(10, 10, 'Fathonah Mandala', 30, '62 (93) 049 2100', 'Gang Rumah Sakit No. 2Palu, Sulawesi Tengah 48759', 'Tenetur quibusdam vero eveniet occaecati doloremque. Vitae ut nemo nam illo sit provident.'),
(11, 11, 'Yance Hardiansyah', 30, '0874791338', 'Gg. Raya Setiabudhi No. 5Padang Sidempuan, Maluku 60377', 'Optio temporibus assumenda nostrum. Amet architecto voluptates provident suscipit nihil.');


DROP TABLE IF EXISTS `pelajaran`;

/* tabel pelajaran */;
CREATE TABLE IF NOT EXISTS `pelajaran`(
    `pelajaran_id` INT(11) NOT NULL,
    `pengajar_id` INT(11) NOT NULL,
    `namaPelajaran` VARCHAR(255) NOT NULL,
    `jenisPelajaran` VARCHAR(255) NULL,
    `keteranganPelajaran` TEXT NULL,
    PRIMARY KEY (`pelajaran_id`),
    KEY `pengajar_id`(`pengajar_id`),
    CONSTRAINT `pelajaran_pengajar_id_foreign` FOREIGN KEY(`pengajar_id`) REFERENCES `pengajar`(`pengajar_id`)
) ENGINE=INNODB;

/* isi tabel pelajaran */;
insert into `pelajaran`(`pelajaran_id`,`pengajar_id`,`namaPelajaran`,`jenisPelajaran`,`keteranganPelajaran`) values
(1, 1, 'tafsir', 'NULL', 'NULL'),
(2, 2, 'hadits', 'NULL', 'NULL'),
(3, 3, 'ilmu-tauhid', 'NULL', 'NULL'),
(4, 4, 'fiqh', 'NULL', 'NULL'),
(5, 5, 'ushul-fiqh', 'NULL', 'NULL'),
(6, 6, 'ilmu-akhlaq', 'NULL', 'NULL'),
(7, 7, 'ilmu-balaghoh', 'NULL', 'NULL'),
(8, 8, 'ilmu-falak', 'NULL', 'NULL'),
(9, 9, 'muhafadhoh', 'NULL', 'NULL'),
(10, 10, 'akhlaq', 'NULL', 'NULL'),
(11, 11, 'imla`', 'NULL', 'NULL');


DROP TABLE IF EXISTS `nonFormal`;
/* tabel nonFormal */;
CREATE TABLE `nonFormal`(
    `nonformal_id` INT NOT NULL,
    `santri_id` INT NOT NULL,
    `tpq_id` INT NOT NULL,
    `ibadah_id` INT NOT NULL,
    `waktu_tpq` DATE NOT NULL,
    PRIMARY KEY (`nonformal_id`),
    KEY `santri_id`(`santri_id`),
    CONSTRAINT `nonformal_santri_blfk1` FOREIGN KEY(`santri_id`) REFERENCES `santri`(`santri_id`),
    CONSTRAINT `nonformal_santri_blfk2` FOREIGN KEY(`tpq_id`) REFERENCES `tpq`(`tpq_id`),
    CONSTRAINT `nonformal_santri_blfk3` FOREIGN KEY(`ibadah_id`) REFERENCES `ibadah`(`ibadah_id`)
) ENGINE=INNODB;

/* isi tabel nonFormal */;
insert into `nonFormal`(`nonformal_id`,`santri_id`,`tpq_id`,`ibadah_id`,`waktu_tpq`) values
(1021, 1101, 1, 1, '2020-07-22'),
(1022, 1102, 2, 2, '2020-04-19'),
(1023, 1103, 3, 3, '2020-01-06'),
(1024, 1104, 4, 4, '2020-10-01'),
(1025, 1105, 5, 5, '2020-01-23'),
(1026, 1106, 6, 6, '2020-01-04'),
(1027, 1107, 7, 7, '2020-05-26'),
(1028, 1108, 8, 8, '2020-09-14'),
(1029, 1109, 9, 9, '2020-12-01'),
(10210, 1110, 10, 10, '2020-09-03'),
(10211, 1111, 11, 11, '2020-06-25'),
(10212, 1112, 12, 12, '2020-06-21'),
(10213, 1113, 13, 13, '2020-05-16'),
(10214, 1114, 14, 14, '2020-11-29'),
(10215, 1115, 15, 15, '2020-09-17'),
(10216, 1116, 16, 16, '2020-01-13'),
(10217, 1117, 17, 17, '2020-03-28'),
(10218, 1118, 18, 18, '2020-03-05'),
(10219, 1119, 19, 19, '2020-08-18'),
(10220, 1120, 20, 20, '2020-06-12'),
(10221, 1121, 21, 21, '2020-11-09'),
(10222, 1122, 22, 22, '2020-07-07'),
(10223, 1123, 23, 23, '2020-09-14'),
(10224, 1124, 24, 24, '2020-07-10'),
(10225, 1125, 25, 25, '2020-12-28'),
(10226, 1126, 26, 26, '2020-05-23'),
(10227, 1127, 27, 27, '2020-01-06'),
(10228, 1128, 28, 28, '2020-02-01'),
(10229, 1129, 29, 29, '2020-05-27'),
(10230, 1130, 30, 30, '2020-04-12'),
(10231, 1131, 31, 31, '2020-12-27'),
(10232, 1132, 32, 32, '2020-11-16'),
(10233, 1133, 33, 33, '2020-05-25'),
(10234, 1134, 34, 34, '2020-09-29'),
(10235, 1135, 35, 35, '2020-12-21'),
(10236, 1136, 36, 36, '2020-09-02'),
(10237, 1137, 37, 37, '2020-06-14'),
(10238, 1138, 38, 38, '2020-06-24'),
(10239, 1139, 39, 39, '2020-06-20'),
(10240, 1140, 40, 40, '2020-05-14'),
(10241, 1141, 41, 41, '2020-06-02'),
(10242, 1142, 42, 42, '2020-03-13'),
(10243, 1143, 43, 43, '2020-11-27'),
(10244, 1144, 44, 44, '2020-07-26'),
(10245, 1145, 45, 45, '2020-01-12'),
(10246, 1146, 46, 46, '2020-06-01'),
(10247, 1147, 47, 47, '2020-01-23'),
(10248, 1148, 48, 48, '2020-07-24'),
(10249, 1149, 49, 49, '2020-05-12'),
(10250, 1150, 50, 50, '2020-09-24'),
(10251, 1151, 51, 51, '2020-07-07'),
(10252, 1152, 52, 52, '2020-12-28'),
(10253, 1153, 53, 53, '2020-10-20'),
(10254, 1154, 54, 54, '2020-12-29'),
(10255, 1155, 55, 55, '2020-05-27'),
(10256, 1156, 56, 56, '2020-12-11'),
(10257, 1157, 57, 57, '2020-06-03'),
(10258, 1158, 58, 58, '2020-07-06'),
(10259, 1159, 59, 59, '2020-07-16'),
(10260, 1160, 60, 60, '2020-03-19'),
(10261, 1161, 61, 61, '2020-06-20'),
(10262, 1162, 62, 62, '2020-11-29'),
(10263, 1163, 63, 63, '2020-10-29'),
(10264, 1164, 64, 64, '2020-11-02'),
(10265, 1165, 65, 65, '2020-12-16'),
(10266, 1166, 66, 66, '2020-10-08'),
(10267, 1167, 67, 67, '2020-10-02'),
(10268, 1168, 68, 68, '2020-09-22'),
(10269, 1169, 69, 69, '2020-01-17'),
(10270, 1170, 70, 70, '2020-07-02'),
(10271, 1171, 71, 71, '2020-01-26'),
(10272, 1172, 72, 72, '2020-11-28'),
(10273, 1173, 73, 73, '2020-10-20'),
(10274, 1174, 74, 74, '2020-11-18'),
(10275, 1175, 75, 75, '2020-02-18'),
(10276, 1176, 76, 76, '2020-03-24'),
(10277, 1177, 77, 77, '2020-08-03'),
(10278, 1178, 78, 78, '2020-02-24'),
(10279, 1179, 79, 79, '2020-05-06'),
(10280, 1180, 80, 80, '2020-10-21'),
(10281, 1181, 81, 81, '2020-05-29'),
(10282, 1182, 82, 82, '2020-12-12'),
(10283, 1183, 83, 83, '2020-12-20'),
(10284, 1184, 84, 84, '2020-03-09'),
(10285, 1185, 85, 85, '2020-07-01'),
(10286, 1186, 86, 86, '2020-10-24'),
(10287, 1187, 87, 87, '2020-09-29'),
(10288, 1188, 88, 88, '2020-03-07'),
(10289, 1189, 89, 89, '2020-07-06'),
(10290, 1190, 90, 90, '2020-07-08'),
(10291, 1191, 91, 91, '2020-10-22'),
(10292, 1192, 92, 92, '2020-11-01'),
(10293, 1193, 93, 93, '2020-01-14'),
(10294, 1194, 94, 94, '2020-12-10'),
(10295, 1195, 95, 95, '2020-04-26'),
(10296, 1196, 96, 96, '2020-09-20'),
(10297, 1197, 97, 97, '2020-10-20'),
(10298, 1198, 98, 98, '2020-12-19'),
(10299, 1199, 99, 99, '2020-12-30'),
(102100, 1200, 100, 100, '2020-03-11');


DROP TABLE IF EXISTS `kesehatan_santri`;
/* tabel kesehatan_santri */;
CREATE TABLE `kesehatan_santri`(
    `kesehatan_id` INT NOT NULL AUTO_INCREMENT,
    `nonformal_id` INT,
    `kondisiKesehatan` VARCHAR(255) NULL,
    `keteranganKesehatan` TEXT NULL,
    `namaPemeriksa` VARCHAR(255) NULL,
    `waktuKesehatan` DATE NULL,
    PRIMARY KEY (`kesehatan_id`),
    KEY `nonformal_id`(`nonformal_id`),
    CONSTRAINT `kesehatan_santri_bifk1` FOREIGN KEY(`nonformal_id`) REFERENCES `nonFormal`(`nonformal_id`)
) ENGINE=INNODB;

/* isi tabel kesehatan_santri */;
insert into `kesehatan_santri`(`kesehatan_id`,`kondisiKesehatan`,`keteranganKesehatan`,`namaPemeriksa`,`waktuKesehatan`) values
(1, 'Est non.', 'Deleniti.', 'Arsipatra Laksita', '2020-08-28'),
(2, 'A fugiat.', 'Veniam.', 'Warsita Zulkarnain', '2020-03-08'),
(3, 'Excepturi.', 'Libero.', 'R.A. Suci Sitorus, S.E.I', '2020-09-30'),
(4, 'Animi.', 'Eum eos.', 'Rahman Tarihoran', '2020-11-22'),
(5, 'Dolorum.', 'Deserunt.', 'Alika Thamrin', '2020-01-13'),
(6, 'Veritatis.', 'Est ipsam.', 'Farhunnisa Pradipta', '2020-05-20'),
(7, 'Veniam.', 'Aliquid.', 'R.M. Kayun Mulyani', '2020-02-28'),
(8, 'Suscipit.', 'Alias.', 'Reza Marpaung', '2020-06-22'),
(9, 'Ipsa iste.', 'Molestiae.', 'Cut Agnes Adriansyah', '2020-08-30'),
(10, 'Autem est.', 'Vero.', 'Ika Napitupulu, S.Ked', '2020-05-13'),
(11, 'Pariatur.', 'Cumque.', 'Irfan Nainggolan, S.Farm', '2020-11-25'),
(12, 'Aperiam.', 'Ipsum.', 'dr. Kayla Pradana', '2020-04-30'),
(13, 'Quo fuga.', 'Ex.', 'Ami Dongoran', '2020-11-24'),
(14, 'Quae.', 'Libero.', 'Jane Puspasari', '2020-01-03'),
(15, 'Expedita.', 'Odio.', 'Ganep Kusumo, S.E.', '2020-09-29'),
(16, 'Saepe.', 'Cumque.', 'Gawati Pratama', '2020-01-13'),
(17, 'Ad.', 'Magni.', 'Cici Nurdiyanti', '2020-03-24'),
(18, 'Occaecati.', 'Expedita.', 'dr. Irma Nugroho', '2020-09-18'),
(19, 'Nesciunt.', 'Modi.', 'Gina Riyanti', '2020-10-11'),
(20, 'Ex harum.', 'Quibusdam.', 'Tgk. Belinda Najmudin', '2020-08-31'),
(21, 'Saepe.', 'Esse a.', 'Asmadi Halimah', '2020-10-09'),
(22, 'Quas.', 'Commodi.', 'R. Omar Puspasari, S.H.', '2020-10-02'),
(23, 'Magnam.', 'Nostrum.', 'Viktor Hutasoit', '2020-03-23'),
(24, 'Impedit.', 'Voluptate.', 'Dr. Hafshah Nasyidah', '2020-12-07'),
(25, 'Sit.', 'Impedit.', 'Sabrina Tamba', '2020-12-27'),
(26, 'Dolor est.', 'Tempora.', 'drg. Mursita Yolanda, S.Farm', '2020-03-04'),
(27, 'Earum ea.', 'Quam et.', 'Tirta Suryono', '2020-08-09'),
(28, 'Quam.', 'Deserunt.', 'Dr. Tantri Handayani', '2020-05-09'),
(29, 'Commodi.', 'Maxime ea.', 'Ir. Endra Yuniar', '2020-05-06'),
(30, 'Iusto qui.', 'Ipsam a.', 'Siti Kuswandari', '2020-03-17'),
(31, 'Expedita.', 'Vero.', 'Eja Jailani', '2020-09-16'),
(32, 'Ab.', 'Molestias.', 'Silvia Rahayu, M.Farm', '2020-01-10'),
(33, 'Neque.', 'Non.', 'Cagak Permata', '2020-02-09'),
(34, 'Quam modi.', 'Enim.', 'Kawaca Hutasoit', '2020-06-25'),
(35, 'Vitae.', 'Delectus.', 'Darmana Ardianto', '2020-09-05'),
(36, 'Dolores.', 'Deserunt.', 'Danuja Susanti, M.Kom.', '2020-11-20'),
(37, 'Eveniet.', 'Sed.', 'Estiawan Tampubolon', '2020-10-09'),
(38, 'Ullam.', 'Excepturi.', 'Dr. Ellis Widodo', '2020-06-07'),
(39, 'Esse.', 'A porro.', 'Ir. Kania Situmorang', '2020-01-12'),
(40, 'Eum.', 'Fugiat.', 'Dalimin Napitupulu', '2020-09-18'),
(41, 'Tempora.', 'Ipsam.', 'Ir. Laras Hidayanto', '2020-06-15'),
(42, 'Dicta.', 'Nam.', 'Kuncara Widiastuti', '2020-08-09'),
(43, 'Numquam.', 'Qui vitae.', 'Gabriella Wibowo', '2020-09-01'),
(44, 'Ad vero.', 'Vero.', 'Ir. Bahuraksa Hassanah, S.E.I', '2020-05-05'),
(45, 'Quas quam.', 'Aliquam.', 'Malika Sinaga, M.TI.', '2020-04-01'),
(46, 'Ratione.', 'Quas.', 'Salsabila Rajasa', '2020-02-28'),
(47, 'Deserunt.', 'Ullam.', 'Salman Firgantoro', '2020-10-31'),
(48, 'Sunt quam.', 'Accusamus.', 'Rahmi Kuswoyo', '2020-12-12'),
(49, 'Earum.', 'Facere.', 'Darman Hidayat', '2020-01-28'),
(50, 'Quaerat.', 'Quidem.', 'Janet Pranowo', '2020-08-17'),
(51, 'Delectus.', 'Atque.', 'Vivi Marpaung', '2020-05-07'),
(52, 'Quis.', 'Ullam.', 'Elisa Mayasari', '2020-02-13'),
(53, 'Aliquid.', 'Aperiam.', 'Puti Zizi Hutapea', '2020-06-23'),
(54, 'Adipisci.', 'Fuga aut.', 'dr. Bahuwarna Mayasari', '2020-06-10'),
(55, 'Quod.', 'Eligendi.', 'Qori Suartini', '2020-01-23'),
(56, 'Earum.', 'At saepe.', 'Laila Mangunsong', '2020-05-01'),
(57, 'Assumenda.', 'Officiis.', 'Tami Anggraini', '2020-06-17'),
(58, 'Quia cum.', 'Aliquid.', 'dr. Galuh Wulandari, S.Pd', '2020-03-25'),
(59, 'Maxime.', 'Molestias.', 'Hj. Zalindra Santoso', '2020-08-23'),
(60, 'Amet fuga.', 'Corporis.', 'Dt. Kalim Narpati, M.TI.', '2020-10-02'),
(61, 'Corrupti.', 'Earum ab.', 'Putri Thamrin', '2020-09-15'),
(62, 'Ad itaque.', 'Aut ipsum.', 'Prabu Megantara', '2020-11-17'),
(63, 'Adipisci.', 'Aliquam.', 'Padma Sudiati', '2020-10-13'),
(64, 'Quasi.', 'Libero.', 'Ir. Dagel Hariyah', '2020-07-25'),
(65, 'Suscipit.', 'Dolorum.', 'Tgk. Hani Firgantoro, M.M.', '2020-03-05'),
(66, 'Eligendi.', 'Numquam.', 'Calista Sitompul', '2020-10-22'),
(67, 'Suscipit.', 'Autem.', 'Tira Mulyani', '2020-01-18'),
(68, 'Sint.', 'Minima.', 'Ir. Clara Usada, S.Psi', '2020-04-04'),
(69, 'Minus eum.', 'Impedit.', 'Kasiran Suartini, M.TI.', '2020-02-19'),
(70, 'Odit.', 'Eum.', 'dr. Kasiyah Wahyuni', '2020-02-13'),
(71, 'Similique.', 'Ullam.', 'Tantri Sirait', '2020-05-22'),
(72, 'Beatae.', 'Quidem.', 'Rahayu Ardianto', '2020-09-17'),
(73, 'Odit.', 'In.', 'Mahfud Zulkarnain', '2020-02-09'),
(74, 'Saepe ea.', 'Quidem.', 'R. Cayadi Marbun', '2020-10-27'),
(75, 'Fugiat.', 'Minima.', 'Ir. Digdaya Anggraini, S.E.', '2020-07-17'),
(76, 'Libero.', 'Eius.', 'Tomi Prasasta', '2020-06-25'),
(77, 'Porro.', 'Facilis.', 'Puti Endah Kurniawan', '2020-02-12'),
(78, 'Magni.', 'Quo illo.', 'Puti Wirda Mardhiyah, S.H.', '2020-04-06'),
(79, 'Commodi.', 'Sint.', 'Halima Prayoga, S.Gz', '2020-05-28'),
(80, 'Eaque.', 'Aperiam.', 'Rina Saragih', '2020-08-03'),
(81, 'Quis.', 'Ad alias.', 'Eko Thamrin', '2020-05-08'),
(82, 'Nobis.', 'Incidunt.', 'Puti Cindy Padmasari, S.H.', '2020-05-21'),
(83, 'Neque quo.', 'Modi.', 'Marsito Sudiati', '2020-01-09'),
(84, 'Deleniti.', 'Deserunt.', 'Dimaz Prasasta', '2020-07-25'),
(85, 'Corporis.', 'Facere.', 'Tgk. Wirda Anggraini, S.T.', '2020-08-19'),
(86, 'Dolorum.', 'Neque.', 'Unggul Suryono', '2020-12-14'),
(87, 'Optio.', 'Sed.', 'Prayoga Prayoga', '2020-10-19'),
(88, 'Incidunt.', 'Voluptas.', 'Jane Kusumo', '2020-06-29'),
(89, 'Tempore.', 'Minus.', 'Ella Nugroho', '2020-06-06'),
(90, 'Tempore.', 'Ut nobis.', 'Lidya Nuraini, S.Ked', '2020-04-03'),
(91, 'Error.', 'In.', 'Simon Usada', '2020-04-06'),
(92, 'Molestias.', 'Expedita.', 'T. Daniswara Prabowo', '2020-12-20'),
(93, 'Eligendi.', 'Soluta et.', 'Tgk. Vega Anggraini', '2020-01-01'),
(94, 'Voluptas.', 'Officiis.', 'Lukman Nasyidah', '2020-07-13'),
(95, 'Voluptas.', 'Molestias.', 'Mala Prastuti', '2020-01-06'),
(96, 'Magni.', 'Autem eum.', 'Ina Wibowo', '2020-03-05'),
(97, 'Commodi.', 'Nulla.', 'Drs. Dono Saputra', '2020-08-17'),
(98, 'Veniam.', 'Excepturi.', 'Melinda Nainggolan', '2020-03-26'),
(99, 'Nobis.', 'Doloribus.', 'Aurora Wijayanti', '2020-03-29'),
(100, 'Mollitia.', 'Nobis.', 'Ajiman Situmorang', '2020-07-27');


DROP TABLE IF EXISTS `kemanan_santri`;

/* tabel keamanan_santri */;
CREATE TABLE `kemanan_santri`(
    `kemanan_id` INT NOT NULL,
    `nonformal_id` INT DEFAULT NULL,
    `kondisiKeamanan` VARCHAR(255) DEFAULT NULL,
    `keteranganKeamanan` VARCHAR(255) DEFAULT NULL,
    `kesalahan` VARCHAR(255) DEFAULT NULL,
    `sanksiKemanan` VARCHAR(255) DEFAULT NULL,
    `waktuKemanan` DATE DEFAULT NULL,
    PRIMARY KEY (`kemanan_id`),
    KEY `nonformal_id`(`nonformal_id`),
    CONSTRAINT `santri_keamanan_nonformal_id_foreign` FOREIGN KEY(`nonformal_id`) REFERENCES `nonFormal`(`nonformal_id`)
) ENGINE=INNODB;

/* isi tabel kemanan_santri */;
insert into `kemanan_santri`(`kemanan_id`,`kondisiKeamanan`,`keteranganKeamanan`,`kesalahan`,`sanksiKemanan`,`waktuKemanan`) values
(1, 'Deleniti.', 'Ab nam.', 'Eum quas.', 'Officiis.', '2020-10-17'),
(2, 'Id in.', 'Esse.', 'Laborum.', 'Corrupti.', '2020-10-12'),
(3, 'Nisi.', 'Ipsam.', 'Facere.', 'Mollitia.', '2020-06-27'),
(4, 'Ab beatae.', 'Laborum.', 'Animi.', 'Autem.', '2020-07-06'),
(5, 'Et optio.', 'Sequi.', 'Beatae.', 'Odio eius.', '2020-01-29'),
(6, 'Ipsa.', 'Tempore.', 'Sed.', 'Officia.', '2020-05-04'),
(7, 'Laborum.', 'Natus.', 'Minima.', 'Fugit.', '2020-04-21'),
(8, 'Suscipit.', 'Rerum.', 'Aperiam.', 'Assumenda.', '2020-04-10'),
(9, 'Quaerat.', 'Eaque.', 'Et soluta.', 'Incidunt.', '2020-05-08'),
(10, 'Eveniet.', 'Facere.', 'Vel quod.', 'Numquam.', '2020-11-25'),
(11, 'Id quo.', 'Inventore.', 'Quidem.', 'Sed sequi.', '2020-08-07'),
(12, 'Sint.', 'Provident.', 'Delectus.', 'Quidem.', '2020-10-20'),
(13, 'Error.', 'Repellat.', 'Ea dicta.', 'Nobis.', '2020-03-28'),
(14, 'Id.', 'Neque.', 'Soluta.', 'Quaerat.', '2020-11-18'),
(15, 'Quidem.', 'Impedit.', 'Omnis.', 'Veniam.', '2020-03-21'),
(16, 'Deleniti.', 'Corrupti.', 'Omnis.', 'At.', '2020-03-24'),
(17, 'Facilis.', 'Nesciunt.', 'Doloribus.', 'Eligendi.', '2020-07-05'),
(18, 'A.', 'Repellat.', 'Iure.', 'Illo.', '2020-05-06'),
(19, 'Corrupti.', 'Accusamus.', 'Eveniet.', 'Ratione.', '2020-02-01'),
(20, 'At in.', 'Quasi a.', 'Id nulla.', 'Quod quos.', '2020-10-15'),
(21, 'Corporis.', 'Ipsum.', 'Quis.', 'Quasi.', '2020-06-13'),
(22, 'Ipsa.', 'Optio.', 'Est.', 'Soluta.', '2020-07-12'),
(23, 'Et earum.', 'Soluta.', 'Sint.', 'Repellat.', '2020-09-08'),
(24, 'Vel est.', 'Facere.', 'Alias.', 'Corporis.', '2020-12-18'),
(25, 'Soluta.', 'Officia.', 'Quae.', 'Soluta.', '2020-09-10'),
(26, 'Quae id.', 'Expedita.', 'Vitae.', 'Officia.', '2020-03-03'),
(27, 'Quia.', 'Ullam.', 'In nemo.', 'Provident.', '2020-06-28'),
(28, 'Ratione.', 'Veritatis.', 'Quis.', 'Earum.', '2020-09-12'),
(29, 'Quis cum.', 'Alias.', 'Illum.', 'Pariatur.', '2020-10-07'),
(30, 'Explicabo.', 'Unde.', 'Alias ab.', 'Placeat.', '2020-06-24'),
(31, 'Dolores.', 'Fugit.', 'Expedita.', 'Deserunt.', '2020-05-22'),
(32, 'Illum ab.', 'Eos.', 'Atque.', 'Nostrum.', '2020-02-07'),
(33, 'Pariatur.', 'Illum.', 'Autem.', 'Sint.', '2020-12-18'),
(34, 'Delectus.', 'Maxime.', 'Neque ab.', 'Aliquid.', '2020-04-21'),
(35, 'Placeat.', 'Debitis.', 'Amet a.', 'Suscipit.', '2020-03-20'),
(36, 'Fugit.', 'Explicabo.', 'Voluptate.', 'Molestias.', '2020-12-17'),
(37, 'Incidunt.', 'Porro.', 'Ipsum.', 'Eum.', '2020-12-25'),
(38, 'Possimus.', 'In.', 'Suscipit.', 'Numquam.', '2020-03-23'),
(39, 'Pariatur.', 'Aut.', 'Rem.', 'Veniam ea.', '2020-11-05'),
(40, 'Veniam.', 'Numquam.', 'Vero.', 'Eveniet.', '2020-10-13'),
(41, 'Earum.', 'Eligendi.', 'Quia.', 'Quo.', '2020-01-29'),
(42, 'Dolores.', 'Occaecati.', 'Saepe.', 'Quam.', '2020-10-18'),
(43, 'Eveniet.', 'Soluta.', 'Maxime.', 'Labore.', '2020-07-19'),
(44, 'Qui rem.', 'Officia.', 'Assumenda.', 'Aut id.', '2020-11-15'),
(45, 'Ipsum.', 'Labore.', 'Dolorum.', 'Ab eaque.', '2020-10-18'),
(46, 'Ipsa.', 'Animi.', 'Quis vero.', 'Maxime.', '2020-03-24'),
(47, 'Quas ea.', 'Quisquam.', 'Quam vel.', 'Autem.', '2020-01-27'),
(48, 'Dicta.', 'Quibusdam.', 'Tenetur.', 'Hic.', '2020-06-30'),
(49, 'Vel.', 'Quas at.', 'Dolor.', 'Accusamus.', '2020-01-27'),
(50, 'Autem.', 'Sit.', 'Explicabo.', 'Quibusdam.', '2020-08-28'),
(51, 'Eos.', 'Similique.', 'Sit.', 'Aperiam.', '2020-01-04'),
(52, 'Natus.', 'Animi.', 'Culpa.', 'Maiores.', '2020-01-07'),
(53, 'Sit.', 'Rerum.', 'Explicabo.', 'Aut harum.', '2020-08-01'),
(54, 'Ab.', 'Quibusdam.', 'Alias.', 'Ex ullam.', '2020-05-21'),
(55, 'Harum qui.', 'Ducimus.', 'Porro.', 'Ipsam.', '2020-07-22'),
(56, 'Molestiae.', 'Quas.', 'Aliquid.', 'Facilis.', '2020-10-13'),
(57, 'Deserunt.', 'Esse.', 'Beatae.', 'Ipsum.', '2020-06-10'),
(58, 'Vel.', 'Excepturi.', 'Sapiente.', 'Eum sunt.', '2020-08-10'),
(59, 'Optio.', 'Quas.', 'Labore ea.', 'Beatae.', '2020-11-19'),
(60, 'Illo.', 'Aperiam.', 'Ab.', 'Labore.', '2020-08-08'),
(61, 'Cum modi.', 'Quia.', 'Omnis.', 'Atque.', '2020-07-06'),
(62, 'Dicta.', 'Accusamus.', 'Quisquam.', 'Libero.', '2020-12-09'),
(63, 'Vel illo.', 'Numquam.', 'Fugiat.', 'Rerum non.', '2020-09-06'),
(64, 'Neque.', 'Placeat.', 'Iste vel.', 'Dolore.', '2020-09-11'),
(65, 'Sunt.', 'Earum.', 'Libero.', 'Sunt unde.', '2020-12-30'),
(66, 'Eaque.', 'Dolore.', 'Facilis.', 'Molestiae.', '2020-02-17'),
(67, 'Quasi.', 'Illo ad.', 'Possimus.', 'Beatae.', '2020-06-27'),
(68, 'Dolore.', 'Alias non.', 'Error.', 'Ipsum.', '2020-01-06'),
(69, 'Pariatur.', 'Nihil ex.', 'Ex.', 'Similique.', '2020-05-30'),
(70, 'Esse.', 'Rerum.', 'Eaque.', 'Beatae.', '2020-02-16'),
(71, 'Autem.', 'Excepturi.', 'Quia.', 'Corrupti.', '2020-04-25'),
(72, 'Ratione.', 'Qui.', 'Numquam.', 'Ratione.', '2020-06-15'),
(73, 'Doloribus.', 'Dolorum.', 'Velit.', 'Itaque.', '2020-04-15'),
(74, 'Nam ex.', 'Aut.', 'Totam.', 'Suscipit.', '2020-02-10'),
(75, 'Expedita.', 'Nam qui.', 'Ratione.', 'Et sed.', '2020-03-20'),
(76, 'Assumenda.', 'Debitis.', 'Similique.', 'Quam.', '2020-05-17'),
(77, 'Officia.', 'Enim.', 'Quia.', 'Ratione.', '2020-07-25'),
(78, 'Quidem.', 'Neque.', 'Ea.', 'Vero.', '2020-01-16'),
(79, 'Molestiae.', 'Dolor.', 'Sint.', 'Quam.', '2020-01-12'),
(80, 'Excepturi.', 'Sapiente.', 'Tempore.', 'Ratione.', '2020-10-17'),
(81, 'Amet.', 'Commodi.', 'Mollitia.', 'Ab magni.', '2020-09-16'),
(82, 'Aut.', 'Ducimus.', 'Magni non.', 'Et eaque.', '2020-12-17'),
(83, 'Velit.', 'Quas.', 'Quis odit.', 'Quaerat.', '2020-08-16'),
(84, 'Nulla.', 'Vitae.', 'Fuga.', 'Aliquam.', '2020-05-29'),
(85, 'Suscipit.', 'Sunt id.', 'Facere.', 'Officia.', '2020-02-14'),
(86, 'Deleniti.', 'Sunt.', 'Ullam id.', 'Voluptate.', '2020-04-06'),
(87, 'Minima.', 'Quasi ut.', 'Facere.', 'Vero.', '2020-11-16'),
(88, 'Illum.', 'Mollitia.', 'Soluta.', 'Odio.', '2020-03-19'),
(89, 'Earum.', 'Aperiam.', 'Adipisci.', 'Accusamus.', '2020-08-20'),
(90, 'Dolorum.', 'Delectus.', 'Inventore.', 'Aliquam.', '2020-02-04'),
(91, 'Neque.', 'Enim.', 'Molestiae.', 'Ducimus.', '2020-06-25'),
(92, 'Qui vel.', 'Id unde.', 'Officia.', 'Commodi.', '2020-03-26'),
(93, 'Culpa.', 'Quia in.', 'Quae non.', 'Quibusdam.', '2020-07-28'),
(94, 'Aut.', 'Harum.', 'Optio.', 'Ullam.', '2020-09-20'),
(95, 'Assumenda.', 'Aliquam.', 'Soluta.', 'Maiores.', '2020-05-15'),
(96, 'Officiis.', 'Vitae.', 'Error.', 'Commodi.', '2020-08-25'),
(97, 'Itaque.', 'Facere.', 'Beatae.', 'Iure.', '2020-05-18'),
(98, 'Ut.', 'Rerum.', 'Eaque.', 'Natus.', '2020-11-29'),
(99, 'Eveniet.', 'Esse cum.', 'Ratione.', 'Corporis.', '2020-03-05'),
(100, 'Natus.', 'Facere.', 'Totam.', 'Vitae.', '2020-09-20');


DROP TABLE IF EXISTS `tpq`;
/* tabel tpq */;
CREATE TABLE `tpq`(
    `tpq_id` INT NOT NULL,
    `keterangan_tpq` VARCHAR(255) NULL,
    PRIMARY KEY (`tpq_id`)
) ENGINE=INNODB;

/* isi tabel tpq */ ;
insert into `tpq`(`tpq_id`,`keterangan_tpq`) values
(1, NULL),(2, NULL),(3, NULL),(4, NULL),(5, NULL),(6, NULL),(7, NULL),(8, NULL),(9, NULL),(10, NULL),(11, NULL),(12, NULL),(13, NULL),(14, NULL),(15, NULL),(16, NULL),(17, NULL),(18, NULL),(19, NULL),(20, NULL),(21, NULL),(22, NULL),(23, NULL),(24, NULL),(25, NULL),
(26, NULL),(27, NULL),(28, NULL),(29, NULL),(30, 'sakit'),(31, 'sakit'),(32, NULL),(33, NULL),(34, NULL),(35, NULL),(36, NULL),(37, NULL),(38, NULL),(39, NULL),(40, NULL),(41, NULL),(42, NULL),(43, NULL),(44, NULL),(45, NULL),(46, NULL),(47, NULL),(48, NULL),(49, NULL),(50, NULL),
(51, NULL),(52, NULL),(53, NULL),(54, NULL),(55, NULL),(56, NULL),(57, NULL),(58, NULL),(59, NULL),(60, NULL),(61, NULL),(62, NULL),(63, NULL),(64, NULL),(65, NULL),(66, NULL),(67, NULL),(68, NULL),(69, NULL),(70, NULL),(71, NULL),(72, NULL),(73, NULL),(74, NULL),(75, NULL),
(76, NULL),(77, NULL),(78, NULL),(79, NULL),(80, NULL),(81, NULL),(82, NULL),(83, NULL),(84, NULL),(85, 'sakit'),(86, NULL),(87, NULL),(88, NULL),(89, NULL),(90, NULL),(91, NULL),(92, NULL),(93, NULL),(94, NULL),(95, NULL),(96, 'sakit'),(97, NULL),(98, NULL),(99, NULL),(100, 'sakit');


DROP TABLE IF EXISTS `ibadah`;
/* tabel ibadah */;
CREATE TABLE `ibadah`(
    `ibadah_id` INT NOT NULL AUTO_INCREMENT,
    `status_shubuh` TINYINT(1) NOT NULL,
    `status_dhuhur` TINYINT(1) NOT NULL,
    `status_ashar` TINYINT(1) NOT NULL,
    `status_magrib` TINYINT(1) NOT NULL,
    `status_isya` TINYINT(1) NOT NULL,
    PRIMARY KEY (`ibadah_id`)
) ENGINE=INNODB;

/* isi tabel ibadah */;
insert into `ibadah`(`status_shubuh`,`status_dhuhur`,`status_ashar`,`status_magrib`,status_isya) values
(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),
(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),
(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,0,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),
(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),
(1,1,1,0,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,0,1),(1,1,1,1,1),
(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),
(1,1,1,1,1),(1,1,1,1,1),(1,0,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(0,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),
(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),
(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),
(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1),(1,1,1,1,1);
