package itemboard.bean;

import org.springframework.stereotype.Component;


import lombok.Data;

@Data
@Component
public class ItemBasketDTO {
	private String itemCode;
	private String itemName;
	private String itemCol;
	private String itemQty;
	private String itemSize;
	private String registday;
	private String id;
	private String order_name;
	private String order_tel;
	private String receive_name;
	private String receive_tel;
	private String addr1;
	private String zipcode;
	private String addr2;
	private String message;
	private String stus;
	private int seq;

	

}
