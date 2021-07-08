package aki.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aki.product.domain.Criteria;
import aki.product.domain.ReplySecondVO;
import aki.product.mapper.ReplySecondMapper;
import lombok.Setter;

@Service
public class ReplySecondServiceImpl implements ReplySecondService {
	
	@Setter(onMethod_ = @Autowired)
	private ReplySecondMapper rsMapper;


	@Override
	public List<ReplySecondVO> getList(Long rno, Criteria cri) {
		// TODO Auto-generated method stub
		return rsMapper.getList(rno, cri);
	}
	
	
	@Override
	public int register(ReplySecondVO vo) {
		// TODO Auto-generated method stub
		return rsMapper.insert(vo);
	}

}




















