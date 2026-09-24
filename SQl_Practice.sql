CREATE DATABASE practice;

USE practice;

CREATE TABLE friends(
    age INT,
    first_name Varchar(100),
    second_name Varchar(100)
);

SELECT * FROM friends;

INSERT INTO friends(age, first_name, second_name)
VALUES(21,'shaik','siddiq');

INSERT INTO friends(age,first_name)
VALUE(22,'abc');

INSERT INTO friends(second_name)
VALUE('xyz');
