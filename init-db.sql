#show databases;
CREATE DATABASE IF NOT EXISTS geoDB ;
USE geoDB;
CREATE TABLE IF NOT EXISTS departement(
	num integer auto_increment NOT NULL,
	nom VARCHAR(64),
	prefecture VARCHAR(64),
	PRIMARY KEY(num));
show tables;