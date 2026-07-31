/* Write your T-SQL query statement below */
select euni.unique_id,e.name from Employees e LEFT join EmployeeUNI euni on e.id=euni.id;