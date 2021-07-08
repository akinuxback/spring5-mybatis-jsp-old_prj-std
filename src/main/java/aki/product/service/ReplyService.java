package aki.product.service;

import java.util.List;

import aki.product.domain.Criteria;
import aki.product.domain.ReplyVO;

public interface ReplyService {
	
	public List<ReplyVO> selectByPno(Long pno, Criteria cri);
	
	public int register(ReplyVO vo);
	
	public int modify(ReplyVO vo);
	
	public int remove(Long rno);
	
}
