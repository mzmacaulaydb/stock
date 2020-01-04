
-- The total value of the product assets of the business

-- Tables involved= BQTY, Prices
-- Output = total value of the product assets (Calculated field) based on current price
SELECT SUM(
SELECT BQTY.QTY * PRICES.PRICE AS TOTAL FROM BQTY, PRICES WHERE BQTY.PID=PRICES.PID);

