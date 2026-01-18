USE employees;

DROP PROCEDURE IF EXISTS cleanupEmps;

DELIMITER |
CREATE PROCEDURE cleanupEmps()
BEGIN
	DECLARE del_eid INT;

	SET del_eid = (
					SELECT max(new_eid)
                    
					FROM DupEmpEntry
					);

	DELETE FROM Employee
	WHERE eid = del_eid;

	DELETE FROM DupEmpEntry
	WHERE new_eid = del_eid;
    
	DELETE FROM DupAddEntry
	WHERE new_eaid = del_eid;
    
END;
|