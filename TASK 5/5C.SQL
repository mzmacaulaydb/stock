
-- A list of products that are out of stock in any branch (along with the branch name)

SELECT BNAME FROM Branches INNER JOIN Branches  ON
BQTY.BID = Branches.BID;


SELECT * Products 
INNER JOIN Branches ON  Branches.BID=






SELECT * FROM BQTY WHERE QTY=0;
