CREATE DATABASE B9IS_project;



CREATE TABLE location_dm(
location_id INT PRIMARY KEY,
country VARCHAR(40),
state_ VARCHAR(40),
city VARCHAR(40),
region VARCHAR(40),
postal_code INT
);


CREATE TABLE product_dm(
p_row_id INT PRIMARY KEY,
product_id VARCHAR(40),
product_name VARCHAR(40),
category VARCHAR(40),
sub_category VARCHAR(40)
);


CREATE TABLE customer_dm(
c_row_id INT PRIMARY KEY,
customer_id VARCHAR(40),
customer_name VARCHAR(40),
segment VARCHAR(40),
ship_mode VARCHAR(40)
);

CREATE TABLE date_dm(
o_row_id INT PRIMARY KEY,
order_id INT,
order_year DATE,
order_month INT,
order_day INT,
ship_delay INT
);

CREATE TABLE facts_table(
facts_id INT PRIMARY KEY,
location_id INT,
p_row_id INT,
c_row_id INT,
o_row_id INT,
sales_amount INT,
units_sold INT,
discount FLOAT,
profit INT
);

DROP TABLE facts_table;

ALTER TABLE facts_table ADD COLUMN profit INT;

SELECT * FROM facts_table;