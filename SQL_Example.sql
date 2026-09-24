CREATE DATABASE cdg_hyd_jfs_058;

USE cdg_hyd_jfs_058;

CREATE TABLE employees (
    employee_Id INT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    date_of_joining DATE
);

SELECT * FROM employees;

INSERT INTO employees (employee_id, first_name, last_name, date_of_joining)
VALUES(101,'Chetan','Sharam','2026-05-25');

INSERT INTO employees
VALUES(102,'Akshat','Kumar','2026-05-25');

INSERT INTO employees (first_name, last_name)
VALUES('Bharat','Sharam');