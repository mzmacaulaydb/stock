
-- A list of products that are out of stock in any branch (along with the branch name)

SELECT BNAME FROM Branches WHERE QTY=0 INNER JOIN Branches  ON
BQTY.BID = Branches.BID;

