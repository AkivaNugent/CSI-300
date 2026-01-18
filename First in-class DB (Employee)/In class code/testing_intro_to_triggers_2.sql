use employees;

delete from Employee where eid >= 163;
delete from dupempentry where new_eid >= 163;
delete from address where eid >= 163;
delete from DupAddEntry where new_eaid >= 163;


INSERT INTO Employee VALUES(163, 'bruce', 'jones');
INSERT INTO Employee VALUES(164, 'Paul', 'Williams');

INSERT INTO Address VALUES(163,"110 Main Street","Winooski","VT","05404",163);
INSERT INTO Address VALUES(164, '100 north', 'burl', 'VT', '05423', 164);

INSERT INTO empcontact VALUES(163, 1, 'phone_number');
INSERT INTO empcontact VALUES(163,2,"BruceJones01@neb.com");
INSERT INTO empcontact VALUES(164, 1, 'phone_number');
INSERT INTO empcontact VALUES(164, 2, 'test email 164');


-- Check the feilds
select e.eid, efn, eln, estreet, ecity, est, ezip, contact
from employee e join address a on e.eid = a.eid
join empcontact ec on ec.eid = e.eid

where e.eid  > 162 and contact_id  = 2;

select * from dupempentry;
select * from dupaddentry;

CALL cleanupEmps(); -- Call cleanup

-- Check the cleanup
select e.eid, efn, eln, estreet, ecity, est, ezip, contact
from employee e join address a on e.eid = a.eid
join empcontact ec on ec.eid = e.eid

where e.eid  > 162 and contact_id  = 2;

select * from dupempentry;
select * from dupaddentry;