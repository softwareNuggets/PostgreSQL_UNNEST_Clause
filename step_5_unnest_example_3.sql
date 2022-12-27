--show types
select *
from pg_type
where oid in (1043, 1082)


--unnest and join
select p.proname, f.paramTypeId, f.paramName, t.typname
from 	pg_proc p, 
		pg_type t,
		unnest(proargtypes,proargnames) as f (paramTypeId, paramName)
where p.proname = 'proc_save_employee'
and t.oid = f.paramTypeId