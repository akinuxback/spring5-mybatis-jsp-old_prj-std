package aki.product.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplySecondVO {
	
	private Long rno; //fk
	private Long sno; //pk
	private String reply; 
	private String replyer;
	private Date reg_date;
	private Date update_date;
	
}
