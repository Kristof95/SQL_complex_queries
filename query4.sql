/*
4. Write a query which lists the total amount to be paid for the different orders.
The result set should contains only two column
OrderID
OrderTotal: sum of orderdetails' total
It should be sorted by OrderID.
*/
SELECT OrderID,SUM(((OrderDetails.UnitPrice * OrderDetails.Quantity) * (1- OrderDetails.Discount))) AS OrderTotal FROM OrderDetails GROUP BY OrderID  ORDER BY OrderID;