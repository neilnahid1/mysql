select employeeNumber as ID, -- 1st col
       concat_ws(' ',firstname,lastname) as Employee, -- 2nd col
       if(count(customers.customerNumber)>=6, -- condition 
          employees.salary*0.30, -- true 
          if(count(customers.customerNumber)>0, -- false, condition
            employees.salary*0.10, -- true
            0 -- false
            )
         ) as 'Bonus' -- 3rd col
from employees
left join customers on employees.employeeNumber=customers.salesrepemployeeNumber
where employees.jobTitle='Sales Rep'
group by employees.employeeNumber
order by Bonus desc
