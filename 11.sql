create table if not exists countries
(
	country_id varchar(3) not null unique primary key,
	country_name varchar(65) not null,
	region_id int(12) not null
);