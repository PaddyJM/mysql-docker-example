CREATE DATABASE test_db;

USE test_db;

CREATE TABLE clients (
	id int NOT NULL AUTO_INCREMENT,
	client_name VARCHAR(255),
	PRIMARY KEY (id)
);

CREATE TABLE orders (
	id int NOT NULL AUTO_INCREMENT,
	client_id INT,
	address_line_1 VARCHAR(255) NOT NULL,
	address_line_2 VARCHAR(255),
	town VARCHAR(255),
	postcode VARCHAR(255) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (client_id) REFERENCES clients(id)
);

CREATE TABLE products (
	id int NOT NULL AUTO_INCREMENT,
	product_name VARCHAR(255),
	PRIMARY KEY (id)
);

CREATE TABLE order_lines (
	id int NOT NULL AUTO_INCREMENT,
	order_id int,
	product_id int,
	PRIMARY KEY (id),
	FOREIGN KEY (order_id) REFERENCES orders(id),
	FOREIGN KEY (product_id) REFERENCES products(id)
);