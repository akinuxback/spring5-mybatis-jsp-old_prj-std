create table tbl_reply (
	
	pno number(10,0) not null,
	rno number(10,0) ,
	reply varchar2(1000) not null,
	replyer varchar2(50) not null,
	reply_date date default sysdate,
	update_date date default sysdate

) 

create sequence seq_reply;

alter table tbl_reply add constraint pk_reply primary key (rno);

alter table tbl_reply add constraint fk_reply_product 
	foreign key (pno) references tbl_product (pno) on delete cascade; 

select * from TBL_REPLY where pno = 47 order by rno desc  









