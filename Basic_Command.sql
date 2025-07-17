use new_db
select * from students

create table numbers
(
id int identity (1,1),
age int,
price float,
rating int


)

select * from numbers

insert into numbers values (20,200.20,5)

create table random (
id int primary key,
name varchar(50) not null,
email varchar(50) unique,
age int check (age>=18),
createa_at datetime default getdate()
)

insert into random (id,name,email,age)
values(1,'mit','mit123@gmail.com',22)

select * from random

