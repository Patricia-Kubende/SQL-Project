SELECT c.first_name, c.last_name
FROM customer c
WHERE c.customer_id IN (
    SELECT t.customer_id
    FROM ticket_details t
    WHERE t.brand = 'Emirates'
);