#select nro_contrato, sueldo, porcentaje_comision,
	#sueldo * porcentaje_comision / 100 as comision
#from contratos
#where sueldo >= 1900 and porcentaje_comision < 15;

#select *
#from personas
#where nombre in ('Juana','Raul','Aquiles');
#where apellido like 'L%';
#where apellido regexp '^G[a,e,i,o,u].*a$';

select *
from contratos
where fecha_caducidad is not null;