-- Database export via SQLPro (https://www.sqlprostudio.com/allapps.html)
-- Exported by liuhangfei at 10-11-2022 15:40.
-- WARNING: This file may contain descructive statements such as DROPs.
-- Please ensure that you are running the script at the proper location.


-- BEGIN TABLE tb_order
DROP TABLE IF EXISTS tb_order;
CREATE TABLE `tb_order` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `price` bigint NOT NULL COMMENT '商品价格',
  `num` int DEFAULT '0' COMMENT '商品数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- Inserting 8 rows into tb_order
-- Insert batch #1
INSERT INTO tb_order (id, user_id, name, price, num) VALUES
(101, 1, 'Apple 苹果 iPhone 12 ', 699900, 1),
(102, 2, '雅迪 yadea 新国标电动车', 209900, 1),
(103, 3, '骆驼（CAMEL）休闲运动鞋女', 43900, 1),
(104, 4, '小米10 双模5G 骁龙865', 359900, 1),
(105, 5, 'OPPO Reno3 Pro 双模5G 视频双防抖', 299900, 1),
(106, 6, '美的（Midea) 新能效 冷静星II ', 544900, 1),
(107, 2, '西昊/SIHOO 人体工学电脑椅子', 79900, 1),
(108, 3, '梵班（FAMDBANN）休闲男鞋', 31900, 1);

-- END TABLE tb_order

-- BEGIN TABLE tb_user
DROP TABLE IF EXISTS tb_user;
CREATE TABLE `tb_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收件人',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- Inserting 6 rows into tb_user
-- Insert batch #1
INSERT INTO tb_user (id, username, address) VALUES
(1, '柳岩', '湖南省衡阳市'),
(2, '文二狗', '陕西省西安市'),
(3, '华沉鱼', '湖北省十堰市'),
(4, '张必沉', '天津市'),
(5, '郑爽爽', '辽宁省沈阳市大东区'),
(6, '范兵兵', '山东省青岛市');

-- END TABLE tb_user

