#select *
#from personas
#where fecha_registro_agencia <= '20150101'
#order by fecha_registro_agencia desc;

#select *
#from contratos
#order by fecha_finalizacion_contrato desc, fecha_caducidad asc, fecha_incorporacion desc
#limit 5;

#select dni, upper(concat(apellido,', ', nombre))
#from personas;

select nro_contrato,
	coalesce(fecha_caducidad, fecha_finalizacion_contrato, 'Sin Fin') fecha_fin,
    fecha_caducidad, fecha_finalizacion_contrato
from contratos;