--	Employee Name	Job Title	Office Address
-- addressLine1 | addressLine2 | state | country | postalCode
select concat(firstName,' ',lastName) as 'Employee Name',
       jobTitle as 'Job Title',
       concat_ws(', ',addressLine1,addressLine2,state,country,postalCode) as 'Office Address'
from Employees 
inner join offices 
where Employees.officeCode=offices.officeCode
        
