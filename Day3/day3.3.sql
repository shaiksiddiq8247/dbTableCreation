USE cdg_hyd_jfs_058;

SELECT * FROM customers;

INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active) VALUES ('CUST26001', 'Ananya', 'Iyer', 'ananya.iyer@example.test', '9876502001', '1995-04-11', 'Bengaluru', 'Karnataka', '560001', 'PREMIUM', 75000.00, TRUE);

INSERT INTO customers (customer_code, first_name, last_name, email, city, state, postal_code, customer_type, credit_limit, is_active) VALUES ('CUST26002', 'Rohan', 'Das', 'rohan.das@example.test', 'Kolkata', 'West Bengal', '700001', 'REGULAR', 0.00, TRUE);

INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES
    ('CUST26003', 'Meera', 'Shah', 'meera.shah@example.test', '9876502003', '1992-08-24', 'Mumbai', 'Maharashtra', '400001', 'CORPORATE', 250000.00, TRUE),
    ('CUST26004', 'Arjun', 'Reddy', 'arjun.reddy@example.test', '9876502004', '1988-01-19', 'Hyderabad', 'Telangana', '500001', 'PREMIUM', 100000.00, TRUE),
    ('CUST26005', 'Nisha', 'Menon', 'nisha.menon@example.test', NULL, NULL, 'Kochi', 'Kerala', '682001', 'REGULAR', 0.00, FALSE);

INSERT INTO customers (customer_code, first_name, last_name, email, phone, city, state, postal_code, customer_type, credit_limit, is_active) 
VALUES ('CUST26006', 'Test', 'Customer', 'ananya.iyer@example.test', '9876502006', 'Chennai', 'Tamil Nadu', '600001', 'REGULAR', 0.00, TRUE);

INSERT INTO customers (customer_code, first_name, last_name, email, city, state, postal_code, customer_type, credit_limit, is_active) 
VALUES ('CUST26007', 'Invalid', 'Credit', 'invalid.credit@example.test', 'Delhi', 'Delhi', '110001', 'REGULAR', - 5000.00, TRUE);

#=============UPDATES===========#

UPDATE customers SET credit_limit = credit_limit * 1.10 WHERE customer_type = 'PREMIUM' AND is_active = TRUE;

UPDATE customers SET phone = '9876502002' WHERE customer_code = 'CUST26002';

UPDATE customers SET city = 'Secunderabad', postal_code = '500003' WHERE customer_code = 'CUST26004';

UPDATE customers SET credit_limit = 275000.00 WHERE customer_code = 'CUST26003';

UPDATE customers SET phone = '9876502001' WHERE customer_code = 'CUST26002';

#=====================DELETE=======#
SELECT * FROM customers WHERE is_active = FALSE;

DELETE FROM customers WHERE is_active = FALSE;

INSERT INTO customers (
    customer_code,
    first_name,
    last_name,
    email,
    phone,
    date_of_birth,
    city,
    state,
    postal_code,
    customer_type,
    credit_limit,
    is_active
)
VALUES (
    'CUST-TEMP-01',
    'Temporary',
    'Customer',
    'temporary.customer@example.test',
    '9876502099',
    '2000-01-01',
    'Hyderabad',
    'Telangana',
    '500001',
    'REGULAR',
    0.00,
    TRUE
);

DELETE FROM customers WHERE customer_code = 'CUST-TEMP-01';

SELECT * FROM customers WHERE customer_code = 'CUST-TEMP-01';