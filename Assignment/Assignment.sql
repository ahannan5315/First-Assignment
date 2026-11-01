CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    Age INT,
    LoyaltyPoints INT NULL
);


INSERT INTO Customers
    (CustomerID, FirstName, LastName, Country, City, Age, LoyaltyPoints)
VALUES
    (1, 'Ayesha', 'Khan', 'Pakistan', 'Karachi', 28, 450),
    (2, 'Bilal', 'Ahmed', 'Pakistan', 'Lahore', 35, 300),
    (3, 'Chen', 'Wei', 'China', 'Shanghai', 41, NULL),
    (4, 'Dana', 'Miller', 'USA', 'Chicago', 23, 120),
    (5, 'Elif', 'Demir', 'Turkey', 'Istanbul', 31, 560),
    (6, 'Farhan', 'Ali', 'Pakistan', 'Karachi', 52, 90),
    (7, 'Grace', 'Lee', 'USA', 'Boston', 29, 610),
    (8, 'Hamza', 'Sheikh', 'Pakistan', 'Islamabad', 19, NULL),
    (9, 'Isabel', 'Rossi', 'Italy', 'Milan', 38, 275),
    (10, 'Jamal', 'Hassan', 'UAE', 'Dubai', 45, 380),
    (11, 'Kiran', 'Patel', 'India', 'Mumbai', 27, 150),
    (12, 'Lina', 'Haddad', 'UAE', 'Dubai', 33, 520);
    
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    City VARCHAR(50)
);


INSERT INTO Employees
    (EmployeeID, FirstName, LastName, Department, Salary, City)
VALUES
    (1, 'Farhan', 'Ali', 'Sales', 65000, 'Karachi'),
    (2, 'Grace', 'Lee', 'Marketing', 72000, 'Boston'),
    (3, 'Lina', 'Haddad', 'Engineering', 88000, 'Dubai'),
    (4, 'Omar', 'Siddiqui', 'Engineering', 91000, 'Karachi'),
    (5, 'Priya', 'Nair', 'HR', 54000, 'Mumbai'),
    (6, 'Quentin', 'Brooks', 'Sales', 61000, 'Chicago'),
    (7, 'Rania', 'Yousuf', 'Engineering', 83000, 'Lahore'),
    (8, 'Sana', 'Mirza', 'Marketing', 58000, 'Karachi'),
    (9, 'Tariq', 'Aziz', 'Sales', 47000, 'Lahore'),
    (10, 'Usman', 'Raza', 'HR', 50000, 'Islamabad');
    
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);


INSERT INTO Products
    (ProductID, ProductName, Category, Price, Stock)
VALUES
    (1, 'Laptop', 'Electronics', 950, 15),
    (2, 'Smartphone', 'Electronics', 700, 40),
    (3, 'Headphones', 'Electronics', 120, 60),
    (4, 'Office Chair', 'Furniture', 180, 25),
    (5, 'Desk', 'Furniture', 260, 10),
    (6, 'Desk Lamp', 'Furniture', 35, 80),
    (7, 'Notebook', 'Stationery', 4.50, 300),
    (8, 'Ballpoint Pen', 'Stationery', 1.20, 500),
    (9, 'Backpack', 'Accessories', 45, 70),
    (10, 'Water Bottle', 'Accessories', 15, 150),
    (11, 'Monitor', 'Electronics', 320, 18),
    (12, 'Keyboard', 'Electronics', 55, 45);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    Amount DECIMAL(10,2),
    Status VARCHAR(20)
);


INSERT INTO Orders
    (OrderID, CustomerID, ProductID, OrderDate, Quantity, Amount, Status)
VALUES
    (1, 1, 1, '2026-01-12', 1, 950, 'Delivered'),
    (2, 1, 7, '2026-01-12', 5, 22.50, 'Delivered'),
    (3, 2, 2, '2026-02-03', 1, 700, 'Delivered'),
    (4, 3, 3, '2026-02-14', 2, 240, 'Shipped'),
    (5, 4, 6, '2026-02-20', 1, 35, 'Delivered'),
    (6, 5, 4, '2026-03-05', 1, 180, 'Cancelled'),
    (7, 6, 9, '2026-03-09', 2, 90, 'Delivered'),
    (8, 7, 1, '2026-03-15', 1, 950, 'Delivered'),
    (9, 7, 12, '2026-03-15', 1, 55, 'Delivered'),
    (10, 9, 11, '2026-04-01', 2, 640, 'Shipped'),
    (11, 10, 2, '2026-04-10', 1, 700, 'Pending'),
    (12, 12, 3, '2026-04-18', 1, 120, 'Delivered'),
    (13, 2, 11, '2026-05-02', 1, 320, 'Delivered'),
    (14, 3, 7, '2026-05-09', 10, 45, 'Cancelled'),
    (15, 5, 9, '2026-05-21', 1, 45, 'Shipped'),
    (16, 12, 1, '2026-06-03', 1, 950, 'Pending'),
    (17, 1, 12, '2026-06-11', 2, 110, 'Delivered'),
    (18, 6, 4, '2026-06-25', 1, 180, 'Delivered');
    
-- Display Customers
SELECT * FROM Customers;

-- Display Employees
SELECT * FROM Employees;

-- Display Products
SELECT * FROM Products;

-- Display Orders
SELECT * FROM Orders;


--PART 1

--Qno: 1.1

SELECT * FROM Customers;

--Qno: 1.2

SELECT FirstName, LastName, Country
FROM Customers;

--Qno: 1.3

SELECT ProductName AS PRODUCT,
Price AS UnitPrice
FROM Products;

--Qno: 1.4
SELECT DISTINCT(Country)
FROM Customers;

--Qno: 1.5
SELECT * FROM Employees;

--WRONG
SELECT FirstName, LastName,
PRODUCT(Salary)
FROM Employees
GROUP BY FirstName, LastName;

--Either we can use this.
--The formula is 110 / 100 = 1.10
SELECT FirstName, LastName, Salary,
(Salary * 1.1) AS SalaryAfterRaise
FROM Employees;

--Or this, if you don't want decimals in the end.
SELECT FirstName, LastName, Salary,
CAST(Salary * 1.1 AS INT) AS SalaryAfterRaise
FROM Employees;

--Part 2

--Qno:2.1
SELECT *
FROM Customers
WHERE Country = 'Pakistan';

--Qno:2.2
SELECT ProductName, Price
FROM Products
WHERE Price > 100;

--Qno:2.3
SELECT FirstName, Department, Salary
FROM Employees
WHERE Salary >= 60000;

--Qno:2.4
SELECT * FROM Orders
WHERE STATUS <> 'Cancelled';

--Qno:2.5
SELECT FirstName, LastName, LoyaltyPoints
FROM Customers
WHERE LoyaltyPoints IS NULL;

-- Part 3

--Qno:3.1
SELECT ProductName, Price
FROM Products
ORDER BY Price;

--Qno:3.2
SELECT FirstName, Age
FROM Customers
ORDER BY Age DESC;

--QNO:3.3
SELECT *
FROM Employees
ORDER BY LastName;

--Qno:3.4
SELECT FirstName, Country, LoyaltyPoints
FROM Customers
ORDER BY COUNTRY,LoyaltyPoints DESC;

--Qno:3.5
SELECT OrderID, OrderDate, Amount
FROM Orders
WHERE Status = 'Delivered'
ORDER BY OrderDate DESC;

--Part 4

--Qno:4.1
SELECT *
FROM Customers
WHERE Country = 'Pakistan' AND Age > 30;

--Qno:4.2
SELECT *
FROM Products
WHERE Category = 'Furniture' OR Price < 10;

--Qno:4.3
SELECT *
FROM Employees
WHERE Department = 'Sales' AND Salary > 50000;

--Qno4.5
SELECT *
FROM Customers
WHERE Country NOT IN ('PAKISTAN');

--Qno:4.5
SELECT *
FROM Customers
WHERE COUNTRY IN ('USA', 'UAE') AND LoyaltyPoints > 400;

--Part 5

--Qno:5.1
SELECT TOP(3) * 
FROM Customers;

--Qno:5.2
SELECT TOP(3) ProductName, Price
FROM Products
ORDER BY PRICE DESC;

--Qno:5.3
SELECT TOP(3)FirstName, Age
FROM Customers
ORDER BY Age;

--Qno:5.4
SELECT TOP(1)FirstName, LastName, Salary
FROM Employees
ORDER BY Salary DESC;

--Qno:5.5
SELECT TOP(2) OrderID, OrderDate, Amount
FROM Orders
WHERE Status = 'Delivered'
ORDER BY OrderDate DESC;

--Part 6

--Qno:6.1
SELECT FirstName, LastName
FROM Employees
UNION
SELECT FirstName, LastName
FROM Customers;

--Qno:6.2
SELECT FirstName, LastName
FROM Employees
UNION ALL
SELECT FirstName, LastName
FROM Customers;
--Then there will be 22 rows, before there was 19 rows. Because UNION ALL select duplicates also

--Qno:6.3
SELECT FirstName, LastName
FROM Customers
INTERSECT
SELECT FirstName, LastName
FROM Employees;

--Qno:6.4
SELECT FirstName, LastName
FROM Customers
EXCEPT
SELECT FirstName, LastName
FROM Employees;

--Qno:6.5
SELECT FirstName, LastName, 'Customer' AS PersonType
FROM Customers
UNION ALL
SELECT FirstName, LastName, 'Employee' AS PersonType
FROM Employees
ORDER BY FirstName;

--Part 7

--Qno:7.1
SELECT *
FROM Customers
WHERE Country IN ('Pakistan', 'UAE', 'India');

--Qno:7.2
SELECT ProductName, Category
FROM Products
WHERE Category IN ('Stationery', 'Accessories');

--Qno:7.3
SELECT *
FROM Customers
WHERE Country NOT IN ('USA', 'China', 'Italy');

--Qno:7.4
SELECT FirstName, Department, Salary
FROM Employees
WHERE Department IN ('HR', 'Marketing')
ORDER BY Salary DESC;

--Qno:7.5
SELECT *
FROM Orders
WHERE Status NOT IN ('Cancelled', 'Pending');

--Part 8

--Qno:8.1
SELECT o.OrderID, c.FirstName, o.OrderDate
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID;

--Qno:8.2
SELECT c.FirstName, o.OrderID
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID;

--Qno:8.3
SELECT P.ProductName, O.OrderID
FROM Orders O
RIGHT JOIN Products P
ON O.ProductID= P.ProductID;

--Qno:8.4
SELECT C.FirstName, C.LastName
FROM Customers C
LEFT JOIN Orders O
ON C.CustomerID = O.CustomerID
WHERE O.OrderID IS NULL;

--Qno:8.5
SELECT O.Status, C.FirstName, P.ProductName, O.OrderDate, O.Quantity 
FROM Customers C
JOIN Orders O
ON C.CustomerID = O.CustomerID
JOIN Products P
ON O.ProductID= P.ProductID
WHERE O.Status = 'Delivered';

--Part 9

--Qno:9.1
SELECT ProductName, Price
FROM Products
WHERE Price > (
    SELECT Price
    FROM Products
    WHERE ProductName = 'DESK LAMP');

--Qno:9.2
SELECT ProductName, Price
FROM Products
WHERE Price > (
    SELECT AVG(Price)
    FROM Products);

--Qno:9.3
SELECT FirstName, LastName
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID 
    FROM Orders);

--Qno:9.4
SELECT FirstName, LastName
FROM Customers
WHERE CustomerID NOT IN (
    SELECT CustomerID 
    FROM Orders);

--Qno:9.5
SELECT FirstName, LastName
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID 
    FROM Orders
    WHERE ProductID IN (
        SELECT ProductID
        FROM Products 
        WHERE Category = 'Electronics')
    );

--END