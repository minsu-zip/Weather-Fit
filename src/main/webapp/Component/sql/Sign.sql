create table sign(
	id varchar(50) not null,
	password varchar(50) not null,
	email varchar(50) not null,
	primary key(id)
);

insert into sign values("guest","guest1234","guest.gmail");

select * from sign;
