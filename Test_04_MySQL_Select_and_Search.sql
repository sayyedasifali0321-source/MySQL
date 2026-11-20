DROP DATABASE IF EXISTS customers_database;
CREATE DATABASE customers_database;
USE customers_database;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    phone VARCHAR(15),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    points INT,
    monthly_income DECIMAL(10,2),
    sector VARCHAR(50)
);


INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (1, 'Veer', 'Sibal', '1999-07-28', '9513653999', 'H.No. 487
Srinivasan Marg', 'Kanpur', 'Uttar Pradesh', 3545, 27287.19, 'Government');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (2, 'Romil', 'Khare', '1981-06-18', '9621760889', '24/21, Sura', 'Jaipur', 'Rajasthan', 2584, 194204.0, 'HR');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (3, 'Ojas', 'Lata', '2002-09-20', '9726401695', 'H.No. 11, Keer Path', 'Ranchi', 'Jharkhand', 1889, 110843.63, 'HR');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (4, 'Jhanvi', 'Bedi', '1981-04-26', '9250050891', 'H.No. 93
Khare Circle', 'Kanpur', 'Uttar Pradesh', 876, 131306.42, 'HR');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (5, 'Ahana ', 'Verma', '1987-01-08', '9671835844', 'H.No. 801
Savant Marg', 'Faridabad', 'Haryana', 1303, 75826.56, 'Education');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (6, 'Vardaniya', 'Sami', '1990-07-22', '9179180332', '75/35, Chandran Zila', 'Ranchi', 'Jharkhand', 2804, 104985.69, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (7, 'Jiya', 'Choudhry', '1977-05-26', '9479880545', '71/15, Konda Circle', 'Jaipur', 'Rajasthan', 2690, 129959.66, 'Finance');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (8, 'Emir', 'Dora', '1988-01-14', '9693267777', '18/583
Mahal', 'Amritsar', 'Punjab', 3726, 175755.79, 'HR');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (9, 'Khushi', 'Dhawan', '1984-06-03', '9166872192', '65/93, Chanda Road', 'Kanpur', 'Uttar Pradesh', 4594, 184879.01, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (10, 'Kanav', 'Tara', '1975-08-20', '9872777019', '47/11, Vora Street', 'Patna', 'Bihar', 3367, 147845.62, 'Healthcare');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (11, 'Indrajit', 'Bahl', '1997-12-11', '9817424032', '86/848, Vala Ganj', 'Varanasi', 'Uttar Pradesh', 109, 130141.48, 'Healthcare');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (12, 'Madhav', 'Wason', '1992-05-26', '9457701128', '47/75
Gaba Zila', 'Ghaziabad', 'Uttar Pradesh', 2764, 146655.66, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (13, 'Manjari', 'Bhardwaj', '1985-10-31', '9305156723', '304
Sastry Zila', 'Ranchi', 'Jharkhand', 4749, 59906.7, 'Healthcare');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (14, 'Madhup', 'Grewal', '1996-04-25', '9253002188', 'H.No. 60, Srinivas Zila', 'Kanpur', 'Uttar Pradesh', 4548, 100634.52, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (15, 'Hunar', 'Varma', '1993-01-07', '9443656008', 'H.No. 989, Arya Zila', 'Ranchi', 'Jharkhand', 4261, 199634.89, 'Self Employed');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (16, 'Gatik', 'Ravi', '1975-09-11', '9217099972', '15, Badami Zila', 'Lucknow', 'Uttar Pradesh', 4615, 72396.32, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (17, 'Mahika', 'Apte', '1975-11-26', null, '17/300, Kala Circle', 'Chandigarh', 'Chandigarh', 4526, 56576.33, 'Healthcare');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (18, 'Miraya', 'Bedi', '1997-09-21', null, 'H.No. 314
Kamdar Path', 'Dehradun', 'Uttarakhand', 4913, 71778.31, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (19, 'Jivin', 'Balasubramanian', '1986-06-01', '9740258139', 'H.No. 916
De Ganj', 'Kanpur', 'Uttar Pradesh', 3253, 77068.43, 'Finance');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (20, 'Taimur', 'Zachariah', '1994-03-04', '9411738931', '23/02
Garg Street', 'Gurugram', 'Haryana', 1651, 167864.1, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (21, 'Eva', 'Dass', '1973-04-08', '9757960185', '20/769
Dugal Circle', 'Varanasi', 'Uttar Pradesh', 2230, 105775.58, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (22, 'Nehmat', 'Gokhale', '1982-07-03', '9828774302', '807
Ganesh Zila', 'Kanpur', 'Uttar Pradesh', 1166, 177818.67, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (23, 'Seher', 'Bajaj', '1987-10-20', '9186165974', '375
Dhawan', 'Ranchi', 'Jharkhand', 4528, 143029.71, 'Healthcare');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (24, 'Pari', 'Gola', '1989-05-13', '9857292284', '46/610, Char', 'Dehradun', 'Uttarakhand', 2357, 113922.22, 'Finance');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (25, 'Rasha', 'Ganesh', '1974-09-23', '9331070625', '769, Babu Marg', 'Ranchi', 'Jharkhand', 4931, 168547.39, 'Self Employed');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (26, 'Yakshit', 'Viswanathan', '1993-02-28', '9722442780', '02/714
Kapoor Street', 'Lucknow', 'Uttar Pradesh', 3791, 108677.97, 'Education');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (27, 'Eva', 'Wali', '1985-11-10', '9851861427', 'H.No. 754, Bakshi Chowk', 'Ranchi', 'Jharkhand', 3027, 34827.14, 'Government');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (28, 'Zoya', 'Tata', '1999-01-20', '9223855847', '812
Iyer Nagar', 'Amritsar', 'Punjab', 4909, 133426.52, 'Healthcare');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (29, 'Parinaaz', 'Joshi', '1980-01-15', null, '008, Bawa', 'Ghaziabad', 'Uttar Pradesh', 232, 151668.06, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (30, 'Kanav', 'Bhargava', '1989-12-24', '9857345666', 'H.No. 42, Khanna Zila', 'Ghaziabad', 'Uttar Pradesh', 3147, 163024.93, 'HR');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (31, 'Vivaan', 'Ratti', '1972-01-18', '9557554822', 'H.No. 71, Bhavsar Road', 'Patna', 'Bihar', 609, 38109.35, 'Finance');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (32, 'Neysa', 'Lad', '1997-02-01', '9849118145', 'H.No. 240
Bahri Nagar', 'Ghaziabad', 'Uttar Pradesh', 470, 167081.65, 'Education');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (33, 'Lagan', 'Sangha', '1978-02-12', '9673590699', 'H.No. 90
Sagar', 'Shimla', 'Himachal Pradesh', 706, 24805.42, 'Education');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (34, 'Bhamini', 'Sawhney', '1991-03-14', '9302422473', '65/823
Raj Marg', 'Shimla', 'Himachal Pradesh', 4818, 41545.19, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (35, 'Riaan', 'Agrawal', '1973-12-28', '9497434735', 'H.No. 55, Sekhon Path', 'Patna', 'Bihar', 1050, 26550.57, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (36, 'Divij', 'Gara', '1995-10-20', '9308940441', 'H.No. 422, Dhillon', 'Gurugram', 'Haryana', 1114, 106262.06, 'Education');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (37, 'Taran', 'Hora', '2002-12-10', '9959795110', 'H.No. 17, Bajwa Ganj', 'Delhi', 'Delhi', 286, 117962.37, 'Government');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (38, 'Ryan', 'Chakraborty', '1998-06-10', '9208985031', 'H.No. 65, Johal Road', 'Patna', 'Bihar', 2229, 32600.77, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (39, 'Emir', 'Bawa', '1988-05-12', '9794631206', '55
Khatri Zila', 'Lucknow', 'Uttar Pradesh', 2969, 98492.36, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (40, 'Farhan', 'Sarma', '1986-03-20', '9640775579', 'H.No. 452
Rattan Street', 'Amritsar', 'Punjab', 422, 127367.29, 'Education');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (41, 'Jivika', 'Guha', '1996-09-16', '9520129618', 'H.No. 133, Hans Nagar', 'Ghaziabad', 'Uttar Pradesh', 2231, 84539.95, 'Education');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (42, 'Aayush', 'Bawa', '1982-09-06', '9604890752', '79
Kakar Ganj', 'Patna', 'Bihar', 4767, 50496.43, 'Education');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (43, 'Dharmajan', 'Gour', '1976-10-08', '9318414852', '26/35
Balay Zila', 'Kanpur', 'Uttar Pradesh', 575, 161956.69, 'Finance');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (44, 'Rati', 'Atwal', '2000-01-03', '9273896862', '31/764
Rege Ganj', 'Chandigarh', 'Chandigarh', 4437, 65123.72, 'Government');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (45, 'Arnav', 'Sur', '1976-08-17', '9574931073', 'H.No. 376, Mahajan Path', 'Varanasi', 'Uttar Pradesh', 1532, 22376.68, 'Education');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (46, 'Indrajit', 'Ben', '2002-12-03', '9540132567', '966
Kota Circle', 'Ranchi', 'Jharkhand', 4762, 177464.84, 'HR');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (47, 'Parinaaz', 'Wali', '1980-04-02', '9796787024', '38
Choudhary', 'Chandigarh', 'Chandigarh', 3283, 170779.01, 'HR');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (48, 'Aayush', 'Garde', '1993-04-15', '9264725704', 'H.No. 08
Vohra Street', 'Dehradun', 'Uttarakhand', 201, 102431.76, 'IT');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (49, 'Onkar', 'Ramachandran', '1995-12-18', '9460687651', '94, Bali Chowk', 'Faridabad', 'Haryana', 474, 117977.51, 'Finance');
INSERT INTO customers
(customer_id, first_name, last_name, birth_date, phone, address, city, state, points, monthly_income, sector)
VALUES (50, 'Yasmin', 'Basak', '1986-11-09', '9357838056', 'H.No. 320, Amble Road', 'Kanpur', 'Uttar Pradesh', 4047, 83400.6, 'HR');

Select * FROM customers;



SELECT *
FROM customers
WHERE State = 'delhi' and points >= 100;


SELECT first_name, last_name, monthly_income
FROM customers
WHERE monthly_income BETWEEN 50000 AND 100000;


select *
from customers
where first_name like "A%";


select *
from customers
where state = "delhi" or points > 100;


select *
from customers
order by monthly_income desc
limit 1;


select *
from customers
order by monthly_income desc
limit 1 offset 1;


select *
from customers
where phone IS NULL;


select *
from customers
where sector IS NOT NULL;


select distinct state
from customers;


select count(distinct city) as total_cities
from customers;


select *
from customers
where birth_date < "1990-01-01";


SELECT *
FROM customers
WHERE birth_date BETWEEN '1985-01-01' AND '2000-12-31';


select *
from customers
where first_name like "_____";


select *
from customers
order by points desc
limit 5;


select *
from customers
where first_name like "___";


select *
from customers
where address like "%road%";


select *
from customers
where first_name like "%n";


select *
from customers
order by monthly_income desc;


select *
from customers
where city != "Mumbai";


SELECT *
FROM customers
WHERE points > 100
AND city REGEXP 'Delhi|Pune|Chennai';
