select name,salary*1.1 news,2,'大连理工大学',len(name)
from instructor

Select distinct ID
from instructor

select upper ('a')

select 'It''s right'

select name ,salary,ID,dept_name
from instructor
where dept_name like 'p2%' escape '2'

where salary not in (50000,60000)

select *
from instructor
order by 3,4

select a.course_id,b.prereq_id
from prereq a,prereq b
where a.prereq_id=b.course_id

select *
from instructor a,instructor b
where a.salary=b.salary and a.name<>b.name