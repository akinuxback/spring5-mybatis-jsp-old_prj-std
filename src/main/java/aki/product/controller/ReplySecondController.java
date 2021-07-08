package aki.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import aki.product.domain.Criteria;
import aki.product.domain.ReplySecondVO;
import aki.product.service.ReplySecondService;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/second/")
@Log4j
public class ReplySecondController {
	
	@Setter(onMethod_ = @Autowired)
	private ReplySecondService rsService;
	
	@ResponseBody
	@GetMapping("/pages/{rno}/{page}")
	public ResponseEntity<List<ReplySecondVO>> getList(@PathVariable("rno") Long rno, @PathVariable("page") int page){
		
		log.info("get List........");
		
		Criteria cri = new Criteria(page, 5);
		
		List<ReplySecondVO> list = rsService.getList(rno, cri);
		
		return new ResponseEntity<>(list, HttpStatus.OK);
	}
	
	@PostMapping("/{new}")
	public ResponseEntity<String> register(@RequestBody ReplySecondVO vo){
		
		log.info("register........");
		
		return rsService.register(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) 
					: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}
