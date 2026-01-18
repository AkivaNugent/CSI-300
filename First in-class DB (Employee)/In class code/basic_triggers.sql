USE employees;
CREATE TABLE DupEntry(-- Dont want to create a table in trigger code. This is for academic purposes
	new_eid INT NOT NULL,
    new_efn VARCHAR(45) NOT NULL,
    new_eln VARCHAR(45) NOT NULL
);
	

-- This is a trigger that will examine employee first and last name and if the exact fire name and last name exists, we will prevent the insert of the data

DROP TRIGGER IF EXISTS checkEmp;

DELIMITER |
CREATE TRIGGER checkEmp BEFORE INSERT ON Employee -- condition for when the employ checkEmp
	FOR EACH ROW 
		BEGIN
		 -- declare four string variables
		DECLARE emp_fn VARCHAR(255);
        DECLARE emp_ln VARCHAR(255);
        DECLARE old_efn VARCHAR(45);
        DECLARE old_eln VARCHAR(45);
        
        -- set them to their respective data
        SET emp_fn = NEW.efn;
        SET emp_ln = NEW.eln;
        SET old_efn = (SELECT efn FROM Employee); -- must be in parenthesis
        SET old_eln = (SELECT eln FROM Employee);

		IF (old_efn = NEW.efn and old_eln = NEW.eln)
        THEN
        INSERT INTO DupEntry VALUES(NEW.eid, NEW.efn, NEW.eln);
        END IF;
        
	END;
|