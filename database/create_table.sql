CREATE DATABASE btloopjava ENCODING 'UTF8';

CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY NOT NULL,
  userName VARCHAR(150) NOT NULL,
  password VARCHAR(150) NOT NULL,
  fullName VARCHAR(127) NOT NULL
);

CREATE TABLE IF NOT EXISTS product (
  id SERIAL PRIMARY KEY NOT NULL,
  userId INT NOT NULL,
  shortDescription VARCHAR(255) NOT NULL,
  status VARCHAR(225) NOT NULL,
  category VARCHAR(150) NOT NULL,
  price DOUBLE NOT NULL,
  FOREIGN KEY (userId) REFERENCES users (id)
);

//mysql
CREATE DATABASE btloopjava DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
use btloopjava;

CREATE TABLE IF NOT EXISTS users (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  userName VARCHAR(150) NOT NULL,
  password VARCHAR(150) NOT NULL,
  fullName VARCHAR(127) NOT NULL
);

CREATE TABLE IF NOT EXISTS product (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  userId INT NOT NULL,
  shortDescription VARCHAR(255) NOT NULL,
  status VARCHAR(225) NOT NULL,
  category VARCHAR(150) NOT NULL,
  price DOUBLE NOT NULL,
  FOREIGN KEY (userId) REFERENCES users (id)
);
