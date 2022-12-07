-- Comments in SQL Start with dash-dash --
-- #1
SELECT * FROM analytics 
WHERE id = 1880;

-- #2
SELECT id, app_name FROM analytics 
WHERE last_updated = 'August 01, 2018';

-- #3
SELECT category, COUNT(app_name) 
FROM analytics 
GROUP BY category;

-- #4
SELECT app_name, reviews FROM analytics 
ORDER BY reviews DESC LIMIT 5;

-- #5
SELECT app_name, reviews FROM analytics 
WHERE rating >= 4.8 
ORDER BY reviews DESC LIMIT 1;

-- #6
SELECT category, AVG(rating) AS Avg FROM analytics 
GROUP BY category 
ORDER BY Avg DESC;

-- #7
SELECT app_name, rating, price FROM analytics 
WHERE rating<3 
ORDER BY price DESC LIMIT 1;

-- #8
SELECT app_name, rating, min_installs FROM analytics 
WHERE min_installs <=50 and rating>=0 
ORDER BY rating DESC;

-- #9
SELECT app_name FROM analytics
WHERE rating<3 AND reviews>=10000;

-- #10
SELECT app_name, price, reviews FROM analytics 
WHERE price BETWEEN .1 and 1 
ORDER BY reviews DESC LIMIT 10;

-- #11
SELECT * FROM analytics 
WHERE last_updated  = (
    SELECT MIN(last_updated) 
    FROM analytics);

-- #12
SELECT *  FROM analytics 
WHERE price = (
    SELECT MAX(price) 
    FROM analytics);

-- #13
SELECT COUNT(app_name) FROM analytics;

-- #14
SELECT category, COUNT(app_name) FROM analytics 
GROUP BY category 
HAVING COUNT(app_name)>300;

-- #15
SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics 
WHERE min_installs >100000 
ORDER BY proportion DESC LIMIT 1;
