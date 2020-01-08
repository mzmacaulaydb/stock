
-- A list of products that are out of stock in any branch (along with the branch name)




SELECT * FROM Products 
INNER JOIN BQTY ON  BQTY.PID=Products.PID
INNER JOIN Branches ON BQTY.BID=Branches.BID
WHERE BQTY.QTY=0;

