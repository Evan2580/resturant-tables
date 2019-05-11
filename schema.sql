DROP DATABASE IF EXISTS restaurant;

CREATE DATABASE IF NOT EXISTS restaurant;

USE restaurant;

CREATE TABLE IF NOT EXISTS reservations(
    customerID VARCHAR(255) NOT NULL,
    customerName VARCHAR(255) NOT NULL,
    phoneNumber VARCHAR(255) NOT NULL,
    customerEmail VARCHAR(255) NOT NULL,
    PRIMARY KEY (customerID)
);

CREATE TABLE IF NOT EXISTS waitlist(
    customerID VARCHAR(255) NOT NULL,
    customerName VARCHAR(255) NOT NULL,
    phoneNumber VARCHAR(255) NOT NULL,
    customerEmail VARCHAR(255) NOT NULL,
    PRIMARY KEY (customerID)
);

INSERT INTO reservations ( customerID, customerName, phoneNumber, customerEmail )
VALUES ("afhaque89", "Ahmed", "979-587-0887", "afhaque89@gmail.com" ),
(("12123431424242344354", "dghdfg", "8888888888", "dan@dan.com" ),
("1234", "Dustin Sparks", "1234567890", "test@test.com" ));

INSERT INTO waitlist ( customerID, customerName, phoneNumber, customerEmail )
VALUES ("afhaque89", "1234", "66767766", "dan@dan.com" ),
("12123431424242344354", "1234567", "66767766", "dan@dan.com");

SELECT * FROM reservations ORDER BY customerName;
SELECT * FROM waitlist ORDER BY customerName;