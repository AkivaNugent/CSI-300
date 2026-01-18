USE employees;
DROP TABLE IF EXISTS DupEntry;

CREATE TABLE DupEntry(-- Dont want to create a table in trigger code. This is for academic purposes
	DBTable VARCHAR(45) NOT NULL,
    time_of_error VARCHAR(45) NOT NULL,
    new_eid INT NOT NULL,
    new_efn VARCHAR(45) NOT NULL,
    new_eln VARCHAR(45) NOT NULL
);
	
DROP TABLE IF EXISTS DupEntry;

CREATE TABLE DupEntry(-- Dont want to create a table in trigger code. This is for academic purposes
	DBTable VARCHAR(45) NOT NULL,
    time_of_error VARCHAR(45) NOT NULL,
    new_eaid INT NOT NULL,
    new_street VARCHAR(45) NOT NULL,
    new_city VARCHAR(45) NOT NULL,
    new_state VARCHAR(45) NOT NULL,
    new_zip VARCHAR(45) NOT NULL
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
        DECLARE emp_street VARCHAR(255);
        DECLARE emp_city VARCHAR(255);
        DECLARE emp_st VARCHAR(255);
        DECLARE emp_zip VARCHAR(255);
        DECLARE emp_email VARCHAR(255);
        
        DECLARE old_efn VARCHAR(45);
        DECLARE old_eln VARCHAR(45);
        DECLARE old_street VARCHAR(255);
        DECLARE old_city VARCHAR(255);
        DECLARE old_st VARCHAR(255);
        DECLARE old_zip VARCHAR(255);
        DECLARE old_email VARCHAR(255);
        
        -- set them to their respective data
        SET emp_fn = NEW.efn;
        SET emp_ln = NEW.eln;
        SET emp_street = NEW.estreet;
        SET emp_city = NEW.ecity;
        SET emp_st = NEW.est;
        SET emp_zip = NEW.ezip;
        SET emp_email = NEW.contact;
        
        SET old_efn = (SELECT efn FROM Employee LIMIT 1); -- must be in parenthesis
        SET old_eln = (SELECT eln FROM Employee LIMIT 1);
        -- SET old_street = (SELECT estreet FROM Address LIMIT 1); -- MAYBE SUBJACT TO CHANGE ONCE WE GET TO CLASS NEXT WEEK
        -- SET old_city = (SELECT ecity FROM Address LIMIT 1);
        -- SET old_st = (SELECT est FROM Address LIMIT 1);
        -- SET old_zip = (SELECT ezip FROM Address LIMIT 1);
        -- SET old_eln = (SELECT contact FROM EmpContact LIMIT 1);

		IF (old_efn = NEW.efn and old_eln = NEW.eln)
        THEN
        INSERT INTO DupEntry VALUES(NEW.eid, NEW.efn, NEW.eln);
        END IF;
        
	END;
|