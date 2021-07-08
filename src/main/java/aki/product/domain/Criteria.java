package aki.product.domain;

import lombok.Data;

@Data
public class Criteria {
	
	private int page;
	private int amount;
	
	public Criteria(int page, int amount) {
		this.page = page;
		this.amount = amount;
	}
	
	
}
