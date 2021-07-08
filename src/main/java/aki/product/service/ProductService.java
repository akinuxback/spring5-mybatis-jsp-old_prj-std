package aki.product.service;

import java.util.List;

import aki.product.domain.ProductVO;

public interface ProductService {
	
	public ProductVO select(Long pno);
	
	public List<ProductVO> selectAll(String type);
	
	public void register(ProductVO vo);
	
	public int modify(ProductVO vo);
	
	public void remove(Long pno);
}
