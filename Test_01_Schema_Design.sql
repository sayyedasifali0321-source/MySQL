
DROP DATABASE IF EXISTS Shopping_Management;

CREATE DATABASE Shopping_Management;

USE Shopping_Management;

CREATE TABLE customers (
    Customer_Id INT PRIMARY KEY AUTO_INCREMENT,
    Customer_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone_Number CHAR(10) NOT NULL UNIQUE,
    Age TINYINT UNSIGNED NOT NULL CHECK (Age > 0),
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    Country VARCHAR(50) DEFAULT 'India',
    City VARCHAR(50) NOT NULL,
    Pincode CHAR(6) DEFAULT '201301',
    Registration_Date DATE DEFAULT (CURRENT_DATE),
    Registration_Time TIME DEFAULT (CURRENT_TIME),
    Created_At DATETIME DEFAULT CURRENT_TIMESTAMP,
    Address VARCHAR(250),
    Customer_Status ENUM('Active', 'Inactive', 'Blocked')
        DEFAULT 'Active',
    Customer_Notes VARCHAR(1000)
) 

ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;



INSERT INTO customers
(Customer_Name, Email, Phone_Number, Age, Gender,
 City, Address, Customer_Notes)
VALUES
('Anil', 'anilkumar@example.com', '9876543210', 22,
 'Male', 'Delhi', 'H-24, Lajpat Nagar, New Delhi',
 'Regular customer; prefers online payments.'),

('Amit', 'amitsharma@example.com', '0123456789', 24,
 'Male', 'Noida', 'A-42, Sector 62, Noida',
 'Interested in seasonal discounts.'),

('Vivek', 'vivekkapoor@example.com', '9784651230', 25,
 'Male', 'Delhi', 'B-17, Rohini Sector 7, Delhi',
 'Prefers fast delivery.'),

('Shubham', 'shubhamagarwal@example.com', '0987654321', 21,
 'Male', 'Gurgaon', 'C-18, Sector 56, Gurugram',
 'New customer.'),

('Arun', 'arunkashyap@example.com', '9988776655', 23,
 'Male', 'Delhi', 'D-32, Janakpuri, New Delhi',
 'Interested in product offers.'),

('Shalini', 'shalinikashyap@example.com', '0998877665', 24,
 'Female', 'Gurgaon', 'B-21, Sector 45, Gurugram',
 'Prefers delivery updates by phone.');


CREATE TABLE orders (
    Order_Id INT PRIMARY KEY AUTO_INCREMENT,
    Customer_Id INT NOT NULL,
    Order_Date DATE DEFAULT (CURRENT_DATE),
    Order_Amount DECIMAL(10,2) NOT NULL,

    Order_Status ENUM(
        'Pending', 'Processing', 'Shipped',
        'Delivered', 'Cancelled'
    ) DEFAULT 'Pending',

    Payment_Method ENUM(
        'Cash', 'Card', 'UPI', 'Net Banking'
    ) NOT NULL,

    Payment_Status ENUM(
        'Pending', 'Paid', 'Failed'
    ) DEFAULT 'Pending',

    Shipping_Address VARCHAR(250) NOT NULL,
    Delivery_Pincode CHAR(6) NOT NULL,
	Quantity TINYINT UNSIGNED NOT NULL CHECK (Quantity > 0),
    Discount_Amount DECIMAL(10,2) DEFAULT 0.00,
    Delivery_Date DATE NULL,
    Created_At DATETIME DEFAULT CURRENT_TIMESTAMP,
    Tracking_Number VARCHAR(30) UNIQUE,

    Delivery_Status ENUM(
        'Not Dispatched', 'In Transit',
        'Delivered', 'Returned'
    ) DEFAULT 'Not Dispatched',

    Order_Notes VARCHAR(1000) NULL,

    FOREIGN KEY (Customer_Id)
        REFERENCES Customers(Customer_Id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)

ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;



INSERT INTO orders
(Customer_Id, Order_Amount, Payment_Method,
 Shipping_Address, Delivery_Pincode, Quantity,
 Tracking_Number, Order_Notes)

VALUES

(1, 2499.99, 'UPI', 'H-24 Lajpat Nagar Delhi',
 '110024', 2, 'TRK10001',
 'Order placed successfully.'),

(3, 1599.50, 'Card', 'B-17, Rohini Sector 7',
 '110085', 1, 'TRK10002',
 'Delivered successfully to the customer.'),

(2, 3200.00, 'Cash', 'A-42, Sector 62 Noida',
 '201309', 3, 'TRK10003',
 'Delivery pending; customer awaiting shipment.'),

(4, 899.99, 'Card', 'C-18, Sector 56 Gurgaon',
 '122011', 1, 'TRK10004',
 'Order delivered successfully.'),

(5, 4500.75, 'UPI', 'D-32, Janakpuri Delhi',
 '110058', 4, 'TRK10005',
 'Customer requested delayed delivery.');


DESCRIBE customers;
DESCRIBE orders;

SELECT * FROM customers;
SELECT * FROM orders;