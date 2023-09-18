use abc;
create table students
( stu_name varchar(20) not null,
  ID varchar(20),
  primary key(stu_name));
  alter table students alter column ID varchar(30)
  insert into students values('chw','20212251109')
  insert into students values('sb','2021225')
  alter table students add Grade numeric(4,2) check(Grade>90)
  select *from students
  update students
  set Grade = 90.46
  where stu_name='chw'
    update students
  set Grade = 99.23
  where stu_name='sb'

  select grade*1.1 from students
  update students
  set grade+=0.1
  
  delete from students where ID='2021225'

  select '''''It''s right'''''
  select upper ('a')

  select '123'+'66'
  select 'Intro%'

  select *
  from classroom
  where building like 'P%' 

   select *
  from classroom
  where building like '____o_' 

  select *
  from classroom
  where building like '______' 

  select *
  from classroom
  where building like '%on' 

  select *
  from classroom
  where building like '%Wa%' 

     select *
  from classroom
  where building like 'Wa%' 

  insert into classroom values ('Packard_', '101', '500');
  select *
  from classroom
  where building like 'P%2_' escape '2' 

   select *
  from classroom
  where capacity between 10 and 50 

    select *
  from classroom
  order by building desc
  --desc为逆序

     select *
  from classroom
  order by building desc,capacity desc

  select *
  from classroom,department
  --笛卡尔积 6*7

  select count(distinct building)
  from classroom
  --除了count(*)以外的全都忽略null

  select building,count(*)
  from classroom
  group by building

select dname
from dept
where not exists((
select distinct job
from emp
where emp.deptno = dept.deptno
)
except
(select distinct job
 from emp
 where mgr is not null
))


select ename
from (
select *
from emp a
where a.sal>(
select avg(sal)
from emp b
where a.deptno=b.deptno
)
)

select empno,sal -(select avg(sal) from emp),
(select count(*) from emp a where emp.deptno = a.deptno)
from emp

drop view s
create view s as
select stu_name
from students

insert into s values('qwed')
select *
from students

alter table students drop column sb

SELECT ID FROM students WHERE ID=0.5 or ID>2300 

select 1

select *
from students join classroom

create view chw as
select *
from students
insert into chw values('dalao12','2021226',null)

drop view chw
create view chw as 
select stu_name
from students
insert into chw values('2022122')

drop view chw
create view chw as 
select *
from students
where ID='20212251109'

select *
from chw

rollback

create table room(
    num int,
	rname varchar(20),
	price int,
	unique(rname)
)
insert into room values(10,'c',100)
insert into room values(10,'d',100)
