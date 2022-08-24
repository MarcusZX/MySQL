create table if not exists departments 
( 
	department_id decimal(4,0) not null default 0,
	department_name varchar(30) not null,
    manager_id decimal(6,0) default null,
    location_id decimal(4,0) default null,
    primary key(department_id)
);
create table if not exists jobs
(
	job_id varchar(10) not null primary key default ' ', 
	job_title varchar(35) not null, 
	min_salary decimal(6,0) default null, 
	max_salary decimal(6,0) default null 
);
create table if not exists employees
(
	empolyee_id decimal(6,0) not null primary key,
	first_name varchar(20) default null,
    last_name varchar(25) not null,
    email varchar(25) not null,
    phone_number varchar(20) default null,
    hire_date date not null,
    job_id varchar(10) not null,
    salary decimal(8,2) default null,
    commision decimal(2,2) default null,
    manager_id decimal(6,0) default null,
    department_id decimal(4,0) default null,
    foreign key(department_id) references departments(department_id),
    foreign key(job_id) references jobs(job_id)
)engine=InnoDB;