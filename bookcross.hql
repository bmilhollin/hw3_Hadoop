create database bookcrossing;
use bookcrossing;
create table if not exists users
	(user_id int,
	location string,
	age int)
	comment 'Book Crossing users cleaned'
	row format delimited
	fields terminated by '\073'
	stored as textfile;
load data local inpath '/home/hadoop/data/BX-Users-Prepro.txt' overwrite into table users;

