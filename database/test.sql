select * from TBL_PRODUCT;

alter table tbl_product modify type varchar(50) default '-';

update TBL_PRODUCT set type = 'cap' where pno = 101;

insert into tbl_product(pno, brand, title, content, price, type)
		values(103, 'aaa', 'aaa', 'aaa', 111, 'cap')