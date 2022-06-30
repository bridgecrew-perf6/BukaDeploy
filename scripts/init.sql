CREATE DATABASE IF NOT EXISTS Users;

USE Users;

CREATE TABLE IF NOT EXISTS `customers` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`email` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`first_name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`last_name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`address` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`password` TEXT NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`creation_date` DATETIME NULL DEFAULT NOW(),
	`phone_number` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`mentoring_code` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`role` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='latin1_swedish_ci'

ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `employees` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`email` VARCHAR(50) NOT NULL DEFAULT '0',
	`first_name` VARCHAR(50) NOT NULL DEFAULT '0',
	`last_name` VARCHAR(50) NOT NULL DEFAULT '0',
	`password` TEXT NOT NULL DEFAULT '0',
	`role` VARCHAR(50) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
)
COLLATE='latin1_swedish_ci';

CREATE TABLE IF NOT EXISTS `payments` (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  payment_id VARCHAR(50) NOT NULL,
  content VARCHAR(100) NOT NULL DEFAULT '0',
  address VARCHAR(50) NOT NULL DEFAULT 'missing address',
  amount INT DEFAULT '0',
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES customers(id) ON DELETE CASCADE
) COLLATE = 'latin1_swedish_ci';

