/* 5. ¿Qué consulta realizarías para obtener todas las películas con una
"calificación = G" y "característica especial = detrás de escena", unidas por actor_id = 15? Su consulta debe 
devolver el título de la película, la descripción, el año de lanzamiento, la calificación y 
la función especial. Sugerencia: puede usar la función LIKE para obtener la parte 'detrás de escena'. */

select title, description, release_year, rating, special_features
from film
join film_actor on film.film_id = film_actor.film_id
join actor on film_actor.actor_id = actor.actor_id

where film.rating = "G" and film.special_features like "%Behind the Scenes%"
