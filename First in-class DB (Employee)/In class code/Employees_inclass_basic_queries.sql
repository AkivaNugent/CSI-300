/*
use employees; -- Identify the database to use

select efn, eln
from employee;
*/
/*
select employee.eid, efn, eln, estreet, ecity, est, ezip
from employee as e join address as a on e.eid = a.eid; -- alias 'as' is totally unneccesary. You dont have to do it, but it can make things slightly faster
*/

-- February 15th, 2024 -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*
select e.eid, efn, eln, pos_name, dept_name, salary

from employee     as e 
join empHistory   as eh    on e.eid = eh.eid
join empPos       as ep    on eh.pos_id = ep.pos_id 
join department   as d     on ep.dept_id = d.dept_id

where dept_name = "IT" and salary > "100000"
order by eln;

select pos_name, sal_value

from EmpPos     as ep
join SalPos     as lowEnd    on ep.pos_id = LowEnd.pos_id;
*/

-- February 19th, 2024 -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*
select efn, eln, dept_name, salary, start_date, comments, status_desc

from employee      as e 
join empHistory    as eh    on e.eid = eh.eid
join empPos        as ep    on eh.pos_id = ep.pos_id 
join department    as d     on ep.dept_id = d.dept_id
join HistoryStatus as hs    on hs.status_id = eh.status_id

where dept_name = "sales"
*/

-- February 22, 2024 -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
use employees;

select pos_name, sal_desc, sal_value, sal_date

from emppos  as ep
join salpos  as sp on ep.pos_id = sp.pos_id
join salType as st on sp.sal_id = st.sal_id
join department as d on d.dept_id = ep.dept_id

where dept_name = 'Accounting'
order by pos_name
*/
-- February 26, 2024 -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
-- Aliias a column
select avg(salary) as "Avg, Salary", min(salary), max(salary)

from emphistory;

-- Concat() function

select  concat(efn, " ", eln) as "Employee", concat(estreet, " ", ecity, " ", est, " ", ezip) as "Address",
		contact as "Email Address"

from Employee as e
join address as a on e.eid = a.eid
join EmpContact as ec on e.eid = ec.eid

where contact_id = 2

order by contact

-- Group by 
select contact, COUNT(*) as "Row Count" -- single column group -- dont know how to do more collumns yet

from EmpContact

where contact_id = 2

group by contact
having count(*) > 1;

-- 
select  concat(efn, " ", eln) as "Employee",
		concat(estreet, " ", ecity, " ", est, " ", ezip) as "Address",
		contact as "Email Address",
        count(*)

from Employee as e
join address as a on e.eid = a.eid
join EmpContact as ec on e.eid = ec.eid

where contact_id = 2

order by contact
*/
-- February 29, 2024 -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- select 

-- from 

-- when
-- group bby
-- having
-- order by

*/
-- March 7, 2024 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------















