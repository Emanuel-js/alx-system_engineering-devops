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
