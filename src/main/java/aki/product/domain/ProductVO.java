package aki.product.domain;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
public class ProductVO {
	
	private int rownum;
	
	private Long pno;
	@NotBlank(message = "brand를 입력 하여 주세요")
	private String brand;
	@NotBlank(message = "title을 입력 하여 주세요")
	private String title;
	@NotBlank
	private String content;  
	@NotNull
	private Integer price;
	private String type;
	private Date reg_date;
	private Date update_date;
	
	@Valid
	private ProductFileDTO productFile;
	
	@Valid
	private List<ProductFileDTO> productFileList; 
	
	 
	//private String fileCallPath; (ProductFileDTO 객체에 정의해서 필요 없어짐) 
	
	private ProductDetailVO detail; // 나중에 제품 상세 내용 필요할때 대비
	
	
	// 리스트에 전달할 파일 경로
	public String makeFileName(ProductFileDTO dto) {
		String str;
		
		try {
			String upload_path = dto.getUpload_path();
			String uuid = dto.getUuid();
			String file_name = dto.getFile_name();
			
			//UploadController 에서 UPLOAD_FOLDER 설정이 걸려 있다 그리하여 뷰에서 데이터를 전달 받아 display 하기 위해서 이하 경로만 전달 받을수 있게 하였다.
			str = upload_path + "\\" + uuid +"_" + file_name; 
			
			return URLEncoder.encode(str.replace("\\", "/"), "UTF-8");
		} catch(UnsupportedEncodingException e) {
			e.printStackTrace();
			return e.getMessage();
		}
		
//		String upload_path = dto.getUpload_path();
//		String uuid = dto.getUuid();
//		String file_name = dto.getFile_name();
//		
//		String str = "C:\\Dev\\upload\\" + upload_path + "/" + uuid +"_" + file_name; 
//		
//		return str;
	}
}
