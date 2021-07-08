create sequence seq_product

create table tbl_product(
	pno number(10,0),
	brand varchar(50) not null,
	title varchar(100) not null,
	content varchar(2000) not null,
	price number(10,0) not null,
	reg_date date default sysdate,
	update_date date default sysdate,
	thumbnail varchar(200)
);

alter table tbl_product add constraint pk_product primary key (pno);