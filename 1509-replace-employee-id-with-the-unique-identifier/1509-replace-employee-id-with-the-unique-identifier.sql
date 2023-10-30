# Write your MySQL query statement below
select e2.unique_id as unique_id ,e.name as name 
from Employees e left outer join EmployeeUNI e2 on(e.id=e2.id);