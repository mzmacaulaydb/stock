
-- A list of all branches with the name of the assigned manager

SELECT BRANCHES.BNAME, STAFF.SFN, STAFF.SLN FROM BRANCHES JOIN STAFF ON 
STAFF.SID = BRANCHES.BMAN;

