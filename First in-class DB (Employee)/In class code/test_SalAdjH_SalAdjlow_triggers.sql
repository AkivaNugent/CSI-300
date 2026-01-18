use Employees;

Select * from emphistory;

INSERT INTO Emphistory VALUES(1,
							  1,
                              NOW(),
                              3, -- Adjust based on the range you want to test. (30000 -- 40000)
                              "TESTING WITH THE VIEW AS THE SUBQUERY IN THE LOW SAL TRIGGER",
                              121212
                              ); -- Will insert regardless of the value, so select 2 should be +1 on the first.
                              
select * from emphistory; 