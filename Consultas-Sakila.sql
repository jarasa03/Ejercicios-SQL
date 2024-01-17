/* 1. Actores que tienen de primer nombre 'Scarlett'. */
select * from actor where first_name = 'Scarlett';

/* 2. Actores que tienen de apellido ‘Johansson’. */
select * from actor where last_name = 'Johansson';

/* 3. Actores que contengan una ‘O’ en su nombre. */
select * from actor where first_name like '%o%';

/* 4. Actores que contengan una 'O' en su nombre y una 'A' en su apellido. */
select * from actor where first_name like '%o%' AND last_name like '%a%';

/* 5. Actores que contengan dos ‘O’ en su nombre y en una ‘A’ en su apellido. */
select * from actor where first_name like '%o%o%' AND last_name like '%a%';

/* 6. Actores donde su tercera letra sea ‘B’. */
select * from actor where first_name like '__b%';

/* 7. Ciudades que empiezan por ‘a’. */
select * from city where city like 'a%';

/* 8. Ciudades que acaban por ‘s’. */
select * from city where city like 's%';

/* 9. Ciudades del country 61. */
select city from city where country_id = 61;

/* 10. Ciudades del country ‘Spain’. */
/* select city from city where country = 'Spain'; */
select city from city where country_id = (select country_id from country where country = 'Spain');

/* 11. Ciudades con nombres compuestos. */
select city from city where city like '% %';

/* 12. Películas con una duración entre 80 y 100. */
select title from film where length between 80 AND 100;

/* 13. Películas con un rental_rate entre 1 y 3. */
select title from film where rental_rate between 1 AND 3;

/* 14. Películas con un título de más de 12. */
select title from film where length(title) > 12;

/* 15. Películas con un rating de PG o G. */
select title from film where rating like 'PG' OR rating like 'G';

/* 16. Películas que no tengan un rating de NC-17. */
select title from film where rating NOT LIKE 'NC-17';

/* 17. Películas con un rating PG y duracion de más de 120. */
select title from film where rating like 'PG' AND length > 120;

/* 18. ¿Cuantos actores hay? */
select count(actor_id) as Número_de_actores from actor;

/* 19. ¿Cuántas ciudades tiene el country ‘Spain’? */
select count(city) as Número_de_Ciudades from city where country_id = (select country_id from country where country = 'Spain');

/* 20. ¿Cuántos countries hay que empiezan por ‘a’? */
select count(country) as Número_de_Países_que_empiezan_por_A from country where country like 'a%';

/* 21. Media de duración de peliculas con PG. */
select avg(length) as Media_Películas from film where rating like 'PG';

/* 22. Suma de rental_rate de todas las películas. */
select sum(rental_rate) as Suma_rental_rate from film;

/* 23. Pelicula con mayor duración. */
select title, length from film where length = (select max(length) from film);

/* 24. Película con menor duración. */
select title, length from film where length = (select min(length) from film);

/* 25. Mostrar las ciudades del country Spain (multitabla). */
/* select city from city where country_id = (select country_id from country where country = 'Spain'); */
select c.city from city c, country co where country = 'Spain' AND c.country_id = co.country_id;

/* 26. Mostrar el nombre de la película y el nombre de los actores. */
select title, first_name from actor, film, film_actor;

/* 27. Mostrar el nombre de la película y el de sus categorías. */
select title, c.name from film f, film_category fc, category c where f.film_id = fc.film_id AND fc.category_id = c.category_id;

/* 28. Mostrar el country, la ciudad y dirección de cada miembro del staff. */
select country, city, address, s.first_name from city ci, country co, staff s, address a
where a.address_id = s.address_id and a.city_id = ci.city_id and ci.country_id = co.country_id;

/* 29. Mostrar el country, la ciudad y dirección de cada customer. */
select co.country, ci.city, a.address, c.first_name from customer c, address a, city ci, country co
where c.address_id = a.address_id and a.city_id = ci.city_id and ci.country_id = co.country_id;

/* 30. Numero de películas de cada rating */
select f.rating, count(*) from film f group by rating;

/* 31. Cuantas películas ha realizado el actor ED CHASE. */
select f.title, a.first_name, a.last_name from film f, film_actor fa, actor a
where fa.actor_id = a.actor_id and a.first_name = 'ED' and a.last_name = 'CHASE' and f.film_id = fa.film_id group by f.title;

/* 32. Media de duración de las películas cada categoría. */
select avg(f.length), c.name from film f, category c, film_category fc where f.film_id = fc.film_id and fc.category_id = c.category_id group by c.name;