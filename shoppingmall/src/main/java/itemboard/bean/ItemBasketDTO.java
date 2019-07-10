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
	private String stus;

	

}
