package aki.product.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import aki.product.domain.ProductFileDTO;
import aki.product.mapper.ProductFileMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class UploadFileController  {
	
	private String UPLOAD_FOLDER = System.getProperty("user.home") + File.separator + "upload" + File.separator;
	
	@Setter(onMethod_ = @Autowired)
	private ProductFileMapper fileMapper;

	

	
	@ResponseBody
	@PostMapping(value = "/singleFileUpload", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<ProductFileDTO> uploadAjax (MultipartFile singleFile){
		
		
		log.info("UPLOAD_FOLDER  =  " + UPLOAD_FOLDER);
		ProductFileDTO dto = new ProductFileDTO(UPLOAD_FOLDER, singleFile);
		dto.makeFileCallPath();
		dto.setMain(true);		
		log.info("dto.toString    ===>>>   " + dto.toString());
		log.info(dto);
		return new ResponseEntity<>(dto, HttpStatus.OK);
	}

	
	
	@ResponseBody
	@PostMapping(value = "/multipleFileUpload", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<ProductFileDTO>> uploadAjax (MultipartFile[] multipleFile){
		
		List<ProductFileDTO> list = new ArrayList<>();
		
		for(MultipartFile mf : multipleFile) {
			ProductFileDTO dto = new ProductFileDTO(UPLOAD_FOLDER, mf);
			dto.makeFileCallPath();
			list.add(dto);
		}
		
		log.info(list);
		
		return new ResponseEntity<>(list, HttpStatus.OK);
	}
	
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]> getFile(String fileName) throws RuntimeException {
		
		ResponseEntity<byte[]> result = null;
		File file = null;
		try {
			
			file = new File(UPLOAD_FOLDER + fileName);
			log.info(file);	
			HttpHeaders header = new HttpHeaders();

			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			log.info(file);
			e.printStackTrace();
		} 
		
		return result;
	}
	
	@PostMapping("/deleteFile")
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileName, String image, String uuid) throws UnsupportedEncodingException {
		
		String deleteFile = URLDecoder.decode(fileName, "UTF-8");
		File file = new File(UPLOAD_FOLDER, deleteFile);
		file.delete();
		log.info("File Delete   :    " + deleteFile);
		
		if(image.equals("image")) {
			String largeFileName = file.getAbsolutePath().replace("s_", "");
			file = new File(largeFileName);
			file.delete();
			log.info("s_ 파일 삭제   : " + largeFileName );
		}
		
		//modify 뷰 페이지 에서 서브 이미지 리스트들이 존재 하게 되서 해당 디비의 레코드도 같이 삭제 처리 하였다 2020/12/03
		fileMapper.deleteByUUID(uuid);
		return new ResponseEntity<>("deleted", HttpStatus.OK);
	}
	
}
