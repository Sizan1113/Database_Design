select s.name,
       a.id
  from assessment a
  left join student_assessment s
on a.user_id = s.user_id;




--Joins using subquery
select *
  from lecturer
 where lecturer_id not in (
   select lecturer_id
     from course_lecturers
);

select *
  from lecturer
 where lecturer_id in (
   select lecturer_id
     from course_lecturers
);


select l.lecturer_id,
       c.course_id
  from lecturers l
  join course_leactures c
on l.lecturer_id = c.lecturer_id;

-- ALL lectures but associated course

select l.lecturer_id,
       l.name,
       c.course - id8
  from lecturers l
  left join course_lectures c
on l.lecturer_id = c.lecturer_id;