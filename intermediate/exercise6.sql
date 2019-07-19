select employeeNumber as ID, concat_ws(' ',firstname,lastname) as Employee,
       case 
       when count(customers.customerNumber)>= 6 then employees.Salary*0.30
       when count(customers.customerNumber) > 0 and count(customers.customerNumber) < 6 then employees.salary*0.10
       else 0.0
       end as 'Bonus'
from employees
left join customers on employees.employeeNumber=customers.salesrepemployeeNumber
where employees.jobTitle='Sales Rep'
group by employees.employeeNumber
order by count(customers.customerNumber) desc 
