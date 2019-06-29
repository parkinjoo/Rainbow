package itemboard.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ItemboardDTO {
	private String itemCode; //상품코드
	private String itemName; //상품명
	private int salePrice; //판매단가
	private int costPrice; //상품원가
	private String itemContent; // 내용
	private int hit;
	private String registday;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String itemKeyword; //키워드
	private String col1; //색상1
	private int col1s;
	private int col1m;
	private int col1l;
	private int col1x;
	private int col1f;
	private String col2; //색상2
	private int col2s;
	private int col2m;
	private int col2l;
	private int col2x;
	private int col2f;
	private String col3; //색상3
	private int col3s;
	private int col3m;
	private int col3l;
	private int col3x;
	private int col3f;
	private String col4; //색상4
	private int col4s;
	private int col4m;
	private int col4l;
	private int col4x;
	private int col4f;
	private int saleQty;
	private int totQty;
}
