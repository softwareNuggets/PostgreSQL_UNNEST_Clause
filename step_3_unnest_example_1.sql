select p.oid, p.proname, p.proargnames, f.paramName
from 	pg_proc p, 
		unnest(proargnames) as f (paramName)
where p.proname = 'proc_save_employee';