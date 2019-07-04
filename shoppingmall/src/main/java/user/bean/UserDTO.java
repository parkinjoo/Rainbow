package user.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class UserDTO {
	private String userCode;
	private String name;
	private String id;
	private String pwd;
	private String tel;
	private String email;
	private String zipcode;
	private String addr1;
	private String addr2;
	private String joinday;
	private int totalPay;
	private int point;
	private String grade;
	private int cash;
}
