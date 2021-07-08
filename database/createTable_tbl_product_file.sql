create table tbl_product_file (
	pno number(10,0),
	upload_path varchar(200) not null,
	uuid varchar(200) not null,
	file_name varchar(100) not null,
	image char(1) default 'I',
	main char(1) default 'M'
); 

alter table tbl_product_file add constraint pk_product_file primary key (uuid);

alter table tbl_product_file add constraint fk_product_file foreign key (pno) references tbl_product;