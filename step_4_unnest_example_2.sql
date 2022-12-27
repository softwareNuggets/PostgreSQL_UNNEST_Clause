select p.proname, p.proargtypes, f.paramTypeId
from 	pg_proc p, 
		unnest(proargtypes) as f (paramTypeId)
where p.proname = 'proc_save_employee'