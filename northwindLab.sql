-- 1. Select all the records from the "Customers" table
SELECT * FROM customers;

-- 2. Get distinct countries from the Customers table. In other words, each country should only appear once in the results
SELECT Country FROM customers GROUP BY Country;

-- 3. Get all the records from the table Customers where the Customer’s ID starts with “BL”
SELECT * FROM Customers WHERE CustomerID LIKE 'BL%';

-- 4. Get the first 100 records of the orders table.
SELECT * FROM orders LIMIT 100;

-- 5. Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.
SELECT * FROM customers WHERE PostalCode = 1010 OR PostalCode = 3012 OR PostalCode = 12209 OR PostalCode = 05023;

-- 6. Get all orders where the ShipRegion is not equal to NULL.
SELECT * FROM orders WHERE ShipRegion IS NOT NULL;

-- 7. Get all customers ordered by the country, then by the city.
SELECT * FROM customers ORDER BY Country, City;

-- 8. Add a new customer to the customers table. You can use whatever values
INSERT INTO `northwind`.`customers` (`CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `PostalCode`, `Country`, `Phone`) 
VALUES ('TROWL', 'Tomorrowland', 'Tom Rowland', 'Owner', '123 Fake St.', 'Springfield', '12345', 'Luna', '(123) 456-7890');

-- 9. Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the
-- ShipCountry is equal to France. (Note: this requires safe updates to be turned off.
-- Search online for more info.)
UPDATE orders SET ShipRegion = 'EuroZone' WHERE ShipCountry = 'France';

-- 10. Delete all orders from `order details` that have quantity of 1.
DELETE FROM `order details` WHERE quantity = 1;

-- 11. Calculate the average, max, and min of the quantity at the `order details` table.
SELECT AVG(quantity) FROM `order details`;
SELECT MIN(quantity) FROM `order details`;
SELECT MAX(quantity) FROM `order details`;

-- 12. Calculate the average, max, and min of the quantity at the `order details` table,
-- grouped by the orderid. This will show the average, max, and min for each order.
SELECT AVG(quantity) FROM `order details` GROUP BY 'orderid';
SELECT MIN(quantity) FROM `order details` GROUP BY 'orderid';
SELECT MAX(quantity) FROM `order details` GROUP BY 'orderid';

-- 13. Find the CustomerID that placed order 10290 (orders table)
SELECT CustomerID FROM orders WHERE orderid = 10290;

-- 14. Do an inner join, left join, right join on orders and customers tables. (These are
-- three separate queries, one for each type of join.)
SELECT * FROM orders INNER JOIN customers ON CustomerID;
SELECT * FROM orders LEFT JOIN customers ON CustomerID;
SELECT * FROM orders RIGHT JOIN customers ON CustomerID;

-- 15. Use a join to get the ship city and ship country of all the orders which are associated
-- with an employee who is in London.
SELECT orders.ShipCity, orders.ShipCountry FROM orders INNER JOIN employees ON employees.City = 'London';


-- 16. Use a join to get the ship name of all orders that include a discontinued product.
-- (See orders, order details, and products. 1 means discontinued.)
SELECT orders.ShipName FROM orders INNER JOIN orderdetails ON orderdetails.Discount > 0;

-- 17. Get employees’ firstname for all employees who report to no one.
SELECT firstname FROM employees WHERE ReportsTo IS NULL;

-- 18. Get employees’ firstname for all employees who report to Andrew.
SELECT firstname FROM employees WHERE ReportsTo = 2;

