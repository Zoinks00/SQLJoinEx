/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT Products.Name, Categories.Name
FROM Products
INNER JOIN Categories ON Categories.CategoryID = Products.CategoryID
WHERE Categories.Name = 'computers';

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT Products.Name, Products.Price, Reviews.Rating
FROM Products 
INNER JOIN Reviews ON Reviews.ProductID = Products.ProductID
WHERE Reviews.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT Employees.FirstName, Employees.LastName, SUM(Sales.Quantity) AS Total
FROM Employees
INNER JOIN Sales ON Sales.EmployeeID = Employees.EmployeeID
GROUP BY Employees.EmployeeID
ORDER BY Total DESC
LIMIT 2;   /*sets limit to only return top 2 entries of query

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT Departments.Name as 'Department', Categories.Name as 'Category'
FROM Departments 
INNER JOIN Categories ON Categories.DepartmentID = Departments.DepartmentID
WHERE Categories.Name = 'Appliances' OR Categories.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT Products.Name, SUM(Sales.Quantity) as 'qtySold', SUM(Sales.Quantity * Sales.PricePerUnit) as 'Total Price'
 FROM Products
 INNER JOIN Sales ON Sales.ProductID = Products.ProductID
 WHERE Products.Name = 'Eagles: Hotel California';

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT Products.Name, Reviews.Reviewer, Reviews.Rating, Reviews.Comment
FROM Products
INNER JOIN Reviews ON Reviews.ProductID = Products.ProductID
WHERE Products.Name  = 'Visio TV'  AND Reviews.Rating = 1;
