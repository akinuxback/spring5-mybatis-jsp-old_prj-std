package testController;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@RequestMapping("/test/*")
@Controller
@Log4j
public class TestController {
	
	@GetMapping("/test")
	public void testPage() {
		log.info("testPage");
	}
	
	
	@PostMapping("/test")
	public String join(@ModelAttribute @Valid UserVO vo, BindingResult result) {
		
		if(result.hasErrors())
			return "/test/test";
		
		return "/test/test";
	}
	
	

}






