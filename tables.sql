CREATE SEQUENCE car_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE car_type_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE reservation_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE office_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE customer_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE employees_seq START WITH 1 INCREMENT BY 1;


CREATE TABLE car_type (
    id NUMBER(6) DEFAULT car_type_seq.NEXTVAL PRIMARY KEY,
    car_type VARCHAR2(20) NOT NULL,
    daily_cost NUMBER(5) NOT NULL
);

CREATE TABLE car (
    id NUMBER(6) DEFAULT car_seq.NEXTVAL PRIMARY KEY,
    brand VARCHAR2(20) NOT NULL,
    model_name VARCHAR2(20) NOT NULL,
    fuel_type VARCHAR2(20)NOT NULL,
    number_of_seats NUMBER(2) NOT NULL,
    transmission VARCHAR2(10),
    color VARCHAR2(20),
    car_type_id NUMBER(6) REFERENCES car_type(id) NOT NULL
);

CREATE TABLE customers (
    id NUMBER(6) DEFAULT customer_seq.NEXTVAL PRIMARY KEY,
    cust_name VARCHAR2(20) NOT NULL,
    cust_surname VARCHAR2(20) NOT NULL,
    phone NUMBER(20) NOT NULL,
    address VARCHAR2(100) NOT NULL,
    premium_cust CHAR(1)
);

CREATE TABLE employees (
    id NUMBER(6) DEFAULT employees_seq.NEXTVAL PRIMARY KEY,
    employee_name VARCHAR2(20) NOT NULL,
    employee_surname VARCHAR2(20) NOT NULL,
    phone NUMBER(20) NOT NULL,
    address VARCHAR2(100)
);

CREATE TABLE office (
    id NUMBER(6) DEFAULT office_seq.NEXTVAL PRIMARY KEY,
    city VARCHAR2(20) NOT NULL,
    address VARCHAR2(100) NOT NULL,
    phone NUMBER(20) NOT NULL,
    employees_id NUMBER(6) REFERENCES employees(id) NOT NULL
);

CREATE TABLE reservation (
    id NUMBER(6) DEFAULT reservation_seq.NEXTVAL PRIMARY KEY,
    customer_id NUMBER(6) REFERENCES customers(id) NOT NULL,
    car_id NUMBER(6) REFERENCES car(id) NOT NULL,
    pick_up_place_id NUMBER(6) REFERENCES office(id) NOT NULL,
    drop_off_place_id NUMBER(6) REFERENCES office(id) NOT NULL,
    pick_up_date DATE NOT NULL,
    drop_off_date DATE NOT NULL,
    reservation_days NUMBER(5) NOT NULL,
    amount NUMBER(9, 2)
);