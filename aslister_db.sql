CREATE DATABASE IF NOT EXISTS adlister_db;

USE adlister_db;

CREATE TABLE IF NOT EXISTS user(
    id INT UNSIGNED AUTO_INCREMENT  PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS ad(
    id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(200),
    description TEXT NOT NULL,
    foreign key (user_id) references user(id)

);

CREATE TABLE IF NOT EXISTS category (
    id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    classification VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS ad_category(
    category_id INT UNSIGNED NOT NULL ,
    ad_id INT UNSIGNED,
    FOREIGN KEY (category_id) REFERENCES category(ID),
    FOREIGN KEY (ad_id) REFERENCES ad(ID)
);






