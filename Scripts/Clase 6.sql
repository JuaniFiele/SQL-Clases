/*select emp.cuit, emp.razon_social, se.fecha_solicitud,
car.desc_cargo, con.nro_contrato, con.sueldo, con.fecha_incorporacion,
per.dni, per.apellido, per.nombre
from empresas emp
inner join solicitudes_empresas se
	on emp.cuit=se.cuit
inner join cargos car
	on se.cod_cargo=car.cod_cargo
left join contratos con
	on se.cuit=con.cuit
    and se.cod_cargo=con.cod_cargo
    and se.fecha_solicitud=con.fecha_solicitud
left join personas per
	on con.dni=per.dni
where se.fecha_solicitud < adddate(now(), interval -5 year)
and (con.fecha_incorporacion is null or con.fecha_incorporacion > '20150101')
order by se.fecha_solicitud */

/*select emp.cuit, emp.razon_social,
	car.cod_cargo, car.desc_cargo
from empresas emp
left join antecedentes ant
	on emp.cuit=ant.cuit
left join cargos car
	on ant.cod_cargo=car.cod_cargo*/
    
/*select emp.cuit, emp.razon_social,
	car.cod_cargo, car.desc_cargo
from empresas emp
right join antecedentes ant
	on emp.cuit=ant.cuit
right join cargos car
	on ant.cod_cargo=car.cod_cargo*/
    
/*select emp.cuit, emp.razon_social,
	car.cod_cargo, car.desc_cargo
from cargos car
left join antecedentes ant
	on ant.cod_cargo=car.cod_cargo
left join empresas emp
	on emp.cuit=ant.cuit*/
#igual a el anterior pero modificado para usar left join