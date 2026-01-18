use employees;

DROP TRIGGER IF EXISTS SalAdjLow; -- THIS SHOULD BE MULTIPLE TRIGGERS SO THAT THIS IS NOT A MULTI-TRIGGER. MULTI-TRIGGER IS GENERALLY A NO NO

DELIMITER |
CREATE TRIGGER SalAdjLow BEFORE INSERT ON EmpHistory
	FOR EACH ROW BEGIN
    
    DECLARE lowSal INT;
    
	 SET lowSal = (SELECT sal_value

					FROM SalPos AS sp1
					inner join (
								SELECT pos_id, max(sal_date) AS MaxDate -- this query takes gets the lmost recent date
								
								FROM SalPos
								
								GROUP BY pos_id
						) AS sp2 ON sp1.pos_id = sp2.pos_id-- we can alias an entire query as sp2
								 AND sp1.sal_date = sp2.MaxDate
									
						WHERE sp1.pos_id = NEW.pos_id
						  AND  sal_id = 1
                          );

     IF (NEW.salary < lowSal) 
		THEN SET NEW.salary = lowSal;
     END IF;
END;

|