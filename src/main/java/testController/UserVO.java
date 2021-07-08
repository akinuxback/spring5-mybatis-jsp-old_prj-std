package testController;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;

import lombok.Data;

@Data
public class UserVO {
	
	private Integer no;
		   
    @NotEmpty(message="성함을 입력 하세요")
    @Length(min=2, max=5)
    private String name;
   
    @NotEmpty
    @Length(min=4, max=15, message="ID를 입력 하세요")
    private String userid;
    
    @NotEmpty
    @Pattern(regexp="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&+=])(?=\\S+$).{8,}"
    			, message="(특수문자 + 대문자 + 소문자 + 숫자 ) 조합 8자 이상 이어야 합니다.")
    private String password;

    @NotEmpty(message="e-mail을 입력 하여 주세요")
    @Email
    private String email;
   
   
    @NotEmpty
    private String gender;
   
    private String regDate;
	
}
