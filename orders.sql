

-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

CREATE TABLE orders (
    person_id SERIAL PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(30),
    product_price FLOAT,
    quantity INT

    
);


-- Add 5 orders to the orders table.

INSERT INTO orders( person_id,order_id,product_name,product_price,quantity)
VALUES(1,1,'paper',3.50,2),
(2,2,'markers',2.50,4),
(3,3,'stapler',4.75,1),
(4,4,'construction_paper',2.50,2),
(5,5,'printer_ink',15.50,2)


-- Select all the records from the orders table.

SELECT * FROM orders




-- Calculate the total number of products ordered.

SELECT SUM(quantity) FROM orders;




-- Calculate the total order price

SELECT SUM(product_price) FROM orders;


-- Calculate the total order price by a single person_id.

SELECT SUM(product_price)
FROM orders
WHERE  person_id = 5;










