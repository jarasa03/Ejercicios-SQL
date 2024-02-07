/* 1.- Equipos y ciudad de los jugadores españoles de la NBA */
select e.nombre, e.ciudad from equipos e join jugadores j on j.Procedencia LIKE 'spain';

/* 2.- Equipos cuyo nombre comienza por H y finaliza por S */
select e.nombre from equipos e where e.nombre like 'h%s';

/* 3.- Puntos por partido de ‘Pau Gasol’ en todas las temporadas */
select e.jugador, e.Puntos_por_partido from estadisticas e join jugadores j on j.codigo = e.jugador and nombre = 'Pau Gasol';

/* 4.- Equipos que hay en la conferencia Oeste (West) */
select e.nombre, e.conferencia from equipos e where e.conferencia like 'west';

/* 5.- Jugadores de Arizona que pesan más de 100 kg y miden más de 1.82 m. Para calcular la altura en m multiplica el primer valor por 0.3048 y el segundo valor por 0.0254. Pista: Utiliza substring. (1 libra = 453,59237 gramos) */
select j.nombre, j.peso, j.altura, ((substring(j.altura,1,1) * 12) + (substring(j.altura,3))) * 2.54 as 'Altura_cm', (j.peso * 0.45359237) as 'Peso_kg' from jugadores j where (j.peso * 0.45359237) > 100 and ((substring(j.altura,1,1) * 12) + (substring(j.altura,3))) * 2.54 > 1.82 and j.procedencia like 'arizona';

/* 6.- Puntos por partido de los jugadores de los Cavaliers */
select e.puntos_por_partido from estadisticas e join jugadores j on j.Nombre_equipo like 'cavaliers' and j.codigo = e.jugador;

/* 7.- Jugadores cuya 3ª letra de su nombre es una ‘v’ */
select j.nombre from jugadores j where j.nombre like '__v%';

