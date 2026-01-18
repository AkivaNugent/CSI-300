use employees;

alter table Address
drop constraint `fk_Address_Employee`;

alter table Address
add constraint `fk_Address_Employee`
    FOREIGN KEY (`eid`)
    REFERENCES `Employee` (`eid`)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
    
alter table EmpContact
drop CONSTRAINT `fk_Employee_has_Contact_Employee1`;

alter table EmpContact
add constraint `fk_Employee_has_Contact_Employee1`
    FOREIGN KEY (`eid`)
    REFERENCES `Employee` (`eid`)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

alter table EmpContact
drop CONSTRAINT `fk_Employee_has_Contact_Employee1`;

alter table EmpContact
add constraint `fk_Employee_has_Contact_Employee1`
    FOREIGN KEY (`eid`)
    REFERENCES `Employee` (`eid`)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

alter table EmpHistory
drop constraint `5`;

alter table EmpHistory
add CONSTRAINT `fk_EmpHist_1`
    FOREIGN KEY (`eid`)
    REFERENCES `Employee` (`eid`)
    ON DELETE CASCADE
    ON UPDATE CASCADE