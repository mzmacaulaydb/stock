
-- The most ordered product across the entire business

-- Tables involved= Orders, Customers 

-- Output=Customer ID, CFN, CLN, Value of Order (Calculated field)

SELECT  P.PNAME, SUM(O.OQTY) AS QUANTITY FROM ORDERS AS O INNER JOIN 
PRODUCTS AS P ON O.PID = P.PID GROUP BY O.PID ORDER BY SUM(O.OQTY) LIMIT 1;

