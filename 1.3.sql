select car.cod_cargo, car.desc_cargo, tit.tipo_titulo
from cargos car
inner join antecedentes ant
	on car.cod_cargo=ant.cod_cargo
inner join personas per
	on ant.dni=per.dni
inner join personas_titulos pert
	on per.dni=pert.dni
inner join titulos tit
	on pert.cod_titulo=tit.cod_titulo