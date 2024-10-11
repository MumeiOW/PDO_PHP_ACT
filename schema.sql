-----Creating table-----
drop table customers;
drop table orders;
drop table shippings;

create table customers (
  customer_id int primary key,
  first_name varchar,
  last_name varchar,
  date_of_registry datetime
);

create table pensions (
  pension_id int primary key,
  pension_plan varchar,
  pension_price int,
  pension_covered varbinary
);

create table proof_of_residency (
  residency_id int primary key,
  customer_id int,
  first_name varchar,
  last_name varchar,
  address varchar,
  date_of_residency datetime
);

create table payments (
  payment_id int primary key,
  customer_id int,
  pension_plan varchar,
  payment_date datetime
);

create table benefits (
  benefit_id int primary key,
  customer_id int,
  first_name varchar,
  last_name varchar,
  payment_id int,
  benefit_description varchar,
  payment_date datetime
);


-----Inserting Values into table----

---inserting values into customers---
insert into customers (customer_id, first_name, last_name, date_of_registry) values ('976-827', 'Creighton', 'Giacomello', '29-06-2022');
insert into customers (customer_id, first_name, last_name, date_of_registry) values ('182-774', 'Austin', 'Melan', '08-03-2021');
insert into customers (customer_id, first_name, last_name, date_of_registry) values ('865-517', 'Kirbee', 'Haysom', '04-02-2022');
insert into customers (customer_id, first_name, last_name, date_of_registry) values ('787-294', 'Nial', 'Hendrickx', '26-05-2021');
insert into customers (customer_id, first_name, last_name, date_of_registry) values ('168-056', 'Burl', 'Hearty', '05-04-2021');
insert into customers (customer_id, first_name, last_name, date_of_registry) values ('420-066', 'Parke', 'Breeds', '17-12-2021');
insert into customers (customer_id, first_name, last_name, date_of_registry) values ('171-339', 'Bradley', 'Dury', '17-02-2022');
insert into customers (customer_id, first_name, last_name, date_of_registry) values ('047-187', 'Kaela', 'Drillingcourt', '22-09-2021');
insert into customers (customer_id, first_name, last_name, date_of_registry) values ('003-167', 'Inez', 'Ivic', '25-12-2020');
insert into customers (customer_id, first_name, last_name, date_of_registry) values ('182-011', 'Mickie', 'Neenan', '10-07-2021');

---inserting values into payments---
insert into payments (payment_id, customer_id, pension_plan, payment_date) values ('482018e0-52ff-bb7f-fd52-e38667ea55fc', '787-294', 'Silver Plan', '13-09-2021');
insert into payments (payment_id, customer_id, pension_plan, payment_date) values ('c54e79db-cd39-3cec-530f-ad30ca463ffa', '976-827', 'Bronze Plan', '06-06-2021');
insert into payments (payment_id, customer_id, pension_plan, payment_date) values ('d82ede1c-4e9c-de64-fe9b-e67f784ae884', '182-774', 'Bronze Plan', '14-02-2021');
insert into payments (payment_id, customer_id, pension_plan, payment_date) values ('e7fefc7b-8c71-7063-e0e7-75dcff19c64a', '171-339', 'Silver Plan', '02-05-2022');
insert into payments (payment_id, customer_id, pension_plan, payment_date) values ('adeac0b8-e0ea-e9d5-f739-34660d1e0137', '420-066', 'Silver Plan', '20-01-2022');
insert into payments (payment_id, customer_id, pension_plan, payment_date) values ('3ccd0ddb-ac07-f307-bbb4-95e97bc8dc71', '168-056', 'Bronze Plan', '23-07-2022');
insert into payments (payment_id, customer_id, pension_plan, payment_date) values ('6ab71dee-9611-287c-9c11-2faa15e4c3cd', '865-517', 'Bronze Plan', '16-12-2021');
insert into payments (payment_id, customer_id, pension_plan, payment_date) values ('5f34dcf3-de63-ddb6-8cdc-3799e754ccf9', '182-011', 'Bronze Plan', '19-08-2021');
insert into payments (payment_id, customer_id, pension_plan, payment_date) values ('ccbebf6a-cf07-a54a-876b-ef4f89d4c741', '003-167', 'Bronze Plan', '29-06-2022');
insert into payments (payment_id, customer_id, pension_plan, payment_date) values ('8c8570dc-6c80-080e-6ed1-d22cdf809e7b', '047-187', 'Platinum Plan', '27-07-2021');

---inserting values into pensions---
insert into pensions (pension_id, pension_plan, pension_price, pension_covered) values ('999', 'Bronze Plan', '₱999', '2 months');
insert into pensions (pension_id, pension_plan, pension_price, pension_covered) values ('1499', 'Silver Plan', '₱1499', '5 months');
insert into pensions (pension_id, pension_plan, pension_price, pension_covered) values ('2099', 'Gold Plan', '₱2099', '8 months');
insert into pensions (pension_id, pension_plan, pension_price, pension_covered) values ('3499', 'Platinum Plan', '₱3499', '12 months');

---inserting values into proof_of_residency---
insert into proof_of_residency (residency_id, customer_id, first_name, last_name, address, date_of_residency) values ('968', '976-827', 'Creighton', 'Giacomello' 'Cebu City', '22-05-2021');
insert into proof_of_residency (residency_id, customer_id, first_name, last_name, address, date_of_residency) values ('101', '182-774', 'Austin', 'Melan', 'Manila', '29-06-2021');
insert into proof_of_residency (residency_id, customer_id, first_name, last_name, address, date_of_residency) values ('892', '865-517', 'Kirbee', 'Haysom', 'Quezon City', '01-07-2021');
insert into proof_of_residency (residency_id, customer_id, first_name, last_name, address, date_of_residency) values ('696', '787-294', 'Nial', 'Hendrickx', 'Davao City', '23-07-2022');
insert into proof_of_residency (residency_id, customer_id, first_name, last_name, address, date_of_residency) values ('433', '168-056', 'Burl', 'Hearty', 'Manila', '08-07-2021');
insert into proof_of_residency (residency_id, customer_id, first_name, last_name, address, date_of_residency) values ('100', '420-066', 'Parke', 'Breeds', 'Manila', '10-09-2020');
insert into proof_of_residency (residency_id, customer_id, first_name, last_name, address, date_of_residency) values ('788', '171-339', 'Bradley', 'Dury', 'Cebu City', '15-07-2021');
insert into proof_of_residency (residency_id, customer_id, first_name, last_name, address, date_of_residency) values ('869', '047-187', 'Kaela', 'Drillingcourt', 'Quezon City', '30-01-2022');
insert into proof_of_residency (residency_id, customer_id, first_name, last_name, address, date_of_residency) values ('669', '003-167', 'Inez', 'Ivic', 'Cebu City', '29-08-2021');
insert into proof_of_residency (residency_id, customer_id, first_name, last_name, address, date_of_residency) values ('936', '182-011', 'Mickie', 'Neenan', 'Quezon City', '05-10-2021');

---inserting values into benefits---
insert into benefits (benefit_id, customer_id, first_name, last_name, payment_id, benefit_description, payment_date) values ('1', '976-827', 'Creighton', 'Giacomello', 'c54e79db-cd39-3cec-530f-ad30ca463ffa', '2 months of pension covered with 2 free weekly check-up', '06-06-2021');
insert into benefits (benefit_id, customer_id, first_name, last_name, payment_id, benefit_description, payment_date) values ('2', '182-774', 'Austin', 'Melan', 'd82ede1c-4e9c-de64-fe9b-e67f784ae884', '2 months of pension covered with 2 free weekly check-up', '14-02-2021');
insert into benefits (benefit_id, customer_id, first_name, last_name, payment_id, benefit_description, payment_date) values ('3', '865-517', 'Kirbee', 'Haysom', '6ab71dee-9611-287c-9c11-2faa15e4c3cd', '2 months of pension covered with 2 free weekly check-up', '16-12-2021');
insert into benefits (benefit_id, customer_id, first_name, last_name, payment_id, benefit_description, payment_date) values ('4', '787-294', 'Nial', 'Hendrickx', '482018e0-52ff-bb7f-fd52-e38667ea55fc', '5 months of pension covered with 5 free weekly check-up', '13-09-2021');
insert into benefits (benefit_id, customer_id, first_name, last_name, payment_id, benefit_description, payment_date) values ('5', '168-056', 'Burl', 'Hearty', '3ccd0ddb-ac07-f307-bbb4-95e97bc8dc71', '2 months of pension covered with 2 free weekly check-up', '23-07-2022');
insert into benefits (benefit_id, customer_id, first_name, last_name, payment_id, benefit_description, payment_date) values ('6', '420-066', 'Kirbee', 'Haysom', 'adeac0b8-e0ea-e9d5-f739-34660d1e0137', '5 months of pension covered with 5 free weekly check-up', '20-01-2022');
insert into benefits (benefit_id, customer_id, first_name, last_name, payment_id, benefit_description, payment_date) values ('7', '171-339', 'Bradley', 'Dury', 'e7fefc7b-8c71-7063-e0e7-75dcff19c64a', '5 months of pension covered with 5 free weekly check-up', '02-05-2022');
insert into benefits (benefit_id, customer_id, first_name, last_name, payment_id, benefit_description, payment_date) values ('8', '047-187', 'Kaela', 'Drillingcourt', '8c8570dc-6c80-080e-6ed1-d22cdf809e7b', '12 months of pension covered with 12 free weekly check-up', '27-07-2021');
insert into benefits (benefit_id, customer_id, first_name, last_name, payment_id, benefit_description, payment_date) values ('9', '003-167', 'Inez', 'Ivic', 'ccbebf6a-cf07-a54a-876b-ef4f89d4c741', '2 months of pension covered with 2 free weekly check-up', '19-08-2021');
insert into benefits (benefit_id, customer_id, first_name, last_name, payment_id, benefit_description, payment_date) values ('10', '182-011', 'Mickie', 'Neenan', '5f34dcf3-de63-ddb6-8cdc-3799e754ccf9', '2 months of pension covered with 2 free weekly check-up', '19-08-2021');
