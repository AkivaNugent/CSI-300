USE Employees;

DELETE FROM Employee WHERE eid = 163 or eid = 164;
DELETE FROM DupEntry WHERE new_eid = 163 or new_eid = 164;

-- inserts
insert into employee values(163, 'Bruce', 'Jones');
insert into employee values(164, 'Should', 'Work');


-- check for new entry in Employee ----------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------
select eid, efn, eln 

from Employee

where eid > 162;
 -- We expect 2 new entries

-- check our dupes table --------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------
select new_eid, new_efn, new_eln 

from DupEntry

where new_eid > 162;
-- we expect 1 new entry


-- check our dupes table --------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------