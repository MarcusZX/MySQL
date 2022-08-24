create table if not exists job_history
(
	employee_id int not null,
	start_date date not null,
	end_date date not null,
    check(end_date like '--/--/----'),
    job_id varchar(65) not null,
	deparment_id int not null
);