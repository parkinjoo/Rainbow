<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<content id="content">
	<div id="carouselExampleIndicators" class="carousel slide-index" data-ride="carousel">
	  <ol class="carousel-indicators">
	    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	  </ol>
	<div class="carousel-inner">
	<div class="carousel-item active">
	  <img src="../images/carousel_sample1.jpg" class="d-block w-100" alt="...">
	</div>
	<div class="carousel-item">
	  <img src="../images/carousel_sample2.jpg" class="d-block w-100" alt="...">
	</div>
	<div class="carousel-item">
	  <img src="../images/carousel_sample3.jpg" class="d-block w-100" alt="...">
	</div>
	</div>
	<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
	  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	  <span class="sr-only">Previous</span>
	</a>
	<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
	  <span class="carousel-control-next-icon" aria-hidden="true"></span>
	  <span class="sr-only">Next</span>
	</a>
	</div>
	
	<!-- 카드 영역 -->
	<div class="cardDiv-index">
	  <h2 class="cardDiv-title">신규 상품</h2>
	  	 <span class="card card-index-leftArrow" id="leftArrow"></span>
	  	 <span id="new_itemList"></span>
	  	 <span id="new_itemList2"></span>
		 <span class="card card-index-rightArrow"  id="rightArrow"></span>
	</div>
	
	<!-- 카드 영역 -->
	<div class="cardDiv-index">
	  <h2 class="cardDiv-title">인기 상품</h2>
	  <div id="bestItems"></div>
	</div>

	
</content>

<script>
var sw = 0;
$('#leftArrow').click(function(){
	if(sw==0){
		$('#new_itemList2').show();
		$('#new_itemList').hide();
		sw=1;
	}else if(sw==1){
		$('#new_itemList2').hide();
		$('#new_itemList').show();
		sw=0;
	}
});

$('#rightArrow').click(function(){
	if(sw==0){
		$('#new_itemList2').show();
		$('#new_itemList').hide();
		sw=1;
	}else if(sw==1){
		$('#new_itemList2').hide();
		$('#new_itemList').show();
		sw=0;
	}
});

$('#cardDiv-index h5').click(function(){
	alert("확인");
});

$(document).ready(function(){
	$('#new_itemList2').hide();
	
	$.ajax({
		type : 'POST' ,
		url : '/shoppingmall/manager/getIndexBodyList.do',
		dataType : 'json',
		success : function(data){	
			$.each(data.list, function(index,items){
				$('#bestItems').append("</h2><div class='card card-index' style='width: 18rem;'>"+
									  "<img src='../storage/"+items.img1+"' class='card-img-top' id='"+items.itemCode+"' style='cursor: pointer;'>"+
									  "<div class='card-body'>"+
									  "<h5 class='card-title-index'>"+items.itemCode+"</h5>"+
									  "<p class='card-text card-text-index'>"+items.itemName+"</p>"+
									  "<p class='card-text card-text-index'>"+items.salePrice+"</p>"+
									  "<p class='card-text card-text-index'>"+items.itemContent+"</p>"+
									  "<a class='reserveItem-index' href='#'><img src='../images/cart_image.png' class='cartImg'></a>"+						
									  "</div>"+
									  "</div>");
				
				//이미지보기
				$('#'+items.itemCode).click(function(){
					location.href='/shoppingmall/itemboard/itemboardView.do?itemCode='+items.itemCode+'&categoryCode=${categoryCode}&pg=${pg}';     
				});
			});//each;
		}
	}) //ajax(1)
	
	$.ajax({
		type : 'POST' ,
		url : '/shoppingmall/manager/getIndexBodyNewList.do',
		dataType : 'json',
		success : function(data){	
			$.each(data.list, function(index,items){
				if(index<4){
					$('#new_itemList').append("</h2><div class='card card-index' style='width: 18rem;'>"+
							  "<img src='../storage/"+items.img1+"' class='card-img-top' id='"+items.itemCode+"' style='cursor: pointer;'>"+
							  "<div class='card-body'>"+
							  "<h5 class='card-title-index'>"+items.itemCode+"</h5>"+
							  "<p class='card-text card-text-index'>"+items.itemName+"</p>"+
							  "<p class='card-text card-text-index'>"+items.salePrice+"</p>"+
							  "<p class='card-text card-text-index'>"+items.itemContent+"</p>"+
							  "<a class='reserveItem-index' href='#'><img src='../storage/new_icon.gif' class='newImg'><img src='../images/cart_image.png' class='cartImg'></a>"+						
							  "</div>"+
							  "</div>");	
				}else {
					$('#new_itemList2').append("</h2><div class='card card-index' style='width: 18rem;'>"+
							  "<img src='../storage/"+items.img1+"' class='card-img-top' id='"+items.itemCode+"' style='cursor: pointer;'>"+
							  "<div class='card-body'>"+
							  "<h5 class='card-title-index'>"+items.itemCode+"</h5>"+
							  "<p class='card-text card-text-index'>"+items.itemName+"</p>"+
							  "<p class='card-text card-text-index'>"+items.salePrice+"</p>"+
							  "<p class='card-text card-text-index'>"+items.itemContent+"</p>"+
							  "<a class='reserveItem-index' href='#'><img src='../storage/new_icon.gif' class='newImg'><img src='../images/cart_image.png' class='cartImg'></a>"+						
							  "</div>"+
							  "</div>");
				}
				//이미지보기
				$('#'+items.itemCode).click(function(){
					location.href='/shoppingmall/itemboard/itemboardView.do?itemCode='+items.itemCode+'&categoryCode=${categoryCode}&pg=${pg}';     
				});
			});//each;
		}
	}) //ajax	
});

</script>