USE employees;


DROP TABLE IF EXISTS DupEmpEntry;
CREATE TABLE DupEmpEntry(-- Dont want to create a table in trigger code. This is for academic purposes
	DBTable VARCHAR(45) NOT NULL,
    time_of_error VARCHAR(45) NOT NULL,
    new_eid INT NOT NULL,
    new_efn VARCHAR(45) NOT NULL,
    new_eln VARCHAR(45) NOT NULL,
    email VARCHAR(255) NOT NULL
		  DEFAULT ""
);
	
DROP TABLE IF EXISTS DupAddEntry;
CREATE TABLE DupAddEntry(-- Dont want to create a table in trigger code. This is for academic purposes
	DBTable VARCHAR(45) NOT NULL,
    time_of_error VARCHAR(45) NOT NULL,
    new_eaid INT NOT NULL,
    new_street VARCHAR(45) NOT NULL,
    new_city VARCHAR(45) NOT NULL,
    new_st VARCHAR(45) NOT NULL,
    new_zip CHAR(5) NOT NULL
);

DROP TRIGGER IF EXISTS DupEmps;
DROP TRIGGER IF EXISTS DupAdd;
DROP TRIGGER IF EXISTS DupContact;

DELIMITER |
CREATE TRIGGER DupEmps BEFORE INSERT ON employee
	FOR EACH ROW BEGIN

        DECLARE count_dups int;
        
        SELECT COUNT(*) INTO count_dups 
        FROM employee
        WHERE NEW.efn = efn
		  and NEW.eln = eln;
          
		IF (count_dups > 0) 
        THEN INSERT INTO DupEmpEntry (DBTable, time_of_error, new_eid, new_efn, new_eln)
						 VALUES('Employee', 
								NOW(), 
								NEW.eid,
								NEW.efn, 
								NEW.eln
							    );
        
		END IF;
	END;

|

DELIMITER ||
CREATE TRIGGER DupAdd BEFORE INSERT ON Address
	FOR EACH ROW BEGIN
        
        DECLARE count_dups int;
        
        SELECT COUNT(*) INTO count_dups 
        FROM Address
        WHERE NEW.estreet = estreet
          and NEW.ecity = ecity
          and NEW.est = est
          and NEW.ezip = ezip;
          
		IF (count_dups > 0) 
        THEN INSERT INTO DupAddEntry VALUES('Address', 
											 NOW(), 
                                             NEW.eaid,
                                             NEW.estreet,
                                             NEW.ecity, 
                                             NEW.est,
                                             NEW.ezip
                                             );
                                             
		END IF;
	END;

||

DELIMITER |||
CREATE TRIGGER DupContact AFTER INSERT ON EmpContact
	FOR EACH ROW BEGIN
        
        DECLARE count_dups int;
        
        SELECT COUNT(*) INTO count_dups 
        FROM EmpContact;
          
		IF (count_dups > 0) THEN
        UPDATE DupEmpEntry
			SET email = NEW.contact
            WHERE new_eid = NEW.eid; -- we can add "AND email IS NULL" but dr. C doesnt like that. Also, we have a defualt email of "" so it would never succeed
            
		END IF;
	END;
    
|||