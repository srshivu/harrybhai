use harrybhai;
select * from students;
alter table students 
add salary int ;
select * from students;
update students 
set salary=200 where id<10;
select * from students;
SET SQL_SAFE_UPDATES = 0;
delete  from students where salary is null;
select * from students;
