use employees;

/*
select * from HistoryStatus;

insert into HistoryStatus values(121212,"One-time salary adjustment");

select * from HistoryStatus;


-- Isolate the most current low-salary range for each position
select sp1.pos_id, sp1.sal_date, sp1.sal_value
from SalPos sp1
inner join(
	select pos_id, max(sal_date) as MaxDate
    from SalPos
    group by pos_id
    ) sp2 on sp1.pos_id = sp2.pos_id and sp1.sal_date = sp2.MaxDate and sal_id = 1;

drop temporary table if exists Sal_AdjustmentLow;
create temporary table if not exists Sal_AdjustmentLow(
pos_id int not null,
sal_date datetime not null,
sal_value int not null);

insert into Sal_AdjustmentLow
select sp1.pos_id, sp1.sal_date, sp1.sal_value
from SalPos sp1
inner join(
	select pos_id, max(sal_date) as MaxDate
    from SalPos
    group by pos_id
    ) sp2 on sp1.pos_id = sp2.pos_id and sp1.sal_date = sp2.MaxDate and sal_id = 1;

-- select * from Sal_AdjustmentLow

insert into EmpHistory
select eid, EmpHistory.pos_id, NOW(), salary - (salary - sal_value) as "New Salary",
	"Salary adjustment with management approval" as comments, 121212 as status_id 
from EmpHistory join Sal_AdjustmentLow on EmpHistory.pos_id = Sal_AdjustmentLow.pos_id
where (salary - sal_value) < 0;

select * from EmpHistory
*/
select eid, EmpHistory.pos_id, start_date, (salary - sal_value) as "Diff"
from EmpHistory join Sal_AdjustmentLow on EmpHistory.pos_id = Sal_AdjustmentLow.pos_id
where (salary - sal_value) < 0;

















