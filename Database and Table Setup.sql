CREATE DATABASE AirCargo;
USE AirCargo;

-- Customer table
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(1)
);

-- Routes table
CREATE TABLE routes (
    route_id INT PRIMARY KEY,
    flight_num INT,
    origin_airport VARCHAR(3),
    destination_airport VARCHAR(3),
    aircraft_id VARCHAR(20),
    distance_miles INT
);

-- Passengers table
CREATE TABLE passengers_on_flights (
    customer_id INT,
    aircraft_id VARCHAR(20),
    route_id INT,
    depart VARCHAR(3),
    arrival VARCHAR(3),
    seat_num VARCHAR(10),
    class_id VARCHAR(20),
    travel_date DATE,
    flight_num INT
);

-- Ticket details table
CREATE TABLE ticket_details (
    p_date DATE,
    customer_id INT,
    aircraft_id VARCHAR(20),
    class_id VARCHAR(20),
    no_of_tickets INT,
    a_code VARCHAR(3),
    price_per_ticket DECIMAL(10,2),
    brand VARCHAR(50)
);
SELECT * FROM customer LIMIT 5;

DROP USER 'new_user'@'localhost';
-- or
DROP USER 'aircargo_user'@'localhost';

-- Add missing index to routes.aircraft_id for referencing in foreign key
CREATE INDEX idx_routes_aircraft_id ON routes(aircraft_id);

-- Add Foreign Key from ticket_details to customer
ALTER TABLE ticket_details
ADD CONSTRAINT fk_td_customer
FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

-- Add Foreign Key from ticket_details to routes.aircraft_id
ALTER TABLE ticket_details
ADD CONSTRAINT fk_td_aircraft
FOREIGN KEY (aircraft_id) REFERENCES routes(aircraft_id);

-- Add Foreign Key from passengers_on_flights to customer
ALTER TABLE passengers_on_flights
ADD CONSTRAINT fk_pf_customer
FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

-- Add Foreign Key from passengers_on_flights to routes.route_id
ALTER TABLE passengers_on_flights
ADD CONSTRAINT fk_pf_route
FOREIGN KEY (route_id) REFERENCES routes(route_id);

-- Add missing index to routes.aircraft_id if not already present
-- (Skip this if already done above — MySQL will ignore duplicates)
CREATE INDEX idx_routes_aircraft_id_pf ON routes(aircraft_id);

-- Add Foreign Key from passengers_on_flights to routes.aircraft_id
ALTER TABLE passengers_on_flights
ADD CONSTRAINT fk_pf_aircraft
FOREIGN KEY (aircraft_id) REFERENCES routes(aircraft_id);

SHOW CREATE TABLE ticket_details;
SHOW CREATE TABLE passengers_on_flights;
SHOW TABLES;


