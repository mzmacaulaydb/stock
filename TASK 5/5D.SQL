
-- The most expensive product currently available for sale



SELECT * FROM Products WHERE Products.LIVE=1 AND
Products.PID = (SELECT prices.pid from prices where prices.PRICE in (select max(PRICE) FROM PRICES) limit 1);
