SELECT 
    COUNT(*) AS passenger_count,
    SUM(price_per_ticket * no_of_tickets) AS total_revenue
FROM ticket_details
WHERE class_id = 'Business';