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


SELECT * FROM reservations ORDER BY customerName;
SELECT * FROM waitlist ORDER BY customerName;

INSERT INTO products ( product_name, department_name, price, stock_quantity )
VALUES ("iphone", "electronics", 1000, 100 ),
("imac", "electronics", 2000, 20 ),
("XZ5 Compact", "electronics", 1000, 100 ),
("Learning Javascript for Dummies", "books", 5.99, 50 ),
("How to Hack GitHub", "books", 4.99, 15 ),
("No Comment T-Shirt", "clothing", 19.99, 20 ),
("Diesel Logo T-Shirt", "clothing", 1000, 100 ),
("LG UHD 65\"", "tv", 2199.99, 5 ),
("LG UHD 55\"", "tv", 1600, 8 ),
("Balenciaga", "HandBags", 1000, 100 );

SELECT * FROM products ORDER BY product_name;

UPDATE products SET stock_quantity = 100 WHERE id = 1;

SELECT * FROM products WHERE id = 1;