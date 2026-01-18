USE employees; -- NOT UP TO DATE

DROP TABLE IF EXISTS DupEmpEntry;
CREATE TABLE DupEmpEntry(-- Dont want to create a table in trigger code. This is for academic purposes
	DBTable VARCHAR(45) NOT NULL,
    time_of_error VARCHAR(45) NOT NULL,
    new_eid INT NOT NULL,
    new_efn VARCHAR(45) NOT NULL,
    new_eln VARCHAR(45) NOT NULL
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