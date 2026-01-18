use employees;

-- we deleted employee 14 and now need to restore it to Employyes

-- we can find employee 14 like this
select * from DelEmps
where eid = 14;

-- insert data from Employee into Employee
/*
insert into Employee(
select eid, efn, eln
from DelEmps
where eid = 14
);
*/

-- and check for it 
select * from employee
where eid = 14;

-- same for adress
select * from Address
where eid = 14;

insert into Address(
select eaid, estreet, ecity, ecity, est, ezip, eid
from DelEmps
where eid = 14);


