use employees;
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY,',''));
select * from employee;
/*
select * 

from department;

update department
set dept_name = "Information Technology"
where dept_id = 4;

select * from department;
*/

-- select * from employee;
-- delete from employee; -- cannot delete blanketly from parent table without deleting child tables first;

-- -----------------------------------------------------------------------------------------------------------------------------------------

-- Will need to delete employee record #14

-- delete from employee
-- where eid = 14; -- still has problem since the DB is not set to cascade deletions or updates
				-- We have since updated the DB creation to cascade (find and replace) and reinserted data
-- select * from employee where eid = 14;
-- select * from address order by eid;
-- select * from emphistory order by eid;
-- select * from empcontact order by eid; -- we can see form all tables that employee 14 is gone

-- -----------------------------------------------------------------------------------------------------------------------------------------

-- /*
use employees;

-- drop table department; -- contents of data can cascaded to delete, but the tables do not
-- select * from department; 

-- Copied from file:///C:/School%20Work/CSI-300/First%20in-class%20DB%20(Employee)/Process%20to%20Prepare%20Deleting%20Duplicate%20Employees.pdf / process to delelete .pdf on Canvas
-- reutrns 33 rows
select employee.eid, efn, eln, estreet, ecity, est, ezip,
 contact_id, contact, pos_id, salary, comments, status_id, start_date
from Employee join EmpHistory on Employee.eid = EmpHistory.eid
join Address on Address.eid = Employee.eid
join EmpContact on EmpContact.eid = Employee.eid
where contact_id = 2
group by contact
having COUNT(*)>1
order by contact, eln;

-- To begin , create the temporary table using the code below:
drop temporary table if exists emps;
create temporary table if not exists emps(
eid int NULL,
efn varchar(45) NULL,
eln varchar(45) NULL,
estreet varchar(45) NULL,
ecity varchar(45) NULL,
est char(2) NULL,
ezip char(5) NULL,
contact_id int NULL,
email varchar(255) NULL,
phone varchar(255) NULL,
pos_id int NULL,
salary int NULL,
start_date datetime NULL,
comments varchar(255) NULL,
status_id int NULL);

-- inset our previous select query for duplicates. Reutrns 33 rows
insert into emps(
select employee.eid, efn, eln, estreet, ecity, est, ezip,
 contact_id, contact, contact, pos_id, salary, start_date, comments, status_id
from Employee join EmpHistory on Employee.eid = EmpHistory.eid
join Address on Address.eid = Employee.eid
join EmpContact on EmpContact.eid = Employee.eid
where contact_id = 2
group by contact
having count(*)>1
order by contact
);

-- and view
select * from emps;

-- returns 66 rows
select employee.eid, efn, eln, estreet, ecity, est, ezip,
 contact_id, contact, pos_id, salary, start_date, comments, status_id
from Employee join EmpHistory on Employee.eid = EmpHistory.eid
	join Address on Address.eid = Employee.eid
		join EmpContact on EmpContact.eid = Employee.eid

where contact_id = 2 and contact in (select email from emps) -- this is called a subquery
order by contact;

-- another way of doing the same thing. Should return 66 rows
select e.eid, e.efn, e.eln, a.estreet, a.ecity, a.est, a.ezip,
 ec.contact_id, ec.contact, eh.pos_id, eh.salary, eh.start_date, eh.comments, eh.status_id
from Employee e join EmpHistory eh on e.eid = eh.eid
	join Address a on a.eid = e.eid
		join EmpContact ec on ec.eid = e.eid
			join emps -- joining emps to our initial selection
where ec.contact_id = 2 and ec.contact = emps.email
order by contact;

-- how we are making a non-relational PERMANENT table
drop table if exists DelEmps;
create table if not exists DelEmps(
eid int NULL,
efn varchar(45) NULL,
eln varchar(45) NULL,
estreet varchar(45) NULL,
ecity varchar(45) NULL,
est char(2) NULL,
ezip char(5) NULL,
contact_id int NULL,
email varchar(255) NULL,
phone varchar(255) NULL,
pos_id int NULL,
salary int NULL,
start_date datetime NULL,
comments varchar(255) NULL,
status_id int NULL);

-- and insert into DelEmps
-- The eid's chosen would be based on the company information provided. After sending list of duplicates, company tells you which they want to keep
insert into DelEmps(
select e.eid, efn, eln, estreet, ecity, est, ezip,
 contact_id, contact, contact, pos_id, salary, start_date, comments, status_id
from Employee e join EmpHistory on e.eid = EmpHistory.eid
join Address on Address.eid = e.eid
join EmpContact on EmpContact.eid = e.eid
where contact_id = 2 and (e.eid=129 or e.eid=155 or e.eid=91 or e.eid=157
or e.eid=137 or e.eid=141 or e.eid=19 or e.eid=16 or e.eid=84
or e.eid=15 or e.eid=92 or e.eid=88 or e.eid=65 or e.eid=90
 or e.eid=139 or e.eid=135 or e.eid=43 or e.eid=14 or e.eid=35
 or e.eid=67 or e.eid=25 or e.eid=23 or e.eid=156 or e.eid=87
 or e.eid=24 or e.eid=44 or e.eid=34 or e.eid=17 or e.eid=140
 or e.eid=18 or e.eid=93 or e.eid=38 or e.eid=54)
);

select * from DelEmps;

-- now we do for the phone
drop temporary table if exists PhoneEmps;
create temporary table if not exists PhoneEmps(
eid int NULL,
contact varchar(255) NULL
);

-- instert into phoneEmps
insert into PhoneEmps(
select e.eid, contact
from Employee e join EmpContact ec on ec.eid = e.eid
where contact_id = 1 and e.eid in (select eid from DelEmps));

select * from PhoneEmps;

-- update delEmps with our phone numbers
update DelEmps join PhoneEmps
 on DelEmps.eid = PhoneEmps.eid
set DelEmps.phone = PhoneEmps.contact;

select * from DelEmps;

-- This completed the process of our DelEmps table creation
-- Now we can delete all the data in DelEmps from Employees with the following query with the following

delete from employee
where eid in (select eid from DelEmps);

-- should return 129 rows from employee, emhistory, and address, and 258 from empcontact
select * from Employee order by eid;
select * from EmpHistory order by eid;
select * from Address order by eid;
select * from EmpContact order by eid;










































