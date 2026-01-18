use employees;
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY,',''));
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- create a new status for adjusting a employees salary one time. Will be needed after for the adjustment
/*
select * from HistoryStatus;

insert into HistoryStatus values(121212, "One-time salary adjustment");

select * from HistoryStatus;
*/
/*
-- Start with Low Values
-- Isolates the most recent low-salary for each position
select sp1.pos_id, sp1.sal_date, sp1.sal_value

from SalPos as sp1
inner join (
	select pos_id, max(sal_date) as MaxDate -- this query takes gets the lmost recent date
    
    from SalPos
    
    group by pos_id
    ) as sp2 on sp1.pos_id = sp2.pos_id-- we can alias an entire query as sp2
			 and sp1.sal_date = sp2.MaxDate
             and sal_id = 1; -- change to a 2 to get the high-end of the salary range

-- ------------------------------------------
-- Our inner query. Gives us the date of the most recent salary action for each position
select pos_id, max(sal_date) as MaxDate
    
from SalPos
    
group by pos_id;
-- ------------------------------------------
-- Move our data over to a temporary table

drop temporary table if exists Sal_Adjustment_Low;
create temporary table if not exists Sal_Adjustment_Low(
	pos_id int not null,
    sal_date datetime not null,
    sal_value int not null);
    
-- Drops the results of the inner join on SalPos into the temp. table
insert into Sal_Adjustment_Low
-- our query from before
select sp1.pos_id, sp1.sal_date, sp1.sal_value

from SalPos as sp1
inner join (
	select pos_id, max(sal_date) as MaxDate
    
    from SalPos
    
    group by pos_id
    ) as sp2 on sp1.pos_id = sp2.pos_id
			 and sp1.sal_date = sp2.MaxDate
             and sal_id = 1; 
-- and check for table
select * from Sal_Adjustment_Low;
-- ------------------------------------------
*/
-- insert our corrections into the EmpHistory
/*
insert into EmpHistory  -- DONT PRESS THIS MULTIPLE TIMES. YOU WILL ADD NEW TIMES
select eh.eid, 
	   eh.pos_id, 
       NOW(), -- we need to make sure the date is set to the new set time. You can hard code a specific time to prevent duplications
       (salary - (eh.salary - salLow.sal_value)) as "New Salary", -- new Salaries
       'One-time adjustment approved by Management' as comments, -- new Comment
       121212 as status_id -- new status_id

from EmpHistory eh -- "as" keyword is not stricly neccessary
join Sal_Adjustment_Low salLow on eh.pos_id = salLow.pos_id

where (eh.salary - salLow.sal_value) < 0

order by eh.eid;
*/

-- and check to see if there are 164 rows (+35)
select * from EmpHistory
  
-- ------------------------------------------

-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------
-- ------------------------------------------