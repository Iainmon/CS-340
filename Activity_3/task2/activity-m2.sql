

-- Q1

create or replace table Customers (
    CustomerID int not null AUTO_INCREMENT,
    CustomerName varchar(50),
    AddressLine1 varchar(50),
    AddressLine2 varchar(50),
    City varchar(50),
    State varchar(50),
    PostalCode varchar(50),
    YTDPurchases decimal(19,2),
    PRIMARY KEY (CustomerID)
);



-- Q2

show tables;

describe Customers;



-- Q3

insert into Customers (
    CustomerName,
    AddressLine1,
    City,
    State,
    PostalCode
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

write a query to select all records from your Customers table.

write a query to select the id and name where postal code is 94536.

*/


select * from Customers;

select CustomerID , CustomerName from Customers where PostalCode = "94536";








/*          Activity 3             */


-- Q1

create or replace table TermsCode (
    TermsCodeID varchar(50) not null,
    Description varchar(50),
    PRIMARY KEY (TermsCodeID)
);




-- Q2

insert into TermsCode (
    TermsCodeID,
    Description
)
values
( "NET30", "Payment due in 30 days." ),
( "NET15", "Payment due in 15 days." ),
( "210NET30", "2% discount in 10 days Net 30" );


-- Q3

create table Invoices (
    InvoiceID int not null AUTO_INCREMENT,
    CustomerID int,
    InvoiceDate datetime,
    TermsCodeID varchar(50),
    TotalDue decimal(19,2),
    PRIMARY KEY (InvoiceID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (TermsCodeID) REFERENCES TermsCode(TermsCodeID)
);



-- Q4


insert into Invoices (
    CustomerID,
    InvoiceDate,
    TotalDue,
    TermsCodeID
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
