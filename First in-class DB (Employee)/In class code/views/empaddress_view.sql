USE employees;

-- ----------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW ShowEmpAdd AS 

SELECT e.eid, efn, eln, estreet, est, ezip

FROM employee e
JOIN Address a ON e.eid = a.eid

ORDER BY e.eid;
-- ----------------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM ShowEmpAdd