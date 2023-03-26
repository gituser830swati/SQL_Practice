                             -- It is the example of check table 

CREATE TABLE account(
id INT PRIMARY KEY,
name VARCHAR(255) UNIQUE,
balance INT,
CONSTRAINT acc_balance_chk CHECK(balance>1000)
);
INSERT INTO account(id,name,balance) VALUES
(1, 'A' ,100000);

INSERT INTO account(id,name,balance) VALUES
(2, 'B' ,300000);

SELECT *FROM account;


                            -- default condition

CREATE TABLE account(
id INT PRIMARY KEY,
name VARCHAR(255) UNIQUE,
balance INT NOT NULL DEFAULT 0
);
INSERT INTO account(id,name) VALUES
(1, 'A');

INSERT INTO account(id,name) VALUES
(2, 'B');

SELECT *FROM account;