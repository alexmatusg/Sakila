/* 2. ¿Qué consulta harías para obtener todas las películas de comedia? Su consulta debe devolver 
el título de la película, la descripción, el año de estreno, la calificación, las características
 especiales y el género (categoría).*/
 
 SELECT 
    title,
    description,
    release_year,
    rating,
    special_features,
    category.name
FROM
    film
join
film_category on film.film_id = film_category.film_id
join
category on film_category.category_id = category.category_id