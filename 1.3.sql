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


/*Resumen
Agrupación de Datos: Organiza filas en grupos basados en columnas específicas.
Resúmenes Estadísticos: Calcula estadísticas y resúmenes para cada grupo usando funciones de agregación.
Eliminación de Duplicados: Proporciona una lista de valores únicos en combinación con columnas.
Filtrado con HAVING: Aplica condiciones a grupos resultantes después de la agregación.
Agrupación por Varias Columnas: Realiza resúmenes detallados basados en múltiples columnas.
Análisis Temporal: Agrupa datos según unidades de tiempo para análisis de tendencias.
Cada uno de estos usos aprovecha las capacidades de GROUP BY para facilitar el análisis y la organización de datos en SQL.
*/
