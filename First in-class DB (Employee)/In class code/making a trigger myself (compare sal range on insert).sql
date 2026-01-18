use employees;

DROP TRIGGER IF EXISTS SalAdj; -- THIS SHOULD BE MULTIPLE TRIGGERS SO THAT THIS IS NOT A MULTI-TRIGGER. MULTI-TRIGGER IS GENERALLY A NO NO

DELIMITER |
CREATE TRIGGER SalAdj AFTER INSERT ON EmpHistory
	FOR EACH ROW BEGIN
    
    DECLARE highsal int;
    DECLARE lowSal int;
    DECLARE lowDiff int;
    DECLARE highDiff int;
    
    SET highsal = (select sal_value

					from SalPos as sp1
					inner join (
						select pos_id, max(sal_date) as MaxDate -- this query takes gets the lmost recent date
						
						from SalPos
						
						group by pos_id
						) as sp2 on sp1.pos_id = sp2.pos_id-- we can alias an entire query as sp2
								 and sp1.sal_date = sp2.MaxDate
									
						where sp1.pos_id = NEW.pos_id
						  AND  sal_id = 2
                          );
	 SET lowSal = (select sal_value

					from SalPos as sp1
					inner join (
						select pos_id, max(sal_date) as MaxDate -- this query takes gets the lmost recent date
						
						from SalPos
						
						group by pos_id
						) as sp2 on sp1.pos_id = sp2.pos_id-- we can alias an entire query as sp2
								 and sp1.sal_date = sp2.MaxDate
									
						where sp1.pos_id = NEW.pos_id
						  AND  sal_id = 1
                          );
	 SET highDiff = (highSal - NEW.salary);
     SET lowDiff = (NEW.salary - lowSal);
     
     IF (lowDiff < 0) 
		THEN INSERT INTO EmpHistory VALUES( NEW.eid,
											NEW.pos_id,
                                            NOW(),
                                            lowSal,
                                            NEW.comments,
                                            NEW.status_id
                                            );
     END IF;
     
     IF (highDiff < 0) 
		THEN INSERT INTO EmpHistory VALUES( NEW.eid,
											NEW.pos_id,
                                            NOW(),
                                            highSal,
                                            NEW.comments,
                                            NEW.status_id
                                            );
     END IF;
     
END;

|