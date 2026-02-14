rename table students to gecinf;
select * from gecinfo;
drop table gecinf;
-- ALTER TABLE table_name RENAME COLUMN old_column_name TO new_column_name;
alter table gecinfo rename column class to cls;
describe gecinfo;
alter table gecinfo drop cls;
select * from gecinfo;
-- ALTER TABLE table_name MODIFY COLUMN column_name new_datatype new_constraints;
-- ALTER TABLE table_name MODIFY COLUMN column_name datatype AFTER another_column_name;4
alter table student modify id int  after name;
