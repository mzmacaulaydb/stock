
-- The most expensive product currently available for sale



SELECT * FROM Products WHERE Products.LIVE=’true’ AND
Products.Price = (SELECT MAX(PRICE) FROM PRICES);