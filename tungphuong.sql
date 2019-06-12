/*
 Navicat Premium Data Transfer

 Source Server         : DACNPM
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : tungphuong

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 12/06/2019 19:05:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for catalog
-- ----------------------------
DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of catalog
-- ----------------------------
INSERT INTO `catalog` VALUES (1, 'Bóp viết - Hộp bút');
INSERT INTO `catalog` VALUES (2, 'Bảng viết');
INSERT INTO `catalog` VALUES (3, 'Tập học sinh');
INSERT INTO `catalog` VALUES (4, 'Gọt bút chì - Gôm tẩy');
INSERT INTO `catalog` VALUES (5, 'Sáp nặn');
INSERT INTO `catalog` VALUES (6, 'Thước kẻ - Compa');
INSERT INTO `catalog` VALUES (7, 'Balo - Cặp học sinh');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(10) NULL DEFAULT NULL,
  `catalog_id` int(11) NULL DEFAULT NULL,
  `brand_id` int(11) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `preview` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `brand_id`(`brand_id`) USING BTREE,
  INDEX `catalog_id`(`catalog_id`) USING BTREE,
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'Tập Học Sinh Tiki Lan Tỏa Niềm Vui 96 Trang (Lốc 10 Cuốn) - Mẫu Ngẫu Nhiên', 49000, 3, NULL, 'resources/image/product/taphocsinh_1.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (2, 'Cặp Học Sinh Chống Gù Ocean Friends B.BAG B-12-017 (28.8 x 36.5 m) - Hồng Nhạt', 479000, 7, NULL, 'resources/image/product/caphocsinh_2.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (3, 'Bóp Viết Totoro', 60000, 1, NULL, 'resources/image/product/bopviettotoro.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (4, 'Bóp Viết Doraemon', 53000, 1, NULL, 'resources/image/product/bopvietdoraemon.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (5, 'Bóp Viết Organic Milk', 37900, 1, NULL, 'resources/image/product/bopvietorganicmilk.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (6, 'Hộp Đựng Bút Dễ Thương', 44000, 1, NULL, 'resources/image/product/hopdungbutdethuong.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (7, 'Hộp Bút Gỗ 01', 200000, 1, NULL, 'resources/image/product/hopbutgo01.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (8, 'Hộp Bút Dragon Ball', 155000, 1, NULL, 'resources/image/product/hopbutdragonball.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (9, 'Bảng Viết Bút Lông TH01', 340000, 2, NULL, 'resources/image/product/bangvietbutlongth01.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (10, 'Bảng Viết Phấn BP02', 140000, 2, NULL, 'resources/image/product/bangvietphanbp02.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (11, 'Bảng Viết Phấn BP16 Xanh', 1300000, 2, NULL, 'resources/image/product/bangvietphanbp16xanh.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (12, 'Tập Học Sinh FutureBook 01', 10000, 3, NULL, 'resources/image/product/taphocsinhfuturebook01.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (13, 'Tập Học Sinh Tiki Lan Tỏa Niềm Vui', 5000, 3, NULL, 'resources/image/product/taphocsinhtikilantoaniemvui.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (14, 'Tập Học Sinh FutureBook Nhi Đồng', 12000, 3, NULL, 'resources/image/product/taphocsinhfuturebooknhidong.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (15, 'Gọt Bút Chì Hình Cú Mèo', 22000, 4, NULL, 'resources/image/product/gotbutchihinhcumeo.png', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (16, 'Gọt Bút Chì Hình Cá Voi', 35000, 4, NULL, 'resources/image/product/gotbutchicavoi.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (17, 'Gọt Bút Chì Deli', 72000, 4, NULL, 'resources/image/product/gotbutchideli.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (18, 'Bộ 2 Gôm Tẩy Bút Chì Cua', 22000, 4, NULL, 'resources/image/product/bo2gomtaybutchicua.png', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (19, 'Bộ Gôm Tẩy 4 Chú Ong Vàng', 42500, 4, NULL, 'resources/image/product/bogomtay4chuongvang.png', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (20, 'Hộp 32 Gôm Tẩy Hồng ER-10PK', 185000, 4, NULL, 'resources/image/product/hop32gomtayhonger10pk.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (21, 'Sáp Nặn 12 Màu Thường', 16000, 5, NULL, 'resources/image/product/sapnan12mauthuong.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (22, 'Sáp Nặn Học Tập 10 Màu Thường', 23000, 5, NULL, 'resources/image/product/sapnanhoctap10mauthuong.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (23, 'Sáp Nặn Học Tập 5 Màu Neon', 14000, 5, NULL, 'resources/image/product/sapnanhoctap5mauneon.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (24, 'Thước Kẻ BT21 Mika', 19000, 6, NULL, 'resources/image/product/thuockebt21mika.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (25, 'Bộ 4 Thước Kẻ Học Sinh', 33000, 6, NULL, 'resources/image/product/bo4thuockehocsinh.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (26, 'Thước Kẻ Tích Hợp Máy Tính Thông Minh', 29000, 6, NULL, 'resources/image/product/thuocketichhopmaytinhthongminh.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (27, 'Compa Deli 8615', 21000, 6, NULL, 'resources/image/product/compadeli8615.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (28, 'Compa Deli 8621', 16500, 6, NULL, 'resources/image/product/compadeli8621.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (29, 'Compa Aihua AH1009', 21000, 6, NULL, 'resources/image/product/compaaihuaah1009.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (30, 'Balo Học Sinh', 280000, 7, NULL, 'resources/image/product/balohocsinh.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (31, 'Balo Xanh Lá', 189000, 7, NULL, 'resources/image/product/baloxanhla.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (32, 'Balo Rabit', 399000, 7, NULL, 'resources/image/product/balorabit.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (33, 'Cặp Học Sinh Chống Gù 11055', 359000, 7, NULL, 'resources/image/product/caphocsinhchonggu11055.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (34, 'Cặp Học Sinh Scholar 21005D', 1250000, 7, NULL, 'resources/image/product/caphocsinhscholar21005d.jpg', NULL, '2019-06-12 00:00:00');
INSERT INTO `product` VALUES (35, 'Cặp Học Sinh Star', 319000, 7, NULL, 'resources/image/product/caphocsinhstar.jpg', NULL, '2019-06-12 00:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created` date NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` tinyint(255) NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('15130169@st.hcmuaf.edu.vn', '123123', 'Thái', 'Ngô Hồng', '2019-06-09', '5556665566', 1);

SET FOREIGN_KEY_CHECKS = 1;
