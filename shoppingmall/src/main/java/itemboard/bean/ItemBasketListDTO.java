package itemboard.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ItemBasketListDTO {
	private String itemCode;
	private String itemName;
	private int salePrice;
	private String itemCol;
	private int itemQty;
	private String img1;
	private String id;
	private String itemSize;
}