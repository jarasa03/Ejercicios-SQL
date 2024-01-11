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
/* select length(actor_id) from film_actor */
