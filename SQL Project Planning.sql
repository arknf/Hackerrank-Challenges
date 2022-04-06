/*
Enter your query here.
*/
SELECT
    company_code,
    founder,
    (SELECT COUNT(DISTINCT lead_manager_code) 
     FROM Lead_Manager 
     WHERE company_code = C.company_code),
    (SELECT COUNT(DISTINCT senior_manager_code) 
     FROM Senior_Manager 
     WHERE company_code = C.company_code),
    (SELECT COUNT(DISTINCT manager_code) F
     ROM Manager 
     WHERE company_code = C.company_code),
    (SELECT COUNT(DISTINCT employee_code) 
     FROM Employee 
     WHERE company_code = C.company_code)
FROM COMPANY AS C
ORDER BY company_code;
