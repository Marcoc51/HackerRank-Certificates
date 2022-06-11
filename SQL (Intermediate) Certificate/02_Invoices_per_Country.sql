SELECT 
C.country_name, COUNT(I.id), CAST(AVG(I.total_price) AS DECIMAL(10, 6))
FROM 
country C INNER JOIN city ON C.id = city.country_id
INNER JOIN customer ON customer.city_id = city.id 
INNER JOIN invoice I ON I.customer_id = customer.id
GROUP BY 
C.country_name
HAVING 
CAST(AVG(I.total_price) AS DECIMAL(10, 6)) > (SELECT AVG(total_price) FROM invoice);
