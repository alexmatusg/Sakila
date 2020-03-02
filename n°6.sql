/* 6. ¿Qué consulta harías para obtener todos los actores que se unieron en el 
film_id = 369? Su consulta debe devolver film_id, title, actor_id y actor_name. */

SELECT 
    film.film_id,
    film.title,
    actor.actor_id,
    actor.first_name,
    actor.last_name
FROM
    film
        JOIN
    film_actor ON film.film_id = film_actor.film_id
        JOIN
    actor ON film_actor.actor_id = actor.actor_id
WHERE
    film.film_id = 369