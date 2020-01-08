
-- A list of all branches with the name of the assigned manager

SELECT * FROM Branches
INNER JOIN Staff ON Branches.bman=Staff.sid;

