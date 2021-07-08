package aki.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aki.product.domain.Criteria;
import aki.product.domain.ReplyVO;
import aki.product.mapper.ReplyMapper;
import lombok.Setter;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper rMapper;

	@Override
	public List<ReplyVO> selectByPno(Long pno, Criteria cri) {
		// TODO Auto-generated method stub
		return rMapper.selectByPno(pno, cri);
	}

	@Override
	public int register(ReplyVO vo) {
		// TODO Auto-generated method stub
		return rMapper.insert(vo);	
	}

	@Override
	public int modify(ReplyVO vo) {
		// TODO Auto-generated method stub
		return rMapper.update(vo);
	}

	@Override
	public int remove(Long rno) {
		// TODO Auto-generated method stub
		return rMapper.delete(rno);
	}
	
	
	
	
}