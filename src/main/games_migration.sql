CREATE DATABASE gameslister_db;

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       username VARCHAR(20) UNIQUE NOT NULL,
                       password VARCHAR(20) NOT NULL,
                       user_type VARCHAR(10) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE games (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       user_id INT UNSIGNED NOT NULL,
                       game_id INT UNSIGNED NOT NULL,
                       title VARCHAR(100) NOT NULL,
                       price DOUBLE NOT NULL ,
                       description VARCHAR(200)NOT NULL ,
                       PRIMARY KEY (id),
                       FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE category (
                          id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                          genre VARCHAR(10)NOT NULL,
                          platform VARCHAR(10)NOT NULL,
                          PRIMARY KEY (id),
                          FOREIGN KEY (genre) REFERENCES games(game_id)
)