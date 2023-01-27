

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








/*          Activity 3             */


-- Q1

create or replace table terms_code (
    terms_code_id varchar(50) not null,
    description varchar(50),
    PRIMARY KEY (terms_code_id)
);




-- Q2

insert into terms_code (
    terms_code_id,
    description
)
values
( "NET30", "Payment due in 30 days." ),
( "NET15", "Payment due in 15 days." ),
( "210NET30", "2% discount in 10 days Net 30" );


-- Q3

create table invoices (
    invoice_id int not null AUTO_INCREMENT,
    customer_id int,
    invoice_date datetime,
    terms_code_id varchar(50),
    total_due decimal(19,2),
    PRIMARY KEY (invoice_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (terms_code_id) REFERENCES terms_code(terms_code_id)
);



-- Q4


insert into invoices (
    customer_id,
    invoice_date,
    total_due,
    terms_code_id
)
values
(
    2,
    "2014-02-07",
    2388.98,
    "NET30"
),
(
    1,
    "2014-02-02",
    2443.35,
    "210NET30"
),
(
    1,
    "2014-02-09",
    8752.32,
    NULL
);
