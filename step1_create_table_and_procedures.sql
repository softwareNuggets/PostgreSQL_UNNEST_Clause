--truncate table Employee
create table Employee
(
	emp_fname varchar(20),
	emp_lname varchar(30),
	dob date
)


create or replace procedure proc_save_employee(emp_fname varchar(20), emp_lname varchar(30), dob date)
as
$$
	begin
		insert into Employee(emp_fname, emp_lname, dob)
		values(emp_fname, emp_lname, dob);
		
		commit;
	end;
$$
language plpgsql;


call proc_save_employee('software','nuggets','2021-12-24')

select *
from Employee