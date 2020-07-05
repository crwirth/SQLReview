--1--
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', '44.00', 'false');
--2--
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', '25.99', 'true');
--3--
INSERT INTO products (name, price, can_be_returned) VALUES ('table', '124.00', 'false');
--4--
SELECT * FROM products;
--5--
SELECT name FROM products;
--6--
SELECT name, price FROM products;
--7--
INSERT INTO products (name, price, can_be_returned) VALUES ('Juul', '99.00', 'false');
--8--
SELECT * FROM products WHERE can_be_returned = 'true';
--9--
SELECT * FROM products WHERE price < 44.00;
--10--
SELECT * FROM products WHERE price BETWEEN 22.50 and 99.99;
--11--
UPDATE products SET price = (price - 20.00);
--12--
DELETE FROM products where price < 25.00;
--13--
UPDATE products SET price = (price + 20.00);
--14--
UPDATE products SET can_be_returned = 'true';

------------------------------------------------------------------------------------------------
--1--
SELECT * FROM analytics WHERE ID = '1880';
--2--
SELECT ID, app_name FROM analytics WHERE last_updated = '2018-08-01';
--3--
SELECT count(*) AS count, category FROM analytics GROUP BY category ORDER BY count ASC;
--4--
SELECT app_name, reviews FROM analytics ORDER By reviews DESC LIMIT 5;
--5--
SELECT app_name, reviews, rating FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 5;
--6--
SELECT DISTINCT category, AVG(rating) FROM analytics GROUP BY category;
--7--
SELECT app_name, price FROM analytics WHERE price = ( SELECT MAX (price) FROM analytics);
--8--
SELECT * FROM analytics WHERE min_installs < 50 AND rating IS NOT NULL ORDER BY rating DESC;
--9--
SELECT app_name FROM analytics WHERE rating > 3 AND rating <= 1000 ORDER BY rating ASC;
--10--
SELECT app_name FROM analytics WHERE price BETWEEN .10 AND 1.00 ORDER BY RATING DESC LIMIT 10;
--11--
SELECT app_name, last_updated FROM analytics WHERE last_updated = ( SELECT MIN (last_updated) FROM analytics);
--12--
SELECT app_name, price FROM analytics WHERE price = ( SELECT MAX (price) FROM analytics);
--13--
SELECT SUM(reviews) FROM analytics;
--14--
SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;
--15--
SELECT app_name, reviews, min_installs / reviews AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion DESC LIMIT 1;

 