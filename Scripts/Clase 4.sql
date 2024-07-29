#show create table personas;

#select *
#from information_schema.columns
#where table_schema ='agencia_personal'
#and column_name like '%titulo%';

select *
from information_schema.key_column_usage
where table_schema = 'agencia_personal'
and referenced_table_schema = 'agencia_personal'
and referenced_table_name = 'cargos';