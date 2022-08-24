create table if not exists jobs
(
job_id varchar(65) not null unique, 
job_title varchar(65) not null default ' ', 
min_salary decimal(7,0) default 8000, 
max_salary decimal(7,0) default null 
);