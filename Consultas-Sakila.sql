/* 1. Actores que tienen de primer nombre 'Scarlett'. */
select * from actor where first_name = 'Scarlett';

/* 2. Actores que tienen de apellido ‘Johansson’. */
select * from actor where last_name = 'Johansson';

/* 3. Actores que contengan una ‘O’ en su nombre. */
select * from actor where first_name like '%o%';

/* 4. Actores que contengan una 'O' en su nombre y una 'A' en su apellido. */
select * from actor where first_name like '%o%' AND last_name like '%a%';