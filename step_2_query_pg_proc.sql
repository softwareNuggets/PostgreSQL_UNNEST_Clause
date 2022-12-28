select *
from pg_proc


select *
from pg_proc
where proname = 'proc_save_employee'


select 
	oid,
	proname,
	pronargs,
	proargnames,
	proargtypes,
	prosrc
from pg_proc
where proname = 'proc_save_employee'


select 
	oid,
	proname,
	pronargs,
	unnest(proargnames) as ColumnName,
	unnest(proargtypes) as NumericDataType,
	prosrc
from pg_proc
where proname = 'proc_save_employee'