/*3. ¿Qué consulta harías para obtener todas las películas unidas por actor_id = 5? 
Su consulta debe devolver la identificación del actor, el nombre del actor, el título 
de la película, la descripción y el año de lanzamiento. */

 SELECT 
	actor.actor_id,
    actor.first_name,
    actor.last_name,
    title,
    description,
    release_year
FROM
    film
join
film_actor on film.film_id = film_actor.film_id
join
actor on film_actor.actor_id = actor.actor_id