SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM customer c
INNER JOIN ticket_details t ON c.customer_id = t.customer_id;