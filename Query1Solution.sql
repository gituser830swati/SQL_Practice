select first_name as worker_name from worker;
select upper(first_name) from worker;
select distinct department from worker;
select substring(first_name, 1, 3)from worker;
select instr(first_name,'K') from  worker where  first_name = 'nihanrika';
select rtrim(first_name) from worker;
select ltrim(first_name) from worker;
select distinct department, length(department) from worker;
select replace(first_name,'a','A') from worker;
select concat(first_name, ' ',last_name) as complete_name from worker;
select *from worker order by first_name;
select *from worker order by first_name, department desc;
select *from worker where first_name in ('kavya','radhika');
select *from worker where first_name not in ('kavya','radhika');
select *from worker where department like 'admin%';
select *from worker where first_name like '%a';
select *from worker where first_name like '%a%';
select *from worker where first_name like '____r';
select *from worker where salary between 10000 and 50000;
select *from worker where year(joining_date)=2014 and month (joining_date)=02;
select department, count(*) from worker where department ='admin';
select concat (first_name, ' ',last_name) from worker
where salary between 50000 and 80000;
