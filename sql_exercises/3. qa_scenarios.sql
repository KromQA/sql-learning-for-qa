
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


