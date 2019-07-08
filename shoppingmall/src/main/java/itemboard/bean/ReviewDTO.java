package itemboard.bean;

import org.springframework.stereotype.Component;


import lombok.Data;

@Component
@Data
public class ReviewDTO {
	private int seq;
	private String id;
	private String review;
	private String img1;
	private String img2;
}
