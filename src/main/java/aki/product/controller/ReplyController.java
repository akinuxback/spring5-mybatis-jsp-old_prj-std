package aki.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import aki.product.domain.Criteria;
import aki.product.domain.ReplyVO;
import aki.product.service.ReplyService;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/replies/")
@Log4j
public class ReplyController {
	
	@Setter(onMethod_ = @Autowired)
	private ReplyService service;
	
	@ResponseBody
	@RequestMapping("/pages/{pno}/{page}")
	public ResponseEntity<List<ReplyVO>> list(@PathVariable("pno") Long pno, 
										@PathVariable("page") int page){
		
		log.info("list...........");
		Criteria cri = new Criteria(page, 10);
		
		List<ReplyVO> list = service.selectByPno(pno, cri);
		
		return new ResponseEntity<>(list, HttpStatus.OK);
	}
	
	@ResponseBody
	@PostMapping("/new")
	public ResponseEntity<String> create(@RequestBody ReplyVO vo){
		
		log.info("create......  " + vo);
		
		return service.register(vo) == 1 
				? new ResponseEntity<>("success", HttpStatus.OK) 
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@PutMapping("/{rno}")
	public ResponseEntity<String> modify(@RequestBody ReplyVO vo, @PathVariable("rno") Long rno){
		vo.setRno(rno);
		return service.modify(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
					: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@DeleteMapping("/{rno}")
	public ResponseEntity<String> remove(@PathVariable("rno") Long rno){
		
		return service.remove(rno) == 1 ? new ResponseEntity<>("deleted", HttpStatus.OK) 
					: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}







