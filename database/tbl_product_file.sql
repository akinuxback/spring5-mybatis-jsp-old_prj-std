select * from TBL_PRODUCT_FILE order by pno desc

select * from TBL_PRODUCT order by pno desc

	insert into tbl_product_file(pno, upload_path, uuid, file_name, image, main)
		values(25, '테스트', '테스트', '테스트', 1, 1)
		
alter table tbl_product_file modify (pno number(10,0) not null)	
