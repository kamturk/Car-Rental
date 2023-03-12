INSERT INTO car_type (car_type, daily_cost)
	VALUES ('Ma³e', 50);
INSERT INTO car_type (car_type, daily_cost)
	VALUES ('Œrednie', 80);
INSERT INTO car_type (car_type, daily_cost)
	VALUES ('Du¿e', 200);
INSERT INTO car_type (car_type, daily_cost)
	VALUES ('SUV', 150);
INSERT INTO car_type (car_type, daily_cost)
	VALUES ('Sportowe', 500);


INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Fiat', '500', 'Benzine', 2, 'Manual', 'Beige', (SELECT id FROM car_type WHERE car_type = 'Ma³e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Toyota', 'Yaris', 'Benzine', 4, 'Manual', 'White', (SELECT id FROM car_type WHERE car_type = 'Ma³e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Opel', 'Corsa', 'Hybrid', 2, 'Manual', 'Red', (SELECT id FROM car_type WHERE car_type = 'Ma³e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Volkswagen', 'Polo', 'Benzine', 4, 'Auto', 'Black', (SELECT id FROM car_type WHERE car_type = 'Ma³e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Opel', 'Astra', 'Diesel', 5, 'Manual', 'White', (SELECT id FROM car_type WHERE car_type = 'Œrednie'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Toyota', 'Corolla', 'Benzine', 4, 'Auto', 'Black', (SELECT id FROM car_type WHERE car_type = 'Œrednie'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Volkswagen', 'Golf', 'Diesel', 4, 'Auto', 'Red', (SELECT id FROM car_type WHERE car_type = 'Œrednie'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Fiat', 'Tipo', 'Hybrid', 5, 'Auto', 'Blue', (SELECT id FROM car_type WHERE car_type = 'Œrednie'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Mercedes', 'C', 'Diesel', 5, 'Auto', 'Black', (SELECT id FROM car_type WHERE car_type = 'Du¿e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Peugeot', '508', 'Benzine', 7, 'Auto', 'Red', (SELECT id FROM car_type WHERE car_type = 'Du¿e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Skoda', 'Karoq', 'Hybrid', 5, 'Auto', 'Blue', (SELECT id FROM car_type WHERE car_type = 'Du¿e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Volkswagen', 'Passat', 'Benzine', 5, 'Manual', 'White', (SELECT id FROM car_type WHERE car_type = 'Du¿e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Volvo', 'XC60', 'Diesel', 5, 'Auto', 'Black', (SELECT id FROM car_type WHERE car_type = 'SUV'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('BMW', 'X5', 'Benzine', 5, 'Auto', 'Blue', (SELECT id FROM car_type WHERE car_type = 'SUV'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Nissan', 'Qashqai', 'Hybrid', 4, 'Manual', 'Red', (SELECT id FROM car_type WHERE car_type = 'SUV'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Hyundai', 'Tucson', 'Benzine', 5, 'Auto', 'White', (SELECT id FROM car_type WHERE car_type = 'SUV'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Audi', 'S4', 'Diesel', 4, 'Manual', 'Red', (SELECT id FROM car_type WHERE car_type = 'Sportowe'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('BMW', 'M5', 'Benzine', 4, 'Auto', 'White', (SELECT id FROM car_type WHERE car_type = 'Sportowe'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Porsche', 'Carrera', 'Benzine', 2, 'Manual', 'Red', (SELECT id FROM car_type WHERE car_type = 'Sportowe'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Lamborghini', 'Murcielago', 'Benzine', 2, 'Auto', 'Yellow', (SELECT id FROM car_type WHERE car_type = 'Sportowe'));


INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Anna', 'Mazur', 500232321, '¯ytnia 2, 90-000 £ódŸ', 'Y');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Mariusz', 'M³yñski', 500232221, 'Polna 8, 89-200 Bydgoszcz', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('³ucja', '£abêdowicz', 694852141, 'Brzechwy 17, 22-210 Warszawa', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Andrzej', 'Piekarski', 507932321, 'Aleksnadrowska 129, 90-000 £ódŸ', 'Y');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Feliks', 'Nowak', 521232321, 'Wolnoœci 1A, 74-350 Wroc³aw', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Jolanta', 'Królewicz', 694852145, 'Mazurska 25/2, 40-300 Szczecin', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Wawrzyniec', 'Podolski', 786772241, 'Wroc³awska 22, 70-000 Poznañ', 'Y');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Anna', 'Szczerbiñska', 786772241, 'Pomorska 5, 35-700 Gdañsk', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Gerard', 'Mak', 786772256, 'Robotnicza 127, 55-320 Katowice', 'Y');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Karolina', 'Markiewicz', 500748721, '¯ytnia 39, 90-000 £ódŸ', 'Y');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Vanessa', 'Carter', 532232321, '£ódzka 1, 23-100 Warszawa', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Piotr', 'Go³¹b', 697845540, 'Warszawska 25/4, 90-000 £ódŸ', 'Y');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Weronika', 'Kupisz', 741029567, 'Œwiebodziñska 37, 75-100 Wroc³aw', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Joachim', 'Schneider', 786771156, 'Nowa 41, 55-320 Katowice', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Marzena', 'Flis', 521448721, 'Sosnowa 8, 70-000 Szczecin', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Bogdan', 'Zaj¹c', 511232321, 'Os. Kosmonautów 2A/2, 40-300 Szczecin', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Patrycja', 'Zmyœlona', 602845540, 'Krakowska 25/4, 20-000 Gdañsk', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Wies³aw', 'Ziêtek', 741099567, 'Radoszyñska 59, 22-100 Warszawa', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Lena', 'Maækowska', 601145540, 'Rzeszowska 2/4, 10-300 Kraków', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Józef', 'Mackiewicz', 741099567, 'Kresowa 59, 89-100 Bydgoszcz', 'N');


INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Wiktoria', 'Myœliwska', 531232321, '£ódzka 18, 23-100 Warszawa');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Patryk', 'Kownacki', 697155540, 'Warszawska 3, 90-000 £ódŸ');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('¯aneta', 'Kret', 741229567, 'Rycerska 37, 75-100 Wroc³aw');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Olga', 'Piotrowska', 786771216, 'Œrednia 41, 90-000 £ódŸ');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Mieczys³aw', 'Zarêba', 514448721, 'Sportowa 8, 70-000 Wroc³aw');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Anastazja', '£abêdowicz', 524132321, 'Os. Piastowskie 2A/2, 23-100 Warszawa');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Marek', 'Baran', 702845540, 'Gdañska 25/4, 20-000 Poznañ');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Aleksnadra', 'Kos', 741099567, 'Mickiewicza 159, 70-000 Gdañsk');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Alicja', 'Maækowska', 691145540, 'Kupiecka 2/4, 20-000 Poznañ');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Jan', 'Kasperkiewicz', 726099567, 'Malinowa 59, 89-100 Gdañsk');

INSERT INTO office (city, address, phone, manager_id)
	VALUES ('Warszawa', '£ódzka 17', 726099567, 1);
INSERT INTO office (city, address, phone, manager_id)
	VALUES ('£ódŸ', 'Warszawska 17', 726099568, 2);
INSERT INTO office (city, address, phone, manager_id)
	VALUES ('Gdañsk', 'Nadbrze¿na 28', 726099569, 8);
INSERT INTO office (city, address, phone, manager_id)
	VALUES ('Poznañ', 'Pó³wiejska 2', 726099570, 9);
INSERT INTO office (city, address, phone, manager_id)
	VALUES ('Wroc³aw', '£u¿ycka 17', 726099571, 5);