

-- Q1

create or replace table customers (
    customer_id int not null AUTO_INCREMENT,
    customer_name varchar(50),
    address_line1 varchar(50),
    address_line2 varchar(50),
    city varchar(50),
    state varchar(50),
    postal_code varchar(50),
    ytd_purchases decimal(19,2),
    PRIMARY KEY (customer_id)
);



-- Q2

show tables;

describe customers;



-- Q3

insert into customers (
    customer_name,
    address_line1,
    city,
    state,
    postal_code
)
values 
(
    "Bike World",
    "60025 Bollinger Canyon Road",
    "San Ramon",
    "California",
    "94583"
),
(
    "Metro Sports",
    "482505 Warm Springs Blvd.",
    "Fremont",
    "California",
    "94536"
),
(
    "Iain Moncrief",
    "772 Nunu St.",
    "Kailua",
    "Hawaii",
    "96734"
);







-- Q4

/*

write a query to select all records from your customers table.

write a query to select the id and name where postal code is 94536.

*/


select * from customers;

select customer_id , customer_name from customers where postal_code = "94536";

