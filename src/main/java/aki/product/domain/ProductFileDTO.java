package aki.product.domain;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Data
@Log4j
public class ProductFileDTO {
	
	private Long pno; // tbl_product_file 의 pk fk 
	
	private String upload_path;
	@NotNull(message = "파일을 등록 하세요")
	private String uuid;
	private String file_name;
	private boolean image;
	private boolean main;
	
	private String fileCallPath;
	
	public ProductFileDTO() {
		
	}
	
	public ProductFileDTO(String UPLOAD_FOLDER, MultipartFile mf) {
		
		
		this.upload_path = getFolder();
		File uploadFolderPath = new File(UPLOAD_FOLDER, upload_path);
		log.info(uploadFolderPath);
		if(uploadFolderPath.exists() == false) {
			uploadFolderPath.mkdirs();
		}
		
		String originFileName = mf.getOriginalFilename();
		System.out.println(originFileName);
		this.file_name = originFileName.substring(originFileName.lastIndexOf("\\") + 1);
		this.uuid = UUID.randomUUID().toString();
		String uploadFileName = uuid + "_" + file_name;
		
		File saveFile = new File(uploadFolderPath, File.separator + uploadFileName);
		log.info(saveFile);
		try {
			mf.transferTo(saveFile);

			log.info(mf.getSize());
			if(checkImageType(saveFile)) {
				this.image = true;
				FileOutputStream thumbnail = new FileOutputStream(new File(uploadFolderPath, "s_" + uploadFileName));
				Thumbnailator.createThumbnail(mf.getInputStream(), thumbnail, 100, 100);
				thumbnail.close();
			}
			
			
		} catch(IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
	
	public boolean checkImageType(File file){
		try {
			String contentType = Files.probeContentType(file.toPath());
			return contentType.startsWith("image");
		} catch(IOException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	
	public void makeFileCallPath() {
		String str;
		
		try {
			
			str = this.upload_path + File.separator + this.uuid +"_" + this.file_name; 
			
			 this.fileCallPath = URLEncoder.encode(str.replace("\\", File.separator), "UTF-8");
		} catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	
	
}
