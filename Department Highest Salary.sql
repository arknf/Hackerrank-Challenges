SELECT Department, Employee, Salary
FROM (SELECT 
        Department.name AS Department, 
        Employee.name AS Employee, 
        Employee.salary AS Salary,
        DENSE_RANK() OVER (PARTITION BY Department.name ORDER BY Salary DESC) AS RANKING
     FROM Employee
     INNER JOIN Department
     ON Employee.departmentId = Department.id) AS temp
WHERE RANKING = 1;
