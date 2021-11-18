	-- Create User --
CREATE USER IF NOT EXISTS `holberton_user`@`localhost` IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON * . * TO `holberton_user`@`localhost`;
-- Create database--
CREATE DATABASE IF NOT EXISTS `tyrell_corp`;
USE `tyrell_corp`;
CREATE TABLE IF NOT EXISTS `nexus6` (
	id INT AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
	);
INSERT INTO nexus6 (name) VALUES ('martin');
GRANT SELECT ON `tyrell_corp` . * TO 'holberton_user'@'localhost';
-- Create replica user --
CREATE USER IF NOT EXISTS 'replica_user'@'localhost' IDENTIFIED BY 'replica_pwd';
GRANT REPLICATION SLAVE ON * . * TO 'replica_user'@'localhost';
GRANT SELECT ON `mysql` . `user` TO 'holberton_user'@'localhost';
