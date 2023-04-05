-- Number of rentals in 2022
SELECT COUNT(*) FROM reservation
WHERE pick_up_date LIKE '22%';

-- TOP 5 most frequently rented cars
SELECT c.brand, c.model_name, COUNT(c.model_name) "Amount of reservation" 
FROM CAR c JOIN RESERVATION r ON
c.id = r.car_id
GROUP BY c.brand, c.model_name
ORDER BY "Amount of reservation" DESC
FETCH FIRST 5 ROWS ONLY;

-- Eeservation by type of car
SELECT ct.car_type, COUNT(ct.car_type) "Reservation by car type" 
FROM CAR c 
LEFT JOIN car_type ct ON c.car_type_id = ct.id
LEFT JOIN RESERVATION r ON c.id = r.car_id
GROUP BY ct.car_type
ORDER BY "Reservation by car type" DESC;

-- TOP 5 most frequently rented cars
CREATE OR REPLACE VIEW Rental_days_by_cars AS 
SELECT c. brand, c.model_name, SUM(r.drop_off_date - r.pick_up_date) "Rental days"
FROM CAR c LEFT JOIN RESERVATION r ON
c.id = r.car_id
GROUP BY c.brand, c.model_name
HAVING SUM(r.drop_off_date - r.pick_up_date) > 0
ORDER BY "Rental days" DESC;

SELECT * FROM Rental_days_by_cars
FETCH FIRST 5 ROWS ONLY;

-- Rental days by car types
CREATE OR REPLACE VIEW Rental_days_by_types AS
SELECT ct.car_type, SUM(r.drop_off_date - r.pick_up_date) "Rental_days"
FROM CAR c 
LEFT JOIN car_type ct ON c.car_type_id = ct.id
LEFT JOIN reservation r ON c.id = r.car_id
GROUP BY ct.car_type;

SELECT * FROM Rental_days_by_types;

-- Income by car type
SELECT car_type, "Rental_days",
(SELECT daily_cost FROM car_type WHERE Rental_days_by_types.car_type = car_type.car_type) "Daily cost",
("Rental_days" * (SELECT daily_cost FROM car_type WHERE Rental_days_by_types.car_type = car_type.car_type)) "Income" 
FROM Rental_days_by_types;

--TOP 5 most frequently renting customers
SELECT cu.cust_name, cu.cust_surname, COUNT(cu.id) "Amount of reservation"
FROM customers cu JOIN RESERVATION r ON
cu.id = r.customer_id
GROUP BY cu.cust_name, cu.cust_surname
ORDER BY "Amount of reservation" DESC
FETCH FIRST 5 ROWS ONLY;

-- Customers with car models
CREATE OR REPLACE VIEW Rental_days_by_customers AS
SELECT cu.cust_name, cu.cust_surname, c.model_name, SUM(r.drop_off_date - r.pick_up_date) "Rental_days"
FROM car c
LEFT JOIN reservation r ON c.id = r.car_id
LEFT JOIN customers cu ON r.customer_id = cu.id
GROUP BY cu.cust_name, cu.cust_surname, c.model_name;

SELECT * FROM Rental_days_by_customers;

-- TOP 5 most profitable clients
SELECT cu.cust_name, cu.cust_surname, c.brand, c.model_name, 
SUM(r.drop_off_date - r.pick_up_date) "Rental_days", ct.daily_cost "Daily_cost",
(SUM(r.drop_off_date - r.pick_up_date) * ct.daily_cost) "Income"
FROM car c
LEFT JOIN reservation r ON c.id = r.car_id
LEFT JOIN customers cu ON r.customer_id = cu.id
LEFT JOIN car_type ct ON c.car_type_id = ct.id
GROUP BY cu.cust_name, cu.cust_surname, c.brand, c.model_name, ct.daily_cost
HAVING (SUM(r.drop_off_date - r.pick_up_date) * ct.daily_cost) > 0
ORDER BY "Income" DESC
FETCH FIRST 5 ROWS ONLY;
