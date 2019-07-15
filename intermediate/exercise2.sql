--employeeNumber | lastName  | firstName | extension | email | officeCode | reportsTo | jobTitle | salary 
--office codes 5 - Japan & 7 - UK

select lastName as 'Last Name', firstName as 'First Name' from employees
 where officeCode = 5 OR officeCode = 7
