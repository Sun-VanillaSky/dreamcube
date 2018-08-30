-- 建表 使用DREAMCUBE数据库

CREATE TABLE `user` (
	`ID` VARCHAR(50) NOT NULL,
	`name` VARCHAR(50) NOT NULL,
	`password` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`ID`)
)
COMMENT='用户表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
