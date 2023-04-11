INSERT INTO car_type (car_type, daily_cost)
	VALUES ('Ma�e', 50);
INSERT INTO car_type (car_type, daily_cost)
	VALUES ('�rednie', 80);
INSERT INTO car_type (car_type, daily_cost)
	VALUES ('Du�e', 200);
INSERT INTO car_type (car_type, daily_cost)
	VALUES ('SUV', 150);
INSERT INTO car_type (car_type, daily_cost)
	VALUES ('Sportowe', 500);


INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Fiat', '500', 'Benzine', 2, 'Manual', 'Beige', (SELECT id FROM car_type WHERE car_type = 'Ma�e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Toyota', 'Yaris', 'Benzine', 4, 'Manual', 'White', (SELECT id FROM car_type WHERE car_type = 'Ma�e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Opel', 'Corsa', 'Hybrid', 2, 'Manual', 'Red', (SELECT id FROM car_type WHERE car_type = 'Ma�e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Volkswagen', 'Polo', 'Benzine', 4, 'Auto', 'Black', (SELECT id FROM car_type WHERE car_type = 'Ma�e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Opel', 'Astra', 'Diesel', 5, 'Manual', 'White', (SELECT id FROM car_type WHERE car_type = '�rednie'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Toyota', 'Corolla', 'Benzine', 4, 'Auto', 'Black', (SELECT id FROM car_type WHERE car_type = '�rednie'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Volkswagen', 'Golf', 'Diesel', 4, 'Auto', 'Red', (SELECT id FROM car_type WHERE car_type = '�rednie'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Fiat', 'Tipo', 'Hybrid', 5, 'Auto', 'Blue', (SELECT id FROM car_type WHERE car_type = '�rednie'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Mercedes', 'C', 'Diesel', 5, 'Auto', 'Black', (SELECT id FROM car_type WHERE car_type = 'Du�e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Peugeot', '508', 'Benzine', 7, 'Auto', 'Red', (SELECT id FROM car_type WHERE car_type = 'Du�e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Skoda', 'Karoq', 'Hybrid', 5, 'Auto', 'Blue', (SELECT id FROM car_type WHERE car_type = 'Du�e'));
INSERT INTO car (brand, model_name, fuel_type, number_of_seats, transmission, color, car_type_id)
	VALUES ('Volkswagen', 'Passat', 'Benzine', 5, 'Manual', 'White', (SELECT id FROM car_type WHERE car_type = 'Du�e'));
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
	VALUES ('Anna', 'Mazur', 500232321, '�ytnia 2, 90-000 ��d�', 'Y');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Mariusz', 'M�y�ski', 500232221, 'Polna 8, 89-200 Bydgoszcz', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('�ucja', '�ab�dowicz', 694852141, 'Brzechwy 17, 22-210 Warszawa', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Andrzej', 'Piekarski', 507932321, 'Aleksnadrowska 129, 90-000 ��d�', 'Y');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Feliks', 'Nowak', 521232321, 'Wolno�ci 1A, 74-350 Wroc�aw', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Jolanta', 'Kr�lewicz', 694852145, 'Mazurska 25/2, 40-300 Szczecin', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Wawrzyniec', 'Podolski', 786772241, 'Wroc�awska 22, 70-000 Pozna�', 'Y');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Anna', 'Szczerbi�ska', 786772241, 'Pomorska 5, 35-700 Gda�sk', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Gerard', 'Mak', 786772256, 'Robotnicza 127, 55-320 Katowice', 'Y');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Karolina', 'Markiewicz', 500748721, '�ytnia 39, 90-000 ��d�', 'Y');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Vanessa', 'Carter', 532232321, '��dzka 1, 23-100 Warszawa', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Piotr', 'Go��b', 697845540, 'Warszawska 25/4, 90-000 ��d�', 'Y');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Weronika', 'Kupisz', 741029567, '�wiebodzi�ska 37, 75-100 Wroc�aw', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Joachim', 'Schneider', 786771156, 'Nowa 41, 55-320 Katowice', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Marzena', 'Flis', 521448721, 'Sosnowa 8, 70-000 Szczecin', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Bogdan', 'Zaj�c', 511232321, 'Os. Kosmonaut�w 2A/2, 40-300 Szczecin', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Patrycja', 'Zmy�lona', 602845540, 'Krakowska 25/4, 20-000 Gda�sk', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Wies�aw', 'Zi�tek', 741099567, 'Radoszy�ska 59, 22-100 Warszawa', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('Lena', 'Ma�kowska', 601145540, 'Rzeszowska 2/4, 10-300 Krak�w', 'N');
INSERT INTO customers (cust_name, cust_surname, phone, address, premium_cust)
	VALUES ('J�zef', 'Mackiewicz', 741099567, 'Kresowa 59, 89-100 Bydgoszcz', 'N');


INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Wiktoria', 'My�liwska', 531232321, '��dzka 18, 23-100 Warszawa');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Patryk', 'Kownacki', 697155540, 'Warszawska 3, 90-000 ��d�');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('�aneta', 'Kret', 741229567, 'Rycerska 37, 75-100 Wroc�aw');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Olga', 'Piotrowska', 786771216, '�rednia 41, 90-000 ��d�');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Mieczys�aw', 'Zar�ba', 514448721, 'Sportowa 8, 70-000 Wroc�aw');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Anastazja', '�ab�dowicz', 524132321, 'Os. Piastowskie 2A/2, 23-100 Warszawa');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Marek', 'Baran', 702845540, 'Gda�ska 25/4, 20-000 Pozna�');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Aleksnadra', 'Kos', 741099567, 'Mickiewicza 159, 70-000 Gda�sk');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Alicja', 'Ma�kowska', 691145540, 'Kupiecka 2/4, 20-000 Pozna�');
INSERT INTO employees (employee_name, employee_surname, phone, address)
	VALUES ('Jan', 'Kasperkiewicz', 726099567, 'Malinowa 59, 89-100 Gda�sk');

INSERT INTO office (city, address, phone, manager_id)
	VALUES ('Warszawa', '��dzka 17', 726099567, 1);
INSERT INTO office (city, address, phone, manager_id)
	VALUES ('��d�', 'Warszawska 17', 726099568, 2);
INSERT INTO office (city, address, phone, manager_id)
	VALUES ('Gda�sk', 'Nadbrze�na 28', 726099569, 8);
INSERT INTO office (city, address, phone, manager_id)
	VALUES ('Pozna�', 'P�wiejska 2', 726099570, 9);
INSERT INTO office (city, address, phone, manager_id)
	VALUES ('Wroc�aw', '�u�ycka 17', 726099571, 5);