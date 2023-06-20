insert into Departamento (num_departamento, nombre_departamento, planta, edificio, ciudad_dpt) values (1, 'DIRECCION', 10, 'PAU CLARIS', 'BARCELONA');
insert into Departamento (num_departamento, nombre_departamento, planta, edificio, ciudad_dpt) values (2, 'DIRECCION', 8, 'RIOS ROSAS', 'MADRID');
insert into Departamento (num_departamento, nombre_departamento, planta, edificio, ciudad_dpt) values (3, 'MARQUETING', 1, 'PAU CLARIS', 'BARCELONA');
insert into Departamento (num_departamento, nombre_departamento, planta, edificio, ciudad_dpt) values (4, 'CALIDAD', 5, 'RIOS ROSAS', 'MADRID');
insert into Departamento (num_departamento, nombre_departamento, planta, edificio, ciudad_dpt) values (5, 'PRODUCCION', 1, 'PAU CLARIS', 'BARCELONA');
insert into Departamento (num_departamento, nombre_departamento, planta, edificio, ciudad_dpt) values (6, 'RRHH', 1, 'PAU CLARIS', 'BARCELONA');

insert into Proyecto (num_proyecto, nombre_proyecto, producto, presupuesto) values (1, 'IBDTEL', 'TELEVISION', 1000000);
insert into Proyecto (num_proyecto, nombre_proyecto, producto, presupuesto) values (2, 'IBDVID', 'VIDEO', 500000);
insert into Proyecto (num_proyecto, nombre_proyecto, producto, presupuesto) values (3, 'IBDTEF', 'TELEFONIA', 750000);
insert into Proyecto (num_proyecto, nombre_proyecto, producto, presupuesto) values (4, 'IBDRAD', 'RADIO', 250000);
insert into Proyecto (num_proyecto, nombre_proyecto, producto, presupuesto) values (5, 'IBDCOM', 'COMUNICACIONES', 500000);


insert into Empleado (num_empleado, nombre_empleado, sueldo, ciudad_emp, num_departamento,num_proyecto) values (1, 'CARME', 40000, 'MATARO', 1, 1);
insert into Empleado (num_empleado, nombre_empleado, sueldo, ciudad_emp, num_departamento,num_proyecto) values (2, 'EUGENIA', 35000, 'TOLEDO', 2, 2);
insert into Empleado (num_empleado, nombre_empleado, sueldo, ciudad_emp, num_departamento,num_proyecto) values (3, 'JOSEP', 25000, 'SITGES', 3, 1);
insert into Empleado (num_empleado, nombre_empleado, sueldo, ciudad_emp, num_departamento,num_proyecto) values (4, 'RICARDO', 40000, 'BARCELONA', 1, 1);
insert into Empleado (num_empleado, nombre_empleado, sueldo, ciudad_emp, num_departamento,num_proyecto) values (11, 'NURIA', 20000, 'VIC', 3, 2);
insert into Empleado (num_empleado, nombre_empleado, sueldo, ciudad_emp, num_departamento,num_proyecto) values (12, 'NURIA', 20000, 'MATARO', 5, 5);
insert into Empleado (num_empleado, nombre_empleado, sueldo, ciudad_emp, num_departamento,num_proyecto) values (13, 'ALBERT', 20000, 'BARCELONA', 1, 5);
insert into Empleado (num_empleado, nombre_empleado, sueldo, ciudad_emp, num_departamento,num_proyecto) values (14, 'MANEL', 30000, 'TERRASA', 4, 3);
insert into Empleado (num_empleado, nombre_empleado, sueldo, ciudad_emp, num_departamento,num_proyecto) values (15, 'JORDI', 30000, 'BARCELONA', 5, 3);
insert into Empleado (num_empleado, nombre_empleado, sueldo, ciudad_emp, num_departamento,num_proyecto) values (20, 'MARIA', 18000, 'GETAFE', 5, 2);
insert into Empleado (num_empleado, nombre_empleado, sueldo, ciudad_emp, num_departamento,num_proyecto) values (21, 'IGNACIO', 37000, 'MADRID', 4, 5);

commit;