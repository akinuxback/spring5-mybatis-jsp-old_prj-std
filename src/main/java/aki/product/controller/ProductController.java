package aki.product.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import aki.product.domain.ProductFileDTO;
import aki.product.domain.ProductVO;
import aki.product.service.ProductService;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/product/*")
@Log4j
public class ProductController {
	
	@Setter(onMethod_ = @Autowired)
	private ProductService pService;
	
	@GetMapping("/test")
	public void test() {
		log.info("testPage");
	}
	
	@GetMapping("/list")
	public void list(Model model, @RequestParam(value = "type", required = false) String type) {
		
		List<ProductVO> list = pService.selectAll(type);
		
		model.addAttribute("list", list);
		
	}
	
	@GetMapping("/productRegister")
	public void getRegister() {
		
	}
	
	@GetMapping({"/get", "/modify"})
	public void getAndModifyPage(@RequestParam("pno") Long pno, Model model) {
		ProductVO vo = pService.select(pno);
		List<ProductFileDTO> fileList = vo.getProductFileList();
		model.addAttribute("product", vo);
		
		//productFileDTO 객체의 main 값이 true 이면 따로  fileCallPath의 값만 model 객체에 담아 반환 하였다
		//이후 List 의 main 인 객체만을 삭제하여 서브 파일들만 존재 하게 하였다. 
		 fileList.forEach(p -> {
			if(p.isMain()) {
				model.addAttribute("mainFile", p);
				//fileList.remove(fileList.indexOf(p));  <- 이것좀 해결해 보자 리스트에서 삭제 하려니, 일단  계속 오류다 그래서 아래에 forEach를 한번 더 돌렸다 
			}
		});
		
		//아래 subFileList는 임시방편으로 짜놓았다 나중에 위 스트림 방식 으로 알아내서 수정 해보자 
		List<ProductFileDTO> subFileList = new ArrayList<>(); 
		 
		for(ProductFileDTO file : fileList ) {
			if(!file.isMain()) {
				subFileList.add(file);
			}
		}
		
		model.addAttribute("subFileList", JSONArray.fromObject(subFileList));
		
		
	}
	
	@PostMapping("/productRegister")
	public String postRegister(@ModelAttribute @Valid ProductVO vo, BindingResult result, RedirectAttributes rttr) {
		log.info("productRegister page...............");
		if(result.hasErrors()) 
			return "product/productRegister";
		
		pService.register(vo);
		rttr.addFlashAttribute("result", vo.getPno() + "번 새로운 등록");
		
		
		log.info(vo);
		return "redirect:/product/list";
	}
	
	@PostMapping("/modify")
	public String modify(ProductVO vo, RedirectAttributes rttr) {
		
		if(pService.modify(vo) == 1) {
			rttr.addFlashAttribute("result", vo.getPno() + "번 수정.");
		}
		
		return "redirect:/product/list";
	}
	
	@PostMapping("/remove")
	public String delete(Long pno, RedirectAttributes rttr) {
		
		pService.remove(pno);
		
		rttr.addFlashAttribute("result", pno + "번  삭제.");
		
		return "redirect:/product/list";
	}
	
	@GetMapping("/reply")
	public void reply() {
		
	}
	
}
