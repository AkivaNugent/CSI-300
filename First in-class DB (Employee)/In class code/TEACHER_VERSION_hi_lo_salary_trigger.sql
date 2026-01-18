use employees; -- This is a trash trigger and it might conflict so dont run it, dummy

-- hi_lo_salary_trigger.sql

drop trigger if exists SalAdj;

delimiter //
create trigger SalAdj before insert on EmpHistory
for each row
begin
declare hisal int;
declare losal int;
declare diff int;
declare lomaxdate datetime;
declare himaxdate datetime;

set lomaxdate = (select sp1.pos_id, sp1.sal_date, sp1.sal_value
from SalPos sp1
inner join (
	select pos_id, max(sal_date) as MaxDate
	from SalPos
	group by pos_id) sp2 on sp1.pos_id = sp2.pos_id
							and sp1.sal_date = sp2.MaxDate
                            and sal_id = 1
                            and sp1.pos_id = new.pos_id);

set himaxdate = (select sp1.pos_id, sp1.sal_date, sp1.sal_value
from SalPos sp1
inner join (
	select pos_id, max(sal_date) as MaxDate
	from SalPos
	group by pos_id) sp2 on sp1.pos_id = sp2.pos_id
							and sp1.sal_date = sp2.MaxDate
                            and sal_id = 2
                            and sp1.pos_id = new.pos_id);



set hisal = (select sal_value from SalPos where pos_id = new.pos_id and sal_id = 2
				and max(sal_date) group by new.pos_id);
                
set losal = (select sal_value from SalPos where pos_id = new.pos_id and sal_id = 1
				and max(sal_date) group by new.pos_id);

if new.salary > hisal then
	set diff = new.salary - hisal;
    insert into EmpHistory values(new.eid, new.pos_id, now(), (new.salary - diff), 
		new.comments,new.status_id);
    end if;

if new.salary < losal then
	set diff = losal - new.salary;
    insert into EmpHistory values(new.eid, new.pos_id, now(), (new.salary + diff), 
		new.comments,new.status_id);
    end if;

end;
//
