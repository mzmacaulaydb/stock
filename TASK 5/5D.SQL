
-- The most expensive product currently available for sale



SELECT * FROM Products WHERE Products.LIVE=1 AND
Products.PID = (SELECT MAX(PRICE) FROM PRICES);
