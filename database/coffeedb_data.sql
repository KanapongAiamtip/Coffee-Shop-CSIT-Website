-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- โฮสต์: localhost
-- เวลาในการสร้าง: 01 ธ.ค. 2013  น.
-- รุ่นของเซิร์ฟเวอร์: 5.0.51
-- รุ่นของ PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- ฐานข้อมูล: `coffeedb`
-- 

-- 
-- dump ตาราง `tbcategory`
-- 

INSERT INTO `tbcategory` VALUES ('03', 'นม');
INSERT INTO `tbcategory` VALUES ('02', 'ชา');
INSERT INTO `tbcategory` VALUES ('01', 'กาแฟ');

-- 
-- dump ตาราง `tbtype`
-- 

INSERT INTO `tbtype` VALUES ('02', 'เย็น');
INSERT INTO `tbtype` VALUES ('01', 'ร้อน');

-- 
-- dump ตาราง `tbproduct`
-- 

INSERT INTO `tbproduct` VALUES ('08', '02', '01', 'อเมริกาโน่', 35, 'item_08.jpg', 'กาแฟเย็นสไตลอเมริกัน');
INSERT INTO `tbproduct` VALUES ('07', '01', '01', 'อเมริกาโน่', 30, 'item_07.jpg', 'กาแฟร้อนสัญชาติอเมริกา');
INSERT INTO `tbproduct` VALUES ('06', '02', '02', 'ชาเขียว', 30, 'item_06.jpg', 'ชาเขียวเย็น ผงชาส่งตรงจากญี่ปุ่น ');
INSERT INTO `tbproduct` VALUES ('05', '02', '02', 'ชามะนาว', 30, 'item_05.jpg', 'ชามะนาวดับกระหาย เย็นชื่นใจ');
INSERT INTO `tbproduct` VALUES ('04', '02', '01', 'เอสเพรสโซ่', 40, 'item_04.jpg', 'เอสเพรสโซ่เย็น');
INSERT INTO `tbproduct` VALUES ('03', '01', '01', 'เอสเพรสโซ่', 35, 'item_03.jpg', 'เอสเพรสโซ่ร้อน');
INSERT INTO `tbproduct` VALUES ('02', '02', '01', 'คาปูชิโน่', 40, 'item_02.jpg', 'คาปูชิโน่เย็น');
INSERT INTO `tbproduct` VALUES ('01', '01', '01', 'คาปูชิโน่', 30, 'item_01.jpg', 'คาปูชิโน่ร้อน');
INSERT INTO `tbproduct` VALUES ('09', '01', '01', 'มอคค่า', 35, 'item_09.jpg', 'กาแฟผสมช๊อคโกแลตร้อน');
INSERT INTO `tbproduct` VALUES ('10', '02', '01', 'มอคค่า', 40, 'item_10.jpg', 'กาแฟผสมช๊อคโกแลตเย็น');
INSERT INTO `tbproduct` VALUES ('11', '01', '01', 'ลาเต้', 35, 'item_11.jpg', 'ลาเต้ร้อน');
INSERT INTO `tbproduct` VALUES ('12', '02', '01', 'ลาเต้', 40, 'item_12.jpg', 'ลาเต้เย็น');
INSERT INTO `tbproduct` VALUES ('13', '01', '03', 'นมร้อน', 20, 'item_13.jpg', 'นมร้อน');
INSERT INTO `tbproduct` VALUES ('14', '02', '03', 'นมเย็น', 25, 'item_14.jpg', 'นมเย็น');
INSERT INTO `tbproduct` VALUES ('15', '01', '03', 'นมชมพู', 25, 'item_15.jpg', 'นมชมพูร้อน');
INSERT INTO `tbproduct` VALUES ('16', '02', '03', 'นมชมพู', 30, 'item_16.jpg', 'นมชมพูเย็ฯ');
INSERT INTO `tbproduct` VALUES ('17', '01', '02', 'ชานม', 30, 'item_17.jpg', 'ชานมร้อน');
INSERT INTO `tbproduct` VALUES ('18', '02', '02', 'ชานม', 35, 'item_18.jpg', 'ชานมเย็น');
INSERT INTO `tbproduct` VALUES ('19', '01', '02', 'ชาเขียวนม', 30, 'item_19.jpg', 'ชาเขียวนมร้อน');
INSERT INTO `tbproduct` VALUES ('20', '02', '02', 'ชาเขียวนม', 35, 'item_20.jpg', 'ชาเขียวนมสดเย็น');
INSERT INTO `tbproduct` VALUES ('21', '02', '02', 'ชานมไข่มุก', 40, 'item_21.jpg', 'ชานมไข่มุก');

-- 
-- dump ตาราง `tbsell`
-- 

INSERT INTO `tbsell` VALUES ('00010', '2013-10-30', 30.00);
INSERT INTO `tbsell` VALUES ('00009', '2013-10-29', 35.00);
INSERT INTO `tbsell` VALUES ('00008', '2013-10-29', 60.00);
INSERT INTO `tbsell` VALUES ('00007', '2013-10-29', 100.00);
INSERT INTO `tbsell` VALUES ('00006', '2013-10-28', 75.00);
INSERT INTO `tbsell` VALUES ('00005', '2013-10-27', 105.00);
INSERT INTO `tbsell` VALUES ('00004', '2013-10-27', 30.00);
INSERT INTO `tbsell` VALUES ('00003', '2013-10-26', 70.00);
INSERT INTO `tbsell` VALUES ('00002', '2013-10-24', 30.00);
INSERT INTO `tbsell` VALUES ('00001', '2013-10-24', 80.00);
INSERT INTO `tbsell` VALUES ('00015', '2013-12-01', 0.00);
INSERT INTO `tbsell` VALUES ('00014', '2013-12-01', 120.00);
INSERT INTO `tbsell` VALUES ('00013', '2013-11-28', 80.00);
INSERT INTO `tbsell` VALUES ('00012', '2013-11-28', 0.00);
INSERT INTO `tbsell` VALUES ('00011', '2013-11-28', 105.00);
INSERT INTO `tbsell` VALUES ('00016', '2013-12-01', 75.00);
INSERT INTO `tbsell` VALUES ('00017', '2013-12-01', 150.00);
INSERT INTO `tbsell` VALUES ('00018', '2013-12-01', 60.00);

-- 
-- dump ตาราง `tbselldetail`
-- 

INSERT INTO `tbselldetail` VALUES ('00010', '05', 30, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00009', '03', 35, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00008', '07', 30, 2, 2, 2);
INSERT INTO `tbselldetail` VALUES ('00007', '05', 30, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00007', '04', 40, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00007', '01', 30, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00006', '08', 35, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00006', '04', 40, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00005', '06', 30, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00005', '03', 35, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00005', '02', 40, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00004', '05', 30, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00003', '08', 35, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00003', '03', 35, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00002', '05', 30, 2, 2, 2);
INSERT INTO `tbselldetail` VALUES ('00001', '04', 40, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00001', '02', 40, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00013', '07', 30, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00013', '13', 20, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00013', '19', 30, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00012', '12', 40, 1, 0, 1);
INSERT INTO `tbselldetail` VALUES ('00012', '09', 35, 1, 0, 1);
INSERT INTO `tbselldetail` VALUES ('00011', '08', 35, 0, 0, 0);
INSERT INTO `tbselldetail` VALUES ('00011', '12', 40, 0, 0, 0);
INSERT INTO `tbselldetail` VALUES ('00011', '01', 30, 0, 0, 0);
INSERT INTO `tbselldetail` VALUES ('00015', '11', 35, 1, 0, 1);
INSERT INTO `tbselldetail` VALUES ('00015', '08', 35, 1, 0, 1);
INSERT INTO `tbselldetail` VALUES ('00016', '11', 35, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00016', '10', 40, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00017', '13', 20, 1, 2, 1);
INSERT INTO `tbselldetail` VALUES ('00017', '16', 30, 2, 2, 2);
INSERT INTO `tbselldetail` VALUES ('00017', '20', 35, 2, 2, 2);
INSERT INTO `tbselldetail` VALUES ('00018', '19', 30, 1, 1, 1);
INSERT INTO `tbselldetail` VALUES ('00018', '01', 30, 1, 1, 1);

