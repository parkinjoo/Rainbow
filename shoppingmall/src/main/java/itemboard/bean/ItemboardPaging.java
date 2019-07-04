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
			pagingHTML.append("[<span id='paging' onclick='itemboardPaging("+(startPage-1)+")'>이전</span>]");
		}//if
		
		for(int i=startPage; i<=endPage; i++) {
			if(i==currentPage) {
				pagingHTML.append("[<span id='currentPaging' onclick='itemboardPaging("+i+")'>"+i+"</span>]");
			} else {
				pagingHTML.append("[<span id='paging' onclick='itemboardPaging("+i+")'>"+i+"</span>]");
			}
		}//for
		
		if(endPage<totalPage) {
			pagingHTML.append("[<span id='paging' onclick='itemboardPaging("+(endPage+1)+")'>다음</span>]");
		}//if
	}
}

