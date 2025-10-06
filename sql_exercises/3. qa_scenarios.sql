
1. Show users whose order_amount is greater than the average

    select * from MOCK_DATA
    where order_amount > (SELECT avg(order_amount) FROM MOCK_DATA)

        Execution finished without errors.
        Result: 502 rows returned in 284ms

2. Show users who are marked as active but have no email

    select * from MOCK_DATA
    where active IS TRUE AND email is NULL or email = '';

        Execution finished without errors.
        Result: 0 rows returned in 13ms

3. Count active users per country

    SELECT count(*) as [numberClients], country from MOCK_DATA
    where active is TRUE
    group by country

        Execution finished without errors.
        Result: 91 rows returned in 21ms

4. Show users whose order_amount is either 0 or NULL

    select * from MOCK_DATA
    where order_amount is NULL or order_amount = '0'

        Execution finished without errors.
        Result: 0 rows returned in 14ms  

5. Show users who share the same IP address with someone else

    SELECT ip_address FROM MOCK_DATA
    GROUP BY ip_address
    HAVING COUNT(*) > 1 

        Execution finished without errors.
        Result: 0 rows returned in 14ms

-----------------------------------
--06.10.25 -> practise continuation
-----------------------------------

1. Show users whose order_amount is greater than the average

    SELECT * from MOCK_DATA
    where order_amount > (SELECT avg(order_amount) from MOCK_DATA)

        Execution finished without errors.
        Result: 500 rows returned in 213ms

2. Show users who are marked as active but have no email

    SELECT * from MOCK_DATA
    where active IS TRUE and email IS NULL

        Execution finished without errors.
        Result: 4 rows returned in 36ms

3.1. Count active users per country

	SELECT country, COUNT(*) AS active_count
	FROM MOCK_DATA
	WHERE active IS TRUE
	GROUP BY country;

        Execution finished without errors.
        Result: 91 rows returned in 18ms

3.2. Show both active and total user counts per country

    SELECT country, COUNT(*) AS active_count
	FROM MOCK_DATA
	GROUP BY country;

        Execution finished without errors.
        Result: 118 rows returned in 30ms

3.3 Show only countries with more than 5 active users

    SELECT country, Count(*) AS active_count
    FROM MOCK_DATA
    WHERE active is TRUE
    HAVING COUNT(*) > 5

        Execution finished without errors.
        Result: 1 rows returned in 18ms

3.4 Sort countries by number of active users (descending)

    select country, count(*) as active_count
	from mock_data
	where  active is TRUE
	group by country
	order by active_count desc

        Execution finished without errors.
        Result: 91 rows returned in 36ms






































