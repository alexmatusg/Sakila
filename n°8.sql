/* 8. ¿Qué consulta harías para obtener todas las películas de acción alas que se une
 SANDRA KILMER? Su consulta debe devolver el título de la película, la descripción, el
 año de estreno, la calificación, las características especiales, el género (categoría)
 y el nombre y apellido del actor. */
 
 SELECT 
	actor.actor_id,
    actor.first_name,
    actor.last_name,
    title,
    description,
    release_year,
    rating,
    special_features,
    category.name
FROM
    film
        JOIN
    film_category ON film.film_id = film_category.film_id
        JOIN
    category ON film_category.category_id = category.category_id
        JOIN
    film_actor ON film.film_id = film_actor.film_id
        JOIN
    actor ON film_actor.actor_id = actor.actor_id
WHERE
    category.name = 'Action'
        AND actor.first_name = 'Sandra'
        AND actor.last_name = 'Kilmer'
