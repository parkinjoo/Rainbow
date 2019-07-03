package itemboard.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ItemBasketDTO {
	private String itemCode;
	private String itemName;
	private int itemPrice;
	private String itemCol;
	private int itemQty;
	private String registday;
	private String id;
	
}
