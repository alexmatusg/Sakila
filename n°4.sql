/*4. ¿Qué consulta ejecutaría para obtener todos los clientes en store_id = 1 y dentro de estas 
ciudades (1, 42, 312 y 459)? Su consulta debe devolver el nombre, apellido, correo electrónico 
y dirección del cliente. */

SELECT 
	customer.store_id,
	address.city_id,
    first_name,
    last_name,
    email,
    address.address
FROM
    customer
        JOIN
    address ON address.address_id = customer.address_id
WHERE
			customer.store_id = 1
        AND address.city_id = 1
        OR customer.store_id = 1
        AND address.city_id = 42
        OR customer.store_id = 1
        AND address.city_id = 312
        OR customer.store_id = 1
        AND address.city_id = 459

