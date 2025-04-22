-- answers.sql
-- SQL Assignment Solutions
-- This file contains all queries for the assignment questions

-- Question 1: Drop an index named IdxPhone from customers table
DROP INDEX IF EXISTS IdxPhone ON customers;
-- Note: The 'IF EXISTS' clause prevents errors if the index doesn't exist
-- This works in MySQL/MariaDB. For other DBMS:
-- PostgreSQL: DROP INDEX IF EXISTS IdxPhone;
-- SQL Server: DROP INDEX IdxPhone ON customers;

-- Question 2: Create user 'bob' with password 'S$cu3r3!' restricted to localhost
CREATE USER IF NOT EXISTS 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';
-- IF NOT EXISTS prevents errors if user already exists
-- For PostgreSQL: CREATE USER bob WITH PASSWORD 'S$cu3r3!';
-- For SQL Server: CREATE LOGIN bob WITH PASSWORD = 'S$cu3r3!';

-- Question 3: Grant INSERT privilege to bob on salesDB database
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';
-- Flush privileges to apply changes immediately (MySQL/MariaDB specific)
FLUSH PRIVILEGES;
-- For PostgreSQL: GRANT INSERT ON ALL TABLES IN SCHEMA public TO bob;
-- For SQL Server: GRANT INSERT ON DATABASE::salesDB TO bob;

-- Question 4: Change password for user bob to 'P$55!23'
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';
-- For PostgreSQL: ALTER USER bob WITH PASSWORD 'P$55!23';
-- For SQL Server: ALTER LOGIN bob WITH PASSWORD = 'P$55!23';