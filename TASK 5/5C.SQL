
-- A list of products that are out of stock in any branch (along with the branch name)

SELECT Branches.BNAME FROM BQTY WHERE QTY=0 JOIN Branches  ON
BQTY.BID = Branches.BID;

