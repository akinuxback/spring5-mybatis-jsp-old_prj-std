package aki.product.mapper;

import java.util.List;

import aki.product.domain.ProductVO;

public interface ProductMapper {
	
	public void insertSelectKey(ProductVO vo);
	
	public ProductVO select(Long pno);
	
	public List<ProductVO> selectAll(String type);
	
	public int update(ProductVO vo);
	
	public int delete(Long pno);
	
}
