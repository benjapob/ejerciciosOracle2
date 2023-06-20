select nombre_empleado, sueldo
from empleado
where num_departamento in (1,2,3);

select emp.nombre_empleado, dept.edificio
from empleado emp inner join departamento dept
on emp.num_departamento = dept.num_departamento
where emp.num_departamento = 5;

select dept.num_departamento, dept.nombre_departamento
from departamento dept inner join empleado emp
on dept.num_departamento = emp.num_departamento
where emp.sueldo > 20000 and dept.ciudad_dpt = upper('MADRID');

select nombre_empleado
from empleado
where sueldo > 20000
order by nombre_empleado desc;

select emp.num_departamento,
    max(emp.sueldo)
from empleado emp
group by emp.num_departamento;

select emp.num_empleado, emp.nombre_empleado
from empleado emp, departamento dept
where emp.num_departamento = dept.num_departamento
and emp.num_departamento <> 1
and dept.ciudad_dpt = upper('BARCELONA');

select count (*)
from empleado emp, departamento dept
where emp.num_departamento = dept.num_departamento
and dept.ciudad_dpt = upper('MADRID');

select nombre_empleado 
from empleado
where sueldo > (select sueldo from empleado where num_empleado = 3);

select nombre_empleado
from empleado
where sueldo = (select max(sueldo) from empleado);

select pro.num_proyecto, pro.nombre_proyecto
from proyecto pro
where pro.num_proyecto not in (select emp.num_proyecto from empleado emp);

select distinct(dept.nombre_departamento)
from empleado emp, proyecto pro, departamento dept
where emp.num_departamento = dept.num_departamento
and emp.num_proyecto = pro.num_proyecto
and pro.nombre_proyecto = upper('IBDTEL');

select nombre_empleado
from empleado
where num_proyecto <> 2;

select dept.num_departamento, dept.nombre_departamento
from departamento dept, empleado emp
where dept.num_departamento = emp.num_departamento
and emp.num_proyecto = 1
having count(*) >= 2
group by dept.num_departamento, dept.nombre_departamento;

select pro.num_proyecto, pro.nombre_proyecto
from proyecto pro, empleado emp
where pro.num_proyecto = emp.num_proyecto
having count(*) >= 2
group by pro.num_proyecto, pro.nombre_proyecto;

select distinct pro.nombre_proyecto
from proyecto pro, empleado emp
where pro.num_proyecto = emp.num_proyecto
and emp.num_departamento = 1;

select dept.nombre_departamento, pro.nombre_proyecto
from empleado emp, departamento dept, proyecto pro
where emp.num_departamento = dept.num_departamento
and emp.num_proyecto = pro.num_proyecto
and emp.num_empleado = 2;

select emp.num_empleado, emp.nombre_empleado
from empleado emp, departamento dept
where emp.num_departamento = dept.num_departamento
and emp.ciudad_emp = dept.ciudad_dpt;

select pro.num_proyecto, pro.nombre_proyecto, dept.nombre_departamento
from empleado emp, departamento dept, proyecto pro
where emp.num_proyecto = pro.num_proyecto
and emp.num_departamento = dept.num_departamento
having count (*) > 1
group by pro.num_proyecto, pro.nombre_proyecto, dept.nombre_departamento;

select pro.num_proyecto, pro.nombre_proyecto, avg(emp.sueldo) as sueldo_promedio
from empleado emp, proyecto pro
where emp.num_proyecto = pro.num_proyecto
and pro.presupuesto < (select presupuesto from proyecto where num_proyecto = 1)
group by pro.num_proyecto, pro.nombre_proyecto;

select distinct pro.num_proyecto, pro.nombre_proyecto
from proyecto pro, empleado emp
where pro.num_proyecto = emp.num_proyecto
and pro.presupuesto < 600000
having min(emp.sueldo) >= 20000
group by pro.num_proyecto, pro.nombre_proyecto;

select emp.ciudad_emp
from empleado emp, departamento dept
where emp.num_departamento = dept.num_departamento
and emp.ciudad_emp not in dept.ciudad_dpt;

select dept.num_departamento, dept.nombre_departamento
from departamento dept, empleado emp
where dept.num_departamento = emp.num_departamento
having count (*) > (select count (*) num_departamento from empleado where num_departamento = 3)
group by dept.num_departamento, dept.nombre_departamento;

select dept.num_departamento, 
       dept.nombre_departamento
from departamento dept
where dept.ciudad_dpt = upper('BARCELONA')
and dept.num_departamento not in (select distinct num_departamento from empleado);

select pro.num_proyecto, pro.nombre_proyecto, pro.presupuesto
from proyecto pro, empleado emp
where pro.num_proyecto = emp.num_proyecto 
and emp.ciudad_emp in 
(select ciudad_emp, num_proyecto from empleado having count (*) > 2 group by ciudad_emp, num_proyecto);

select num_empleado, nombre_empleado, sueldo
from empleado
where sueldo > (select max(sueldo) from empleado where num_departamento = 
(select max(num_departamento) from empleado));

select *
from empleado emp, proyecto pro
where emp.num_proyecto = pro.num_proyecto;

select *
from empleado emp, proyecto pro
where emp.num_proyecto = pro.num_proyecto
and pro.nombre_proyecto <> upper('IBDTEL')
and emp.sueldo >= 35000
and emp.ciudad_emp = upper('MADRID');

select distinct dept.num_departamento, dept.nombre_departamento
from departamento dept, empleado emp
where dept.num_departamento = emp.num_departamento
and emp.ciudad_emp = upper('MADRID');

select distinct dept.num_departamento, dept.nombre_departamento
from departamento dept, empleado emp
where dept.num_departamento = emp.num_departamento
and emp.ciudad_emp = upper('MADRID')
having count (*) > 5
group by dept.num_departamento, dept.nombre_departamento;

select dept.num_departamento, dept.nombre_departamento, avg(sueldo) as sueldo_promedio
from departamento dept, empleado emp
where dept.num_departamento = emp.num_departamento
and emp.ciudad_emp = upper('MADRID')
group by dept.num_departamento, dept.nombre_departamento;

select dept.num_departamento, dept.nombre_departamento
from departamento dept
where dept.num_departamento = (select num_departamento from empleado 
having count (*) >= 2 group by ciudad_emp, num_departamento);

select dept.num_departamento, dept.nombre_departamento
from departamento dept, empleado emp
where dept.num_departamento = emp.num_departamento
having count (distinct emp.ciudad_emp) >= 2 
group by dept.num_departamento, dept.nombre_departamento; 

select dept.num_departamento, dept.nombre_departamento
from departamento dept
where dept.num_departamento <> 
(select num_departamento from empleado where ciudad_emp = upper('MADRID'));

select dept.num_departamento, dept.nombre_departamento
from departamento dept
where num_departamento not in (select dept.num_departamento
                            from proyecto pro, departamento dept, empleado emp
                            where emp.num_departamento = dept.num_departamento
                            and emp.num_proyecto = pro.num_proyecto
                            and emp.ciudad_emp <> upper('MADRID'))
and num_departamento in (select distinct num_departamento from empleado);

update proyecto set presupuesto = presupuesto + 50000
where num_proyecto in
(select distinct num_proyecto from empleado where num_departamento in 
(select num_departamento from departamento where ciudad_dpt = upper('BARCELONA')));

update proyecto set presupuesto = presupuesto + 50000
where num_proyecto in
(select num_proyecto from empleado where num_departamento in 
(select num_departamento from departamento where ciudad_dpt = upper('BARCELONA'))
having count (*) >= 5 group by num_proyecto);

update proyecto set presupuesto = presupuesto + 50000
where num_proyecto not in
(select distinct num_proyecto from empleado where num_departamento in 
(select num_departamento from departamento where ciudad_dpt = upper('BARCELONA')));

update proyecto set presupuesto = presupuesto + 50000
where num_proyecto not in (select pro.num_proyecto
                            from proyecto pro, departamento dept, empleado emp
                            where emp.num_departamento = dept.num_departamento
                            and emp.num_proyecto = pro.num_proyecto
                            and dept.ciudad_dpt <> upper('BARCELONA'))
and num_proyecto in (select distinct num_proyecto from empleado)                            

delete from empleado 
where num_departamento in (select num_departamento from departamento 
where edificio = upper('PAU CLARIS') and ciudad_dpt = upper('BARCELONA'));

delete from departamento
where num_departamento not in (select distinct num_departamento from empleado );
