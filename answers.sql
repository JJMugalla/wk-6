use salesdb;
SELECT 
  e.firstName, 
  e.lastName, 
  e.email, 
  e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;
-- This query retrieves the first name, last name, email, and office code of employees
-- by performing an inner join between the employees and offices tables on the officeCode field.
-- It ensures that only employees with a matching office in the offices table are included in the result.
-- The result will show employees along with their associated office codes.
-- The result will show employees along with their associated office codes.

SELECT 
  p.productName,
  p.productVendor,
  p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;
-- This query retrieves the product name, vendor, and product line of products
-- by performing a left join between the products and productlines tables on the productLine field.
-- It ensures that all products are included in the result, even if they do not have a matching product line in the productlines table.
-- The result will show all products along with their associated product lines, if available.

SELECT 
  o.orderDate,
  o.shippedDate,
  o.status,
  o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
ORDER BY o.orderDate
LIMIT 10;
-- This query retrieves the order date, shipped date, status, and customer number of orders
-- by performing a right join between the customers and orders tables on the customerNumber field.
-- It ensures that all orders are included in the result, even if they do not have a matching customer in the customers table.
-- The result is ordered by the order date and limited to the first 10 records.