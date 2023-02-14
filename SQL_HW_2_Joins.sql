select * from employees
order by id;

select * from salary;

select * from employee_salary;

select * from roles;

select * from roles_employee;


select employee_name, monthly_salary
from employee_salary es
join employees e
on e.id = es.employee_id
join salary s
on s.id = es.salary_id
order by monthly_salary;


select employee_name, monthly_salary
from employee_salary es
join employees e
on e.id = es.employee_id
join salary s
on s.id = es.salary_id
where monthly_salary < 2000
order by monthly_salary;


select employee_name, monthly_salary
from employee_salary es
full outer join employees e
on e.id = es.employee_id
full outer join salary s
on s.id = es.salary_id
where employee_id > 70
order by monthly_salary;


select employee_name, monthly_salary
from employee_salary es
full outer join employees e
on e.id = es.employee_id
full outer join salary s
on s.id = es.salary_id
where employee_id > 70 and monthly_salary < 2000
order by monthly_salary;

select employee_name, monthly_salary
from employee_salary es
full outer join employees e
on e.id = es.employee_id
full outer join salary s
on s.id = es.salary_id
where monthly_salary is null;

select current_date 


select *
from employees
full join employee_salary on employees.id = employee_salary.employee_id
where employee_salary is null 
order by employees.id;



select employee_name, role_name
from roles_employee re 
join employees e 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id;


select employee_name, role_name
from roles_employee re 
join employees e 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where role_name like '%Java%';

select employee_name, role_name
from roles_employee re 
join employees e 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where role_name like '%Python%';

select employee_name, role_name
from roles_employee re 
join employees e 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where role_name like '%QA%';

select employee_name, role_name
from roles_employee re 
join employees e 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where role_name like '%Manual%QA%';

select employee_name, role_name
from roles_employee re 
join employees e 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where role_name like '%Automation%';

select employee_name, monthly_salary, role_name
from employees e  
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id
join roles r 
on re.role_id =r.id  
where role_name like '%Junior%';



select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id
join employee_salary es
on e.id = es.employee_id
join salary s 
on es.salary_id = s.id 
join roles r 
on re.role_id =r.id 
where role_name like '%Middle%'; 


select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%Senior%';

select monthly_salary, role_name
from employee_salary es 
join employees e 
on e.id = es.employee_id 
join roles_employee re 
on e.id = re.employee_id 
join salary s 
on s.id = es.salary_id 
join roles r 
on re.role_id = r.id 
where role_name like '%Java%';

select monthly_salary, role_name
from employee_salary es 
join employees e 
on e.id = es.employee_id 
join roles_employee re 
on e.id = re.employee_id 
join salary s 
on s.id = es.salary_id 
join roles r 
on r.id = re.role_id 
where role_name like '%Python%';

select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%Junior%Python%';


select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%Middle%J%S%';


select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%Senior%Java%';


select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%Junior%QA%';


select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%Junior%' and monthly_salary > (select avg(monthly_salary) from salary);


select avg(monthly_salary)
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%Junior%';

select  sum(monthly_salary)
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%JavaScript%';


select  min(monthly_salary)
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%QA%';


select  max(monthly_salary)
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%QA%';

select  count(role_name)
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%QA%';


select  count(role_name)
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%Middle%';


select  count(role_name)
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%developer%';


select  sum(monthly_salary)
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where role_name like '%developer%';


select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
order by monthly_salary;


select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where monthly_salary > 1700 and monthly_salary < 2300
order by monthly_salary;


select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where monthly_salary < 2300
order by monthly_salary;

select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join employee_salary es 
on e.id = es.employee_id
join salary s 
on es.salary_id  = s.id 
join roles r 
on re.role_id = r.id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary;




select current_timestamp








