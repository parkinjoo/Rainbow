package itemboard.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ItemOrderDTO {
	private String order_name;
	private String order_tel;
	private String receive_name;
	private String receive_tel;
	private String address;
	private String message;
	private String stus;
	private int seq;
}
