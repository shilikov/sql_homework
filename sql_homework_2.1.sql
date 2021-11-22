create table company (company_id serial primary key, company_name varchar(80) not null);
 CREATE TABLE

 create table department (epartment_id serial primary key, department_name varchar(80) not null, company_id integer references company(company_id));
 CREATE TABLE


create table employee (employee_id serial primary key, supervisor_id serial unique, name varchar(80), department integer references department(epartment_id), head
_of_department integer references employee(supervisor_id), position_id integer);
CREATE TABLE



