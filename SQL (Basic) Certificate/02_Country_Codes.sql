select c.customer_id, c.name, concat('+', cc.country_code, c.phone_number) 
from customers c INNER join country_codes cc on c.country = cc.country 
order by c.customer_id;
