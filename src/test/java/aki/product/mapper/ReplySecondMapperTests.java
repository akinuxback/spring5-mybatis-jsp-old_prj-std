package aki.product.mapper;

import java.util.stream.LongStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import aki.product.domain.Criteria;
import aki.product.domain.ReplySecondVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src\\main\\webapp\\WEB-INF\\spring\\root-context.xml")
@Log4j

public class ReplySecondMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ReplySecondMapper rsMapper;
	
	@Test
	public void insertTest() {
		ReplySecondVO vo = new ReplySecondVO();
		
		LongStream.rangeClosed(1, 5).forEach(l -> {
			
			vo.setRno(73L);
			vo.setReply("대댓글 테스트");
			vo.setReplyer("Jungkook");
			rsMapper.insert(vo);
		});
		
	}
	
	@Test
	public void getList() {
		Long rno = 1L;
		Criteria cri = new Criteria(1, 10);
		rsMapper.getList(rno, cri);
		log.info("");
	}
	
}
