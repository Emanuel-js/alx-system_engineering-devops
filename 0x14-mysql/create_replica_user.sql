	-- Create replica user --
CREATE USER IF NOT EXISTS 'replica_user'@'localhost';
GRANT REPLICATION SLAVE ON * . * TO 'replica_user'@'localhost';
GRANT SELECT ON `mysql` . `user` TO 'holberton_user'@'localhost';
