create table employees(
id serial primary key,
employee_name varchar(50) not null
);

insert into employees(employee_name)
values ('Arsen'),
('Andy'),
('Gleb'),
('Borys'),
('Oleksandr'),
('Fedir'),
('Alina'),
('Andriy'),
('Max'),
('Taras'),
('Arsen'),
('Andy'),
('Gleb'),
('Borys'),
('Oleksandr'),
('Fedir'),
('Alina'),
('Andriy'),
('Max'),
('Taras');
('Arsen'),
('Andy'),
('Gleb'),
('Borys'),
('Oleksandr'),
('Fedir'),
('Alina'),
('Andriy'),
('Max'),
('Taras'),
('Arsen'),
('Andy'),
('Gleb'),
('Borys'),
('Oleksandr'),
('Fedir'),
('Alina'),
('Andriy'),
('Max'),
('Taras'),
('Arsen'),
('Andy'),
('Gleb'),
('Borys'),
('Oleksandr'),
('Fedir'),
('Alina'),
('Andriy'),
('Max'),
('Taras'),
('Arsen'),
('Andy'),
('Gleb'),
('Borys'),
('Oleksandr'),
('Fedir'),
('Alina'),
('Andriy'),
('Max'),
('Taras'),
('Arsen'),
('Andy'),
('Gleb'),
('Borys'),
('Oleksandr'),
('Fedir'),
('Alina'),
('Andriy'),
('Max'),
('Taras');


create table salary(
id Serial primary key,
monthly_salary int not null 
);

insert into salary(monthly_salary)
values ('1000'),
       ('1100'),
       ('1200'),
       ('1300'),
       ('1400'),
       ('1500'),
       ('1600'),
       ('1700'),
       ('1800'),
       ('1900'),
       ('2000'),
       ('2100'),
       ('2200'),
       ('2300'),
       ('2400'),
       ('2500');
      
      create table employee_salary(
      id serial primary key,
      employee_id int not null unique,
      salary_id int not null
      );
     
     insert into employee_salary(employee_id, salary_id)
     values (27, 8),
(49, 16),
(19, 2),
(52, 5),
(59, 14),
(9, 11),
(10, 4),
(88, 13),
(12, 12),
(73, 3),
(35, 6),
(94, 6),
(57, 11),
(40, 3),
(39, 10),
(30, 7),
(34, 13),
(38, 8),
(54, 14),
(31, 15),
(82, 15),
(70, 2),
(84, 16),
(83, 11),
(43, 14),
(67, 5),
(53, 15),
(65, 3),
(69, 5),
(79, 1),
(5, 4),
(8, 2),
(68, 1),
(18, 7),
(41, 7),
(85, 10),
(55, 9),
(99, 9),
(77, 7);
     

 insert into employee_salary(employee_id, salary_id)
     values (1, 14); 
    
 create table roles(
 id Serial primary key,
 role_name int not null unique
 );

alter table roles alter column role_name type varchar(30);

insert into roles(role_name)
values ('unior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');

      create table roles_employee(
      id Serial primary key,
      employee_id int not null unique,
      role_id int not null,
      foreign key (employee_id)
      references employees(id),
      foreign key (role_id)
      references roles(id)
      );

     insert into roles_employee(employee_id, role_id)
     values (18, 7),
(68, 14),
(7, 19),
(14, 6),
(51, 6),
(19, 16),
(6, 16),
(26, 10),
(33, 16),
(36, 13),
(49, 17),
(30, 4),
(16, 9),
(45, 5),
(46, 19),
(13, 15),
(43, 11),
(59, 15),
(56, 14),
(17, 1),
(4, 3),
(29, 9),
(60, 20),
(67, 11),
(5, 2),
(39, 5),
(52, 12),
(35, 2),
(31, 18),
(15, 8),
(34, 10),
(47, 12),
(61, 20),
(48, 8),
(55, 17),
(1, 4),
(41, 7),
(3, 1),
(9, 3); 

insert into roles_employee(employee_id, role_id)
     values (2, 20);
    
    select * from employees; 
