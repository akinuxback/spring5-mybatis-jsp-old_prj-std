package aki.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import aki.product.domain.ProductVO;
import aki.product.mapper.ProductFileMapper;
import aki.product.mapper.ProductMapper;
import lombok.Setter;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Setter(onMethod_ = @Autowired)
	private ProductMapper pMapper;
	
	@Setter(onMethod_ = @Autowired)
	private ProductFileMapper fileMapper;
	
	@Override
	public List<ProductVO> selectAll(String type) {
		// TODO Auto-generated method stub
		List<ProductVO> list= pMapper.selectAll(type);
		return list;
	}
	
	@Override
	public ProductVO select(Long pno) {
		// TODO Auto-generated method stub
		ProductVO vo = pMapper.select(pno);
		if(vo != null) {
			vo.setProductFile(fileMapper.select(pno));
			//vo.setFileCallPath(vo.makeFileName(fileMapper.select(pno)));
		}
		return vo;
	}

	
	@Transactional
	@Override
	public void register(ProductVO vo) {
		// TODO Auto-generated method stub
		
		pMapper.insertSelectKey(vo);
		
		if(vo.getProductFileList() == null || vo.getProductFileList().size() == 0) {
			return;
		}
		
		vo.getProductFileList().forEach(f -> {
			f.setPno(vo.getPno());
			fileMapper.insert(f);
		});
		
	}
	
	
	//분명히 삭제 하고 인서트 했는데 뭐가 널이냐??? 왜 널인것이냐??
	@Transactional
	@Override
	public int modify(ProductVO vo) {
		// TODO Auto-generated method stub
		fileMapper.deleteByPNO(vo.getPno());
		
		vo.getProductFileList().forEach(f -> {
			f.setPno(vo.getPno());
			fileMapper.insert(f);
		});
		
		return pMapper.update(vo);
	}

	@Transactional
	@Override
	public void remove(Long pno) {
		// TODO Auto-generated method stub
		
		fileMapper.deleteByPNO(pno);
		pMapper.delete(pno);
		
	}

	
	
	
}
