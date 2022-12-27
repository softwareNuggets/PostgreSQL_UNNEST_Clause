--truncate table EMP_employee_M
create table EMP_employee_M
(
	emp_fname varchar(20),
	emp_lname varchar(30),
	dob date
)


create or replace procedure proc_save_employee(emp_fname varchar(20), emp_lname varchar(30), dob date)
as
$$
	begin
		insert into EMP_employee_M(emp_fname, emp_lname, dob)
		values(emp_fname, emp_lname, dob);
		
		commit;
	end;
$$
language plpgsql;


call proc_save_employee('software','nuggets','2021-12-24')

select *
from emp_employee_m