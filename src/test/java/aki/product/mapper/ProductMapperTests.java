package aki.product.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import aki.product.domain.ProductVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src\\main\\webapp\\WEB-INF\\spring\\root-context.xml")
@Log4j
public class ProductMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ProductMapper pMapper;
	
	//자식 테이블의 레코드를 먼저  delete 하기 위해
	@Setter(onMethod_ = @Autowired)
	private ProductFileMapper fileMapper;

//	@Test
//	public void selectTest() {
//		ProductVO vo = pMapper.select(42L);
//		
//		vo.getProductFileList().forEach(p -> {
//			if(p.isMain()) {
//				log.info(p);
//			}
//		});		
//		
//	}
	
//	@Test
//	public void insertTest() {
//		
//		ProductVO vo = new ProductVO();
//		vo.setBrand("Dior");
//		vo.setTitle("신상품 출시");
//		vo.setContent("가나다라마바사아차카타마파하1234567890");
//		vo.setPrice(1000000);
//		vo.setThumbnail("C:\\Dev\\study\\shopping\\baseXML\\src\\main\\webapp\\resources\\img\\test1.jpg");
//		
//		IntStream.rangeClosed(1, 5).forEach(i ->{
//			pMapper.insert(vo);
//		});
//		
//		
//	}
	
//	@Test
//	public void selectAllTest2() {
//		
//		//fileCallPath 뽑아내는 테스트
//		
//		List<ProductVO> pList = pMapper.selectAll();
//		pList.forEach(p -> log.info(p.makeFileName(p.getProductFile())));
//		
//	}
	
//	@Test
//	public void selectSubFilesTest() {
//		fileMapper.selectSubFiles(41L);
//	}
	
//	@Test
//	public void selectAllTest() {
//		
//		//fileCallPath 뽑아내는 테스트
//		
//		List<ProductVO> pList = pMapper.selectAll();
//		pList.forEach(p -> 
//			p.setFileCallPath(p.makeFileName(p.getProductFile()))
//		);
//		
//		pList.forEach(p -> log.info(p.getFileCallPath()));
//		
//		pList.forEach(p -> log.info(p));
//		
//	}
	
//	@Test
//	public void updateTests() {
//		ProductVO vo = new ProductVO();
//		vo.setBrand("조다쉬");
//		vo.setTitle("신상 입고");
//		vo.setContent("수량 10개 남음 주문 폭주 ");
//		vo.setPrice(33000);
//		vo.setPno(36L);
//		log.info(pMapper.update(vo));
//	}
	
//	@Test
//	public void deleteTest() {
//		
//		
//		IntStream.rangeClosed(1, 39).forEach(i -> {
//			Long pno = Long.valueOf(i);
//			fileMapper.deleteByPNO(pno);
//			pMapper.delete(pno);
//		});
//	
//	}
	
//	@Test
//	public void insert() {
//		
//	}
	
	@Test
	public void selectAllTests() {
		List<ProductVO> list = pMapper.selectAll("cap");
		
		list.forEach(p -> p.getProductFileList().forEach(pp -> log.info(pp)));
	}
	
}







