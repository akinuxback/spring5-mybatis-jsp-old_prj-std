package aki.product.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src\\main\\webapp\\WEB-INF\\spring\\root-context.xml")
@Log4j

public class ProductFileMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ProductFileMapper fileMapper;
	
//	@Test
//	public void insertTest() {
//		
//		ProductFileDTO dto = new ProductFileDTO();
//		dto.setPno(25L);
//		dto.setFile_name("TEST");
//		dto.setUpload_path("TEST");
//		dto.setUuid("TEST");
//		
//		dto.setImage(true);
//		dto.setMain(true);
//		
//		fileMapper.insert(dto);
//		
//		log.info(dto);
//		
//	}
	
//	@Test
//	public void selectTest() {
//		log.info(fileMapper.select(37L));
//	}
	
//	@Test
//	public void modifyTest() {
//		String uuid = UUID.randomUUID().toString();
//		
//		ProductFileDTO dto = new ProductFileDTO();
//		dto.setPno(38L);
//		dto.setUpload_path("2020\\12\\01");
//		dto.setUuid(uuid);
//		dto.setFile_name("bts.jpg");
//		dto.setImage(true);
//		dto.setMain(true);
//		log.info(fileMapper.update(dto));
//	}
	
//	@Test
//	public void deleteTest() {
//		fileMapper.deleteByPNO(40L);
//		log.info("");
//	}
//	
	
	
	
	@Test
	public void selectAll() {
		fileMapper.select(42L);
		log.info("");
	}
	
//	@Test
//	public void testDeleteByUUID() {
//		fileMapper.deleteByUUID("77c2986f-7000-488d-8b93-8772173e4528");
//	}
	
//	@Test
//	public void testDeleteByPno() {
//		fileMapper.deleteByPNO(43L);
//	}
	
}
