
-- TABLE PERSON
--   NUMBER 1

CREATE TABLE person (
  id SERIAL primary key,
  name VARCHAR(255),
  age INT,
  height INT,
  city VARCHAR(255),
  favorite_color VARCHAR(255)
  )

--   NUMBER 2

INSERT INTO person (name,age,height,city,favorite_color)
VALUES
('George James',34,160,'Dallas','Green'),
('Bob Builder',15,145,'New York','Yellow'),
('Sandra Sams',63,169,'Colarado','Blue'),
('Kyler Wombaty',26,180,'San Diago','Purple'),
('Willson Quackers',32,100,'Miami','Orange')

--   NUMBER 3

SELECT *  FROM person ORDER BY height DESC

--   NUMBER 4

SELECT *  FROM person ORDER BY height

--   NUMBER 5

SELECT *  FROM person ORDER BY age DESC

--   NUMBER 6

SELECT *  FROM person WHERE age > 20

--   NUMBER 7

SELECT *  FROM person WHERE age = 18

--   NUMBER 8

SELECT *  FROM person WHERE age < 20 OR age > 30

--   NUMBER 9

SELECT *  FROM person WHERE age != 27

--   NUMBER 10

SELECT *  FROM person WHERE favorite_color != 'red'

--   NUMBER 11

SELECT *  FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue'

--   NUMBER 12

SELECT *  FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green'

--   NUMBER 13

SELECT *  FROM person WHERE favorite_color IN ('orange','green','blue')

--   NUMBER 14

SELECT *  FROM person WHERE favorite_color IN ('yellow','purple')

-- TABLE ORDERS
--   NUMBER 1
CREATE TABLE orders(
  person_id SERIAL primary key,
  product_name VARCHAR(255),
  Product_price INT,
  quantity INT
  )
--   NUMBER 2

INSERT INTO orders (product_name,product_price,quantity)
VALUES
('Cheese Burger',10,900),
('Chicken Sandwhich',9,1000),
('Tacos',2,500),
('French Fries',4,10000),
('Salad',15,200)

--   NUMBER 3

SELECT * FROM orders

--   NUMBER 4

SELECT sum(quantity) FROM orders

--   NUMBER 5

SELECT sum(product_price * quantity) FROM orders

--   NUMBER 6

SELECT sum(product_price * quantity) FROM orders WHERE person_id = 2


-- TABLE artist

--    NUMBER 1

INSERT INTO artist (name)
VALUES 
('Biggie Smalls'),
('The Cheetah Girls'),
('Emery')

--    NUMBER 2

SELECT * FROM artist ORDER BY name DESC LIMIT 10

--    NUMBER 3

SELECT * FROM artist ORDER BY name LIMIT 5

--    NUMBER 4

    SELECT * FROM artist WHERE name LIKE 'Black%'

--    NUMBER 5

SELECT * FROM artist WHERE name LIKE '%Black%'

-- TABLE employee
--    NUMBER 1

    SELECT * FROM employee WHERE city = 'Calgary'

--    NUMBER 2

    SELECT max(birth_date) FROM employee

--    NUMBER 3

    SELECT min(birth_date) FROM employee

--    NUMBER 4

    SELECT * FROM employee WHERE reports_to = 2

--    NUMBER 5

    SELECT count(city) FROM employee WHERE city = 'Lethbridge'

-- TABLE invoice

--    NUMBER 1

    SELECT count(*) FROM invoice WHERE billing_country = 'USA'

--    NUMBER 2

    SELECT max(total) FROM invoice

--    NUMBER 3

    SELECT min(total) FROM invoice

--    NUMBER 4

    SELECT * FROM invoice WHERE total > 5
    
--    NUMBER 5

    SELECT count(*) FROM invoice WHERE total < 5


--    NUMBER 6

    SELECT count(*) FROM invoice WHERE billing_state IN ('CA','TX','AZ')

--    NUMBER 7

    SELECT avg(total) from invoice

--    NUMBER 8

    SELECT sum(total) from invoice







