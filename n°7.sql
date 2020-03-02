/* 7. ¿Qué consulta harías para obtener todas las películas dramáticas con una tarifa de
 alquiler de 2.99? Su consulta debe devolver el título de la película, la descripción, el
 año de estreno, la calificación, las características especiales y el género (categoría). */
 
 SELECT 
    title,
    description,
    release_year,
    rating,
    rental_rate,
    special_features,
    category.name
FROM
    film
        JOIN
    film_category ON film.film_id = film_category.film_id
        JOIN
    category ON film_category.category_id = category.category_id
WHERE
    rental_rate = 2.99
        AND category.name = 'Drama'
