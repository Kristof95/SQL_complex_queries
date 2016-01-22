SELECT Year(o.OrderDate) AS YearOfIncome, c.CategoryName, p.ProductName,SUM(((od.UnitPrice * od.Quantity) * (1- od.Discount))) AS ProductSales FROM Orders AS o
INNER JOIN OrderDetails AS od ON od.OrderID = o.OrderID
INNER JOIN Products AS p ON p.ProductID = od.ProductID
INNER JOIN Categories AS c ON c.CategoryID = p.ProductID
GROUP BY  YearOfIncome,p.ProductName
ORDER BY ProductName, YearOfIncome;


/*
5. Write a query that lists total amount of the particular products' sales for each year.
Columns should be listed:
YearOfIncome: the year when the product was shipped
CategoryName
ProductName
ProductSales: sum of ordertotals
The list should be sorted by ProductName and year.
*/