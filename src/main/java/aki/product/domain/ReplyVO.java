package aki.product.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {
	
	Long pno; //fk
	
	Long rno; //pk
	String reply;
	String replyer;
	Date reply_date;
	Date update_date;
	
}
