CREATE DATABASE org;
SHOW DATABASES ;
USE org;

CREATE TABLE worker (
  worker_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  first_name CHAR(25) UNIQUE,
  last_name CHAR(25),
  salary INT(15),
  joining_date DATETIME,
  department CHAR(25)
);

insert into worker
(worker_ID,first_name,last_name,salary,joining_date,department) values
(01,'monika','arora',100000,'14-02-20 09.00','HR'),
(02,'niharika','verma',800000,'18-02-20 09.00','Admin'),
(03,'vishal','singhal',300000,'17-02-20 09.00','HR'),
(04,'amithabh','singh',500000,'13-02-20 09.00','Admin'),
(05,'vivek','bhati',500000,'12-02-20 09.00','Admin'),
(06,'vipul','divan',200000,'11-02-20 09.00','Account'),
(07,'satish','kumar',750000,'10-02-20 09.00','Account'),
(08,'geetika','chouhan',90000,'19-02-20 09.00','Admin');



SELECT *FROM worker;

create table bonus(
worker_ref_ID int,
bonus_amount int(10),
bonus_date datetime,
foreign key (worker_ref_ID)
references worker(worker_ID)
on delete cascade
);

insert into bonus
(worker_ref_ID,bonus_amount,bonus_date) values
(01, 5000, '16-02-20'),
(02, 2000, '14-02-20'),
(03, 2500, '13-02-20'),
(04, 6000, '12-02-20'),
(05, 7000, '15-02-20');


