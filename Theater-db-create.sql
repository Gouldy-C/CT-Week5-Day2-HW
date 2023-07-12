CREATE DATABASE Movie_Theater_System;

CREATE TABLE customers (
customer_id SERIAL PRIMARY KEY,
email VARCHAR UNIQUE NOT NULL,
phone_number VARCHAR UNIQUE NOT NULL,
"password" VARCHAR NULL);

CREATE TABLE concessions(
concession_id SERIAL PRIMARY KEY,
"type" VARCHAR NOT NULL,
product_name VARCHAR NOT NULL,
"size" VARCHAR NULL,
price NUMERIC(5,2));

CREATE TABLE movies(
movie_id SERIAL PRIMARY KEY,
movie_name VARCHAR NOT NULL,
description VARCHAR NULL,
rating VARCHAR NOT NULL,
movie_type VARCHAR NOT NULL,
runtime TIME NOT NULL);

CREATE TABLE theaters (
theater_id SERIAL PRIMARY KEY,
num_seats INT NOT NULL,
theater_type VARCHAR NOT NULL);

CREATE TABLE tickets (
ticket_id SERIAL PRIMARY KEY,
movie_id INT NOT NULL,
theater_id INT NOT NULL,
show_time TIME NOT NULL,
price NUMERIC(5,2) NOT NULL,
FOREIGN KEY(movie_id) REFERENCES movies(movie_id),
FOREIGN KEY(theater_id) REFERENCES theaters(theater_id));

CREATE TABLE sales (
sale_id SERIAL PRIMARY KEY,
customer_id INT NULL,
total_price NUMERIC(6,2) NOT NULL,
FOREIGN KEY(customer_id) REFERENCES customers(customer_id));

CREATE TABLE items_sold (
items_sold_id SERIAL PRIMARY KEY,
sale_id INT NOT NULL,
concession_id INT NULL,
ticket_id INT NULL,
item_qty INT NOT NULL,
FOREIGN KEY(sale_id) REFERENCES sales(sale_id),
FOREIGN KEY(concession_id) REFERENCES concessions(concession_id),
FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id));

CREATE TABLE payments(
payment_id SERIAL PRIMARY KEY,
sale_id INT NOT NULL,
tax_paid NUMERIC(8,2) NOT NULL,
total_paid NUMERIC(8,2) NOT NULL,
payment_info VARCHAR NOT NULL,
FOREIGN KEY(sale_id) REFERENCES sales(sale_id));