select
	a.* 
from 
	(
		select 
			/*+INDEX_DESC(tbl_reply pk_reply) */
			rownum rn, a.*
		from
			TBL_REPLY a
		where
			
			pno = 48
			and	rno > 0
			and rownum  <= 10
			
	)
	
	a
where
	rn > 0 
	
select * from TBL_REPLY where pno = 48 order by rno desc  
