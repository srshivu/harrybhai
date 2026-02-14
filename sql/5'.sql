use harrybhai;
-- select @@autocommit;
-- set autocommit=0;  -- for the disabling the autocommit
-- set autocommit=1;  -- for the agin enabling the commmit
CREATE TABLE stud (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    is_passed BOOLEAN
);
INSERT INTO stud (id, name, age, is_passed) VALUES
(1, 'Alice', 20, TRUE),
(2, 'Bob', 22, FALSE),
(3, 'Charlie', 21, TRUE),
(4, 'David', 23, FALSE),
(5, 'Eva', 20, TRUE);

update stud set age=age+1 where id<=5;
select * from stude;
