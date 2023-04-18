# Car-Rental
This is a relational database project for a car rental company. It allows to monitor customers, car fleets, offices located in various places in Poland, employees working in these offices, as well as rentals.

It consists of tables:
- Car
- Car type
- Employees
- Customers
- Office
- Reservation

I've also uploaded an ERD diagram showing the tables, keys, and table relationships.

The cost of the rental is calculated as a daily rate * number of days from rental to return.

The daily rate depends on the type of car. I divided the fleet into types:
- Small
- Medium
- Big
- SUV
- Sports

Premium customers pay 10% less per rental.

In addition, I have attached a table with logs that fills in automatically after any interaction in the table with reservations (adding a new reservation, editing the current one or deleting the existing one). I did it using PL/SQL Trigger.

I wrote a few queries to the database placed in the DQL.sql file for short analysis. It shows several conclusions, e.g., the most profitable customers, the most frequently rented cars, etc.

Soon I plan to further expand the database as well as a simple web application - GUI for the company's employees.
