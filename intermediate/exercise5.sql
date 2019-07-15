select concat(city,' office') as 'Name',
       concat_ws(', ',addressLine1,addressLine2,state,country,postalCode) as 'Address'
from offices
union
select customerName as 'Name',
       concat_ws(', ',addressLine1,addressLine2,state,country,postalCode) as 'Address'
from customers
