package aki.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import aki.product.domain.Criteria;
import aki.product.domain.ReplySecondVO;

public interface ReplySecondMapper {
	
	public List<ReplySecondVO> getList(@Param("rno") Long rno, @Param("cri") Criteria cri);
	
	public int insert(ReplySecondVO vo);
	
}
