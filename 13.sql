create table if not exists countries
(
	country_id varchar(2) not null unique default ' ',
	country_name varchar(65) not null,
	region_id int not null,
    primary key (country_id,region_id)
);