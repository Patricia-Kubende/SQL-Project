SELECT c.first_name, c.last_name
FROM customer c
WHERE c.customer_id IN (
    SELECT p.customer_id
    FROM passengers_on_flights p
    WHERE p.class_id = 'Economy Plus'
);