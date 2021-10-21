create table mem(
	id varchar2(10),
	name varchar2(15),
	pwd varchar2(20),
	phone varchar2(15)
);

insert into mem values('SOMI', '이소미', '1234', '010-1234-1234');
insert into mem values('SANG', '전상오', '1234', '010-5555-6666');
insert into mem values('LIGHT', '김빛나', '1234', '010-2222-3333');

delete from mem;

select * from mem;