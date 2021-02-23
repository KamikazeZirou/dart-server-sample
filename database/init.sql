DROP DATABASE IF EXISTS todo_db;
CREATE DATABASE todo_db;
USE todo_db;

DROP TABLE IF EXISTS `todo`;

CREATE TABLE `todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
