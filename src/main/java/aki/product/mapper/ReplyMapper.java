package aki.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import aki.product.domain.Criteria;
import aki.product.domain.ReplyVO;

public interface ReplyMapper {
	
	public List<ReplyVO> selectByPno(@Param("pno")Long pno, @Param("cri") Criteria cri);
	
	public int insert(ReplyVO vo);
	
	public int update(ReplyVO vo);
	
	public int delete(Long rno);
	
}
