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

