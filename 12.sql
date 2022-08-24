create table if not exists countries
(
	country_id int not null unique auto_increment primary key,
	country_name varchar(65) not null,
	region_id int(12) not null
);