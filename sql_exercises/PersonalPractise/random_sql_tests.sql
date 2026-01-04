--  SELECT Basics
-- 1. Get all users from the users table.
select * from users;
-- 2. Get only the id and email columns from the users table.
select id, email from users;
-- 3. Get users whose status = 'ACTIVE'.
select * from users
where status = 'ACTIVE';
-- 4. Get users created after 2023-01-01.
select * from users
where date > '2023-01-01';
-- 5. Get users sorted by created_at in descending order.
select * from users
order by created_at desc;

--  WHERE + operators
-- 6. Get orders with value greater than 100.
select * from orders
where orders > 100;
-- 7. Get orders with status other than 'CANCELLED'.
SELECT * from orders
where status is NOT 'CANCELLED';
-- 8. Get users aged between 18 and 30.
SELECT * from orders
where age >= 18 and age <= 30;
-- 9. Get records where email contains @gmail.com.
SELECT * from orders
where email = '%gmail.com%';
-- 10. Get records where country is 'PL' or 'DE'.
SELECT * from orders
where country in ('PL','DE');

--  NULL / NOT NULL
-- 11. Get users who don’t have a phone number.
select * from users 
where noNumber is NULL and noNumber = '';
-- 12. Get records where last_login is NULL.
select * from users 
where last_login is NULL and last_login = '';
-- 13. Get records where address is NOT NULL.
select * from users 
where address is NULL and address = '';

--  COUNT / AGGREGATES (common in QA!)
-- 14. Count the number of users in the users table.
SELECT count(*) from users;
-- 15. Count the number of orders with status 'COMPLETED'.
SELECT count(*) from orders
where status = 'COMPLETED';
-- 16. Find the highest order value.
SELECT MAX(Value) from orders;
-- 17. Find the average order value.
SELECT AVG(Value) from orders;
-- 18. Count the number of orders for a specific user (user_id = 5).
SELECT count(*) from users
where user_id = 5;

--  GROUP BY (super important)
-- 19. Count the number of orders for each status.
SELECT * from orders
GROUP BY status;
-- 20. Count the number of users in each country.
SELECT Count from users
GROUP BY country;
-- 21. Show only statuses that have more than 10 orders.
select * from orders
where status > 10
group by orders;

