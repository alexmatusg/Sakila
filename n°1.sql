SELECT 
    first_name,
    last_name,
    email,
    address.address,
    address.city_id
FROM
    customer
        JOIN
    address ON address.city_id = customer.address_id
WHERE
    address.city_id = 312