INSERT INTO customers (
email,
phone_number
)VALUES(
'mail4clg@gmail.com',
'8172401959');

INSERT INTO customers (
email,
phone_number,
"password"
)VALUES(
'seanc@gmail.com',
'1234567899',
'pass1234'),
('dylans@gmail.com',
'1234567888',
'pass1234');

SELECT *
FROM customers;

INSERT INTO concessions (
"type",
product_name,
"size",
price
)VALUES(
'food',
'popcorn',
'small',
8.99),
('food',
'popcorn',
'medium',
10.99),
('food',
'popcorn',
'large',
12.99);

INSERT INTO concessions (
"type",
product_name,
"size",
price
)VALUES(
'drink',
'soft drink',
'small',
1.99),
('drink',
'soft drink',
'medium',
2.99),
('drink',
'soft drink',
'large',
3.99);

INSERT INTO concessions (
"type",
product_name,
price
)VALUES(
'candy',
'snichers',
1.99),
('candy',
'gummy worms',
1.99),
('candy',
'herseys chocolate bar',
1.99);

SELECT *
FROM concessions;

INSERT INTO movies  (
movie_name,
description,
rating,
movie_type,
runtime
)VALUES(
'StarWars XV',
'The greatest starwars movie of all time',
'PG-13',
'Sci-fi',
'01:45:50'),
('Harry Potter Remasted Edition',
'The greatest Harry Potter movie of all time now remastered',
'PG-13',
'Sci-fi',
'12:30:50');

SELECT *
FROM movies;

INSERT INTO theaters (
num_seats,
theater_type
)VALUES
('105',
'3D Projection/Suround Sound'),
('95',
'Projection/Suround Sound');

SELECT *
FROM theaters;

INSERT INTO tickets (
movie_id,
theater_id,
show_time,
price
)VALUES
(1,
1,
'18:00',
12.99),
(2,
2,
'11:00',
12.99),
(1,
1,
'20:00',
12.99);

SELECT *
FROM tickets;

INSERT INTO sales (
customer_id,
total_price
)VALUES
(1,
14.98),
(2,
23.98),
(3,
25.97);

SELECT *
FROM sales;

INSERT INTO items_sold (
sale_id,
ticket_id,
item_qty
)VALUES
(1,1,1),
(2,1,1),
(3,2,1);

INSERT INTO items_sold (
sale_id,
concession_id,
item_qty
)VALUES
(1,2,1),
(2,2,1),
(3,2,1),
(3,8,1),
(1,9,1);

SELECT *
FROM items_sold;

INSERT INTO payments (
sale_id,
tax_paid,
total_paid,
payment_info
)VALUES
(1,2.01,16.99,'visa 5698'),
(2,2.01,25.99,'mast 9867'),
(3,2.01,27.98,'visa 5687');

SELECT *
FROM payments ;
