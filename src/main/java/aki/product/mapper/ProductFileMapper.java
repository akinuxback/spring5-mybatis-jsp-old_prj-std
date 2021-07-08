package aki.product.mapper;

import java.util.List;

import aki.product.domain.ProductFileDTO;

public interface ProductFileMapper {
	
	public void insert(ProductFileDTO dto);
	
	public ProductFileDTO select(Long pno);
	
	public List<ProductFileDTO> selectSubFiles(Long pno);
	
	public List<ProductFileDTO> findByPno(Long pno);
	
	public int update(ProductFileDTO dto);
	
	public void deleteByUUID(String uuid);
	
	public void deleteByPNO(Long pno);
}
