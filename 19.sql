create table if not exists jobs
(
job_id varchar(65) not null unique, 
job_title varchar(65) not null default ' ', 
min_salary decimal(7,0) default 8000, 
max_salary decimal(7,0) default null 
);
create table if not exists employees
(
	empolyee_id decimal(6,0) not null primary key,
	first_name varchar(20) default null,
    last_name varchar(25) not null,
    job_id varchar(10) not null,
    salary decimal(8,2) default null,
    foreign key(job_id) references jobs(job_id)
    on delete set null
    on update set null
)engine=InnoDB;