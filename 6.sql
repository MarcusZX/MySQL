create table if not exists jobs
(
job_id varchar(65) not null , 
job_title varchar(65) not null, 
min_salary decimal(7,0), 
max_salary decimal(7,0) 
CHECK(max_salary<=25000)
);