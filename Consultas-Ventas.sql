/* 1.-Muestra las oficinas de ventas, así como la ciudad y su venta. */
select o.num_ofi, o.ciudad, o.ventas from oficinas o;

/* 2.-Muestra los nombres, ventas, numero de oficina y cuota de cada vendedor */
select v.nombre, v.ventas, v.num_ofi, v.cuota from vendedores v;

/* 3.- Calcular la diferencia entre la venta y la cuota de cada empleado. Además, muestra el nombre, las ventas y las cuotas. */
select v.nombre, v.ventas, v.cuota, v.ventas - v.cuota as Diferencia from vendedores v;

/* 4.- Muestra los empleados cuyas ventas son inferiores a sus cuotas. */
select v.nombre from vendedores v where v.ventas < v.cuota;

/* 5.- Muestra los pedidos con un importe mayor a 25000 y ordenados por fecha */
select p.* from pedidos p where p.importe > 25000 order by p.FECHA_PED;

/* 6.- Muestra el importe medio de todos los pedidos */
select avg(p.importe) from pedidos p;

/* 7.- Muestra el importe medio de un cliente cualquiera. */
SELECT AVG(p.importe) AS importe_medio FROM pedidos p JOIN clientes ON p.NUM_CLI = clientes.NUM_CLI
WHERE clientes.NUM_CLI BETWEEN 2101 AND 2124 AND RAND() < 0.1 ORDER BY RAND() LIMIT 1;

/* 8.- Muestra el importe total de los pedidos de cada cliente */
SELECT c.num_cli, SUM(p.importe) AS suma_importes from pedidos p JOIN clientes c WHERE c.num_cli = p.num_cli GROUP BY num_cli ORDER BY num_cli;

/* 9.- Muestra el nombre y la fecha de contrato de los empleados, con fecha mayor o igual al 10-12-96. Además, ordénalo por fecha. */
SELECT v.nombre, v.fecha_cont from vendedores v where v.FECHA_CONT >= 1996-12-10 ORDER BY v.FECHA_CONT;

/* 10- Muestra los números de los directores de oficinas. */
SELECT o.num_dir from oficinas o;

/* 11.- Muestra los nombres y las ventas de los empleados dirigidos por el numero 104 */
SELECT v.nombre, v.ventas from vendedores v where v.num_dir = 104;

/* 12.- Muestra los pedidos de los clientes 2108 y 2118 (usando IN) ordenados por número de cliente y, dentro de esto, por fecha. */
SELECT p.* from pedidos p WHERE p.num_cli IN (2108, 2118) ORDER BY p.num_cli, p.fecha_ped;

/* 13.- Muestra el nombre, la edad, la cuota y el oficio de los vendedores entre 30 y 45 años. Además, ordénalos por cuotas. */
SELECT v.nombre, v.edad, v.cuota, v.oficio FROM vendedores v WHERE 30 > v.EDAD > 45 ORDER BY v.cuota;

/* 14.- Muestra el identificador de fabricante, el del producto, las existencias y las descripciones de todos los productos que sean abrazaderas (usar LIKE y %) */
SELECT p.id_fab, p.id_prod, p.existencias, p.descripcion FROM productos p WHERE p.descripcion LIKE 'abrazadera%';

/* 15.-Calcular el número de vendedores con distintos empleos. Listar por oficina y empleo */
SELECT v.num_ofi, v.oficio, COUNT(v.oficio) AS Suma_vendedores FROM vendedores v GROUP BY v.oficio ORDER BY v.num_ofi, v.oficio;