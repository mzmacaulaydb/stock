
-- The most expensive product currently available for sale

SELECT PRODUCTS.PID FROM PRODUCTS WHERE 
PRODUCTS.PID =(SELECT MAX(PRICE) FROM PRICES AND PRODUCTS.LIVE=’true’);

