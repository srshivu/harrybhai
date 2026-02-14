use harryjoins;
select * from college_students;
select * from marks;
-- inner join
select college_student.name,marks.subject,marks.score
from college_student
inner join marks
on college_student.id=marks.id;