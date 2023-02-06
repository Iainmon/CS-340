-- Write the query to create the 4 tables below.



create or replace table client (
    id int(11) NOT NULL AUTO_INCREMENT,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    primary key (id),
    constraint full_name unique (first_name, last_name)
);

create or replace table employee (
    id int(11) NOT NULL AUTO_INCREMENT,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    start_date date NOT NULL,
    email varchar(255) NOT NULL,
    primary key (id),
    constraint full_name unique (first_name, last_name)
);

create or replace table project (
    id int(11) NOT NULL AUTO_INCREMENT,
    title varchar(255) NOT NULL,
    comments text,
    cid int(11),
    primary key (id),
    foreign key (cid) references client(id),
    constraint title unique (title)
);

create or replace table works_on (
    pid int(11) NOT NULL,
    eid int(11) NOT NULL,
    due_date date NOT NULL,
    foreign key (pid) references project(id),
    foreign key (eid) references employee(id),
    primary key (eid, pid)
);

-- Leave the queries below untouched. These are to test your submission correctly.
-- Test that the tables were created
DESCRIBE client;
DESCRIBE employee;
DESCRIBE project;
DESCRIBE works_on;

-- Test that the correct foreign keys were created 
SELECT TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME,REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME 
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE 
WHERE REFERENCED_TABLE_SCHEMA = 'grade';

