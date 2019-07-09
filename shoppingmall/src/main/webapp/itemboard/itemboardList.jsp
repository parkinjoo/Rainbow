<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="../css/board.css">

<form name="itemboardListForm">

<!-- test -->
<!-- 카드 영역 -->
<div class="cardDiv-index">
<!-- <h2 class="cardDiv-title">반팔 티셔츠</h2>	 -->  
</div>

			<!-- 이 부분에 페이징 처리 -->
			<nav aria-label="Page navigation example">
				<ul id="itemboardPagingDiv" class="pagination justify-content-center">
				</ul>
			</nav>
			<!-- 페이징 -->
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
function itemboardPaging(pg){
	location.href="/shoppingmall/itemboard/itemboardList.do?categoryCode=${categoryCode}&pg="+pg;
}
</script>
<script>
$(document).ready(function(){
	$.ajax({
		type: 'POST',
		url: '/shoppingmall/itemboard/getItemboardList.do',
		data: {'pg': '${pg}',
			   'itemCode': '${itemCode}',
			   'categoryCode': '${categoryCode}'},
		dataType : 'json',
		success : function(data){
			
			$.each(data.list, function(index,items){
				var size;
				if(items.col1f == 0) {
					size = "S~XL(90~105)";
				} else {
					size = "FREE";
				}
				
				 $('.cardDiv-index').append("<div class='card card-index' style='width:18rem;'>"+
                         "<img class='card-img-top "+items.itemCode+"' src='../storage/"+items.img1+"'>"+
                         "<div class='card-body'>"+
                         "<h5 class='card-text card-text-name'>"+items.itemName+"</h5>"+
                         "<p class='card-text card-text-size'>"+size+"</p><br>"+
						  "<p class='card-text card-text-price'>"+items.salePrice.toLocaleString()+"</p>"+
                         "<a class='reserveItem-index' href='#'>"+
                         "<img src='../images/cart_image.png' class='cardImg'>"+
                         "</a>"+
                         "</div>"+
                         "</div>"
          		);   
				
 				//이미지보기
				$('.'+items.itemCode).css('cursor', 'pointer');
				$('.'+items.itemCode).click(function(){
					location.href='/shoppingmall/itemboard/itemboardView.do?itemCode='+items.itemCode+'&categoryCode=${categoryCode}&pg=${pg}';     
				}); 
			});
			
			$('#itemboardPagingDiv').html(data.itemboardPaging.pagingHTML);
		}
	});
});
</script>












