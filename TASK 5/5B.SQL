
-- A list of all branches with the name of the assigned manager

SELECT * FROM Branches
inner join Staff on Branches.bman=Staff.sid;

