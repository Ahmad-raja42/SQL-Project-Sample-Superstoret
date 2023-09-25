Select * from [dbo].[orders$]

SELECT 
REGION As Region,
Category,
SUM(SALES) AS Total_Sales,
SUM(Profit) As Total_Profit
FROM
Orders$
WHERE Region IN ('EAST','WEST') ---AND Profit > 1000
Group by
REGION,
Category
HAVING SUM(Profit) > 10000 
Order by 1,2,3,4

Select
Region,
SUM(Profit)  Profit, 
SUM(Sales)   Total_Sales 
From Orders$ 
Group by Region
SELECT 
City As CITY,
REGION As Region,
SUM(SALES) As TOTAL_SALES
FROM
Orders$
GROUP BY
City, REGION

SELECT TOP ( 5 )  [Order Date], [Ship Date], Segment , Category
FROM  dbo.Orders$

SELECT TOP 10 [ORDER ID]
FROM
ORDERS$

SELECT TOP (25) [Row Id], [Order Id], [Sales]
FROM
Orders$

SELECT [Order ID]
FROM
Orders$

SELECT Distinct Top 5 [Order ID] As DISTINCT_Order_ID
FROM Orders$

SELECT  Top 5 [Order ID] As Count_Order_ID
FROM Orders$


SELECT Count(Distinct [Order ID]) As Count_Order_ID
FROM Orders$

SELECT Distinct Top 15  [Order ID], [SEGMENT], [SALES],[PROFIT] As Count_Order_ID
FROM
Orders$
WHERE PROFIT > 1000

SELECT  [Order ID], [Ship Date], [Order Date]  
FROM Dbo.Orders$
Order By [Ship Date] Desc
OFFSET 10 rows

SELECT
[ORDER ID]  ID,
Segment     SEG , 
SALES       Total_Sales,
Profit      Total_Profit
FROM
Orders$
Where Segment NOT IN ('Home office','Corporate')

SELECT [Employee_Name],(Salary) As Max_Salary
FROM 
Employee_1
WHERE Salary = (SELECT MAX(SALARY) FROM Employee_1)

SELECT [Employee_Name], Salary
FROM
Employee_1 
WHERE SALARY =
(
SELECT MAX(SALARY)
FROM
Employee_1
WHERE Salary <> (SELECT MAX(SALARY) FROM Employee_1))

SELECT 
CATEGORY,
[SUB-CATEGORY],
CASE WHEN CATEGORY = 'FURNITURE' THEN 'PROFITABLE' END AS C_TYPE
FROM Orders$
GROUP BY
CATEGORY,
[Sub-Category]

SELECT 
CATEGORY,
[SUB-CATEGORY],
CASE WHEN CATEGORY IN ('FURNITURE', 'TECHNOLOGY') THEN 'PROFITABLE' 
ELSE 'UN-PROFITABLE'
END AS C_TYPE
FROM Orders$
GROUP BY
CATEGORY,
[Sub-Category]

SELECT 
Category, [Sub-Category] , SUM(Profit)
FROM Orders$
GROUP BY 
Category, [Sub-Category]







