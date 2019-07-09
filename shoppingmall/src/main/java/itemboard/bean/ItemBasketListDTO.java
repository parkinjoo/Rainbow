package itemboard.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ItemBasketListDTO {
	private int seq;
	private String itemCode;
	private String itemName;
	private int salePrice;
	private String itemCol;
	private String itemQty;
	private String img1;
	private String id;
	private String itemSize;
}