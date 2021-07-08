select * from tbl_reply_second order by sno desc


create table tbl_reply_second (
	rno number(10,0) not null,
	sno number(10,0),
	reply varchar(500) not null,
	replyer varchar(50) not null,
	reg_date date default sysdate,
	update_date date default sysdate
);

create sequence seq_reply_second;

alter table tbl_reply_second add constraint pk_reply_second primary key (sno); 

alter table tbl_reply_second add constraint fk_reply_second_reply 
	foreign key (rno) references tbl_reply (rno) on delete cascade;