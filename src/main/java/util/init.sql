create table if not exists devliery_address (
	delivery_id integer primary key, 
	postal_address integer, 
	address varchar2(50) not null, 
	address_detail varchar2(50)
);

create table if not exists member (
	member_id varchar2(20) primary key, 
	delivery id integer not null , 
	password varchar2(50) not null,
	nickname varchar2(50) not null, 
	role enum('user', 'seller', 'admin') default 'user',
	phone_number varchar2(20) not null, 
	rank enum('bronze', 'silver', 'gold', 'diamond') default 'bronze'
	profile_image clob, 
	email_verified boolean default false, 
	
	foreign key (delivery_id)
		references delivery_address(delivery_id)
		on delete cascade 
		on update cascade 
);

create table if not exists product (
	product_id integer primary key, 
	member_id varchar2(20) not null, 
	category enum('food', 'clothes', 'bath') not null,
	title varchar2(50) not null, 
	description clob not null, 
	org_price int not null, 
	sale_price int, 
	
	foreign key (member_id)
	references member(member_id)
	on delete cascade 
	on update cascade 
);

create table if not exists product_option (
);
