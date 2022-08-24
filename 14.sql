create table if not exists jobs
(
	job_id varchar(10) not null primary key default ' ', 
	job_title varchar(35) not null default ' ', 
	min_salary decimal(6,0) default null, 
	max_salary decimal(6,0) default null 
);
create table if not exists job_history
(
	employee_id decimal(6,0) not null primary key,
	start_date date not null,
	end_date date not null,
    job_id varchar(65) not null,
	deparment_id decimal(4,0) default null,
    foreign key (job_id) references jobs(job_id)
);