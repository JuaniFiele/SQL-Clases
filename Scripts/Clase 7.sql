select emp.cuit, emp.razon_social, se.fecha_solicitud,
	se.cod_cargo, car.desc_cargo
from empresas emp
left join solicitudes_empresas se
	on emp.cuit=se.cuit
    and se.fecha_solicitud > '20150101' #left join avanzado
left join cargos car
	on se.cod_cargo=car.cod_cargo
