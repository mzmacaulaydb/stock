
-- A list of products that are out of stock in any branch (along with the branch name)

SELECT BRANCHES.BNAME FROM BQTY WHERE QTY=0 JOIN BRANCHES  ON
BQTY.BID = BRANCHES.BID;

