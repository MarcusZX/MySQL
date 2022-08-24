create table if not exists countries
(
	country_id varchar(3) not null,
	country_name varchar(65) not null,
	region_id varchar(65) not null
);