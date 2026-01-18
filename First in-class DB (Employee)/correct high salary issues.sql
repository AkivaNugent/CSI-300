use employees;

/*
select * from HistoryStatus;

insert into HistoryStatus values(121212,"One-time salary adjustment");

select * from HistoryStatus;

-- Isolate the most current high-salary range for each position (should return 67 rows)
select sp1.pos_id, sp1.sal_date, sp1.sal_value
from SalPos sp1
inner join(
	select pos_id, max(sal_date) as MaxDate
    from SalPos
    group by pos_id
    ) sp2 on sp1.pos_id = sp2.pos_id and sp1.sal_date = sp2.MaxDate and sal_id = 2;


drop temporary table if exists Sal_AdjustmentHigh;
create temporary table if not exists Sal_AdjustmentHigh(
pos_id int not null,
sal_date datetime not null,
sal_value int not null);

insert into Sal_AdjustmentHigh
select sp1.pos_id, sp1.sal_date, sp1.sal_value
from SalPos sp1
inner join(
	select pos_id, max(sal_date) as MaxDate
    from SalPos
    group by pos_id
    ) sp2 on sp1.pos_id = sp2.pos_id and sp1.sal_date = sp2.MaxDate and sal_id = 2;

select * from Sal_AdjustmentHigh;

    

-- insert into EmpHistory -- MAKE SURE TO ONLY RUN ONCE
select eid, EmpHistory.pos_id, NOW(), salary - (salary - sal_value) as "New Salary",
	"Salary adjustment with management approval" as comments, 121212 as status_id 
from EmpHistory join Sal_AdjustmentHigh on EmpHistory.pos_id = Sal_AdjustmentHigh.pos_id
where (salary - sal_value) > 0;

select * from EmpHistory; -- 193 rows expected

*/















