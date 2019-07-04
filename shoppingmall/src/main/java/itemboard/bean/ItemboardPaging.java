package itemboard.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ItemboardPaging {
	private int currentPage;
	private int pageBlock;
	private int pageSize;
	private int totalArticle;
	private StringBuffer pagingHTML;

	public void makePagingHTML() {
		pagingHTML = new StringBuffer();
		
		int totalPage = (totalArticle+pageSize-1)/pageSize;
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
		int endPage = startPage+pageBlock-1;
		if(endPage > totalPage) endPage = totalPage;
		
		if(startPage>pageBlock) {
			pagingHTML.append("<li class='page-item'><span class='page-link' aria-hidden='true' onclick='itemboardPaging("+(startPage-1)+")'>이전</span></li>");
		}//if
		
		for(int i=startPage; i<=endPage; i++) {
			if(i==currentPage) {
				pagingHTML.append("<li class='page-item'><span class='page-link' id='currentPaging' onclick='itemboardPaging("+i+")'>"+i+"</span></li>");
			} else {
				pagingHTML.append("<li class='page-item'><span class='page-link' onclick='itemboardPaging("+i+")'>"+i+"</span></li>");
			}
		}//for
		
		if(endPage<totalPage) {
			pagingHTML.append("<li class='page-item'><span class='page-link' aria-hidden='true' onclick='itemboardPaging("+(endPage+1)+")'>다음</span></li>");
		}//if
	}
}

