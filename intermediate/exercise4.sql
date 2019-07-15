select employeenumber as 'Emp #',concat_ws(' ',firstName,lastName) as 'Emp Name', count(customers.customerNumber) as 'Customer Count'
from employees
left join customers on employees.employeeNumber=customers.salesrepemployeeNumber 
where employees.jobTitle='Sales Rep'
group by employees.employeeNumber

