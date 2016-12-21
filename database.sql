--  Sample employee database

DROP DATABASE IF EXISTS csv2db;
CREATE DATABASE IF NOT EXISTS csv2db;

USE csv2db;

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

DROP TABLE IF EXISTS employees,
                     expenses;

DROP TABLE IF EXISTS employees, expenses;

CREATE TABLE employees (
    emp_id          INT         NOT NULL,
    name        VARCHAR(14)     NOT NULL,
    address     VARCHAR(200)    NOT NULL,
    PRIMARY KEY (emp_id)
);

CREATE TABLE expenses (
    expense_id  INT             NOT NULL,
    emp_id      INT             NOT NULL,
    category    VARCHAR(100)     NOT NULL,
    expense_date        DATE            NOT NULL,
    description VARCHAR(200)    NOT NULL,
    pre_tax_amt FLOAT          NOT NULL,
    tax_name    VARCHAR(200)    NOT NULL,
    tax_amt     FLOAT          NOT NULL,
    FOREIGN KEY (emp_id)  REFERENCES employees(emp_id) ON DELETE CASCADE,
    PRIMARY  KEY (expense_id)
);





SELECT 'CREATING VIEW' as 'INFO';


CREATE OR REPLACE VIEW expenses_per_month AS
    SELECT
           Year(`expense_date`) AS year,
           Month(`expense_date`) AS month,
           ROUND(SUM(pre_tax_amt +  tax_amt), 2) AS total_expenses
    FROM expenses
    GROUP BY Year(`expense_date`), MONTH(`expense_date`);

SELECT 'SCRIPT COMPLETE' as 'INFO';
