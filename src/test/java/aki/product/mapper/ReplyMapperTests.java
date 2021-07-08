package aki.product.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import aki.product.domain.Criteria;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src\\main\\webapp\\WEB-INF\\spring\\root-context.xml")
@Log4j
public class ReplyMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper rMapper;
	
//	@Test
//	public void insertTest() {
//		
//		Long[] pnoArr = {45L, 47L, 48L};
//		
//		IntStream.rangeClosed(1, 30).forEach(i -> {
//			
//			ReplyVO vo = new ReplyVO();
//			vo.setPno(pnoArr[i % 3]);
//			vo.setReply("TEST");
//			vo.setReplyer("TESTER");
//			
//			rMapper.insert(vo);
//			
//		});
//		
//	}
	
	
//	@Test
//	public void updateTest() {
//		ReplyVO vo = new ReplyVO();
//		vo.setRno(171L);
//		vo.setReply("AAA");
//		
//		log.info(rMapper.update(vo));
//	}
	
//	@Test
//	public void deleteTest() {
//		
//		
//		LongStream.rangeClosed(1, 100).forEach(i -> {
//			Long no =   183L -i;
//			rMapper.delete(no);
//		});
//			
//	}

	@Test
	public void selectByPnoTest() {
		Criteria cri = new Criteria(1, 10);
		log.info(rMapper.selectByPno(48L, cri));
	}

	
}
