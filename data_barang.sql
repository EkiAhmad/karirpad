/*
 Navicat Premium Data Transfer

 Source Server         : 3360
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : data_barang

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 17/02/2021 18:15:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for master_barang
-- ----------------------------
DROP TABLE IF EXISTS `master_barang`;
CREATE TABLE `master_barang`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kategori` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga` double(255, 0) NOT NULL,
  `createdAt` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updatedAt` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_barang
-- ----------------------------
INSERT INTO `master_barang` VALUES (1, 'Pensil', 'Retail', 3000, '2021-02-17 10:18:16', NULL);
INSERT INTO `master_barang` VALUES (2, 'Tas', 'Wholesale', 50000, '2021-02-17 12:24:18', NULL);
INSERT INTO `master_barang` VALUES (3, 'Buku', 'Retail', 4000, '2021-02-17 12:24:34', NULL);
INSERT INTO `master_barang` VALUES (4, 'Penggaris', 'Wholesale', 2000, '2021-02-17 12:24:56', NULL);
INSERT INTO `master_barang` VALUES (5, 'Penghapus', 'Retail', 2000, '2021-02-17 12:25:23', NULL);

-- ----------------------------
-- Table structure for stok_barang
-- ----------------------------
DROP TABLE IF EXISTS `stok_barang`;
CREATE TABLE `stok_barang`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_stok` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` datetime(0) NULL DEFAULT NULL,
  `kode_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok_akhir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stok_barang
-- ----------------------------
INSERT INTO `stok_barang` VALUES (1, '1', '2021-02-01 15:09:28', 'A', '2');
INSERT INTO `stok_barang` VALUES (2, '2', '2021-02-02 15:10:15', 'A', '5');
INSERT INTO `stok_barang` VALUES (3, '3', '2021-02-02 15:10:22', 'B', '1');
INSERT INTO `stok_barang` VALUES (4, '4', '2021-02-03 15:10:27', 'A', '3');
INSERT INTO `stok_barang` VALUES (5, '5', '2021-02-03 15:10:35', 'B', '3');
INSERT INTO `stok_barang` VALUES (6, '6', '2021-02-04 15:10:41', 'A', '5');
INSERT INTO `stok_barang` VALUES (7, '7', '2021-02-04 15:10:46', 'A', '4');

SET FOREIGN_KEY_CHECKS = 1;
