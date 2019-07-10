package itemboard.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ChartDTO {

	private String saleprice;
	private String data;
	private String itemcode;
}
