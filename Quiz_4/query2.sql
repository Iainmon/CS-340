-- write your queries to insert data here



/*

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
*/

insert into client (first_name, last_name, email) 
    values 
        ('Sara', 'Smith', 'smiths@hello.com'),
        ('Miguel', 'Cabrera', 'mc@hello.com'),
        ('Bo', "Chan'g", 'bochang@hello.com');


/*
Insert the following into the employee table:

First name

Last name

Start Date

Email

Ananya

Jaiswal

4/10/2008

ajaiswal@hello.com

Michael

Fern

7/19/2015

michaelf@hello.com

Abdul

Rehman

2/27/2018

rehman@hello.com


*/

insert into employee (first_name,last_name,start_date,email) 
    values 
        ('Ananya', 'Jaiswal', '2008-04-10', 'ajaiswal@hello.com'),
        ('Michael', 'Fern', '2015-07-19', 'michaelf@hello.com'),
        ('Abdul', 'Rehman', '2018-02-27', 'rehman@hello.com');

/*

Insert the following project instances into the project table (you should use a subquery to set up foreign key references and not hard-coded numbers):

cid

title

comments

reference to Sara Smith

Diamond

Should be done by Jan 2019

reference to Bo Chan'g

Chan'g

Ongoing maintenance

reference to Miguel Cabrera

The Robinson Project

NULL
*/

insert into project (cid, title, comments) 
    values 
        ((select id from client where first_name = 'Sara' and last_name = 'Smith'), 'Diamond', 'Should be done by Jan 2019'),
        ((select id from client where first_name = 'Bo' and last_name = "Chan'g"), "Chan'g", 'Ongoing maintenance'),
        ((select id from client where first_name = 'Miguel' and last_name = 'Cabrera'), 'The Robinson Project', NULL);



/*
Insert the following into the works_on table. Again, your queries here should not have hard-coded integers for foreign keys.

employee

project

due_date

Ananya Jaiswal

Chan'g

11/19/2020

Michael Fern

The Robinson Project

12/05/2020

Abdul Rehman

Diamond

1/1/2021
*/

insert into works_on (pid, eid, due_date) 
    values 
        ((select id from project where title = "Chan'g"), (select id from employee where first_name = 'Ananya' and last_name = 'Jaiswal'), '2020-11-19'),
        ((select id from project where title = 'The Robinson Project'), (select id from employee where first_name = 'Michael' and last_name = 'Fern'), '2020-12-05'),
        ((select id from project where title = 'Diamond'), (select id from employee where first_name = 'Abdul' and last_name = 'Rehman'), '2021-01-01');

-- Leave the queries below untouched. These are to test your submission correctly.
select * from project;
select * from client;
select * from employee;
select * from works_on;
