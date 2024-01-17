/* 1. Mostrar los datos de los empleados que pertenezcan al mismo departamento que ʻGILʼ. */
select e.* from emple e, depart d where d.dept_no = e.dept_no and d.dept_no = (select e.dept_no from emple e where e.apellido = 'GIL');

/* 2. Mostrar los datos de los empleados que tengan el mismo oficio que ʻCEREZOʼ. El resultado debe ir ordenado por apellido. */
select e.* from emple e, depart d where d.dept_no = e.dept_no and e.oficio = (select e.oficio from emple e where e.apellido = 'CEREZO') order by e.apellido;

/* 3. Mostrar los empleados (apellido, oficio, salario y fecha de alta) que desempeñen el mismo oficio que ʻJIMÉNEZʼ o que tengan un salario mayor o igual que ʻFERNÁNDEZʼ. */
select e.apellido, e.oficio, e.salario, e.fecha_alt from emple e, depart d where e.oficio = (select e.oficio from emple e where e.apellido = 'JIMÉNEZ') 
OR salario >= (select e.salario from emple e where e.apellido = 'FERNÁNDEZ');

/* 4. Mostrar en pantalla el apellido, oficio y salario de los empleados del departamento de ʻFERNÁNDEZʼ que tengan su mismo salario. */
select e.apellido, e.oficio, e.salario from emple e, depart d where d.dept_no = (select e.dept_no from emple e where e.apellido = 'FERNÁNDEZ')
and e.salario = (select e.salario from emple e where e.apellido = 'FERNÁNDEZ');

/* 5. Mostrar los datos de los empleados que tengan un salario mayor que ʻGILʼ y que pertenezcan al departamento número 10. */
select e.* from emple e where e.salario > (select e.salario from emple e where e.apellido = 'GIL')
AND e.dept_no = 10;

/* 6. Mostrar los apellidos, oficios y localizaciones de los empleados. */
select e.apellido, e.oficio, e.dir, d.dnombre from emple e, depart d where e.dept_no = d.dept_no;

/* 7. Seleccionar el apellido, el oficio y la localidad de los departamentos donde trabajan los ANALISTAS. */
select e.apellido, e.oficio, e.dir from emple e, depart d where d.dept_no = e.dept_no and e.oficio = 'ANALISTA';

/* 8. Seleccionar el apellido, el oficio y salario de los empleados que trabajan en Madrid. */
select e.apellido, e.oficio, e.salario from emple e, depart d where d.dept_no = e.dept_no and d.loc = 'MADRID';

/* 9. Seleccionar el apellido, salario y localidad donde trabajan de los empleados que tengan un salario entre 2000 y 3000. */
select e.apellido, e.salario, d.dnombre from emple e, depart d where 2000 < e.salario < 3000 and d.dept_no = e.dept_no;

/* 10. Mostrar el apellido, salario y nombre del departamento de los empleados que tengan el mismo oficio que ʻGILʼ. */
select e.apellido, e.salario, d.dnombre from emple e, depart d where e.oficio = (select e.oficio from emple e where e.apellido = 'GIL');

/* 11. Mostrar el apellido, salario y nombre del departamento de los empleados que tengan el mismo oficio que ʻGILʼ y que no tengan comisión. */
select e.apellido, e.salario, d.dnombre from emple e, depart d where e.dept_no = d.dept_no 
and e.oficio = (select e.oficio from emple e where e.apellido = 'GIL') and e.comision is null;

/* 12. Mostrar los datos de los empleados que trabajan en el departamento de contabilidad, ordenados por apellidos. */
select e.* from emple e, depart d where d.dept_no = e.dept_no and d.dnombre = 'CONTABILIDAD' order by e.apellido;

/* 13. Apellido de los empleados que trabajan en Sevilla y cuyo oficio sea analista o empleado. */
select e.apellido from emple e, depart d where d.dept_no = e.dept_no and d.loc = 'SEVILLA' and (e.oficio = 'ANALISTA' or e.oficio = 'EMPLEADO');

/* 14. Calcula el salario medio de todos los empleados. */
select avg(e.salario) from emple e;

/* 15. ¿Cuál es el máximo salario de los empleados del departamento 10? */
select max(e.salario) from emple e, depart d where d.dept_no = e.dept_no and d.dept_no = 10;

/* 16. .Calcula el salario mínimo de los empleados del departamento 'VENTAS'. */
select min(e.salario) from emple e, depart d where d.dept_no = e.dept_no and d.dnombre = 'VENTAS';

/* 17. Calcula el promedio del salario de los empleados del departamento de 'CONTABILIDAD' */
select avg(e.salario) from emple e, depart d where d.dept_no = e.dept_no and d.dnombre = 'CONTABILIDAD';

/* 18. Mostrar los datos de los empleados cuyo salario sea mayor que la media de todos los salarios. */
select e.* from emple e, depart d where e.salario > (select avg(salario) from emple);

/* 19. ¿Cuántos empleados hay en el departamento de 'VENTAS'? */
select count(e.apellido) from emple e, depart d where d.dept_no = e.dept_no and d.dnombre = 'VENTAS';

/* 20. .Calcula el número de empleados que hay que no tienen comisión. */
select count(e.apellido) from emple e where e.comision is null;

/* 21. Seleccionar el apellido del empleado que tiene máximo salario. Mostrar los datos del empleado que tiene el salario más alto en el departamento de 'VENTAS'. */
select e.apellido from emple e, depart d where e.salario =(select max(salario) from emple) and e.dept_no = d.dept_no and d.dnombre = 'VENTAS';

/* 22. A partir de la tabla EMPLE visualizar cuántos apellidos de los empleados empiezan por la letra .A'. */
select count(e.apellido) from emple e where e.apellido like 'A';

/* 23. Dada la tabla EMPLE, obtener el sueldo medio, el número de comisiones no nulas, el máximo sueldo y el sueldo mínimo de los empleados del departamento 30. */
select avg(e.salario) from emple e;