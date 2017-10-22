drop database gofer_db;
create database gofer_db;
use gofer_db;

create table user(
	user_id int not null unique primary key auto_increment,
	user_name varchar(20) not null, 
	last_name varchar(255) not null,
	first_name varchar(255) not null,
	email varchar(255) not null,
	phone_number bigint not null
);

create table credentials(
	user_id int not null unique primary key,
	password varchar(16) not null,

	foreign key(user_id) references user(user_id)
);

create table favor(
	favor_id int not null unique primary key auto_increment,
	issued_by int not null,
	description varchar(500) not null default '',
	favor_location varchar(500) not null,
	datetime_issued datetime not null default current_timestamp,
	intial_payment decimal(10,2) not null default 0.00,

	foreign key(issued_by) references user(user_id)
);

create table accepted_favor(
	favor_id int not null unique primary key,
	accepted_by int not null,
	datetime_accepted datetime not null default current_timestamp,

	foreign key(favor_id) references favor(favor_id),
	foreign key(accepted_by) references user(user_id)
);