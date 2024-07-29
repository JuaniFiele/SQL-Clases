#select *
#from empresas
#inner join solicitudes_empresas
	#on empresas.cuit=solicitudes_empresas.cuit
    
#select emp.*, se.fecha_solicitud
#from empresas emp
#inner join solicitudes_empresas se
	#on emp.cuit=se.cuit
    
#select emp.cuit, emp.razon_social, se.fecha_solicitud,
#car.desc_cargo, con.nro_contrato, con.sueldo, con.fecha_incorporacion
#from empresas emp
#inner join solicitudes_empresas se
	#on emp.cuit=se.cuit
#inner join cargos car
	#on se.cod_cargo=car.cod_cargo
#inner join contratos con
	#on se.cuit=con.cuit
    #and se.cod_cargo=con.cod_cargo
    #and se.fecha_solicitud=con.fecha_solicitud
#where se.fecha_solicitud < adddate(now(), interval -5 year)
#order by se.fecha_solicitud

