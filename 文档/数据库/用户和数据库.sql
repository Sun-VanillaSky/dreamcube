-- root用户下

-- 初始化root密码
-- SET PASSWORD FOR 'root'@'%' = PASSWORD('root');
-- FLUSH PRIVILEGES;


-- 创建用户
CREATE USER 'dreamcube'@'%' IDENTIFIED BY 'dreamcube';

-- 用户授权
GRANT USAGE ON *.* TO 'dreamcube'@'%';

FLUSH PRIVILEGES;

--

CREATE DATABASE `dreamcube` /*!40100 COLLATE 'utf8_general_ci' */;


-- 数据库授权 @'%' --代表任意地址访问的此用户

GRANT SELECT, EXECUTE, SHOW VIEW, ALTER, ALTER ROUTINE, CREATE, CREATE ROUTINE, CREATE TEMPORARY TABLES, CREATE VIEW, DELETE, DROP, EVENT, INDEX, INSERT, REFERENCES, TRIGGER, UPDATE, LOCK TABLES  
ON `dreamcube`.* 
TO 'dreamcube'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;


-- 时区
set global time_zone='+8:00';

-- 文件最大尺寸
set global max_allowed_packet = 2*1024*1024*10;