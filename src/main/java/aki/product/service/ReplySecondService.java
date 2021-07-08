package aki.product.service;

import java.util.List;

import aki.product.domain.Criteria;
import aki.product.domain.ReplySecondVO;

public interface ReplySecondService {
	
	public List<ReplySecondVO> getList(Long rno, Criteria cri);
	
	public int register(ReplySecondVO vo);
	
}
