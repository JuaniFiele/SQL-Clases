select ins.cuil cuil_ins, ins.nombre nom_ins, ins.apellido ape_ins,
	sup.cuil cuil_sup, sup.nombre nom_sup, sup.apellido ape_sup
from instructores ins
left join instructores sup
	on ins.cuil_supervisor=sup.cuil