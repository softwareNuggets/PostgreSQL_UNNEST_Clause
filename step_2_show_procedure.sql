--you must create the table EMP_Employee_M
--and compiled the stored procedure 'proc_save_employee'
--file: create_table_and_procedures.sql


select 
	oid,
	proname,
	pronargs,
	proargnames,
	proargtypes,
	prosrc
FROM pg_proc 
WHERE proname = 'proc_save_employee';