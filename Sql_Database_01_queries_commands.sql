-- Alter Commands

CREATE TABLE account(
id INT PRIMARY KEY,
name VARCHAR(255) UNIQUE,
balance INT NOT NULL DEFAULT 0
);

SELECT *FROM account;

-- Add new column
ALTER TABLE account ADD interest FLOAT NOT NULL DEFAULT 0;

-- MODIFY
ALTER TABLE account MODIFY interest DOUBLE NOT NULL DEFAULT 0;

DESC account;

-- CHANGE COLUMN - RENAME THE COLUMN
ALTER TABLE account CHANGE interest saving_interest FLOAT NOT NULL DEFAULT 0;

-- DROP COLUMN
ALTER TABLE account DROP COLUMN saving_interest;

-- RENAME THE TABLE
ALTER TABLE account RENAME TO account_details;