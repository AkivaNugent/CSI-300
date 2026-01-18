use employees;

/*
select employee.eid,
	   concat(efn, " ", eln) as Employee,
       pos_name as "Position Name",
       salary,
       start_date as "As of Date"
	   
from employee
join EmpHistory on Employee.eid = EmpHistory.eid
join EmpPos on EmpHistory.pos_id = EmpPos.pos_id
join SalPos on EmpPos.pos_id = SalPos.pos_id


select sp1.pos_id, sp1.sal_date, sp1.sal_value
from SalPos as sp1
inner join (
	select pos_id, max(sal_date) as MaxDate
    from SalPos
    
    group by pos_id
    ) as sp2 on sp1.pos_id = sp2.pos_id
			 and sp1.sal_date = sp2.MaxDate
             and sal_id = 1; 
*/

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------

select Employee.eid,
	   concat(efn, " ", eln) as Employee,
       pos_name as "Position Name",
       salary,
       start_date as "As of Date"
	   
from Employee
	  join EmpHistory on Employee.eid = EmpHistory.eid
	  join EmpPos on EmpHistory.pos_id = EmpPos.pos_id
	  join SalPos on EmpPos.pos_id = SalPos.pos_id
inner join (
	  select Emphistory.eid,
			 max(start_date)
	  from EmpHistory
      
      group by EmpHistory.eid
      ) as ij on EmpHistory.eid = ij.eid


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
             
             
             
             
             