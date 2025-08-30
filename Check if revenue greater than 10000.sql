SELECT 
    SUM(price_per_ticket * no_of_tickets) AS total_revenue,
    IF(SUM(price_per_ticket * no_of_tickets) > 10000, 
       'Revenue Crossed 10,000', 
       'Revenue Below 10,000') AS revenue_status
FROM ticket_details;