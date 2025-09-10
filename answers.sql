-- Get employee details along with their office information
-- Using INNER JOIN to return only employees who have a matching office
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees AS e          -- Alias 'e' for employees table
INNER JOIN offices AS o      -- Alias 'o' for offices table
ON e.officeCode = o.officeCode;  -- Join condition on officeCode

-- Get product details along with product line info
-- Using LEFT JOIN to return all products even if their product line is missing
SELECT p.productName, p.productVendor, p.productLine
FROM products AS p           -- Alias 'p' for products table
LEFT JOIN productlines AS pl -- Alias 'pl' for productlines table
ON p.productLine = pl.productLine;  -- Join condition on productLine

-- Get order information along with customer number
-- Using RIGHT JOIN to return all orders, even if the customer info is missing
-- Limit results to the first 10 orders
SELECT o.orderDate, o.shippedDate, o.status, c.customerNumber
FROM customers AS c          -- Alias 'c' for customers table
RIGHT JOIN orders AS o       -- Alias 'o' for orders table
ON c.customerNumber = o.customerNumber  -- Join condition on customerNumber
LIMIT 10;                    -- Restrict output to 10 rows
