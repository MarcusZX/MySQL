create table if not exists countries
(
	country_id varchar(3),
	country_name varchar(65),
    check(country_name in('Italy','India','China')),
	region_id varchar(65)
);