1.-- Create a table called person that records a person's id, name, age, height ( in cm ), city, favorite_color.
-- id should be an auto-incrementing id/primary key - Use type: SERIAL


CREATE TABLE person (
  id  SERIAL PRIMARY KEY,
  name varchar(50)  NOT NULL,
  age integer NOT NULL,
  height integer NOT NULL,
  city varchar(50) NOT NULL,
  favorite_color varchar(50) NOT NULL
)

2.
INSERT INTO person (name, age, height, city, favorite_color) VALUES('Philip Schultz', 30, 183,'Jacksonville', 'blue'),('Peter Parker', 18, 180,'Gotham', 'red'),('Pam Anderson', 45, 100,'Los Angeles', 'Yellow'),('Theo Von', 39, 182,'New Orleans', 'pink'),('Natalie Portman', 30, 182.88,'San Fransico', 'blue')


3.SELECT * FROM person ORDER BY height DESC

4. SELECT * FROM person ORDER BY height ASC

5.SELECT * FROM person ORDER BY age DESC

6.SELECT * FROM person WHERE age > 20

7.SELECT * FROM person WHERE age = 18

8.SELECT * FROM person WHERE age < 20 OR age > 30

9.SELECT * FROM person WHERE age != 27

10.SELECT * from person WHERE NOT favorite_color = 'red'

11.SELECT * from person WHERE NOT favorite_color = 'red' AND NOT favorite_color = 'blue' ???

12.SELECT * from person WHERE  favorite_color = 'orange' OR  favorite_color = 'green'

13. SELECT * from person WHERE favorite_color IN ('orange', 'green', 'blue')

14.SELECT * from person WHERE favorite_color IN ('yellow', 'purple')

15.
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER  NOT NULL,
  product_name varchar(200) NOT NULL,
  product_price NUMERIC NOT NULL,
  quantity INTEGEr NOT NULL
);

16.
INSERT INTO orders(person_id, product_name, product_price, quantity) VALUES (2, 'Jeans', 45.99, 50),(22, 'Jacket', 100.99, 100), (7, 'pillow', 15.99, 500),(394, 'shoes', 75.99, 150), (17,'Socks',5.99, 550)

17.Select * from orders
18.SELECT SUM(quantity) from orders
19.SELECT SUM(product_price * quantity) FROM orders;
20.SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 22


//ARTIST
21.INSERT INTO artist (name) VALUES('STP'),('Led Zeppelin'),('Mission To Burma');
22.SELECT * FROM artist ORDER BY name DESC LIMIT 10
23.SELECT * FROM artist ORDER BY name ASC LIMIT 5
24.SELECT * FROM artist WHERE name LIKE 'Black%'
25. SELECT * FROM artist WHERE name LIKE '%Black%'


//Employee
26.SELECT first_name, last_name FROM employee WHERE city = 'Calgary'
27.SELECT birth_date FROM employee ORDER BY birth_date DESC LIMIT 1
28. SELECT birth_date FROM employee ORDER BY birth_date ASC LIMIT 1

found Nancy ID = 2
29.SELECT employee_id FROM employee WHERE first_name =  'Nancy' AND last_name = 'Edwards'
now that I found nancy id I can find out how many people report to her
SELECT * FROM employee WHERE reports_to = 2 
30. SELECT COUNT(employee_id) FROM employee WHERE city ='Lethbridge'

31. SELECT COUNT(invoice_id) FROM invoice WHERE billing_country = 'USA'
32. SELECT * FROM invoice ORDER BY total DESC LIMIT 1
33. SELECT * FROM invoice ORDER BY total ASC LIMIT 1
34. SELECT COUNT(invoice_id) FROM invoice WHERE total > 5
35. SELECT COUNT(invoice_id) FROM invoice WHERE total < 5
36. SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');
37. SELECT AVG(total) FROM invoice
38. SELECT SUM(total) FROM invoice


