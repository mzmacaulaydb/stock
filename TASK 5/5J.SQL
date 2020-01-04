
-- The product that is mostly ordered 
-- along with the most ordered product in the entire business

-- Tables involved= Orders, Products 
-- Output =PID, PNAME, Number of times has been ordered (Calculated field)

SELECT TOP 1 WITH TIES 
p.name FROM ORDERS AS O 
INNER JOIN PRODUCTS AS P ON O.PID = P.PID
GROUP BY P.NAME ORDER BY COUNT(*) DESC


-- This should work if there are more than one product selling most 
-- for example a pen and refills for the pen would be the two best selling products. 
-- It should be possible to get the sales value by using the prices table 
-- but I can’t get it to work but an additional 
-- SELECT * FROM PRICES WHERE PID=XXXXX and multiply by 
-- the count would give the same result.

